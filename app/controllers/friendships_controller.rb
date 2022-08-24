class FriendshipsController < ActionController::Base
  def create
    friend = User.find(params[:friend])
    current_user.friendships.build(friend_id: friend_id)

      
  end

  def destroy
    friendship = current_user.friendships.where(friend_id: params[:id].first)
    friendship.destroy
    redirect_to my_friends_path
  end

end

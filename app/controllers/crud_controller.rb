class CrudController < ApplicationController
  def index
    @allpost = Post.all
  end

  def create
    newpost = Post.new
    newpost.title = params[:title]
    newpost.content = params[:content]
    newpost.save
    
    redirect_to "/"
  end
end

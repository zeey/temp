class BlogsController < ApplicationController
    layout 'blog_application'
   def index
       @posts = Post.all
   end
   
   def create
       Post.create(title: params['title'], content: params['content'], name: params['name'])
       redirect_to '/blogs'
   end
   
    def new
    end
       
    def show
        @post = Post.find(params['id'])
    end
    
    def edit
        @post = Post.find(params['id'])
    end
    
    def update
        @post = Post.find(params['id'])
        @post.title = params['title']
        @post.name = params['name']
        @post.content = params['content']
        @post.save
        redirect_to "/posts/#{params['id']}"
    end
    
    def delete
        @post = Post.find(params['id'])
        @post.delete
        redirect_to '/blogs'
    end
end


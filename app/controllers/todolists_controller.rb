class TodolistsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    list = List.new(list_params)
    list.save
    redirect_to '/top'
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find_by(params[:id])
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end

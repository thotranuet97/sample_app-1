class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def nguoi_dung_da_dang_nhap
    unless da_dang_nhap?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end

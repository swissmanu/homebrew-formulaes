require "formula"

class Play221 < Formula
  homepage "http://www.playframework.org/"
  url "http://downloads.typesafe.com/play/2.2.1/play-2.2.1.zip"
  sha1 "e4567f3cf61536908d66e85bde48d7e953f0a01f"

  conflicts_with "sox", :because => "both install `play` binaries"

  def install
    rm_rf Dir["**/*.bat"]
    libexec.install Dir["*"]
    bin.install_symlink libexec/"play"
  end
end

require 'active_record'
require 'batch_manager/railtie'

module BatchManager
  class << self
    def batch_dir
      Rails.application.config.batch_manager.batch_dir
    end

    def signal
      "=Batch Manager="
    end
  end
end

require 'batch_manager/utils'
require 'batch_manager/schema_batch'
require 'batch_manager/batch_status'
require 'batch_manager/executor'
require 'batch_manager/monitor'

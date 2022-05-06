# == Schema Information
#
# Table name: boark_tag_relations
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :integer
#  tag_id     :integer
#
# Indexes
#
#  index_boark_tag_relations_on_board_id  (board_id)
#  index_boark_tag_relations_on_tag_id    (tag_id)
#
# Foreign Keys
#
#  fk_rails_...  (board_id => boards.id)
#  fk_rails_...  (tag_id => tags.id)
#
class BoarkTagRelation < ApplicationRecord
  belongs_to :board
  belongs_to :tag
end

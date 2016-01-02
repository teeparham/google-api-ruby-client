# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'spec_helper'

RSpec.describe $LOAD_PATH do
  it('should contain SPEC_DIR') do
    expect($LOAD_PATH).to include(SPEC_DIR)
  end

  it('should contain LIB_DIR') do
    expect($LOAD_PATH).to include(LIB_DIR)
  end

  it('should contain GENERATED_DIR') do
    expect($LOAD_PATH).to include(GENERATED_DIR)
  end

  it('should contain THIRD_PARTY_DIR') do
    expect($LOAD_PATH).to include(THIRD_PARTY_DIR)
  end

  it('should already have unique path') do
    expect($LOAD_PATH).to match_array($LOAD_PATH.uniq!)
  end
end

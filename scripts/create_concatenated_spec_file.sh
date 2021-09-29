#!/bin/bash
#
# This script creates a concatenated version of all the specs, and also changes
# the format of the YAML to be keyed on the names such that duplicate model
# entries can be detected by yaml-lint.
cat **/*/.spec.yml | sed -e 's/^- name: \(.*\)/\1:/' > concatenated_spec_file.yml

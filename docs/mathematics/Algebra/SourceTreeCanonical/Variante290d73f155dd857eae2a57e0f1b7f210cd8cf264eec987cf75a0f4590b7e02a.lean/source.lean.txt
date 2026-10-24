-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IdealPrunedTreeCount.Variant88100d658603cb834105953fc85b6e91e6fe151e1aaba24873b8fe5c9ee6734f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"88100d658603cb834105953fc85b6e91e6fe151e1aaba24873b8fe5c9ee6734f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IdealPrunedTreeCount.Variant88100d658603cb834105953fc85b6e91e6fe151e1aaba24873b8fe5c9ee6734f","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"88100d658603cb834105953fc85b6e91e6fe151e1aaba24873b8fe5c9ee6734f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/Validation/SourceTreeCanonical.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.All


namespace GRWTSK.Algebra.IdealPrunedTreeCount.Variant88100d658603cb834105953fc85b6e91e6fe151e1aaba24873b8fe5c9ee6734f

set_option autoImplicit false

namespace Think.Validation.SourceTreeCanonical

theorem ideal_pruned_tree_count :
    Think.RadoProjectedModularHeatflow.idealPrunedTree.length = 13 :=
  Think.RadoProjectedModularHeatflow.idealPrunedTree_count

theorem compression_rules_count :
    Think.RadoProjectedModularHeatflow.compressionRules.length = 4 :=
  Think.RadoProjectedModularHeatflow.compressionRules_count

theorem phase_table_contraction_preserves_weight :
    Think.RadoProjectedModularHeatflow.phase37Witness.oldWeight =
      Think.RadoProjectedModularHeatflow.phase37Witness.newWeight :=
  Think.RadoProjectedModularHeatflow.phase37Witness_preservesWeight

end Think.Validation.SourceTreeCanonical

-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Rank.Variant53778243934bd015c0e3e3a96e17a3fbb4cc239836c32aa7826465319f0527cf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"53778243934bd015c0e3e3a96e17a3fbb4cc239836c32aa7826465319f0527cf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Rank.Variant53778243934bd015c0e3e3a96e17a3fbb4cc239836c32aa7826465319f0527cf","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"53778243934bd015c0e3e3a96e17a3fbb4cc239836c32aa7826465319f0527cf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/53/53778243934bd015c0e3e3a96e17a3fbb4cc239836c32aa7826465319f0527cf--minor-ingredients.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.LinearAlgebra.Matrix.Rank

namespace GRWTSK.Algebra.LinearAlgebra.Rank.Variant53778243934bd015c0e3e3a96e17a3fbb4cc239836c32aa7826465319f0527cf

set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 100000
#check @exists_linearIndependent'
#check @Matrix.linearIndependent_rows_of_det_ne_zero
#check @Matrix.det_eq_zero_of_not_linearIndependent_rows
#check @Matrix.exists_mulVec_eq_zero_iff

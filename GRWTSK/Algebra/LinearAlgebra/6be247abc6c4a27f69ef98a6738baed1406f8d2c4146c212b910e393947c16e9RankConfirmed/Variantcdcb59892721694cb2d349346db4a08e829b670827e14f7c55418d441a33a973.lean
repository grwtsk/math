-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Rank.Variant6be247abc6c4a27f69ef98a6738baed1406f8d2c4146c212b910e393947c16e9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6be247abc6c4a27f69ef98a6738baed1406f8d2c4146c212b910e393947c16e9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Rank.Variant6be247abc6c4a27f69ef98a6738baed1406f8d2c4146c212b910e393947c16e9","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"6be247abc6c4a27f69ef98a6738baed1406f8d2c4146c212b910e393947c16e9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/6b/6be247abc6c4a27f69ef98a6738baed1406f8d2c4146c212b910e393947c16e9--rank-confirmed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.LinearAlgebra.Matrix.Rank

namespace GRWTSK.Algebra.LinearAlgebra.Rank.Variant6be247abc6c4a27f69ef98a6738baed1406f8d2c4146c212b910e393947c16e9

set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 100000
#check @Matrix.rank
#check @Matrix.rank_eq_finrank_span_row
#check @Matrix.rank_transpose
#check @LinearIndependent.rank_matrix
#check @linearIndependent_iff_card_eq_finrank_span
#check @Matrix.rank_of_det_ne_zero
#check @Matrix.rank_submatrix_le
#check @Matrix.rank_mul_eq_right_of_det_ne_zero
#check @Matrix.rank_mul_eq_right_of_isUnit_det
#check @Submodule.finrank_quotient_add_finrank

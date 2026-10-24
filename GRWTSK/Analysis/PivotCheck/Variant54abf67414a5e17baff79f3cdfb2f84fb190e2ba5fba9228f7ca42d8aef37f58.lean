-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FiniteCauchyBinet.Variant121660634fb110aeaca61424cc07577358de982fccb44aeaf8474bc274a216b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"121660634fb110aeaca61424cc07577358de982fccb44aeaf8474bc274a216b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.FiniteCauchyBinet.Variant121660634fb110aeaca61424cc07577358de982fccb44aeaf8474bc274a216b4","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"121660634fb110aeaca61424cc07577358de982fccb44aeaf8474bc274a216b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/atlas-ghh-descent-20261007/scratch/PivotCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.InnerProductSpace.NormDet

namespace GRWTSK.Analysis.FiniteCauchyBinet.Variant121660634fb110aeaca61424cc07577358de982fccb44aeaf8474bc274a216b4

#synth Fintype (Fin 2 ↪o Fin 4)
#check StrictMono.range_inj
#check Equiv.Perm.sign_pow_two
#check Equiv.Perm.sign_sq
#check Int.cast_pow
#check Fintype.sum_subtype
#check Finset.sum_subset
#check Finset.sum_bij
#check Finset.sum_le_card_nsmul
#check Finset.exists_le_of_sum_le
#check Finset.exists_le_of_sum_le'
#check Finset.sum_lt_sum_of_nonempty
#check norm_one_le
#check norm_one_le_iff
#check Matrix.l2_opNorm_one
#check EuclideanSpace.norm_sq_eq
#check ContinuousLinearMap.opNorm_le_bound
#check Matrix.det_toEuclideanLin
#check Matrix.toEuclideanLin_det
#check LinearMap.det_toMatrix
#check Matrix.det_toLin
#check LinearMap.IsSymmetric.det_eq_prod_eigenvalues

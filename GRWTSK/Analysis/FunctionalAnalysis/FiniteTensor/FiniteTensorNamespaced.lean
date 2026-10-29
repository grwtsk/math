-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.TensorVector.Variantfc9e5a132240b71c18db568c83add8e97c3a3b85d0f6f6f56f7cdea5d0403a1a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc9e5a132240b71c18db568c83add8e97c3a3b85d0f6f6f56f7cdea5d0403a1a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.TensorVector.Variantfc9e5a132240b71c18db568c83add8e97c3a3b85d0f6f6f56f7cdea5d0403a1a","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"fc9e5a132240b71c18db568c83add8e97c3a3b85d0f6f6f56f7cdea5d0403a1a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Hilbert/FiniteTensor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Hilbert.Finite
import Mathlib.Algebra.BigOperators.Ring.Finset

/-!
# Exact tensor coordinates for finite Hilbert spaces
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.TensorVector.Variantfc9e5a132240b71c18db568c83add8e97c3a3b85d0f6f6f56f7cdea5d0403a1a

noncomputable section

namespace DAF.Hilbert

universe u v

variable {Left : Type u} {Right : Type v}
variable [Fintype Left] [Fintype Right]

/-- Coordinate tensor product of two vectors in the canonical finite bases. -/
def tensorVector (left : FiniteHilbert Left) (right : FiniteHilbert Right) :
    FiniteHilbert (Left × Right) :=
  WithLp.toLp 2 fun index ↦ left index.1 * right index.2

@[simp]
theorem tensorVector_apply
    (left : FiniteHilbert Left) (right : FiniteHilbert Right)
    (index : Left × Right) :
    tensorVector left right index = left index.1 * right index.2 :=
  rfl

/-- Squared norms multiply under the finite coordinate tensor product. -/
theorem tensorVector_norm_sq
    (left : FiniteHilbert Left) (right : FiniteHilbert Right) :
    ‖tensorVector left right‖ ^ 2 = ‖left‖ ^ 2 * ‖right‖ ^ 2 := by
  rw [EuclideanSpace.norm_sq_eq, EuclideanSpace.norm_sq_eq,
    EuclideanSpace.norm_sq_eq]
  simp_rw [tensorVector_apply, norm_mul, mul_pow]
  rw [Fintype.sum_prod_type]
  simp only []
  rw [← Fintype.sum_mul_sum]

/-- Tensoring unit vectors gives a unit vector. -/
theorem tensorVector_norm
    {left : FiniteHilbert Left} {right : FiniteHilbert Right}
    (left_unit : ‖left‖ = 1) (right_unit : ‖right‖ = 1) :
    ‖tensorVector left right‖ = 1 := by
  have square := tensorVector_norm_sq left right
  rw [left_unit, right_unit] at square
  norm_num only [one_pow, one_mul] at square
  nlinarith [norm_nonneg (tensorVector left right)]

end DAF.Hilbert

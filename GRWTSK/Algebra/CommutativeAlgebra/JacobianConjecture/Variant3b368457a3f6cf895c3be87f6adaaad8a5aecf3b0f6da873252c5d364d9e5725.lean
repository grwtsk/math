-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.AlpogeFableTransform.Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.AlpogeFableTransform.Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b","mathematical_subject":"Algebra.Polynomials","original_sha256":"2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.JacobianConjecture.AlpogeFable
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse

/-!
# Three algebraically nondegenerate fixed points

The polynomial correction has at least three fixed points. Nondegeneracy means
only `det (I - JT) ≠ 0`, with the algebraic Jacobian defined by partial derivatives.
No assertion about attraction, repulsion, hyperbolicity, or exact fiber size is made.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.AlpogeFableTransform.Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b

namespace FormalResearch.JacobianConjecture

noncomputable section

/-- Identity correction at the explicit collision target. -/
def alpogeFableTransform : (Fin 3 → ℚ) → (Fin 3 → ℚ) :=
  fixedPointTransform (R := ℚ) LinearMap.id alpogeFable target

/-- Coordinate polynomials of the fixed-point transformation. -/
def alpogeFableTransformPoly : Fin 3 → MvPolynomial (Fin 3) ℚ :=
  correctionPoly 1 alpogeFablePoly target

theorem alpogeFable_transform_eq_polynomialMap :
    alpogeFableTransform = polynomialMap alpogeFableTransformPoly := by
  unfold alpogeFableTransformPoly
  rw [correction_poly_eval_id, ← alpogeFable_eq_polynomialMap]
  rfl

theorem alpogeFable_transform_fixed_iff (x : Fin 3 → ℚ) :
    Function.IsFixedPt alpogeFableTransform x ↔ alpogeFable x = target :=
  fixed_point_transform_id_fixed_iff (R := ℚ) alpogeFable target x

theorem alpogeFable_transform_fixed_points :
    Function.fixedPoints alpogeFableTransform = alpogeFable ⁻¹' {target} :=
  fixed_point_transform_id_fixed_points (R := ℚ) alpogeFable target

theorem alpogeFable_p_zero_fixed : Function.IsFixedPt alpogeFableTransform pZero :=
  (alpogeFable_transform_fixed_iff pZero).mpr alpogeFable_p_zero

theorem alpogeFable_p_plus_fixed : Function.IsFixedPt alpogeFableTransform pPlus :=
  (alpogeFable_transform_fixed_iff pPlus).mpr alpogeFable_p_plus

theorem alpogeFable_p_minus_fixed : Function.IsFixedPt alpogeFableTransform pMinus :=
  (alpogeFable_transform_fixed_iff pMinus).mpr alpogeFable_p_minus

theorem alpogeFable_three_distinct_fixed_points :
    ∃ a b c : Fin 3 → ℚ, a ≠ b ∧ a ≠ c ∧ b ≠ c ∧
      Function.IsFixedPt alpogeFableTransform a ∧
      Function.IsFixedPt alpogeFableTransform b ∧
      Function.IsFixedPt alpogeFableTransform c :=
  ⟨pZero, pPlus, pMinus, p_zero_ne_p_plus, p_zero_ne_p_minus, p_plus_ne_p_minus,
    alpogeFable_p_zero_fixed, alpogeFable_p_plus_fixed, alpogeFable_p_minus_fixed⟩

/-- The actual formal partial derivatives of the transformation polynomials. -/
def fixedPointJacobian (x : Fin 3 → ℚ) : Matrix (Fin 3) (Fin 3) ℚ :=
  polynomialJacobian alpogeFableTransformPoly x

theorem alpogeFable_one_sub_fixed_point_jacobian (x : Fin 3 → ℚ) :
    1 - fixedPointJacobian x = alpogeFableJacobian x := by
  unfold fixedPointJacobian alpogeFableTransformPoly
  rw [one_sub_correction_poly_jacobian, one_mul]
  rfl

theorem alpogeFable_fixed_point_det (x : Fin 3 → ℚ) :
    Matrix.det (1 - fixedPointJacobian x) = -2 := by
  rw [alpogeFable_one_sub_fixed_point_jacobian, alpogeFable_jacobian_det]

/-- This is stronger than nondegeneracy restricted to the fixed points. -/
theorem alpogeFable_fixed_points_nondegenerate (x : Fin 3 → ℚ) :
    Matrix.det (1 - fixedPointJacobian x) ≠ 0 := by
  rw [alpogeFable_fixed_point_det]
  norm_num

theorem alpogeFable_everywhere_jacobian_invertible (x : Fin 3 → ℚ) :
    IsUnit (alpogeFableJacobian x) := by
  rw [Matrix.isUnit_iff_isUnit_det, isUnit_iff_ne_zero]
  exact alpogeFable_jacobian_ne_zero x

/-- The small certificate combines only the determinant and evaluated collision. -/
theorem alpogeFable_counterexample_certificate :
    (∀ x, Matrix.det (alpogeFableJacobian x) = -2) ∧
      pZero ≠ pPlus ∧ pZero ≠ pMinus ∧ pPlus ≠ pMinus ∧
      alpogeFable pZero = target ∧ alpogeFable pPlus = target ∧
      alpogeFable pMinus = target :=
  ⟨alpogeFable_jacobian_det, p_zero_ne_p_plus, p_zero_ne_p_minus, p_plus_ne_p_minus,
    alpogeFable_p_zero, alpogeFable_p_plus, alpogeFable_p_minus⟩

/-- The explicit polynomial certificate: constant nonzero determinant and noninjectivity. -/
theorem exists_polynomial_constant_jacobian_not_injective :
    ∃ P : Fin 3 → MvPolynomial (Fin 3) ℚ,
      (∀ x, Matrix.det (polynomialJacobian P x) = -2) ∧
      ¬ Function.Injective (polynomialMap P) := by
  refine ⟨alpogeFablePoly, alpogeFable_jacobian_det, ?_⟩
  rw [← alpogeFable_eq_polynomialMap]
  exact alpogeFable_not_injective

/-- A polynomial self-map of `ℚ³` with at least three pairwise distinct fixed
points, algebraically nondegenerate everywhere. The polynomial witness is explicit. -/
theorem exists_polynomial_three_nondegenerate_fixed_points :
    ∃ (T : (Fin 3 → ℚ) → (Fin 3 → ℚ)) (P : Fin 3 → MvPolynomial (Fin 3) ℚ),
      T = polynomialMap P ∧
      (∀ x, Matrix.det (1 - polynomialJacobian P x) ≠ 0) ∧
      ∃ a b c : Fin 3 → ℚ, a ≠ b ∧ a ≠ c ∧ b ≠ c ∧
        Function.IsFixedPt T a ∧ Function.IsFixedPt T b ∧ Function.IsFixedPt T c :=
  ⟨alpogeFableTransform, alpogeFableTransformPoly, alpogeFable_transform_eq_polynomialMap,
    alpogeFable_fixed_points_nondegenerate, alpogeFable_three_distinct_fixed_points⟩

/-- Global uniqueness fails even though every fixed point is nondegenerate. -/
theorem alpogeFable_not_unique_fixed_point :
    ¬ ∃! x, Function.IsFixedPt alpogeFableTransform x := by
  rintro ⟨x, _, h⟩
  exact p_zero_ne_p_plus ((h pZero alpogeFable_p_zero_fixed).trans
    (h pPlus alpogeFable_p_plus_fixed).symm)

end

end FormalResearch.JacobianConjecture

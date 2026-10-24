/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CompactPolynomialDerivatives

/-!
# Literal source normalization and its exact zero-scale boundary

The positive-radius theorem proves the actual residual's analytic prerequisites.
Its unit-correlation algebra uses the independently defined squared integral,
not a rational surrogate. No arithmetic growth or polarity budget is supplied.

Research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceNormalization

open MeasureTheory Set ArithmeticSupplier

noncomputable section

theorem source_normalization_nonneg (A : ℝ) : 0 ≤ sourceNormalization A :=
  integral_nonneg (fun _ => sq_nonneg _)

theorem source_normalization_pos_of_analytic {A : ℝ}
    (continuous : Continuous (sourceResidual A))
    (integrable : Integrable (fun x : ℝ => |sourceResidual A x| ^ 2))
    (center : sourceResidual A 0 ≠ 0) : 0 < sourceNormalization A := by
  apply integral_pos_of_integrable_nonneg_nonzero (x := (0 : ℝ))
    (continuous.abs.pow 2) integrable (fun _ => sq_nonneg _)
  change |sourceResidual A 0| ^ 2 ≠ 0
  exact pow_ne_zero 2 (abs_ne_zero.mpr center)

theorem residual_center_negative_of_formula {A : ℝ} (positive : 0 < A)
    (center : sourceResidual A 0 = A ^ (-(1 / 2 : ℝ)) * (-8 / A ^ 2 - 1 / 4)) :
    sourceResidual A 0 < 0 := by
  rw [center]
  have factor : 0 < A ^ (-(1 / 2 : ℝ)) := Real.rpow_pos_of_pos positive _
  have nonpositive : (-8 : ℝ) / A ^ 2 ≤ 0 :=
    div_nonpos_of_nonpos_of_nonneg (by norm_num) (sq_nonneg A)
  exact mul_neg_of_pos_of_neg factor (by linarith)

/-- Positivity of the actual squared residual integral for every positive radius. -/
theorem source_normalization_pos {A : ℝ} (hA : 0 < A) :
    0 < sourceNormalization A := by
  apply source_normalization_pos_of_analytic
    (SourceResidual.sourceResidual_continuous A)
    (SourceResidual.sourceResidual_square_integrable hA)
  exact ne_of_lt (residual_center_negative_of_formula hA
    (SourceResidual.sourceResidual_zero_eq A))

theorem source_normalization_pos_of_one_le {A : ℝ} (hA : 1 ≤ A) :
    0 < sourceNormalization A :=
  source_normalization_pos (lt_of_lt_of_le zero_lt_one hA)

theorem normalized_source_continuous (A : ℝ) : Continuous (normalizedSource A) :=
  (SourceResidual.sourceResidual_continuous A).div_const _

theorem normalized_source_square {A : ℝ} (positive : 0 < sourceNormalization A) (x : ℝ) :
    normalizedSource A x ^ 2 = |sourceResidual A x| ^ 2 / sourceNormalization A := by
  rw [normalizedSource, div_pow, Real.sq_sqrt positive.le, sq_abs]

theorem normalized_source_square_integral {A : ℝ} (positive : 0 < sourceNormalization A) :
    (∫ x : ℝ, normalizedSource A x ^ 2) = 1 := by
  calc
    (∫ x : ℝ, normalizedSource A x ^ 2) =
        ∫ x : ℝ, |sourceResidual A x| ^ 2 / sourceNormalization A := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (normalized_source_square positive)
    _ = sourceNormalization A / sourceNormalization A := integral_div _ _
    _ = 1 := div_self positive.ne'

theorem normalized_source_square_integrable {A : ℝ}
    (positive : 0 < sourceNormalization A) :
    Integrable (fun x : ℝ => normalizedSource A x ^ 2) := by
  apply integrable_of_integral_eq_one
  exact normalized_source_square_integral positive

theorem correlation_center_eq_one {A : ℝ} (positive : 0 < sourceNormalization A) :
    correlation A 0 = 1 := by
  simpa only [correlation, sub_zero, ← sq] using normalized_source_square_integral positive

theorem normalized_source_square_integrable_of_pos {A : ℝ} (hA : 0 < A) :
    Integrable (fun x : ℝ => normalizedSource A x ^ 2) :=
  normalized_source_square_integrable (source_normalization_pos hA)

theorem normalized_source_square_integral_of_pos {A : ℝ} (hA : 0 < A) :
    (∫ x : ℝ, normalizedSource A x ^ 2) = 1 :=
  normalized_source_square_integral (source_normalization_pos hA)

theorem correlation_center_eq_one_of_pos {A : ℝ} (hA : 0 < A) :
    correlation A 0 = 1 :=
  correlation_center_eq_one (source_normalization_pos hA)

theorem correlation_center_eq_one_of_one_le {A : ℝ} (hA : 1 ≤ A) :
    correlation A 0 = 1 :=
  correlation_center_eq_one (source_normalization_pos_of_one_le hA)

theorem normalized_source_eq_zero_of_normalization_zero {A : ℝ}
    (zero : sourceNormalization A = 0) (x : ℝ) : normalizedSource A x = 0 := by
  simp [normalizedSource, zero]

theorem correlation_eq_zero_of_normalization_zero {A : ℝ}
    (zero : sourceNormalization A = 0) (t : ℝ) : correlation A t = 0 := by
  simp only [correlation, normalized_source_eq_zero_of_normalization_zero zero,
    zero_mul, integral_zero]

theorem source_residual_zero_scale (x : ℝ) : sourceResidual 0 x = 0 := by
  rw [SourceResidual.sourceResidual_eq]
  norm_num [SourceResidual.sourceSecond, source]

theorem source_normalization_zero_scale : sourceNormalization 0 = 0 := by
  simp [sourceNormalization, source_residual_zero_scale]

theorem correlation_zero_scale (t : ℝ) : correlation 0 t = 0 :=
  correlation_eq_zero_of_normalization_zero source_normalization_zero_scale t

theorem correlation_center_exact (A : ℝ) :
    correlation A 0 = if 0 < sourceNormalization A then 1 else 0 := by
  split_ifs with positive
  · exact correlation_center_eq_one positive
  · have zero : sourceNormalization A = 0 :=
      le_antisymm (le_of_not_gt positive) (source_normalization_nonneg A)
    exact correlation_eq_zero_of_normalization_zero zero 0

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceNormalization

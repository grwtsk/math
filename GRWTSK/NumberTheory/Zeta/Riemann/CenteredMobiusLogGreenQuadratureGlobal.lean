/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenQuadratureError
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

namespace GRWTSK.RiemannHypothesis

/-- Exact partition of the continuum background into the X mesh cells. -/
theorem greenFourierBackgroundCoordinate_eq_sum_cells
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    greenFourierBackgroundCoordinate k =
      ∑ j ∈ Finset.Icc 1 X,
        ∫ t in ((j - 1 : ℕ) : ℝ) / (X : ℝ)..
          (j : ℝ) / (X : ℝ),
          greenFourierBackgroundIntegrand k t := by
  unfold greenFourierBackgroundCoordinate
  have hXr : (0 : ℝ) < X := by exact_mod_cast hX
  -- Telescope adjacent interval integrals across the uniform partition.
  induction X using Nat.case_strong_induction_on with
  | hz =>
      omega
  | hs X ih =>
      by_cases hX0 : X = 0
      · subst X
        simp [greenFourierBackgroundIntegrand]
      · have hXp : 1 ≤ X := by omega
        have ih' := ih X (by omega) hXp k
        rw [show Finset.Icc 1 (X + 1) =
            insert (X + 1) (Finset.Icc 1 X) by
          ext j
          simp
          omega]
        rw [Finset.sum_insert]
        · rw [← ih']
          have hsplit :
              ((X : ℝ) / (X + 1 : ℕ)) =
                ((X : ℝ) / ((X + 1 : ℕ) : ℝ)) := rfl
          rw [intervalIntegral.integral_add_adjacent_intervals
            (show (0 : ℝ) ≤ (X : ℝ) / (X + 1 : ℕ) by positivity)
            (show (X : ℝ) / (X + 1 : ℕ) ≤ 1 by
              exact (div_le_one (by positivity)).2 (by norm_num))]
          congr 1
          · apply intervalIntegral.integral_congr
            intro t ht
            rfl
          · simp only [Nat.add_sub_cancel, Nat.cast_add, Nat.cast_one]
            field_simp
        · simp

/-- Exact residual equals the finite sum of the cell errors. -/
theorem greenCenteringResidual_eq_cellErrorSum
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    greenCenteringResidual X k =
      greenFourierQuadratureCellErrorSum X k := by
  rw [greenCenteringResidual_eq_integral_sub_rightRiemannSum hX]
  unfold greenFourierQuadratureCellErrorSum
    greenFourierRightRiemannSum greenFourierQuadratureCellError
  rw [greenFourierBackgroundCoordinate_eq_sum_cells hX]
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro j hj
  rfl

/-- Deterministic global quadrature bound obtained by summing X cell bounds. -/
theorem norm_greenCenteringResidual_le
    {X : ℕ} (hX : 1 ≤ X)
    {k : ℤ} (hk : k ≠ 0) :
    ‖greenCenteringResidual X k‖ ≤
      greenFourierDerivativeMajorant k / (X : ℝ) := by
  rw [greenCenteringResidual_eq_cellErrorSum hX]
  unfold greenFourierQuadratureCellErrorSum
  calc
    ‖∑ j ∈ Finset.Icc 1 X, greenFourierQuadratureCellError X k j‖ ≤
        ∑ j ∈ Finset.Icc 1 X,
          ‖greenFourierQuadratureCellError X k j‖ := by
      exact norm_sum_le _ _
    _ ≤ ∑ _j ∈ Finset.Icc 1 X,
        greenFourierDerivativeMajorant k / (X : ℝ)^2 := by
      apply Finset.sum_le_sum
      intro j hj
      exact norm_greenFourierQuadratureCellError_le hX hk hj
    _ = greenFourierDerivativeMajorant k / (X : ℝ) := by
      have hcard : (Finset.Icc 1 X).card = X := by simp
      rw [Finset.sum_const_nat, hcard]
      have hXr : (X : ℝ) ≠ 0 := by positivity
      field_simp
      ring

/-- Fully explicit frequency form. -/
theorem norm_greenCenteringResidual_le_explicit
    {X : ℕ} (hX : 1 ≤ X)
    {k : ℤ} (hk : k ≠ 0) :
    ‖greenCenteringResidual X k‖ ≤
      (1 + 1 / (Real.pi * |(k : ℝ)|)) / (X : ℝ) := by
  simpa [greenFourierDerivativeMajorant] using
    norm_greenCenteringResidual_le hX hk

end GRWTSK.RiemannHypothesis

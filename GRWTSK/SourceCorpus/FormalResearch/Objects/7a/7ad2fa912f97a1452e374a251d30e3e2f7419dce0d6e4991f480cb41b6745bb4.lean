import FormalResearch.RiemannHypothesis.SourceProjectionReadout
import FormalResearch.RiemannHypothesis.SourceMangoldtNorm

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceProjectionScalarNorm

open SourceProjectionReadout SourceMangoldtInteraction SourceMangoldtNorm
open SourceFirstPrimeAbel SourceReflectionDuality

theorem scalarContinuumAnchor_norm_le_two (A : ℝ) (hA : 1 ≤ A) :
    ‖scalarContinuumAnchor A‖ ≤ 2 := by
  unfold scalarContinuumAnchor
  calc
    _ ≤ ‖(criticalContinuousMoment A : ℂ)‖ * ‖ContinuousLinearMap.id ℂ ComplexL2‖ :=
      norm_smul_le _ _
    _ ≤ ‖(criticalContinuousMoment A : ℂ)‖ * 1 :=
      mul_le_mul_of_nonneg_left ContinuousLinearMap.norm_id_le (norm_nonneg _)
    _ = |criticalContinuousMoment A| := by
      rw [Complex.norm_real, Real.norm_eq_abs, mul_one]
    _ ≤ 2 := criticalContinuousMoment_abs_le_two A hA

theorem scalarCompensatedPrimeOperator_norm_lower {A : ℝ} (hA : 1 ≤ A) :
    2 * A - Real.log 2 - 3 ≤ ‖scalarCompensatedPrimeOperator A‖ := by
  have hm := mangoldtInteraction_norm_lower hA
  have hc := scalarContinuumAnchor_norm_le_two A hA
  have hn := norm_sub_norm_le (mangoldtInteraction A) (scalarContinuumAnchor A)
  change ‖mangoldtInteraction A‖ - ‖scalarContinuumAnchor A‖ ≤
    ‖scalarCompensatedPrimeOperator A‖ at hn
  linarith

theorem scalarCompensatedPrimeOperator_norm_not_eventually_bounded :
    ¬ ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → ‖scalarCompensatedPrimeOperator A‖ ≤ D := by
  rintro ⟨D, _, R, hR, h⟩
  let A : ℝ := max R (D + Real.log 2 + 4)
  have hAR : R ≤ A := le_max_left _ _
  have hAD : D + Real.log 2 + 4 ≤ A := le_max_right _ _
  have hl := scalarCompensatedPrimeOperator_norm_lower (hR.trans hAR)
  have hu := h A hAR
  linarith

end FormalResearch.RiemannHypothesis.SourceProjectionScalarNorm

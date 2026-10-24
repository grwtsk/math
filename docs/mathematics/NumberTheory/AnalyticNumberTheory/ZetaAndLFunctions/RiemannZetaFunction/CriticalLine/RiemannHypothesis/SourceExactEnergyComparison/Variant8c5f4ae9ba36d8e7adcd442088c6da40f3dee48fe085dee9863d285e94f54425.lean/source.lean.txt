import SourceExactEnergyMeanConsumer

/-!
The improved conditional budget is compared with the existing F7 consumer.
The finite prefix and all independently fixed source terms remain literal.
Direction and conceptual origin: grwtsk contributors.
Formal calculation and source comparison: OpenAI Codex assistance.
-/

set_option autoImplicit false
noncomputable section
namespace RH16ExactEnergyComparison

open RH16ExactTailEnergy RH16ExactEnergyMean RH16F7TailCalibration
open RH16CompleteXiTail RH16CompleteXiComplement RH16ActualXiFixedFront
open RH16ActualXiPositiveBlock RH16ResumeApplication RH16ResumeBudget
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

theorem exactMeanTailBudget_le_original (M1 R : ℝ) (hM1 : 0 ≤ M1) :
    exactMeanTailBudget M1 R ≤ meanTailBudget M1 R := by
  have hQ : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
  have he := tailEnergyCoefficient_le_five hQ
  have hs : Real.sqrt (tailEnergyCoefficient (calibratedRadius R)) ≤ 5 := by
    apply Real.sqrt_le_iff.mpr
    constructor
    · norm_num
    · linarith
  have hd : 2 * tailEnergyCoefficient (calibratedRadius R) / calibratedRadius R ≤
      2 * physicalCurvatureCoefficient / calibratedRadius R := by
    apply div_le_div_of_nonneg_right _ (calibratedRadius_pos R).le
    norm_num [physicalCurvatureCoefficient] at *
    linarith
  exact mul_le_mul_of_nonneg_right (add_le_add hs hd) hM1

theorem exactMeanAtomBudget_le_original (M1 R : ℝ) (hM1 : 0 ≤ M1) :
    exactMeanAtomBudget M1 R ≤ meanAtomBudget M1 R := by
  rw [exactMeanAtomBudget_eq, meanAtomBudget_eq]
  apply max_le_max le_rfl
  linarith only [exactMeanTailBudget_le_original M1 R hM1]

theorem exactMeanResidualBudget_le_original (M1 R : ℝ) (hM1 : 0 ≤ M1) :
    exactMeanResidualBudget M1 R ≤ meanResidualBudget M1 R := by
  unfold exactMeanResidualBudget meanResidualBudget
  linarith only [exactMeanAtomBudget_le_original M1 R hM1]

/-- The gain is conditional on which atom-budget branch is active. -/
theorem atom_budget_gain_when_active (M1 R : ℝ)
    (hactive : 0 ≤ exactMeanTailBudget M1 R + fixedFrontBudget - blockMargin)
    (hM1 : 0 ≤ M1) :
    meanAtomBudget M1 R - exactMeanAtomBudget M1 R =
      meanTailBudget M1 R - exactMeanTailBudget M1 R := by
  have hold : 0 ≤ meanTailBudget M1 R + fixedFrontBudget - blockMargin := by
    linarith only [hactive, exactMeanTailBudget_le_original M1 R hM1]
  rw [exactMeanAtomBudget_eq, meanAtomBudget_eq,
    max_eq_right hactive, max_eq_right hold]
  ring

/-- The actual all-scale min can cap the improvement; the same prefix is retained. -/
theorem original_lower_budget_le_exact (M1 R : ℝ) (hM1 : 0 ≤ M1) :
    min (originalPrefixLower (calibratedRadius R))
      (archimedeanMultiplier 0 - 2 * meanResidualBudget M1 R) ≤
    min (originalPrefixLower (calibratedRadius R))
      (archimedeanMultiplier 0 - 2 * exactMeanResidualBudget M1 R) := by
  apply min_le_min le_rfl
  linarith only [exactMeanResidualBudget_le_original M1 R hM1]

theorem tail_lower_gain_when_active (M1 R : ℝ)
    (hactive : 0 ≤ exactMeanTailBudget M1 R + fixedFrontBudget - blockMargin)
    (hM1 : 0 ≤ M1) :
    (archimedeanMultiplier 0 - 2 * exactMeanResidualBudget M1 R) -
      (archimedeanMultiplier 0 - 2 * meanResidualBudget M1 R) =
        2 * (meanTailBudget M1 R - exactMeanTailBudget M1 R) := by
  have h := atom_budget_gain_when_active M1 R hactive hM1
  unfold exactMeanResidualBudget meanResidualBudget
  linarith only [h]

end RH16ExactEnergyComparison

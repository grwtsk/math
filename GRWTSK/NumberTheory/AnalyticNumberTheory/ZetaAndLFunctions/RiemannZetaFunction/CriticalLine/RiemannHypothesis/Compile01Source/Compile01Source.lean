import SourceCompleteXiTailConsumer

/-!
Apply a supplied physical-scale tail estimate at the usable radius itself.
The original source, PLUS first-atom boundary, finite front and positive block
remain those of the exact native consumers. No arithmetic witness is supplied.
Direction, theorem selection, corrections and evaluation: grwtsk contributors.
Formal construction and focused replay: Codex/ChatGPT assistance.
-/

set_option autoImplicit false
noncomputable section
namespace RH16F7TailCalibration

open RH16CompleteXiComplement RH16CompleteXiTail RH16ActualXiFixedFront
open RH16ActualXiPositiveBlock RH16ResumeApplication RH16ResumeBudget
open FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork
open FormalResearch.RiemannHypothesis.SourceLeadingTailBudget
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization

/-- The actual derivative-energy curvature coefficient; its source audit is separate. -/
def physicalCurvatureCoefficient : ℝ := 162826 / 7623

/-- A supplied mean bound is consumed only at the actual calibrated radius. -/
def meanTailBudget (M1 R : ℝ) : ℝ :=
  (5 + 2 * physicalCurvatureCoefficient / calibratedRadius R) * M1

/-- The proved finite front is paid once and the favorable block retained. -/
def meanAtomBudget (M1 R : ℝ) : ℝ := tailAtomBudget (meanTailBudget M1 R)

/-- The signed residual budget retains the original independently defined baseline. -/
def meanResidualBudget (M1 R : ℝ) : ℝ :=
  meanAtomBudget M1 R - 3 / 8 + criticalBaselineCorrection (calibratedRadius R)

theorem calibratedRadius_pos (R : ℝ) : 0 < calibratedRadius R := by
  have h : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
  linarith

theorem calibratedRadius_idempotent (R : ℝ) :
    calibratedRadius (calibratedRadius R) = calibratedRadius R := by
  exact max_eq_right (le_max_left _ _)

theorem meanTailBudget_nonneg (M1 R : ℝ) (hM1 : 0 ≤ M1) :
    0 ≤ meanTailBudget M1 R := by
  unfold meanTailBudget physicalCurvatureCoefficient
  positivity

theorem meanAtomBudget_eq (M1 R : ℝ) :
    meanAtomBudget M1 R = max 0 (meanTailBudget M1 R + fixedFrontBudget - blockMargin) := by
  unfold meanAtomBudget tailAtomBudget complementAtomBudget
  congr 1
  ring

theorem meanAtomBudget_nonneg (M1 R : ℝ) : 0 ≤ meanAtomBudget M1 R :=
  complementAtomBudget_nonneg _

/-- The exact physical coefficient decreases when the real source scale increases. -/
theorem dynamic_mean_budget_le (M1 R A : ℝ) (hM1 : 0 ≤ M1)
    (hA : calibratedRadius R ≤ A) :
    (5 + 2 * physicalCurvatureCoefficient / A) * M1 ≤ meanTailBudget M1 R := by
  have hd := div_le_div_of_nonneg_left
    (by norm_num [physicalCurvatureCoefficient] : 0 ≤ 2 * physicalCurvatureCoefficient)
    (calibratedRadius_pos R) hA
  exact mul_le_mul_of_nonneg_right (add_le_add_left hd 5) hM1

/-- Convert a supplied scale-sensitive tail estimate at Rstar, not at R. -/
theorem complete_tail_lower_at_calibrated_radius (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hdynamic : ∀ A : ℝ, R ≤ A →
      -((5 + 2 * physicalCurvatureCoefficient / A) * M1) ≤ completeXiTail A) :
    ∀ A : ℝ, calibratedRadius R ≤ A → -meanTailBudget M1 R ≤ completeXiTail A := by
  intro A hA
  exact (neg_le_neg (dynamic_mean_budget_le M1 R A hM1 hA)).trans
    (hdynamic A ((le_max_right _ _).trans hA))

/-- At the user's initial radius 40, the applicable radius is exactly 91. -/
theorem calibratedRadius_forty : calibratedRadius 40 = 91 := by
  norm_num [calibratedRadius]

theorem meanTailBudget_forty (M1 : ℝ) :
    meanTailBudget M1 40 = (3794117 / 693693 : ℝ) * M1 := by
  norm_num [meanTailBudget, physicalCurvatureCoefficient, calibratedRadius]

/-- The corresponding radius-91 coefficient is identical. -/
theorem meanTailBudget_ninety_one (M1 : ℝ) :
    meanTailBudget M1 91 = (3794117 / 693693 : ℝ) * M1 := by
  norm_num [meanTailBudget, physicalCurvatureCoefficient, calibratedRadius]

/-- The original atom witness keeps the original PLUS gamma handling at Rstar. -/
theorem remaining_lower_of_dynamic_mean (M1 R A : ℝ) (hM1 : 0 ≤ M1)
    (hA : calibratedRadius R ≤ A)
    (hdynamic : ∀ X : ℝ, R ≤ X →
      -((5 + 2 * physicalCurvatureCoefficient / X) * M1) ≤ completeXiTail X) :
    -meanAtomBudget M1 R ≤ remainingAtomWork A := by
  apply remaining_lower_of_complete_complement (fixedFrontBudget + meanTailBudget M1 R) A
  · exact (le_max_left _ _).trans hA
  · apply complete_complement_lower_of_tail (meanTailBudget M1 R) A
    · have h : (91 : ℝ) ≤ A := (le_max_left _ _).trans hA
      linarith
    · exact complete_tail_lower_at_calibrated_radius M1 R hM1 hdynamic A hA

theorem atom_witness_of_dynamic_mean (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hdynamic : ∀ A : ℝ, R ≤ A →
      -((5 + 2 * physicalCurvatureCoefficient / A) * M1) ≤ completeXiTail A) :
    ∃ D : ℝ, 0 ≤ D ∧ ∃ Rstar : ℝ, 40 ≤ Rstar ∧
      ∀ A : ℝ, Rstar ≤ A → -D ≤ remainingAtomWork A := by
  refine ⟨meanAtomBudget M1 R, meanAtomBudget_nonneg _ _, calibratedRadius R, ?_, ?_⟩
  · have h : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
    linarith
  · intro A hA
    exact remaining_lower_of_dynamic_mean M1 R A hM1 hA hdynamic

/-- Invoke the native tail wrapper at Rstar itself and retain prefix P(Rstar). -/
theorem all_real_lower_of_dynamic_mean (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hdynamic : ∀ A : ℝ, R ≤ A →
      -((5 + 2 * physicalCurvatureCoefficient / A) * M1) ≤ completeXiTail A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (calibratedRadius R))
        (archimedeanMultiplier 0 - 2 * meanResidualBudget M1 R) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  have h := all_real_lower_of_complete_tail (meanTailBudget M1 R) (calibratedRadius R)
    (complete_tail_lower_at_calibrated_radius M1 R hM1 hdynamic)
  simpa only [calibratedRadius_idempotent, meanResidualBudget, meanAtomBudget] using h

theorem estimate_of_dynamic_mean (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hdynamic : ∀ A : ℝ, R ≤ A →
      -((5 + 2 * physicalCurvatureCoefficient / A) * M1) ≤ completeXiTail A) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, all_real_lower_of_dynamic_mean M1 R hM1 hdynamic⟩

theorem residual_upper_of_dynamic_mean (M1 R A : ℝ) (hM1 : 0 ≤ M1)
    (hA : calibratedRadius R ≤ A)
    (hdynamic : ∀ X : ℝ, R ≤ X →
      -((5 + 2 * physicalCurvatureCoefficient / X) * M1) ≤ completeXiTail X) :
    mertensResidual A ≤ meanResidualBudget M1 R := by
  have h := residual_upper_of_complete_tail (meanTailBudget M1 R) (calibratedRadius R) A
    (by simpa only [calibratedRadius_idempotent] using hA)
    (complete_tail_lower_at_calibrated_radius M1 R hM1 hdynamic A hA)
  simpa only [calibratedRadius_idempotent, meanResidualBudget, meanAtomBudget] using h

/-- Preserve the sharp leading transport's exact common radius. -/
theorem actual_leading_upper_of_dynamic_mean (M1 R A : ℝ) (hM1 : 0 ≤ M1)
    (hA : max 25600 (calibratedRadius R) ≤ A)
    (hdynamic : ∀ X : ℝ, R ≤ X →
      -((5 + 2 * physicalCurvatureCoefficient / X) * M1) ≤ completeXiTail X) :
    actualLeadingRenormalizedTail A ≤ meanResidualBudget M1 R -
      (riemannZeta (1 / 2)).re + 3103 / 50 := by
  have h := actual_leading_upper_of_complete_tail (meanTailBudget M1 R)
    (calibratedRadius R) A (by simpa only [calibratedRadius_idempotent] using hA)
    (complete_tail_lower_at_calibrated_radius M1 R hM1 hdynamic A ((le_max_right _ _).trans hA))
  simpa only [calibratedRadius_idempotent, meanResidualBudget, meanAtomBudget] using h

end RH16F7TailCalibration

import SourceExactXiHeadValue
import SourceExactHeadTailConsumer

/-!
The exact finite prime-power source value is substituted into the original consumers.
This adds no hypothesis or correction and supplies no arithmetic tail/mean witness.
Direction and conceptual origin: grwtsk contributors.
Native consumer substitution: OpenAI Codex assistance.
-/
set_option autoImplicit false
noncomputable section
namespace RH16ExplicitHeadBudget
open RH16ExactXiHeadValue RH16ExactXiHead RH16ExactHeadTail RH16FiniteGammaReturn
open RH16ExactEnergyMean RH16ActualF7Mean RH16CompleteXiTail RH16CompleteXiComplement
open RH16ResumeApplication RH16ResumeBudget
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceLeadingCesaroPropagation
open FormalResearch.RiemannHypothesis.SourceLeadingTailBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

/-- Explicit logarithms and gamma replace the literal head integral with zero loss. -/
theorem exact_atom_budget_explicit (K Q : ℝ) :
    exactHeadAtomBudget K Q =
      max 0 (K + explicitXiHeadJ / 2 + exactHeadErrorBudget Q - gammaTraceFloor Q) := by
  unfold exactHeadAtomBudget
  rw [actualXiHeadJ_eq_explicit]

theorem exact_residual_budget_explicit (K Q : ℝ) :
    exactHeadResidualBudget K Q =
      max 0 (K + explicitXiHeadJ / 2 + exactHeadErrorBudget Q - gammaTraceFloor Q) -
        3 / 8 + criticalBaselineCorrection Q := by
  unfold exactHeadResidualBudget
  rw [exact_atom_budget_explicit]

/-- The literal source tail reaches its explicit original all-real lower constant. -/
theorem all_real_lower_of_explicit_head_tail (K Q : ℝ) (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A → -K ≤ completeXiTail A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower Q)
        (archimedeanMultiplier 0 - 2 *
          (max 0 (K + explicitXiHeadJ / 2 + exactHeadErrorBudget Q - gammaTraceFloor Q) -
            3 / 8 + criticalBaselineCorrection Q)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  simpa only [exact_residual_budget_explicit] using
    all_real_lower_of_exact_head_tail K Q hQ htail

/-- The actual F7 mean's conditional source application carries the same radius/prefix. -/
theorem all_real_lower_of_explicit_head_mean (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hmean : actualF7MeanBound M1 R) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (calibratedRadius R))
        (archimedeanMultiplier 0 - 2 *
          (max 0 (exactMeanTailBudget M1 R + explicitXiHeadJ / 2 +
            exactHeadErrorBudget (calibratedRadius R) - gammaTraceFloor (calibratedRadius R)) -
              3 / 8 + criticalBaselineCorrection (calibratedRadius R))) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  simpa only [exact_residual_budget_explicit] using
    all_real_lower_of_exact_head_mean M1 R hM1 hR hmean

/-- Carry the explicit source constant into the established leading transition domain. -/
theorem leading_upper_of_explicit_head_tail (K Q A : ℝ) (hQ : 91 ≤ Q)
    (hA : max 25600 Q ≤ A) (htail : -K ≤ completeXiTail A) :
    actualLeadingRenormalizedTail A ≤
      max 0 (K + explicitXiHeadJ / 2 + exactHeadErrorBudget Q - gammaTraceFloor Q) -
        3 / 8 + criticalBaselineCorrection Q - (riemannZeta (1 / 2)).re + 3103 / 50 := by
  simpa only [exact_residual_budget_explicit] using
    leading_upper_of_exact_head_tail K Q A hQ hA htail
end RH16ExplicitHeadBudget

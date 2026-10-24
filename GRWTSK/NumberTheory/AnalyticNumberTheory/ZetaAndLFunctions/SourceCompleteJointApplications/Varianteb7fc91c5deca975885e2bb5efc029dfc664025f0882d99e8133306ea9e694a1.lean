import SourceActualXiPrincipalTailWitness

/-!
Apply the existing direct and complete-tail consumers after exact joint source
cancellation. The complete signed arithmetic upper witness remains explicit.
Direction, theorem selection, corrections and evaluation: grwtsk contributors.
Conditional proof construction and focused checking: OpenAI Codex assistance.
-/
set_option autoImplicit false
noncomputable section
namespace RH16CompleteJointApplications
open RH16CompleteDivisorRadiusTailReturn RH16CompleteDivisorCancellation
open RH16ActualXiPrincipalTailWitness RH16CompleteXiComplement RH16CompleteXiTail
open RH16ResumeApplication RH16ResumeBudget
open FormalResearch.RiemannHypothesis
open SourceLeadingCesaroPropagation SourceLeadingTailBudget SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization

/-- Preferred direct route: no finite head or tail round-trip cost. -/
theorem actual_leading_upper_of_complete_signed_block (DX R A : ℝ)
    (hx : ∀ X : ℝ, R ≤ X → completeSignedSamplingBlock X ≤ DX)
    (hA : max 25600 (calibratedRadius R) ≤ A) :
    actualLeadingRenormalizedTail A ≤ DX + radiusSamplingBudget (calibratedRadius R) -
      (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
  have hR91 : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
  exact residual_upper_of_complete_block_at_radius A DX (calibratedRadius R)
    (by linarith) ((le_max_right _ _).trans hA)
    (hx A ((le_max_right _ _).trans ((le_max_right _ _).trans hA)))

/-- Optional principal-tail transport is invoked at Rstar and keeps P(Rstar). -/
theorem all_real_tail_lower_of_complete_signed_block (DX R : ℝ)
    (hx : ∀ X : ℝ, R ≤ X → completeSignedSamplingBlock X ≤ DX) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (calibratedRadius R))
        (archimedeanMultiplier 0 - 2 *
          (tailAtomBudget (principalCompleteTailBudget DX R) - 3 / 8 +
            criticalBaselineCorrection (calibratedRadius R))) ≤
              sourceQuadraticValue explicitSecondDerivative A := by
  have hR91 : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
  have hi : calibratedRadius (calibratedRadius R) = calibratedRadius R :=
    max_eq_right hR91
  have h := all_real_lower_of_complete_tail (principalCompleteTailBudget DX R)
    (calibratedRadius R) (complete_tail_lower_of_actual_signed_block DX R hx)
  simpa only [hi] using h

/-- The optional tail leading return uses only the common sharp valid domain. -/
theorem actual_leading_tail_upper_of_complete_signed_block (DX R A : ℝ)
    (hx : ∀ X : ℝ, R ≤ X → completeSignedSamplingBlock X ≤ DX)
    (hA : max 25600 (calibratedRadius R) ≤ A) :
    actualLeadingRenormalizedTail A ≤
      tailAtomBudget (principalCompleteTailBudget DX R) - 3 / 8 +
        criticalBaselineCorrection (calibratedRadius R) - (riemannZeta (1 / 2)).re +
          3103 / 50 := by
  have hR91 : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
  have hi : calibratedRadius (calibratedRadius R) = calibratedRadius R :=
    max_eq_right hR91
  have h := actual_leading_upper_of_complete_tail (principalCompleteTailBudget DX R)
    (calibratedRadius R) A (by simpa only [hi] using hA)
    (complete_tail_lower_of_actual_signed_block DX R hx A ((le_max_right _ _).trans hA))
  simpa only [hi] using h

end RH16CompleteJointApplications

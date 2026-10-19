import ActualStablePeanoCubic
import SourceCorrectedOmegaPeanoTaylor

/-!
Independent exact type agreement for the actual stable-kernel source and the
root corrected-Omega consumer. No new arithmetic assumption is discharged.
AI attribution: OpenAI Codex independent signed reduction challenge.
-/
set_option autoImplicit false
namespace RH16SignedIndependentLowerKernelReview
open FormalResearch.RiemannHypothesis.SourceCorrectedOmegaPeanoTaylor
open RH16IndependentChallengeNext
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource

/-- Literal actual-source remainder definitions agree, without profile substitution. -/
theorem actual_remainder_type_agreement (A t : ℝ) :
    actualPeanoCubicRemainder A t = actualStablePeanoCubicRemainder A t := rfl

/-- The independently proved stable-kernel norm bound discharges the exact actual rho leaf. -/
theorem actual_root_remainder_abs_le (A t : ℝ) (hA : 91 ≤ A) :
    |actualPeanoCubicRemainder A t| ≤ 320 * 67 / A ^ 4 := by
  rw [actual_remainder_type_agreement]
  exact actualStablePeanoCubicRemainder_abs_le A t hA

/-- Exactly the finite row callback requested by the original corrected consumer is supplied. -/
theorem actual_row_bound_for_root_consumer (A : ℝ) (hA : 91 ≤ A) :
    ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |actualPeanoCubicRemainder A (Real.log (d : ℝ))| ≤ 320 * 67 / A ^ 4 := by
  intro d _
  exact actual_root_remainder_abs_le A (Real.log (d : ℝ)) hA

end RH16SignedIndependentLowerKernelReview

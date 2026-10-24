# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ActualPeanoCubicTypeAgreement.Variant79778a1eca92be28da365c25cf0bf6872f88c0a6cb791f0d8960e1a65d55cd91

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `801af2b612bd79dcb6e4c545434950daac189d17` · SHA-256 `79778a1eca92be28da365c25cf0bf6872f88c0a6cb791f0d8960e1a65d55cd91`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

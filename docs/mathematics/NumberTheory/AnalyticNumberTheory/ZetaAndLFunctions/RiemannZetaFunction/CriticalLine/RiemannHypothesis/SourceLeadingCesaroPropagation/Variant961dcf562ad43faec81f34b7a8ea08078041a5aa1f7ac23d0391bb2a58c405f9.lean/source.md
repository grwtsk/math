# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceLeadingCesaroPropagation.Variant961dcf562ad43faec81f34b7a8ea08078041a5aa1f7ac23d0391bb2a58c405f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `092a476f53e971c26d5dab8ae6dc0b6361081107` · SHA-256 `961dcf562ad43faec81f34b7a8ea08078041a5aa1f7ac23d0391bb2a58c405f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceFiveCesaroPrimitiveConsumer
import SourceCesaroSignedPairingConsumer
import SourceLeadingTailQuantitative

/-!
Native follow-through of the sharper actual Cesaro alternatives to the unchanged
leading signed readout. Every arithmetic upper witness remains an explicit input.
This comparison keeps both original routes: the radius-91 consumer remains the
direct return to the original estimate. Direction: grwtsk contributors.
Formal construction and local verification: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceLeadingCesaroPropagation
open SourceLeadingTailQuantitative SourceLeadingTailBudget
open SourceLeadingFullKappaReduction SourcePairing
open RH16ResumeApplication RH16ResumeBudget RH16FiveCesaroConsumer
open RH16CesaroPrimitive RH16CesaroSignedPairing SourceFirstAtomSignedWork
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual
noncomputable section

/-- Transport a supplied residual upper bound through the actual sharp calibration. -/
theorem actual_leading_upper_of_residual_upper (A B : ℝ) (hA : 25600 ≤ A)
    (hB : mertensResidual A ≤ B) :
    actualLeadingRenormalizedTail A ≤ B - (riemannZeta (1 / 2)).re + 3103 / 50 := by
  have he := (abs_lt.mp (residual_sub_actual_leading_sub_zeta_abs_lt_sharp hA)).1
  linarith

/-- The checked 522/91 primitive route now supplies a native leading bound, conditionally. -/
theorem actual_leading_upper_of_five_cesaro (M A : ℝ) (hM : 0 ≤ M)
    (hA : 25600 ≤ A)
    (hG : ∀ t : ℝ, Real.log 2 ≤ t →
      |actualCesaroPrimitive t| ≤ M * (t - Real.log 2)) :
    actualLeadingRenormalizedTail A ≤
      (522 / 91 : ℝ) * M - 3 / 8 + criticalBaselineCorrection 91 -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply actual_leading_upper_of_residual_upper A _ hA
  exact residual_upper_of_remaining_signed_lower ((522 / 91 : ℝ) * M) 91 A
    (by norm_num) (by linarith)
    (remainingAtomWork_lower_of_five_cesaro M A hM (by linarith) hG)

/-- The weaker joint signed pairing route does not require a global absolute primitive bound. -/
theorem actual_leading_upper_of_signed_cesaro (J A : ℝ) (hA : 25600 ≤ A)
    (hJ : -J ≤ signedCesaroPairing A) :
    actualLeadingRenormalizedTail A ≤ J - 3 / 8 + criticalBaselineCorrection 91 -
      (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply actual_leading_upper_of_residual_upper A _ hA
  exact residual_upper_of_remaining_signed_lower J 91 A (by norm_num) (by linarith)
    (remainingAtomWork_lower_of_signed_pairing J A (by linarith) hJ)

end
end FormalResearch.RiemannHypothesis.SourceLeadingCesaroPropagation
```

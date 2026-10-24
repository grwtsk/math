# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceDirectCorrectedPairingLeading.Variant84ecd3f0d132b675172e8034c6295b01252945ea8932f3fbaaa3fa2efd567ac5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2ed55e64799920b2aab4c2af19b7ef4a439d187` · SHA-256 `84ecd3f0d132b675172e8034c6295b01252945ea8932f3fbaaa3fa2efd567ac5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceLeadingTailQuantitative

/-!
Direct native upper-bound consumer for the unchanged complete corrected Abel
pairing. The supplied arithmetic witness remains explicit; the source's
actual sharp comparison has cost fifty-nine and introduces no smoothing loss.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceDirectCorrectedPairingLeading
open SourceLeadingTailQuantitative SourceLeadingTailBudget
open SourceCompleteCorrectedAbelPairing
noncomputable section

/-- Apply the actual direct source comparison at its proved radius. -/
theorem leading_upper_of_complete_corrected_pairing (K A : ℝ) (hA : 25600 ≤ A)
    (hpair : completeCorrectedAbelPairing A ≤ K) :
    actualLeadingRenormalizedTail A ≤ K + 59 := by
  exact (actual_leading_complete_pairing_sharp_comparisons hA).2.trans
    (add_le_add_right hpair 59)

/-- Preserve the supplied tail radius and use its maximum with the native calibration radius. -/
theorem leading_tail_of_complete_corrected_pairing (K R : ℝ)
    (hpair : ∀ A : ℝ, R ≤ A → completeCorrectedAbelPairing A ≤ K) :
    ∀ A : ℝ, max 25600 R ≤ A → actualLeadingRenormalizedTail A ≤ K + 59 := by
  intro A hA
  exact leading_upper_of_complete_corrected_pairing K A ((le_max_left _ _).trans hA)
    (hpair A ((le_max_right _ _).trans hA))

end
end FormalResearch.RiemannHypothesis.SourceDirectCorrectedPairingLeading
```

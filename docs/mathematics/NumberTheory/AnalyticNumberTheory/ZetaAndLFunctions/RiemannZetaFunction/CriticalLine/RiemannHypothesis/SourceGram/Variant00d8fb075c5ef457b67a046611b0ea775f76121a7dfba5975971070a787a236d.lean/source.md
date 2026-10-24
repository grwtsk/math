# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceGram.Variant00d8fb075c5ef457b67a046611b0ea775f76121a7dfba5975971070a787a236d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47dcb38d26e4a0acb674c62175bb54a144328905` · SHA-256 `00d8fb075c5ef457b67a046611b0ea775f76121a7dfba5975971070a787a236d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePairing
import FormalResearch.RiemannHypothesis.Conversation.FiniteObstructions

/-!
# The literal two-port Gram and normalization

This source consumer from audited conversation Batch 01 binds the two native
coefficient ports to the repository's unchanged normalization. A positive Gram
is a metric on those ports, not a bound on the arithmetic readout.

Human direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.SourceGram

open FormalResearch.RiemannHypothesis.SourcePairing

noncomputable section

def nativeGram (x y : ℝ) : ℝ :=
  (65536 / 109395 : ℝ) * x ^ 2 + 2 * (-131072 / 45045) * x * y + (196608 / 5005) * y ^ 2

/-- Exact completion of squares proves positivity for every pair of ports. -/
theorem gram_square_completion (x y : ℝ) :
    nativeGram x y = (65536 / 109395 : ℝ) * (x - (34 / 7) * y) ^ 2 +
      (720896 / 28665 : ℝ) * y ^ 2 := by
  unfold nativeGram
  ring

theorem nativeGram_nonneg (x y : ℝ) : 0 ≤ nativeGram x y := by
  rw [gram_square_completion]
  positivity

/-- The actual source direction gives exactly the stored source normalization. -/
theorem actual_direction_normalization (A : ℝ) :
    nativeGram (-1 / 4) (1 / A ^ 2) = sourceNormalization A := by
  unfold nativeGram sourceNormalization
  simp only [div_pow, one_pow]
  ring

end
end GRWTSK.RiemannHypothesis.Conversation.SourceGram
```

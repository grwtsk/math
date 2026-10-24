# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Fixtures.Variant3c3513b23fe1135abc04bd18e842a2282d20cabc0b56b38b033997126a4c1de4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dad66ceb4fb4b52d6861372264801d51e560b37b` · SHA-256 `3c3513b23fe1135abc04bd18e842a2282d20cabc0b56b38b033997126a4c1de4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourcePrimitivePrimeInteraction

noncomputable section
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction
open FormalResearch.RiemannHypothesis.SourceCausalEnergy

example (A : ℝ) : primitiveCorrelationOne A 0 =
    ∫ x : ℝ, (deriv (normalizedPrimitiveBump A) x) ^ 2 := by
  simp only [primitiveCorrelationOne, sub_zero, pow_two]

example (A : ℝ) : 0 ≤ primitiveCorrelationOne A 0 := by
  unfold primitiveCorrelationOne
  apply integral_nonneg
  intro x
  simpa only [sub_zero] using mul_self_nonneg (deriv (normalizedPrimitiveBump A) x)
```

# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Fixtures.Variant641cfa0b96050437e3b9305a8926a0d82d5d10fcc0200ed59e8f7da510ceaa84

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1acaaf510af655708be1dc6d380129c9f001046b` · SHA-256 `641cfa0b96050437e3b9305a8926a0d82d5d10fcc0200ed59e8f7da510ceaa84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction

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
  change (0 : ℝ) ≤ deriv (normalizedPrimitiveBump A) x *
    deriv (normalizedPrimitiveBump A) (x - 0)
  simpa only [sub_zero] using mul_self_nonneg (deriv (normalizedPrimitiveBump A) x)
```

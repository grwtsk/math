# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SharedCoefficientDefinition.Variant5d1d8430d4ec1401de8fc4ee7ce3570a7eb0f4b1af50c5c66deca06c158de6bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ae2cab2129ca2f7afbe95c92b4164f42f9aee90` · SHA-256 `5d1d8430d4ec1401de8fc4ee7ce3570a7eb0f4b1af50c5c66deca06c158de6bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorCoefficient
open Finset
noncomputable section
/-- The original finite Möbius divisor sum with its exact exponential damping. -/
def dampedDivisorCoefficient (ε : ℝ) (n : ℕ) : ℝ :=
  ∑ d ∈ n.divisors, (ArithmeticFunction.moebius d : ℝ) * Real.exp (-ε * Real.log (d : ℝ))

end
end FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorCoefficient
```

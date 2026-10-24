# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SignSharedDefinition.Variantbca2c2f48ad7dfe2a09afd1dae14e53cb19a88c84518c98b50c7d28403f07b32

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3bfda2b5ef24a0d09e5987d8189dc54055350e6` · SHA-256 `bca2c2f48ad7dfe2a09afd1dae14e53cb19a88c84518c98b50c7d28403f07b32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget
namespace FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual
noncomputable section
def truncatedDivisorCoefficient (X : ℕ) (ε : ℝ) (n : ℕ) : ℝ :=
  ∑ d ∈ n.divisors.filter (fun d => d ≤ X),
    (ArithmeticFunction.moebius d : ℝ) * Real.exp (-ε * Real.log (d : ℝ))
end
end FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual
```

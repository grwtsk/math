# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.RhEstimatePoleReducedDiscrepancy.Variant92cf8bf8fe430fb5d674c97053026b881d60bf29dcc2f2d11e6641c9691a1729

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ff6192eeec7b8a725865de58b0021506999fd3b` · SHA-256 `92cf8bf8fe430fb5d674c97053026b881d60bf29dcc2f2d11e6641c9691a1729`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePoleReducedDiscrepancy

set_option autoImplicit false

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimatePoleReducedWeight EstimatePoleReducedDiscrepancy
open EstimatePrimeSmoothDefect EstimateCriticalPrimeErrorAbel
open FormalResearch.RiemannHypothesis.SourcePairing

example (A : ℝ) (hA : 1 ≤ A) :
    criticalSignedChebyshevIntegral A =
      2 * poleReducedPrimitive A lowerEndpoint -
        ∑ n ∈ PrimePowerDescent.primePowerInventory (2 * A),
          ArithmeticFunction.vonMangoldt n * poleReducedPrimitive A (Real.log n) +
      ∫ t in lowerEndpoint..2 * A,
        chebyshevPrimePower (Real.exp t) * poleReducedPrimitive A t :=
  criticalSignedChebyshevIntegral_eq_poleReducedDiscrepancy A hA

example (A : ℝ) (hA : 1 ≤ A) :
    criticalSignedChebyshevIntegral A =
      2 * Real.exp (-lowerEndpoint/2) *
        sourceCorrelation Realization.explicitSecondDerivative A lowerEndpoint +
      smoothMoment A - closedPrimeMoment A := by
  rw [criticalSignedChebyshevIntegral_eq_poleReducedDiscrepancy A hA,
    poleReduced_discrepancy_eq_primeMoment A hA]
```

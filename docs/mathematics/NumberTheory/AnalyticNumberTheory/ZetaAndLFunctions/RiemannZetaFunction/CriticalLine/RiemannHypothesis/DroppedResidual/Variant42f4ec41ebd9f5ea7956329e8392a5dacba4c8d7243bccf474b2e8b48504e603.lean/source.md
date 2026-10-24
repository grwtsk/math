# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DroppedResidual.Variant42f4ec41ebd9f5ea7956329e8392a5dacba4c8d7243bccf474b2e8b48504e603

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f145e32414b3735e4b2eeb8d1c93e3f62595ec8b` · SHA-256 `42f4ec41ebd9f5ea7956329e8392a5dacba4c8d7243bccf474b2e8b48504e603`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.AlmostMathieu
import GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold
import GRWTSK.Algebra.LinearAlgebra.Determinant.RankOneQuadraticForm
import GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion
import GRWTSK.NumberTheory.Moebius.ComparisonEnergy
import GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth
import GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound
open GRWTSK.RiemannHypothesis.CCC MeasureTheory

-- Must fail: comparison energy alone does not pay the complete difference.
example {g : ℝ → ℝ} (hg : Continuous g)
    (hmain : SubexponentialUpper (fun T ↦ ∫ u in (0 : ℝ)..T, g u ^ 2)) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickup_comparison hg hmain
```

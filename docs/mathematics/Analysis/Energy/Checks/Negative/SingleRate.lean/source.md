# Complete source: GRWTSK.Analysis.Energy.Checks.Negative.SingleRate

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5842f80b0aa041181bfdb91aec93f718c8f84f33` · SHA-256 `25a94810150ea7a4176ffde2573304846b30236bff0e91e2483de3698adaff84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.AlmostMathieu
import GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold
import GRWTSK.LinearAlgebra.Determinant.RankOneQuadraticForm
import GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion
import GRWTSK.NumberTheory.Moebius.ComparisonEnergy
import GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth
import GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound
open GRWTSK.RiemannHypothesis.CCC MeasureTheory Set

-- Must fail: one paid damping is not the every-positive-damping premise.
example (h : IntegrableOn
    (fun u ↦ Real.exp (-u) * wholePickup u ^ 2) (Ici 0)) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupWeightedEnergyAll h
```

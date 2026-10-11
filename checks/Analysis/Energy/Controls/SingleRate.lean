import GRWTSK.LinearAlgebra.AlmostMathieu GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold GRWTSK.LinearAlgebra.Determinant.RankOneQuadraticForm GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion GRWTSK.NumberTheory.Moebius.ComparisonEnergy GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound
open GRWTSK.RiemannHypothesis.CCC MeasureTheory Set

-- Must fail: one paid damping is not the every-positive-damping premise.
example (h : IntegrableOn
    (fun u ↦ Real.exp (-u) * wholePickup u ^ 2) (Ici 0)) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupWeightedEnergyAll h

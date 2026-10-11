import GRWTSK.LinearAlgebra.AlmostMathieu GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold GRWTSK.LinearAlgebra.Determinant.RankOneQuadraticForm GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion GRWTSK.NumberTheory.Moebius.ComparisonEnergy GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound
open GRWTSK.RiemannHypothesis.CCC

-- Must fail: the conditional theorem is not an unconditional proof.
example : _root_.RiemannHypothesis := riemannHypothesis_of_pickupCrossPoly

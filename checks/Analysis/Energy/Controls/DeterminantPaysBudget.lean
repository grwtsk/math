import GRWTSK.LinearAlgebra.AlmostMathieu GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold GRWTSK.LinearAlgebra.Determinant.RankOneQuadraticForm GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion GRWTSK.NumberTheory.Moebius.ComparisonEnergy GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound
open GRWTSK.RiemannHypothesis.CCC

-- Must fail: a representation identity has no polynomial upper-bound witness.
example : PickupEnergyPoly := pickupDeterminant_eq_energy

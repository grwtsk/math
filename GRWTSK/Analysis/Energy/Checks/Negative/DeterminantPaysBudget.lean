import GRWTSK.Algebra.LinearAlgebra.AlmostMathieu
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.LaplaceTransform.ExponentialThreshold
import GRWTSK.Algebra.LinearAlgebra.Determinant.RankOneQuadraticForm
import GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion
import GRWTSK.NumberTheory.Moebius.ComparisonEnergy
import GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth
import GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound
open GRWTSK.RiemannHypothesis.CCC

-- Must fail: a representation identity has no polynomial upper-bound witness.
example : PickupEnergyPoly := pickupDeterminant_eq_energy

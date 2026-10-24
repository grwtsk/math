import GRWTSK.Algebra.LinearAlgebra.AlmostMathieu
import GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold
import GRWTSK.Algebra.LinearAlgebra.Determinant.RankOneQuadraticForm
import GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion
import GRWTSK.NumberTheory.Moebius.ComparisonEnergy
import GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth
import GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound
open GRWTSK.RiemannHypothesis.CCC

-- Must fail: a finite carrier is not the complete sampled arithmetic budget.
example (C r : ℝ) (hC : 0 ≤ C) (hr : 0 ≤ r)
    (h : ∀ n : ℕ, n ≤ 100 → pickupCross n ≤ C * (1 + (n : ℝ)) ^ r) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupCrossNatPoly ⟨C, r, hC, hr, h⟩

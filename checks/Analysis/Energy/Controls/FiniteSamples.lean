import GRWTSK.LinearAlgebra.AlmostMathieu GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold GRWTSK.LinearAlgebra.Determinant.RankOneQuadraticForm GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion GRWTSK.NumberTheory.Moebius.ComparisonEnergy GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound
open GRWTSK.RiemannHypothesis.CCC

-- Must fail: a finite carrier is not the complete sampled arithmetic budget.
example (C r : ℝ) (hC : 0 ≤ C) (hr : 0 ≤ r)
    (h : ∀ n : ℕ, n ≤ 100 → pickupCross n ≤ C * (1 + (n : ℝ)) ^ r) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupCrossNatPoly ⟨C, r, hC, hr, h⟩

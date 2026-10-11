import GRWTSK.LinearAlgebra.AlmostMathieu GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold GRWTSK.LinearAlgebra.Determinant.RankOneQuadraticForm GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion GRWTSK.NumberTheory.Moebius.ComparisonEnergy GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound
open GRWTSK.RiemannHypothesis.CCC MeasureTheory

-- Must fail: comparison energy alone does not pay the complete difference.
example {g : ℝ → ℝ} (hg : Continuous g)
    (hmain : SubexponentialUpper (fun T ↦ ∫ u in (0 : ℝ)..T, g u ^ 2)) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickup_comparison hg hmain

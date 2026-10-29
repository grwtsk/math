import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.AlmostMathieu
import GRWTSK.GeneralTopology.ExponentialThreshold
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RankOneQuadraticForm
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PolynomialEnergyCriterion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ComparisonEnergy
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.IntegerSampleGrowth
import GRWTSK.MeasureAndIntegration.UnsignedEnergyBound
open GRWTSK.RiemannHypothesis.CCC

-- Must fail: a finite carrier is not the complete sampled arithmetic budget.
example (C r : ℝ) (hC : 0 ≤ C) (hr : 0 ≤ r)
    (h : ∀ n : ℕ, n ≤ 100 → pickupCross n ≤ C * (1 + (n : ℝ)) ^ r) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupCrossNatPoly ⟨C, r, hC, hr, h⟩

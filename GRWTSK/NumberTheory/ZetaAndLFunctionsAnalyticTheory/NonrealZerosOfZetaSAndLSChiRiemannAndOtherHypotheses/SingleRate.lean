import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.AlmostMathieu
import GRWTSK.GeneralTopology.ExponentialThreshold
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RankOneQuadraticForm
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PolynomialEnergyCriterion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ComparisonEnergy
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.IntegerSampleGrowth
import GRWTSK.MeasureAndIntegration.UnsignedEnergyBound
open GRWTSK.RiemannHypothesis.CCC MeasureTheory Set

-- Must fail: one paid damping is not the every-positive-damping premise.
example (h : IntegrableOn
    (fun u ↦ Real.exp (-u) * wholePickup u ^ 2) (Ici 0)) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupWeightedEnergyAll h

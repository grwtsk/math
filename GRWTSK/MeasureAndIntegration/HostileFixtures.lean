import FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
example : diagonalMainCoefficient 1 = (221 / 873180 : ℝ) := by
  norm_num [diagonalMainCoefficient, sourceNormalization]
example : diagonalMainCoefficient 1 ≠ (2431 / 8820 : ℝ) := by
  norm_num [diagonalMainCoefficient, sourceNormalization]
example : (∫ t in (0 : ℝ)..1, sourceCorrelation explicitSecondDerivative 1 (2 * t)) =
    (221 / 873180 : ℝ) := by
  rw [actual_source_half_integral 1 (by norm_num)]
  norm_num [sourceNormalization]

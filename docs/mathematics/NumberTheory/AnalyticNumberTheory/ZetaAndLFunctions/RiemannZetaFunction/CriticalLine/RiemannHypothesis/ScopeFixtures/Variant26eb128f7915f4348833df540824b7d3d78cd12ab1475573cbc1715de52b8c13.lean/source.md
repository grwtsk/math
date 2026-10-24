# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScopeFixtures.Variant26eb128f7915f4348833df540824b7d3d78cd12ab1475573cbc1715de52b8c13

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9288b6936cac1484427f6f71c78f879800c18f7` · SHA-256 `26eb128f7915f4348833df540824b7d3d78cd12ab1475573cbc1715de52b8c13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourcePrimitiveBaseline

/-! Independent private guards; not author roots or maintained results. -/

set_option autoImplicit false
set_option linter.hashCommand false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePrimitiveBaselineRegentFixtures
open MeasureTheory
open SourcePrimitiveBaseline SourcePrimitivePrimeInteraction SourceDiagonalMainTerm
open SourcePairing SourcePairedTailTest SourcePairedTailQuadrature SourceFirstPrimeAbel
open scoped Interval

/-- Doubling the verified coefficient is false for every admitted scale. -/
theorem wrong_sixteenth_factor {A : ℝ} (hA : 1 ≤ A) :
    (1 / 16 : ℝ) * (∫ s in 0..2 * A, primitiveCorrelationZero A s) ≠
      diagonalMainCoefficient A * A := by
  have hZ := source_normalization_pos A hA
  have hk : 0 < diagonalMainCoefficient A := by
    unfold diagonalMainCoefficient
    positivity
  have hm : 0 < diagonalMainCoefficient A * A := mul_pos hk (by linarith)
  have he := primitive_zero_mode_main hA
  intro h
  linarith

/-- The independent linear source term includes A and cannot be called kappa alone. -/
theorem missing_radius_multiplier {A : ℝ} (hA : 1 < A) :
    (1 / 32 : ℝ) * (∫ s in 0..2 * A, primitiveCorrelationZero A s) ≠
      diagonalMainCoefficient A := by
  have hZ := source_normalization_pos A hA.le
  have hk : 0 < diagonalMainCoefficient A := by
    unfold diagonalMainCoefficient
    positivity
  rw [← primitive_zero_mode_main hA.le]
  intro h
  nlinarith

/-- The positive full drift cannot be deleted before its exact algebraic cancellation. -/
theorem full_drift_not_zero {A : ℝ} (hA : 1 ≤ A) :
    negativeTimeMean A - criticalContinuousMoment A ≠ 0 :=
  ne_of_gt (pairedTailTest_drift_pos hA)

#check @wrong_sixteenth_factor
#print axioms wrong_sixteenth_factor
#check @missing_radius_multiplier
#print axioms missing_radius_multiplier
#check @full_drift_not_zero
#print axioms full_drift_not_zero

end FormalResearch.RiemannHypothesis.SourcePrimitiveBaselineRegentFixtures
```

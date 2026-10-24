# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScopeFixtures.Varianta925c5bf83f1d98224ed093142997036cddbae72b016978162680b23e81fbfd2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44ced99bedbd999a5cabeb4739bbd5d1f1ffab39` · SHA-256 `3afc8edb94c2ab67e2a77c392ce96255f6927e5433934cbac72a3c67c11dd23e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WrongSixteenthFactor.Variant26eb128f7915f4348833df540824b7d3d78cd12ab1475573cbc1715de52b8c13","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"26eb128f7915f4348833df540824b7d3d78cd12ab1475573cbc1715de52b8c13","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.WrongSixteenthFactor.Variant26eb128f7915f4348833df540824b7d3d78cd12ab1475573cbc1715de52b8c13","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"26eb128f7915f4348833df540824b7d3d78cd12ab1475573cbc1715de52b8c13","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle15/regent-next-primitive-baseline/native-replay-v1/ScopeFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourcePrimitiveBaseline

/-! Independent private guards; not author roots or maintained results. -/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WrongSixteenthFactor.Variant26eb128f7915f4348833df540824b7d3d78cd12ab1475573cbc1715de52b8c13

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

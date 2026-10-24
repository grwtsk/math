# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HostileGuards.Variant5748e8bee9e94046f30259f28f1e62b86a577e4be5e38941c91b619d3e400a75

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb9ad632f7987fdbc9bc15b78b3d3667372a3221` · SHA-256 `3ba4cedd675e2086e21b6415cad5172039d76218c2f020c04ce054ae4519252a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePairedTailPrimeBlock.Variant8a470119ae93bdb01e070a1c0c7ebba01ee322792280e6b06fddeafe2d04362b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a470119ae93bdb01e070a1c0c7ebba01ee322792280e6b06fddeafe2d04362b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourcePairedTailPrimeBlock.Variant8a470119ae93bdb01e070a1c0c7ebba01ee322792280e6b06fddeafe2d04362b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"8a470119ae93bdb01e070a1c0c7ebba01ee322792280e6b06fddeafe2d04362b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle11/regent-paired-tail-prime-block/HostileGuards.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePairedTailPrimeBlock


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePairedTailPrimeBlock.Variant8a470119ae93bdb01e070a1c0c7ebba01ee322792280e6b06fddeafe2d04362b

set_option autoImplicit false
noncomputable section
namespace IndependentActualPrimeBlockGuards

open FormalResearch.RiemannHypothesis
open SourcePairedTailTest SourcePairedTailQuadrature SourcePairedTailPrimeBlock
open SourcePairedPrimeAverages SourceFirstPrimeAbel SourceDiagonalMainTerm WeightedPrimeAbel

example {A C : ℝ} (hA : 1 ≤ A) :
    (diagonalMainCoefficient A * A + negativeTimeMean A - criticalContinuousMoment A - C ≤
      primeLogSum (2 * A) (pairedTailTest A)) ↔
    (diagonalMainCoefficient A * A + negativeTimeMean A - criticalContinuousMoment A - C -
      earlyPrimeBlock A ≤ complementaryPrimeBlocks A) := by
  rw [primeSum_eq_early_add_complement hA]
  constructor <;> intro h <;> linarith

example {A C : ℝ} (hA : 160 ≤ A) (hAC : 320 * C ≤ A)
    (hC : ∀ u : ℝ, 0 ≤ u → |primeLogError u| ≤ C) : earlyPrimeBlock A < 0 := by
  have hb := earlyPrimeBlock_le hA hAC hC
  have hp : 0 < (7 / 2560 : ℝ) * A * Real.exp (A / 160) := by
    have hA0 : 0 < A := by linarith
    positivity
  linarith

example : ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A → earlyPrimeBlock A < 0 := by
  obtain ⟨R, hR, h⟩ := earlyPrimeBlock_eventual_bound
  refine ⟨R, hR, ?_⟩
  intro A hRA
  have hA0 : 0 < A := by linarith
  have hp : 0 < (7 / 2560 : ℝ) * A * Real.exp (A / 160) := by positivity
  linarith [h A hRA]

example {A : ℝ} (hA : 160 ≤ A) : pairedTailTest A (A / 80) < 0 := by
  have h := earlyTailTest_le hA (le_refl (A / 80)) (by linarith)
  have hp : 0 < (7 / 16 : ℝ) * Real.exp (A / 160) := by positivity
  linarith

end IndependentActualPrimeBlockGuards
```

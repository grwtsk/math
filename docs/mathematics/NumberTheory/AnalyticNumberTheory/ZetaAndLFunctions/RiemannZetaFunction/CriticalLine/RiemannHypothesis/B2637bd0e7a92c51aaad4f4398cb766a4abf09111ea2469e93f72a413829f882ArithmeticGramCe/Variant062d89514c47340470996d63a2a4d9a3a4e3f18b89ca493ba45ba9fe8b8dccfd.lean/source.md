# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.B2637bd0e7a92c51aaad4f4398cb766a4abf09111ea2469e93f72a413829f882ArithmeticGramCe.Variant062d89514c47340470996d63a2a4d9a3a4e3f18b89ca493ba45ba9fe8b8dccfd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da50cbfb125db6c9f86e123cee339a1a6303d1a0` · SHA-256 `e7039e7f9da96ae499757dbf438b6dc0ebc7dcffc6707ad916992ea06806817f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TranslationGramForm.Variantb2637bd0e7a92c51aaad4f4398cb766a4abf09111ea2469e93f72a413829f882","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b2637bd0e7a92c51aaad4f4398cb766a4abf09111ea2469e93f72a413829f882","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.TranslationGramForm.Variantb2637bd0e7a92c51aaad4f4398cb766a4abf09111ea2469e93f72a413829f882","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"b2637bd0e7a92c51aaad4f4398cb766a4abf09111ea2469e93f72a413829f882","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/b2/b2637bd0e7a92c51aaad4f4398cb766a4abf09111ea2469e93f72a413829f882--ArithmeticGramCertificates.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TranslationGramForm.Variantb2637bd0e7a92c51aaad4f4398cb766a4abf09111ea2469e93f72a413829f882

namespace FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit
open MeasureTheory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimePowerPhaseDefect
open FullQuadraticOperator
open MultiplicativePhase

/-- A positive measure gives a nonnegative translation difference-square Fourier energy. -/
noncomputable def translationGramForm (μ : Measure ℝ) (f : Hilbert) : ℝ :=
  ∫ y, ∫ ξ, Complex.normSq ((chi ξ (Real.exp y) - 1) * f ξ) ∂μ

theorem translation_gram_form_nonneg (μ : Measure ℝ) (f : Hilbert) :
    0 ≤ translationGramForm μ f :=
  integral_nonneg (fun _ ↦ integral_nonneg (fun _ ↦ Complex.normSq_nonneg _))

/-- No positive translation energy with a correction bounded below by one radius-independent
multiple of Hilbert mass can represent the full form on its entire Gamma domain. -/
theorem no_uniform_translation_gram_certificate :
    ¬ ∃ (K : ℝ) (μ : ℝ → Measure ℝ) (E : ℝ → Hilbert → ℝ),
      (∀ A, 1 ≤ A → ∀ f, GammaFormDomain f →
        -K * ‖f‖ ^ 2 ≤ E A f) ∧
      (∀ A, 1 ≤ A → ∀ f, GammaFormDomain f →
        fullQuadraticForm A f = translationGramForm (μ A) f + E A f) := by
  rintro ⟨K, μ, E, hE, he⟩
  obtain ⟨A, hA, f, hnorm, hdom, hneg⟩ :=
    FullQuadraticObstruction.full_form_unit_values_unbounded_below (-K)
  have hc := hE A hA f hdom
  rw [hnorm] at hc
  have hp := translation_gram_form_nonneg (μ A) f
  rw [he A hA f hdom] at hneg
  nlinarith

end FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit
```

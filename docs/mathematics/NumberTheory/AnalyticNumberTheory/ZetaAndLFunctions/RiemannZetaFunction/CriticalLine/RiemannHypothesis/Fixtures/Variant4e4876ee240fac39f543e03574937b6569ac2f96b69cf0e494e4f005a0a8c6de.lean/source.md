# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Fixtures.Variant4e4876ee240fac39f543e03574937b6569ac2f96b69cf0e494e4f005a0a8c6de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e502c15ab2b3e75dfc0f7cd1aea26742cde64ac8` · SHA-256 `46363cb2ea009bbe76ae7bd0add74670ecdb0414bdb13b84e2f92e11d78b4ba6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePrimitivePrimeInteraction.Variant641cfa0b96050437e3b9305a8926a0d82d5d10fcc0200ed59e8f7da510ceaa84","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"641cfa0b96050437e3b9305a8926a0d82d5d10fcc0200ed59e8f7da510ceaa84","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourcePrimitivePrimeInteraction.Variant641cfa0b96050437e3b9305a8926a0d82d5d10fcc0200ed59e8f7da510ceaa84","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"641cfa0b96050437e3b9305a8926a0d82d5d10fcc0200ed59e8f7da510ceaa84","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle15/regent-primitive-prime-attempt03/Fixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePrimitivePrimeInteraction.Variant641cfa0b96050437e3b9305a8926a0d82d5d10fcc0200ed59e8f7da510ceaa84

noncomputable section
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction
open FormalResearch.RiemannHypothesis.SourceCausalEnergy

example (A : ℝ) : primitiveCorrelationOne A 0 =
    ∫ x : ℝ, (deriv (normalizedPrimitiveBump A) x) ^ 2 := by
  simp only [primitiveCorrelationOne, sub_zero, pow_two]

example (A : ℝ) : 0 ≤ primitiveCorrelationOne A 0 := by
  unfold primitiveCorrelationOne
  apply integral_nonneg
  intro x
  change (0 : ℝ) ≤ deriv (normalizedPrimitiveBump A) x *
    deriv (normalizedPrimitiveBump A) (x - 0)
  simpa only [sub_zero] using mul_self_nonneg (deriv (normalizedPrimitiveBump A) x)
```

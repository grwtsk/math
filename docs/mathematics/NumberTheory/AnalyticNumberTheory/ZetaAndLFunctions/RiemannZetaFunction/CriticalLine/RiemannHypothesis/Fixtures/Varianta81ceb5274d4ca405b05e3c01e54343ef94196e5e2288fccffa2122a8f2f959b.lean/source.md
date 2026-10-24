# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Fixtures.Varianta81ceb5274d4ca405b05e3c01e54343ef94196e5e2288fccffa2122a8f2f959b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7bbe62dac911f0075ff260e92605eb47658930d5` · SHA-256 `409802e7afdaec563c1ed95cda6e1a42f699a5b8dbd8a554950ba47c31f8e806`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePrimitivePrimeInteraction.Variant3c3513b23fe1135abc04bd18e842a2282d20cabc0b56b38b033997126a4c1de4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3c3513b23fe1135abc04bd18e842a2282d20cabc0b56b38b033997126a4c1de4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourcePrimitivePrimeInteraction.Variant3c3513b23fe1135abc04bd18e842a2282d20cabc0b56b38b033997126a4c1de4","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3c3513b23fe1135abc04bd18e842a2282d20cabc0b56b38b033997126a4c1de4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle14/regent-primitive-prime-interaction/Fixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourcePrimitivePrimeInteraction


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePrimitivePrimeInteraction.Variant3c3513b23fe1135abc04bd18e842a2282d20cabc0b56b38b033997126a4c1de4

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
  simpa only [sub_zero] using mul_self_nonneg (deriv (normalizedPrimitiveBump A) x)
```

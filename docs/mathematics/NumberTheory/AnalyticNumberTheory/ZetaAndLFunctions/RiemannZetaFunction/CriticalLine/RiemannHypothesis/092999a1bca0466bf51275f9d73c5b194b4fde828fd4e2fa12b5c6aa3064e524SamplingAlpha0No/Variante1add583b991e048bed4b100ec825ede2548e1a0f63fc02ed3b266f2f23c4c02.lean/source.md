# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.092999a1bca0466bf51275f9d73c5b194b4fde828fd4e2fa12b5c6aa3064e524SamplingAlpha0No.Variante1add583b991e048bed4b100ec825ede2548e1a0f63fc02ed3b266f2f23c4c02

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40d42ac6855667c27ee391b86447eb11c4bbbfc7` · SHA-256 `667d1b95a0ee2a626c9a3a2f25f83b9ebbd29e43416165cdf24cb81da7ef43cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SamplingAlpha0Nonpos.Variant092999a1bca0466bf51275f9d73c5b194b4fde828fd4e2fa12b5c6aa3064e524","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"092999a1bca0466bf51275f9d73c5b194b4fde828fd4e2fa12b5c6aa3064e524","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SamplingAlpha0Nonpos.Variant092999a1bca0466bf51275f9d73c5b194b4fde828fd4e2fa12b5c6aa3064e524","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"092999a1bca0466bf51275f9d73c5b194b4fde828fd4e2fa12b5c6aa3064e524","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/09/092999a1bca0466bf51275f9d73c5b194b4fde828fd4e2fa12b5c6aa3064e524--SamplingAlpha0Nonpos.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceSamplingCoefficients

/-!
# Native zeroth sampling coefficient sign

This focused local lemma preserves the native fractional-part integral.
It supplies only the baseline sign premise, without a signed discrepancy budget.
AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SamplingAlpha0Nonpos.Variant092999a1bca0466bf51275f9d73c5b194b4fde828fd4e2fa12b5c6aa3064e524

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceSamplingCoefficients

open MeasureTheory Set

/-- The native zeroth sampling coefficient is nonpositive. -/
theorem samplingAlpha0_nonpos : samplingAlpha0 ≤ 0 := by
  have hmoment : 0 ≤ signedCoefficientMoment 0 := by
    unfold signedCoefficientMoment
    apply setIntegral_nonneg measurableSet_Ioi
    intro u hu
    simp only [coefficientWeight, pow_zero, mul_one]
    exact mul_nonneg (Int.fract_nonneg u) (Real.rpow_pos_of_pos hu _).le
  unfold samplingAlpha0
  linarith

end FormalResearch.RiemannHypothesis.SourceSamplingCoefficients
```

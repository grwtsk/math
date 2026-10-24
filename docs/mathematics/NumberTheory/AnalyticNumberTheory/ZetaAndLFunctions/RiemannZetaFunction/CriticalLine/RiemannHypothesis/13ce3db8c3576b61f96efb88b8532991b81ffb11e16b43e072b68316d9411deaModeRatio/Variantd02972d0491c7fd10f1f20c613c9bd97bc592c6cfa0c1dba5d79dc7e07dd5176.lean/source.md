# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.13ce3db8c3576b61f96efb88b8532991b81ffb11e16b43e072b68316d9411deaModeRatio.Variantd02972d0491c7fd10f1f20c613c9bd97bc592c6cfa0c1dba5d79dc7e07dd5176

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c710d1b71621c63cf4277565bb997ef2cea452b7` · SHA-256 `f98398e68990c1b776b43edf4f8a6e88de4f3aad2bb0b3f6564c2174e4e3a0d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScalarModeRatioBound.Variant13ce3db8c3576b61f96efb88b8532991b81ffb11e16b43e072b68316d9411dea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13ce3db8c3576b61f96efb88b8532991b81ffb11e16b43e072b68316d9411dea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ScalarModeRatioBound.Variant13ce3db8c3576b61f96efb88b8532991b81ffb11e16b43e072b68316d9411dea","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"13ce3db8c3576b61f96efb88b8532991b81ffb11e16b43e072b68316d9411dea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/13/13ce3db8c3576b61f96efb88b8532991b81ffb11e16b43e072b68316d9411dea--ModeRatio.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Tactic


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScalarModeRatioBound.Variant13ce3db8c3576b61f96efb88b8532991b81ffb11e16b43e072b68316d9411dea

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

theorem scalar_mode_ratio_bound {A : ℝ} (hA : 3 ≤ A) (n : ℝ) :
    n ^ 2 * (2 * A * n ^ 2 - 3) / (2 * A - 3) ≤ 2 * n ^ 4 := by
  apply (div_le_iff₀ (by linarith : (0 : ℝ) < 2 * A - 3)).mpr
  have h : 0 ≤ 2 * (A - 3) * n ^ 4 + 3 * n ^ 2 := by
    positivity
  nlinarith only [h]

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

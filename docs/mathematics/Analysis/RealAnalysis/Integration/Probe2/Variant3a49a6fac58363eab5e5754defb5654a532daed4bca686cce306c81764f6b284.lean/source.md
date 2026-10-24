# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Probe2.Variant3a49a6fac58363eab5e5754defb5654a532daed4bca686cce306c81764f6b284

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db5e9a69f8ad287d6658cc943e33284aad774cce` · SHA-256 `1cd9f190096261e1b31be2de9566c8cc09d70320e3081bcd4ef9a66acc0c0b4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.Dirichlet.Varianteeb0041bf6d18f8970522972fc27e688f5f164d0b2815287e8b15b5ee197f3a9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eeb0041bf6d18f8970522972fc27e688f5f164d0b2815287e8b15b5ee197f3a9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.Dirichlet.Varianteeb0041bf6d18f8970522972fc27e688f5f164d0b2815287e8b15b5ee197f3a9","mathematical_subject":"Analysis.Integration","original_sha256":"eeb0041bf6d18f8970522972fc27e688f5f164d0b2815287e8b15b5ee197f3a9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-mobius-normalization/Probe2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.MeasureTheory.Integral.DominatedConvergence

namespace GRWTSK.Analysis.RealAnalysis.Integration.Dirichlet.Varianteeb0041bf6d18f8970522972fc27e688f5f164d0b2815287e8b15b5ee197f3a9

open MeasureTheory
#check integrable_tsum
#check Integrable.tsum
#check integrable_tsum_of_summable_norm
#check norm_tsum_le_tsum_norm
#check Summable.norm
#check Measurable.tsum
#check MeasureTheory.integrable_of_integral_norm_eq_top
#check tsum_eq_sum
#check summable_of_ne_finset_zero
#check Summable.tsum_eq_sum
#check Complex.ofReal_sum
#check riemannZeta_ne_zero_of_one_lt_re
#check HasSum.integral
#check hasSum_integral_of_summable_integral_norm
```

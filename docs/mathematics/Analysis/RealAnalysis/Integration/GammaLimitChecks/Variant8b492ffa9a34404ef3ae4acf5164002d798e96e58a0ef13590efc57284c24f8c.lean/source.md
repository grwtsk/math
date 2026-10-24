# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.GammaLimitChecks.Variant8b492ffa9a34404ef3ae4acf5164002d798e96e58a0ef13590efc57284c24f8c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d22da4a5cc703ce67928044d668c33771a564e39` · SHA-256 `adb9c48b9c322a412c49b2a5c927348bc7782d7da4849b549da2bfc5c70a7637`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.Beta.Variantd7b013dbd31fce5918961579338fa3d885beac0bfcae04d796806bddb024d70e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d7b013dbd31fce5918961579338fa3d885beac0bfcae04d796806bddb024d70e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.Beta.Variantd7b013dbd31fce5918961579338fa3d885beac0bfcae04d796806bddb024d70e","mathematical_subject":"Analysis.Integration","original_sha256":"d7b013dbd31fce5918961579338fa3d885beac0bfcae04d796806bddb024d70e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/gamma_limit_checks.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Gamma.Beta
import Mathlib.Analysis.Complex.LocallyUniformLimit

namespace GRWTSK.Analysis.RealAnalysis.Integration.Beta.Variantd7b013dbd31fce5918961579338fa3d885beac0bfcae04d796806bddb024d70e

#check MeasureTheory.norm_integral_le_of_norm_le
#check MeasureTheory.norm_integral_le_integral_norm
#check MeasureTheory.integrable_norm_iff
#check MeasureTheory.Integrable.mono'
#check MeasureTheory.integral_mono_ae
#check Real.GammaIntegral_convergent
#check Complex.Gamma_eq_integral
#check MeasureTheory.integral_sub
#check MeasureTheory.tendsto_integral_of_dominated_convergence
#check Metric.tendstoUniformlyOn_iff
#check Metric.tendstoLocallyUniformlyOn_iff
#check Real.one_sub_div_pow_le_exp_neg
#check Complex.one_sub_div_pow_le_exp_neg
#check Real.tendsto_one_add_div_pow_exp
#check MeasureTheory.Integrable.aestronglyMeasurable
```

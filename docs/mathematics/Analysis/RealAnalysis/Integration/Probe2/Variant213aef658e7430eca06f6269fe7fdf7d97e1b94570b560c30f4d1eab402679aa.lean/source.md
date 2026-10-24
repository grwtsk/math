# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Probe2.Variant213aef658e7430eca06f6269fe7fdf7d97e1b94570b560c30f4d1eab402679aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e845c04cfec1aeaa8db912d89ea4e129a9f1dc45` · SHA-256 `a605958cfc933f7c46ab6ae4041b7b7fd3e10790e60be4b0439e28e7b9878842`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FixedKernelAdjointExponential.Variantbd8b0050386c1e74cfddf109cb02ba26e5e370f57fc1e52c820b88949f7d42d0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bd8b0050386c1e74cfddf109cb02ba26e5e370f57fc1e52c820b88949f7d42d0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FixedKernelAdjointExponential.Variantbd8b0050386c1e74cfddf109cb02ba26e5e370f57fc1e52c820b88949f7d42d0","mathematical_subject":"Analysis.Integration","original_sha256":"bd8b0050386c1e74cfddf109cb02ba26e5e370f57fc1e52c820b88949f7d42d0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-covariance/Probe2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdjointExponential
import FormalResearch.RiemannHypothesis.SourceComparison.SourceConvolutionAE

namespace GRWTSK.Analysis.RealAnalysis.Integration.FixedKernelAdjointExponential.Variantbd8b0050386c1e74cfddf109cb02ba26e5e370f57fc1e52c820b88949f7d42d0

open MeasureTheory
#check integral_inner
#check inner_integral
#check Measure.ae_prod_iff_ae_ae
#check Integrable.inner
#check ContinuousLinearMap.integral_comp_comm
#check ContinuousLinearMap.integrable_comp
#check Complex.integral_ofReal
#check integral_complex_ofReal
#check inner_smul_left
#check inner_conj_symm
#check MeasureTheory.Integrable.prod_mul
#check MeasureTheory.Integrable.mul_prod
#check integral_prod_mul
#check integral_add_right_eq_self
#check setIntegral_add_right
#check integral_Ioi_comp_add
```

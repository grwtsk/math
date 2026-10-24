# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.LaplaceProbe.Variantba9c79194111bbc6d38d93d4d2db2fef872eefafea68ecc28ecbd91e21773df2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fedbeee1f34cb9b22c7909b1731321314e166a29` · SHA-256 `0e1abcb04f851110591e50eed199e7294d021dcb00bab1ef6b3087b39f509b11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.DominatedConvergence.Variantae8e543378060872e746517956d662b82d2ca069a35d09f1ca3c0a423e7ee937","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae8e543378060872e746517956d662b82d2ca069a35d09f1ca3c0a423e7ee937","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.DominatedConvergence.Variantae8e543378060872e746517956d662b82d2ca069a35d09f1ca3c0a423e7ee937","mathematical_subject":"Analysis.Integration","original_sha256":"ae8e543378060872e746517956d662b82d2ca069a35d09f1ca3c0a423e7ee937","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-zero-energy/LaplaceProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Group.Integral
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.SpecialFunctions.Pow.Complex

namespace GRWTSK.Analysis.RealAnalysis.Integration.DominatedConvergence.Variantae8e543378060872e746517956d662b82d2ca069a35d09f1ca3c0a423e7ee937

#check MeasureTheory.integral_sub_right_eq_self
#check MeasureTheory.integral_neg_eq_self
#check MeasureTheory.Integrable.comp_sub_right
#check MeasureTheory.integrable_tsum
#check MeasureTheory.integrable_tsum_of_summable_integral_norm
#check MeasureTheory.integrable_tsum_of_isEmpty
#check Complex.norm_exp
#check Complex.norm_real
#check Real.rpow_def_of_pos
#check MeasureTheory.hasSum_integral_of_summable_integral_norm
#check Complex.continuous_ofReal
#check Complex.ofRealCLM
#check HasSum.integral
```

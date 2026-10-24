# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Apis.Variantdc5949b2bfa918fcb4d00a2bbc5bc82f5b04b5e50b216ad3a737b30c00d1d026

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a36966fd22535f757d6676cef046219ba6bcd60` · SHA-256 `9e8ce347c68e781470f91689d6477c3db02f2c73001e69b48d92fa829a671f5a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.Gamma.Variantd15c5043759ae33b5789819badbe3b9edbe59d650d72aa4d8b11e13469626d4b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d15c5043759ae33b5789819badbe3b9edbe59d650d72aa4d8b11e13469626d4b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.Gamma.Variantd15c5043759ae33b5789819badbe3b9edbe59d650d72aa4d8b11e13469626d4b","mathematical_subject":"Analysis.Integration","original_sha256":"d15c5043759ae33b5789819badbe3b9edbe59d650d72aa4d8b11e13469626d4b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/fractional-sampling/Apis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.MeasureTheory.Function.Floor

namespace GRWTSK.Analysis.RealAnalysis.Integration.Gamma.Variantd15c5043759ae33b5789819badbe3b9edbe59d650d72aa4d8b11e13469626d4b

open MeasureTheory Set Real
#check integrableOn_image_iff_integrableOn_abs_deriv_smul
#check integral_image_eq_integral_abs_deriv_smul
#check Real.range_exp
#check Real.image_exp_univ
#check integral_add_compl
#check integral_Iic_add_Ioi
#check integrableOn_Iio_iff_integrableOn_Iic
#check MeasureTheory.integrableOn_Ioi_comp_mul_left_iff
#check Real.Gamma_nat_eq_factorial
#check Real.rpow_natCast
#check Real.rpow_exp
#check integral_comp_neg_Ioi
#check integral_comp_neg_Iio
#check integrableOn_comp_neg_iff
#check IntegrableOn.union
#check integral_union
```

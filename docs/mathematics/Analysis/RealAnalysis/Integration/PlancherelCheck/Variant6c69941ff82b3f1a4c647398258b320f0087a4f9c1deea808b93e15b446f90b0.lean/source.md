# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.PlancherelCheck.Variant6c69941ff82b3f1a4c647398258b320f0087a4f9c1deea808b93e15b446f90b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d6239d5e16438b32e9cf471f8cf5695b31f0ef7` · SHA-256 `e514058d5677e9bc391242d71d60c95f27f3fe9884847541565735c1ae38c03f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.Inversion.Variant2eb30bcd47bc8410a0dfc0b2e4544227be143d902cf2f81834cfa1606daf4343","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2eb30bcd47bc8410a0dfc0b2e4544227be143d902cf2f81834cfa1606daf4343","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.Inversion.Variant2eb30bcd47bc8410a0dfc0b2e4544227be143d902cf2f81834cfa1606daf4343","mathematical_subject":"Analysis.Integration","original_sha256":"2eb30bcd47bc8410a0dfc0b2e4544227be143d902cf2f81834cfa1606daf4343","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/plancherel-check.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Fourier.Inversion

namespace GRWTSK.Analysis.RealAnalysis.Integration.Inversion.Variant2eb30bcd47bc8410a0dfc0b2e4544227be143d902cf2f81834cfa1606daf4343

#check integral_ofReal
#check Complex.integral_ofReal
#check MeasureTheory.integral_ofReal
#check Complex.ofRealCLM.integral_comp_comm
#check MeasureTheory.integrable_comp_mul_left_iff
#check MeasureTheory.Integrable.comp_mul_left
#check Real.fourier_zero
#check Real.fourierInv_zero
#check Real.fourier_real_eq_integral_exp_smul
#check MeasureTheory.integral_neg_eq_self
#check MeasureTheory.integral_conj
```

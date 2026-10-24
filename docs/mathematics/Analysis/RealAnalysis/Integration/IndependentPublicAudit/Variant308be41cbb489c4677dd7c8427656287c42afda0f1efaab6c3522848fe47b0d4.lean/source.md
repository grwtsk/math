# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.IndependentPublicAudit.Variant308be41cbb489c4677dd7c8427656287c42afda0f1efaab6c3522848fe47b0d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef15b6d835d6f349275b110433ca380e1d1861ae` · SHA-256 `dc62ecf737dc81efcc632b20df0aef62b469dd2485cbf2de7da0f95b6a31e853`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourceWholeCubicSampling.Variant573b0965cc3df62370ec287783de3573829ef210093eca04f9705f9bb8151719","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"573b0965cc3df62370ec287783de3573829ef210093eca04f9705f9bb8151719","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourceWholeCubicSampling.Variant573b0965cc3df62370ec287783de3573829ef210093eca04f9705f9bb8151719","mathematical_subject":"Analysis.Integration","original_sha256":"573b0965cc3df62370ec287783de3573829ef210093eca04f9705f9bb8151719","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-whole-cubic/IndependentPublicAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceWholeCubicSampling

namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceWholeCubicSampling.Variant573b0965cc3df62370ec287783de3573829ef210093eca04f9705f9bb8151719

#check RH16WholeCubic.wholeCubicMajorant
#print axioms RH16WholeCubic.wholeCubicMajorant
#check RH16WholeCubic.wholeCubicErrorRow
#print axioms RH16WholeCubic.wholeCubicErrorRow
#check RH16WholeCubic.cubic_log_error_all_positive
#print axioms RH16WholeCubic.cubic_log_error_all_positive
#check RH16WholeCubic.wholeCubicMajorant_integrable
#print axioms RH16WholeCubic.wholeCubicMajorant_integrable
#check RH16WholeCubic.actual_whole_error_le_majorant
#print axioms RH16WholeCubic.actual_whole_error_le_majorant
#check RH16WholeCubic.actual_whole_error_integrable
#print axioms RH16WholeCubic.actual_whole_error_integrable
#check RH16WholeCubic.wholeCubicMajorant_integral_le
#print axioms RH16WholeCubic.wholeCubicMajorant_integral_le
#check RH16WholeCubic.wholeCubicErrorRow_abs_le
#print axioms RH16WholeCubic.wholeCubicErrorRow_abs_le
#check RH16WholeCubic.whole_short_error_abs_le
#print axioms RH16WholeCubic.whole_short_error_abs_le
#check RH16WholeCubic.wholeCubicMainTerm
#print axioms RH16WholeCubic.wholeCubicMainTerm
#check RH16WholeCubic.full_model_density_eq
#print axioms RH16WholeCubic.full_model_density_eq
#check RH16WholeCubic.full_model_integrable
#print axioms RH16WholeCubic.full_model_integrable
#check RH16WholeCubic.full_model_integral_eq_main
#print axioms RH16WholeCubic.full_model_integral_eq_main
#check RH16WholeCubic.actual_samples_eq_full_main_add_error
#print axioms RH16WholeCubic.actual_samples_eq_full_main_add_error
#check RH16WholeCubic.actual_residual_eq_full_short_main_add_complement_add_error
#print axioms RH16WholeCubic.actual_residual_eq_full_short_main_add_complement_add_error
#check RH16WholeCubic.residual_upper_of_joint_full_block
#print axioms RH16WholeCubic.residual_upper_of_joint_full_block
#check RH16WholeCubic.residual_upper_of_joint_full_block_at_radius
#print axioms RH16WholeCubic.residual_upper_of_joint_full_block_at_radius
#check RH16WholeCubic.wholeCubicResidualBudget
#print axioms RH16WholeCubic.wholeCubicResidualBudget
#check RH16WholeCubic.wholeCubicResidualBudget_nonneg
#print axioms RH16WholeCubic.wholeCubicResidualBudget_nonneg
#check RH16WholeCubic.residual_witness_of_joint_full_block
#print axioms RH16WholeCubic.residual_witness_of_joint_full_block
#check RH16WholeCubic.all_real_lower_of_joint_full_block
#print axioms RH16WholeCubic.all_real_lower_of_joint_full_block
#check RH16WholeCubic.estimate_of_joint_full_block
#print axioms RH16WholeCubic.estimate_of_joint_full_block
```

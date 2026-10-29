-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourceGreenKernel.Variantd01bcf399c7eb5e64a4f50a091f1e97c52884bd874ad18c70e0fcd2d1c370e57","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d01bcf399c7eb5e64a4f50a091f1e97c52884bd874ad18c70e0fcd2d1c370e57","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourceGreenKernel.Variantd01bcf399c7eb5e64a4f50a091f1e97c52884bd874ad18c70e0fcd2d1c370e57","mathematical_subject":"Analysis.Integration","original_sha256":"d01bcf399c7eb5e64a4f50a091f1e97c52884bd874ad18c70e0fcd2d1c370e57","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle7/source-green/AuditPrivate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceGreenKernel


namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceGreenKernel.Variantd01bcf399c7eb5e64a4f50a091f1e97c52884bd874ad18c70e0fcd2d1c370e57

set_option linter.hashCommand false

open FormalResearch.RiemannHypothesis.SourceGreenKernel

#check @greenKernel
#print axioms greenKernel
#check @sourceGreenPairing
#print axioms sourceGreenPairing
#check @sourceGreenConvolution
#print axioms sourceGreenConvolution
#check @greenKernel_continuous
#print axioms greenKernel_continuous
#check @greenKernel_even
#print axioms greenKernel_even
#check @sourceGreenPairing_integrable
#print axioms sourceGreenPairing_integrable
#check @sourceGreenConvolution_integrable
#print axioms sourceGreenConvolution_integrable
#check @sourceGreenPairing_eq_twice_negativeSmoothMoment
#print axioms sourceGreenPairing_eq_twice_negativeSmoothMoment
#check @sourceGreenPairing_eq_causal_energy
#print axioms sourceGreenPairing_eq_causal_energy
#check @criticalContinuousMoment_eq_neg_half_green
#print axioms criticalContinuousMoment_eq_neg_half_green
#check @normalizedPrimitiveBump_even
#print axioms normalizedPrimitiveBump_even
#check @normalizedPrimitiveBump_deriv_odd
#print axioms normalizedPrimitiveBump_deriv_odd
#check @causalSourceTail_add_reflection
#print axioms causalSourceTail_add_reflection
#check @sourceGreenConvolution_upper_half
#print axioms sourceGreenConvolution_upper_half
#check @sourceGreenConvolution_lower_half
#print axioms sourceGreenConvolution_lower_half
#check @sourceGreenConvolution_eq_tails
#print axioms sourceGreenConvolution_eq_tails
#check @sourceGreenConvolution_eq_neg_bump
#print axioms sourceGreenConvolution_eq_neg_bump
#check @sourceGreenConvolution_continuous
#print axioms sourceGreenConvolution_continuous
#check @sourceGreenConvolution_hasCompactSupport
#print axioms sourceGreenConvolution_hasCompactSupport
#check @sourceGreenConvolution_zero_of_not_mem
#print axioms sourceGreenConvolution_zero_of_not_mem
#check @sourceGreenDoubleKernel
#print axioms sourceGreenDoubleKernel
#check @sourceGreenDoubleKernel_continuous
#print axioms sourceGreenDoubleKernel_continuous
#check @sourceGreenDoubleKernel_hasCompactSupport
#print axioms sourceGreenDoubleKernel_hasCompactSupport
#check @sourceGreenDoubleKernel_integrable
#print axioms sourceGreenDoubleKernel_integrable
#check @source_mul_sourceGreenConvolution_integrable
#print axioms source_mul_sourceGreenConvolution_integrable
#check @source_mul_reflected_tail_integral
#print axioms source_mul_reflected_tail_integral
#check @source_mul_sourceGreenConvolution_integral
#print axioms source_mul_sourceGreenConvolution_integral
#check @sourceGreenPairing_eq_convolution_pairing
#print axioms sourceGreenPairing_eq_convolution_pairing
#check @sourceGreenPairing_eq_double_integral
#print axioms sourceGreenPairing_eq_double_integral
#check @sourceGreenPairing_eq_neg_source_bump
#print axioms sourceGreenPairing_eq_neg_source_bump
#check @sourceGreenPairing_eq_normalized_energy
#print axioms sourceGreenPairing_eq_normalized_energy
#check @sourceGreenPairing_eq_rational
#print axioms sourceGreenPairing_eq_rational
#check @sourceGreenPairing_pos
#print axioms sourceGreenPairing_pos
#check @criticalContinuousMoment_eq_half_source_bump
#print axioms criticalContinuousMoment_eq_half_source_bump
#check @greenKernel_pos
#print axioms greenKernel_pos
#check @unit_source_convolution_zero_kernel_positive
#print axioms unit_source_convolution_zero_kernel_positive
#check @sourceGreenPairing_ne_half_causal_energy
#print axioms sourceGreenPairing_ne_half_causal_energy
#check @sourceGreenPairing_eq_bump_energy
#print axioms sourceGreenPairing_eq_bump_energy

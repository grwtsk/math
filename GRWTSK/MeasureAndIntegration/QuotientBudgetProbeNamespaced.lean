-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.MobiusPrefixTilt.Variantb2dde16962249d77cb930481a21799ff78e23155a3d97db8e8e103b1f5c9d853","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b2dde16962249d77cb930481a21799ff78e23155a3d97db8e8e103b1f5c9d853","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.MobiusPrefixTilt.Variantb2dde16962249d77cb930481a21799ff78e23155a3d97db8e8e103b1f5c9d853","mathematical_subject":"Analysis.Integration","original_sha256":"b2dde16962249d77cb930481a21799ff78e23155a3d97db8e8e103b1f5c9d853","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-controller-admission/QuotientBudgetProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusPrefixTilt
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

namespace GRWTSK.Analysis.RealAnalysis.Integration.MobiusPrefixTilt.Variantb2dde16962249d77cb930481a21799ff78e23155a3d97db8e8e103b1f5c9d853

open MeasureTheory Filter Set
#check harmonic_eq_sum_Icc
#check harmonic_eq_sum_Icc
#check Real.hasDerivAt_sqrt
#check Real.sqrt_eq_exp
#check Real.rpow_neg_one_half
#check intervalIntegral.integral_eq_sub_of_hasDerivAt
#check intervalIntegral.integral_inv_sqrt
#check integral_Ioc_eq_integral_Icc
#check integral_Icc_eq_integral_Ioc
#check MeasureTheory.integral_mono_ae
#check MeasureTheory.norm_integral_le_integral_norm
#check ContinuousAt.congr_of_eventuallyEq
#check Complex.continuousAt_of_differentiableAt
#check Filter.EventuallyEq.eq_of_nhdsNE
#check ContinuousAt.eq_of_eventuallyEq
#check MeasureTheory.integrableOn_Icc_iff_integrableOn_Ioc

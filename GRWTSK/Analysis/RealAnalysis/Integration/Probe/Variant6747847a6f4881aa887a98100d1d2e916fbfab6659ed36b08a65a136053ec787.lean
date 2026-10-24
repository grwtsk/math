-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SumIntegralComparisons.Variantc5f46519ddbfcbd0c8f2cdd75093775874987ee5991af3f79f864edf07934fcc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5f46519ddbfcbd0c8f2cdd75093775874987ee5991af3f79f864edf07934fcc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SumIntegralComparisons.Variantc5f46519ddbfcbd0c8f2cdd75093775874987ee5991af3f79f864edf07934fcc","mathematical_subject":"Analysis.Integration","original_sha256":"c5f46519ddbfcbd0c8f2cdd75093775874987ee5991af3f79f864edf07934fcc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mobius-quadrature/Probe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.NumberTheory.ArithmeticFunction.Moebius

namespace GRWTSK.Analysis.RealAnalysis.Integration.SumIntegralComparisons.Variantc5f46519ddbfcbd0c8f2cdd75093775874987ee5991af3f79f864edf07934fcc

#check Real.div_rpow
#check Real.rpow_two
#check intervalIntegral.intervalIntegrable_rpow'
#check intervalIntegral.integral_mono_on_of_le_Ioo
#check intervalIntegral.sum_integral_adjacent_intervals
#check intervalIntegral.sum_integral_adjacent_intervals_Ico
#check Finset.sum_Ico_eq_sum_range
#check Finset.Ico_add_one_right_eq_Icc
#check intervalIntegral.integral_mono_interval
#check Finset.sum_range_add
#check Nat.abs_moebius_le_one
#check ArithmeticFunction.abs_moebius_le_one

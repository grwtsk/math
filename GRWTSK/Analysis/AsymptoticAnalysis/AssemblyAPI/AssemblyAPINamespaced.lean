-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.FrullaniIntegral.Variantbd8ad54797875f949b44c0774ed773c43290c697bf08b89f7a2bd93099889f02","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bd8ad54797875f949b44c0774ed773c43290c697bf08b89f7a2bd93099889f02","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.FrullaniIntegral.Variantbd8ad54797875f949b44c0774ed773c43290c697bf08b89f7a2bd93099889f02","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"bd8ad54797875f949b44c0774ed773c43290c697bf08b89f7a2bd93099889f02","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass5/compensated_integral_review/AssemblyAPI.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.FrullaniIntegral
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic

namespace GRWTSK.Analysis.AsymptoticAnalysis.FrullaniIntegral.Variantbd8ad54797875f949b44c0774ed773c43290c697bf08b89f7a2bd93099889f02

open MeasureTheory Set Filter
open scoped Topology
#check Real.exp_nat_mul
#check Real.exp_mul_nat
#check HasSum.congr
#check ENNReal.ofReal_tsum_of_nonneg
#check ENNReal.ofReal_tsum
#check ENNReal.hasSum_ofReal
#check ofReal_integral_norm_eq_lintegral_enorm
#check hasFiniteIntegral_iff_enorm
#check enorm_tsum_le_tsum_enorm
#check lintegral_tsum
#check HasSum.unique
#check Real.exp_lt_exp

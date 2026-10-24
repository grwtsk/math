-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualResidualSubClosedHeadNormLe.Variant7299e628f00815e2619875d249df38d1b79a19f2e6f888d15dba4ee5fb0cfe2c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7299e628f00815e2619875d249df38d1b79a19f2e6f888d15dba4ee5fb0cfe2c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualResidualSubClosedHeadNormLe.Variant7299e628f00815e2619875d249df38d1b79a19f2e6f888d15dba4ee5fb0cfe2c","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"7299e628f00815e2619875d249df38d1b79a19f2e6f888d15dba4ee5fb0cfe2c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T112129Z-1791372089864545000/SourceActualEulerResidualApproximation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualEulerSupportHead

/-!
The original actual residual is approximated by its signed closed finite Euler
head with both genuine frequency tails paid. The error tends to zero unscaled
for fixed c>d>1 and every real scale tending to infinity. No signed head cap.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualResidualSubClosedHeadNormLe.Variant7299e628f00815e2619875d249df38d1b79a19f2e6f888d15dba4ee5fb0cfe2c

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualEulerResidualApproximation
open Complex Filter Topology
open SourceActualEulerSupportHead SourceActualPrimeBumpDictionary
open SourceActualInitialPrimeLineL1 SourceActualBumpMovingHeight
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

/-- The original residual keeps the exact quantitative finite Euler replacement cost. -/
theorem actualResidual_sub_closedHead_norm_le (A c d : ℝ) (hA : 1 ≤ A)
    (hd : 1 < d) (hdc : d < c) :
    ‖(mertensResidual A : ℂ) - actualClosedPrimeHead A c (actualBumpMovingHeight A c)‖ ≤
      (actualBumpMovingTailConstant c +
        actualClosedPrimeHeadErrorConstant c d * Real.exp (-2 * (c - d) * A)) / A ^ 9 := by
  calc
    _ ≤ ‖(mertensResidual A : ℂ) -
        actualInitialPrimeHead A c (actualBumpMovingHeight A c)‖ +
      ‖actualInitialPrimeHead A c (actualBumpMovingHeight A c) -
        actualClosedPrimeHead A c (actualBumpMovingHeight A c)‖ := norm_sub_le_norm_sub_add_norm_sub _ _ _
    _ ≤ actualBumpMovingTailConstant c / A ^ 9 +
        actualClosedPrimeHeadErrorConstant c d * Real.exp (-2 * (c - d) * A) / A ^ 9 :=
      add_le_add (actualMertensResidual_sub_head_norm_le hA (by linarith))
        (actualClosedPrimeHead_moving_error_le A c d hA hd hdc)
    _ = _ := by ring

/-- The actual finite Euler head differs from the original residual by a vanishing unscaled error. -/
theorem actualResidual_sub_closedHead_tendsto_zero (c d : ℝ) (hd : 1 < d) (hdc : d < c) :
    Tendsto (fun A : ℝ => (mertensResidual A : ℂ) -
      actualClosedPrimeHead A c (actualBumpMovingHeight A c)) atTop (𝓝 0) := by
  have hp : Tendsto (fun A : ℝ => 2 * (c - d) * A) atTop atTop :=
    tendsto_id.const_mul_atTop (by linarith : 0 < 2 * (c - d))
  have he : Tendsto (fun A : ℝ => Real.exp (-2 * (c - d) * A)) atTop (𝓝 0) := by
    convert Real.tendsto_exp_neg_atTop_nhds_zero.comp hp using 1
    funext A
    congr 1
    ring
  have hn : Tendsto (fun A : ℝ => actualBumpMovingTailConstant c +
      actualClosedPrimeHeadErrorConstant c d * Real.exp (-2 * (c - d) * A))
      atTop (𝓝 (actualBumpMovingTailConstant c)) := by
    simpa using tendsto_const_nhds.add (he.const_mul (actualClosedPrimeHeadErrorConstant c d))
  apply squeeze_zero_norm' _ (hn.div_atTop (tendsto_pow_atTop (by norm_num : (9 : ℕ) ≠ 0)))
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  exact actualResidual_sub_closedHead_norm_le A c d hA hd hdc

end FormalResearch.RiemannHypothesis.SourceActualEulerResidualApproximation

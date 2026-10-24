# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualEulerLogarithmicResidual.Variante8062946d194d78755024f5219db2dfce696de08f9d560525a7e52631e418dca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67594fb7b414ad54b2c8173a08438177a6fc111d` · SHA-256 `d6eed35a486c9aabdf5e66462629dfaf724179fb8b85a193b8607087d3fbec0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualEulerLogBoundaryConstantNonneg.Variant3aafe4bce72b8404cb851cd113616aba13ae92e0f9d54dcdbb33bc046b81d7fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3aafe4bce72b8404cb851cd113616aba13ae92e0f9d54dcdbb33bc046b81d7fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualEulerLogBoundaryConstantNonneg.Variant3aafe4bce72b8404cb851cd113616aba13ae92e0f9d54dcdbb33bc046b81d7fb","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"3aafe4bce72b8404cb851cd113616aba13ae92e0f9d54dcdbb33bc046b81d7fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T124504Z-1791377104924195000/SourceActualEulerLogarithmicResidual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualEulerLogarithmicPrimitive
import SourceActualEulerResidualApproximation

/-!
The complete original signed residual is transported to the independently
defined finite logarithmic-potential bulk, with all original closed prime
coefficients and both endpoint payments. The error vanishes without scaling.
No uniform upper bound for that signed bulk is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualEulerLogBoundaryConstantNonneg.Variant3aafe4bce72b8404cb851cd113616aba13ae92e0f9d54dcdbb33bc046b81d7fb

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualEulerLogarithmicResidual
open Complex Filter Topology
open SourceActualEulerLogarithmicPrimitive SourceActualEulerResidualApproximation
open SourceActualEulerSupportHead SourceActualBumpMovingHeight SourceActualRightBumpTail
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

/-- The complete endpoint constant has its genuine nonnegative arithmetic mass. -/
theorem actualEulerLogBoundaryConstant_nonneg (c : ℝ) :
    0 ≤ actualEulerLogBoundaryConstant c := by
  change 0 ≤ ((204288:ℝ)^2/(4096/109395)*(1+c^2)*(1+(c-1)^2)) *
    actualRightLineMass c / (Real.pi*Real.log 2)
  have hM := actualRightLineMass_nonneg c
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  positivity

/-- True unscaled error: original tails, exterior polynomial payment and both log endpoints. -/
theorem actualResidual_sub_logBulk_norm_le (A c d : ℝ) (hA : 1 ≤ A)
    (hd : 1 < d) (hdc : d < c) :
    ‖(mertensResidual A:ℂ) -
      actualClosedPrimeLogBulk A c (actualBumpMovingHeight A c)‖ ≤
      (actualBumpMovingTailConstant c +
        actualClosedPrimeHeadErrorConstant c d*Real.exp (-2*(c-d)*A) +
        actualEulerLogBoundaryConstant c*Real.exp (-((2*c-1)*A/5))) / A^9 := by
  have hi : actualClosedPrimeHead A c (actualBumpMovingHeight A c) -
      actualClosedPrimeLogBulk A c (actualBumpMovingHeight A c) =
        actualClosedPrimeLogBoundary A c (actualBumpMovingHeight A c) := by
    rw [actualClosedPrimeHead_eq_logBulk_add_boundary A c _ hA, add_sub_cancel_left]
  calc
    _ ≤ ‖(mertensResidual A:ℂ) -
          actualClosedPrimeHead A c (actualBumpMovingHeight A c)‖ +
        ‖actualClosedPrimeHead A c (actualBumpMovingHeight A c) -
          actualClosedPrimeLogBulk A c (actualBumpMovingHeight A c)‖ :=
      norm_sub_le_norm_sub_add_norm_sub _ _ _
    _ ≤ (actualBumpMovingTailConstant c +
        actualClosedPrimeHeadErrorConstant c d*Real.exp (-2*(c-d)*A))/A^9 +
        actualEulerLogBoundaryConstant c*Real.exp (-((2*c-1)*A/5))/A^9 := by
      rw [hi]
      exact add_le_add (actualResidual_sub_closedHead_norm_le A c d hA hd hdc)
        (actualClosedPrimeLogBoundary_moving_norm_le A c hA (by linarith))
    _ = _ := by ring

/-- The complete original residual-minus-logarithmic-bulk tends0 at every real scale. -/
theorem actualResidual_sub_logBulk_tendsto_zero (c d : ℝ) (hd : 1 < d) (hdc : d < c) :
    Tendsto (fun A : ℝ => (mertensResidual A:ℂ) -
      actualClosedPrimeLogBulk A c (actualBumpMovingHeight A c)) atTop (𝓝 0) := by
  have hp : Tendsto (fun A : ℝ => 2*(c-d)*A) atTop atTop :=
    tendsto_id.const_mul_atTop (by linarith : 0 < 2*(c-d))
  have he : Tendsto (fun A : ℝ => Real.exp (-2*(c-d)*A)) atTop (𝓝 0) := by
    convert Real.tendsto_exp_neg_atTop_nhds_zero.comp hp using 1
    funext A
    congr 1
    ring
  have hq : Tendsto (fun A : ℝ => ((2*c-1)/5)*A) atTop atTop :=
    tendsto_id.const_mul_atTop (by linarith : 0 < (2*c-1)/5)
  have hf : Tendsto (fun A : ℝ => Real.exp (-((2*c-1)*A/5))) atTop (𝓝 0) := by
    convert Real.tendsto_exp_neg_atTop_nhds_zero.comp hq using 1
    funext A
    congr 1
    ring
  have hn : Tendsto (fun A : ℝ => actualBumpMovingTailConstant c +
      actualClosedPrimeHeadErrorConstant c d*Real.exp (-2*(c-d)*A) +
      actualEulerLogBoundaryConstant c*Real.exp (-((2*c-1)*A/5)))
      atTop (𝓝 (actualBumpMovingTailConstant c)) := by
    simpa using (tendsto_const_nhds.add
      (he.const_mul (actualClosedPrimeHeadErrorConstant c d))).add
        (hf.const_mul (actualEulerLogBoundaryConstant c))
  apply squeeze_zero_norm' _ (hn.div_atTop (tendsto_pow_atTop (by norm_num : (9:ℕ) ≠ 0)))
  filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
  exact actualResidual_sub_logBulk_norm_le A c d hA hd hdc

end FormalResearch.RiemannHypothesis.SourceActualEulerLogarithmicResidual
```

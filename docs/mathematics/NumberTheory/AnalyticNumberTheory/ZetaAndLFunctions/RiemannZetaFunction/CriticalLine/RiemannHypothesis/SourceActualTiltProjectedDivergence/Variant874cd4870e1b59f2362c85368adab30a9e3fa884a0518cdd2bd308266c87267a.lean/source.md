# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualTiltProjectedDivergence.Variant874cd4870e1b59f2362c85368adab30a9e3fa884a0518cdd2bd308266c87267a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `567ccd885dc5da6968a063e4c664f91ec06dedc2` · SHA-256 `9f92e926c3ec8ea9e74315d8038f26f9a3e4c6982a16dcc452a704f8b8f4e217`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RightMassPos.Variant3ef93d17144854f98833af4e032bd379119568308eec886ae795477e9fea7886","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ef93d17144854f98833af4e032bd379119568308eec886ae795477e9fea7886","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.RightMassPos.Variant3ef93d17144854f98833af4e032bd379119568308eec886ae795477e9fea7886","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3ef93d17144854f98833af4e032bd379119568308eec886ae795477e9fea7886","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T123012Z-1791376212629247000/SourceActualTiltProjectedDivergence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualTiltProjectedGrowth

/-!
The actual moving-height projected state has an unbounded retained norm.
The convergent arithmetic mass is a fixed positive coefficient, not a state
normalization or a bound on the complete signed readout.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RightMassPos.Variant3ef93d17144854f98833af4e032bd379119568308eec886ae795477e9fea7886

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualTiltProjectedDivergence
open Filter
open scoped Topology
open SourceActualTiltProjectedGrowth SourceActualTiltBandProjection
open SourceActualEulerCentralFrequency SourceActualRightBumpTail SourceActualBumpMovingHeight

private theorem right_mass_pos : 0 < actualRightLineMass (3 / 2) := by
  obtain ⟨A, hA, hh⟩ := (eventually_ge_atTop (1 : ℝ)).and
    actualTiltBandState_moving_energy_eventually_lower |>.exists
  have hp : 0 < actualCentralFrequencyConstant * Real.exp (2 * A) / A ^ 10 := by
    exact div_pos (mul_pos actualCentralFrequencyConstant_pos (Real.exp_pos _))
      (pow_pos (by linarith : 0 < A) _)
  have hm : 0 < actualRightLineMass (3 / 2) *
      ‖actualTiltBandState A (actualBumpMovingHeight A (3 / 2))‖ ^ 2 := hp.trans_le hh
  exact pos_of_mul_pos_left hm (sq_nonneg _)

/-- The true moving-height band norm square has a fixed positive exponential lower bound. -/
theorem actualTiltBandState_moving_norm_sq_eventually_lower :
    ∀ᶠ A : ℝ in atTop,
      (actualCentralFrequencyConstant / actualRightLineMass (3 / 2)) *
        Real.exp (2 * A) / A ^ 10 ≤
          ‖actualTiltBandState A (actualBumpMovingHeight A (3 / 2))‖ ^ 2 := by
  filter_upwards [actualTiltBandState_moving_energy_eventually_lower] with A hh
  have hd := (div_le_iff₀ right_mass_pos).2 hh
  convert hd using 1 <;> ring

/-- The actual projected energy tends to infinity along all real scales. -/
theorem actualTiltBandState_moving_norm_sq_tendsto_atTop :
    Tendsto (fun A : ℝ => ‖actualTiltBandState A (actualBumpMovingHeight A (3 / 2))‖ ^ 2)
      atTop atTop := by
  have ht : Tendsto (fun A : ℝ => Real.exp (2 * A) / A ^ 10) atTop atTop := by
    apply tendsto_atTop_mono' atTop _ (Real.tendsto_exp_div_pow_atTop 10)
    filter_upwards [eventually_ge_atTop (0 : ℝ)] with A hA
    gcongr
    linarith
  have hk : 0 < actualCentralFrequencyConstant / actualRightLineMass (3 / 2) :=
    div_pos actualCentralFrequencyConstant_pos right_mass_pos
  have hh : Tendsto (fun A : ℝ =>
      (actualCentralFrequencyConstant / actualRightLineMass (3 / 2)) *
        Real.exp (2 * A) / A ^ 10) atTop atTop := by
    convert ht.const_mul_atTop hk using 1
    ext A
    ring
  exact tendsto_atTop_mono' atTop actualTiltBandState_moving_norm_sq_eventually_lower hh

end FormalResearch.RiemannHypothesis.SourceActualTiltProjectedDivergence
```

# Complete source: GRWTSK.Topology.GeneralTopology.SourceLeadingTailDecay.Variantb2ad0e5b82138eb58193a799d963f07bcf1e8e5983465f36f27f081850e4f5ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `176a2d291cbbd4db4b17ffb39dc30c53236d7c53` · SHA-256 `794737ea03cc62e4ec268cfbbeb5bb12a85929f59ae0eb539c026f31b32758f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.LogarithmicLeadingErrorEnvelope.Variant8ff6e53fe50f6b5ce3eeb5fc60e1cda591dc6f7cb6c091a24669d4833cc448c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ff6e53fe50f6b5ce3eeb5fc60e1cda591dc6f7cb6c091a24669d4833cc448c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.LogarithmicLeadingErrorEnvelope.Variant8ff6e53fe50f6b5ce3eeb5fc60e1cda591dc6f7cb6c091a24669d4833cc448c3","mathematical_subject":"Topology.GeneralTopology","original_sha256":"8ff6e53fe50f6b5ce3eeb5fc60e1cda591dc6f7cb6c091a24669d4833cc448c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T190134Z-1791313294738715000/SourceLeadingTailDecay.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceLeadingTailQuantitative

/-!
The genuine floor-sampled short-jet error tends to zero on the original real
scale domain. The complete leading Moebius and arithmetic tail remain signed
and joined. This analytic decay supplies no uniform arithmetic witness.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.Topology.GeneralTopology.LogarithmicLeadingErrorEnvelope.Variant8ff6e53fe50f6b5ce3eeb5fc60e1cda591dc6f7cb6c091a24669d4833cc448c3

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceLeadingTailDecay

open Filter
open scoped Topology
open SourceLeadingTailQuantitative SourceLeadingTailBudget SourceLeadingFullKappaReduction
open SourceRenormalizedActualSignedTail SourceFullPositiveKappa SourcePairing
open SourceStrictComplementaryLocalization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateMertensAbel

noncomputable section

/-- Independently specified genuine-coefficient majorant for the complete actual short error. -/
def logarithmicLeadingErrorEnvelope (A : ℝ) : ℝ :=
  80 * |fullPositiveKappa 1| * ((Real.log A) ^ 2 / A) +
    (80 * |fullPositiveKappa 2| + (134 / 3 : ℝ) * |fullPositiveKappa 4|) *
      (Real.log A / A) + 20 * |fullPositiveKappa 3| * (1 / A)

/-- Every real floor scale retains the logarithmic majorant for its actual short error. -/
theorem fullKappaShortBudget_le_logarithmic_envelope {A : ℝ} (hA : 91 ≤ A) :
    fullKappaShortBudget A ≤ logarithmicLeadingErrorEnvelope A := by
  have hp : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  have hU1 := (actual_cutoff_order A hA1).1
  have ht0 : 0 ≤ Real.log (vaughanCutoff A : ℝ) := Real.log_nonneg hU1
  have hl0 : 0 ≤ Real.log A := Real.log_nonneg hA1
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have ht : Real.log (vaughanCutoff A : ℝ) ≤ 2 * Real.log A := by
    have hh := Real.log_le_log (by linarith : 0 < (vaughanCutoff A : ℝ)) hf
    simpa only [Real.log_pow, Nat.cast_ofNat] using hh
  have ht2 : (Real.log (vaughanCutoff A : ℝ)) ^ 2 ≤ 4 * (Real.log A) ^ 2 := by
    nlinarith
  have hAc : A ≤ A ^ 3 := by nlinarith [sq_nonneg (A - 1)]
  rw [fullKappaShortBudget_eq hp]
  calc
    _ ≤ (80 * |fullPositiveKappa 1| * (Real.log A) ^ 2 +
        80 * |fullPositiveKappa 2| * Real.log A + 20 * |fullPositiveKappa 3|) / A +
        (134 / 3 : ℝ) * |fullPositiveKappa 4| * Real.log A / A ^ 3 := by
      apply add_le_add
      · apply div_le_div_of_nonneg_right _ hp.le
        nlinarith [mul_le_mul_of_nonneg_left ht2 (show 0 ≤ 20 * |fullPositiveKappa 1|
          by positivity), mul_le_mul_of_nonneg_left ht (show 0 ≤ 40 * |fullPositiveKappa 2|
          by positivity)]
      · apply div_le_div_of_nonneg_right _ (by positivity : 0 ≤ A ^ 3)
        nlinarith [mul_le_mul_of_nonneg_left ht
          (show 0 ≤ (67 / 3 : ℝ) * |fullPositiveKappa 4| by positivity)]
    _ ≤ (80 * |fullPositiveKappa 1| * (Real.log A) ^ 2 +
        80 * |fullPositiveKappa 2| * Real.log A + 20 * |fullPositiveKappa 3|) / A +
        (134 / 3 : ℝ) * |fullPositiveKappa 4| * Real.log A / A := by
      apply add_le_add le_rfl
      exact div_le_div_of_nonneg_left (by positivity) hp hAc
    _ = _ := by unfold logarithmicLeadingErrorEnvelope; ring

/-- The true coefficient envelope vanishes along the original real scale domain. -/
theorem logarithmicLeadingErrorEnvelope_tendsto_zero :
    Tendsto logarithmicLeadingErrorEnvelope atTop (𝓝 (0 : ℝ)) := by
  have h2 : Tendsto (fun A : ℝ => (Real.log A) ^ 2 / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_mul, add_zero] using
      Real.tendsto_pow_log_div_mul_add_atTop 1 0 2 (by norm_num)
  have h1 : Tendsto (fun A : ℝ => Real.log A / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_mul, add_zero, pow_one] using
      Real.tendsto_pow_log_div_mul_add_atTop 1 0 1 (by norm_num)
  have h0 : Tendsto (fun A : ℝ => 1 / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_div] using tendsto_inv_atTop_zero
  have hh := ((h2.const_mul (80 * |fullPositiveKappa 1|)).add
    (h1.const_mul (80 * |fullPositiveKappa 2| + (134 / 3 : ℝ) * |fullPositiveKappa 4|))).add
      (h0.const_mul (20 * |fullPositiveKappa 3|))
  simpa only [logarithmicLeadingErrorEnvelope, mul_zero, add_zero] using hh

/-- The actual full four-jet remainder, including all real floor jumps, tends to zero. -/
theorem fullKappaShortBudget_tendsto_zero :
    Tendsto fullKappaShortBudget atTop (𝓝 (0 : ℝ)) := by
  apply squeeze_zero' _ _ logarithmicLeadingErrorEnvelope_tendsto_zero
  · filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
    have hp : 0 < A := by linarith
    have hU := (actual_cutoff_order A (by linarith : 1 ≤ A)).1
    rw [fullKappaShortBudget_eq hp]
    have ht := Real.log_nonneg hU
    positivity
  · filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
    exact fullKappaShortBudget_le_logarithmic_envelope hA

/-- Leading and complete renormalized arithmetic sources have vanishing actual discrepancy. -/
theorem renormalized_sub_actual_leading_tendsto_zero :
    Tendsto (fun A : ℝ => renormalizedActualSignedTail A - actualLeadingRenormalizedTail A)
      atTop (𝓝 (0 : ℝ)) := by
  apply tendsto_zero_iff_norm_tendsto_zero.2
  simp only [Real.norm_eq_abs]
  apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _
    fullKappaShortBudget_tendsto_zero
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  exact renormalized_tail_sub_actual_leading_abs_le hA

end
end FormalResearch.RiemannHypothesis.SourceLeadingTailDecay
```

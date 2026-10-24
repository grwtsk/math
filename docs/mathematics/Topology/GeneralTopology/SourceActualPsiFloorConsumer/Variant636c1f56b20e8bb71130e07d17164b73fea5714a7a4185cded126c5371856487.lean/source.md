# Complete source: GRWTSK.Topology.GeneralTopology.SourceActualPsiFloorConsumer.Variant636c1f56b20e8bb71130e07d17164b73fea5714a7a4185cded126c5371856487

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43f15a7c33abf0cd70e1bc4d84d7306cc3084c1b` · SHA-256 `28aca02d06e9f0c7037d5928dd377585d4dcc33d44960908ae2049f98f59516e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.CompletePairingEqPsiFloorAddActualErrors.Variant41c83226c5d198dcf4709637550d8823767aa775b4402b39c64d5e1c731aaaf7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"41c83226c5d198dcf4709637550d8823767aa775b4402b39c64d5e1c731aaaf7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.CompletePairingEqPsiFloorAddActualErrors.Variant41c83226c5d198dcf4709637550d8823767aa775b4402b39c64d5e1c731aaaf7","mathematical_subject":"Topology.GeneralTopology","original_sha256":"41c83226c5d198dcf4709637550d8823767aa775b4402b39c64d5e1c731aaaf7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T194652Z-1791316012563772000/SourceActualPsiFloorConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualPoleMomentAnnihilation
import SourceFiveCancelledFactorialBudget
import SourceActualLeadingAsymptotic

/-!
The complete actual signed source is reconstructed from the independent true
psi-minus-floor pairing and two proved analytic errors. The real scale domain,
closed unit and all prime powers remain unchanged. No uniform arithmetic
witness is supplied by this reconstruction or by its vanishing errors.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.Topology.GeneralTopology.CompletePairingEqPsiFloorAddActualErrors.Variant41c83226c5d198dcf4709637550d8823767aa775b4402b39c64d5e1c731aaaf7

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualPsiFloorConsumer
open MeasureTheory Set Filter
open scoped Topology
open SourceActualPoleMomentAnnihilation SourceActualPsiContinuousFrontier
open SourceFiveCancelledFactorialBudget SourceCancelledFactorialDecay
open SourceLeadingTailDecay SourceLeadingTailBudget SourceLeadingFullKappaReduction
open SourceRenormalizedActualSignedTail SourceUnconditionalCorrectedCalibration
open SourceCompleteCorrectedAbelPairing SourceStrictComplementaryLocalization
open SourceActualLeadingAsymptotic SourceLeadingTailQuantitative
open SourceFullPositiveKappa SourcePairing
open ContinuousResearch.ActualIntegerInventory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual
noncomputable section

/-- Exact complete source keeps the true psi-floor pairing and both analytic errors. -/
theorem complete_pairing_eq_psi_floor_add_actual_errors {A : ℝ} (hA : 91 ≤ A) :
    completeCorrectedAbelPairing A = actualPsiFloorPairing A +
      actualCancelledFactorialWork A +
        (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A) := by
  have hf := actual_leading_full_complement_eq_psi_continuous_add_factorial A hA
  rw [actualPsiContinuousPairing_eq_psi_floor A hA] at hf
  have hl := literal_L_sub_plain_eq_early_add_tail A (by linarith : 1 ≤ A)
  have hp := complete_pairing_eq_renormalized_tail_add_actual_head A
    (by linarith : 1 ≤ A)
  change fullPositiveKappa 1 * actualWeightedMoebiusHalfSum A +
    (literalOmegaComplementarySector A - plainInventory A) =
      actualPsiFloorPairing A + actualCancelledFactorialWork A at hf
  unfold actualLeadingRenormalizedTail
  linarith

/-- Every real scale retains the proved short-jet and quarter-factorial error budgets. -/
theorem complete_pairing_sub_psi_floor_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |completeCorrectedAbelPairing A - actualPsiFloorPairing A| ≤
      fullKappaShortBudget A + fiveCancelledFactorialBudget A := by
  have he := complete_pairing_eq_psi_floor_add_actual_errors hA
  have hf := actual_cancelled_factorial_full_abs_le_five A hA
  have hs := renormalized_tail_sub_actual_leading_abs_le hA
  have ht := abs_add_le (actualCancelledFactorialWork A)
    (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A)
  have hid : completeCorrectedAbelPairing A - actualPsiFloorPairing A =
      actualCancelledFactorialWork A +
        (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A) := by linarith
  rw [← hid] at ht
  linarith

/-- All actual source reconstruction errors vanish on the original real scale domain. -/
theorem complete_pairing_sub_psi_floor_tendsto_zero :
    Tendsto (fun A : ℝ => completeCorrectedAbelPairing A - actualPsiFloorPairing A)
      atTop (𝓝 (0 : ℝ)) := by
  have hh : Tendsto (fun A : ℝ => actualCancelledFactorialWork A +
      (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A))
      atTop (𝓝 (0 : ℝ)) := by
    simpa only [add_zero] using actualCancelledFactorialWork_tendsto_zero.add
      renormalized_sub_actual_leading_tendsto_zero
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  have he := complete_pairing_eq_psi_floor_add_actual_errors hA
  linarith

/-- The original residual retains its independent zeta calibration and all genuine errors. -/
theorem residual_sub_psi_floor_sub_zeta_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |mertensResidual A - actualPsiFloorPairing A - (riemannZeta (1 / 2 : ℂ)).re| ≤
      260 / A ^ 2 + 960 * 67 / A ^ 3 + fullKappaShortBudget A +
        fiveCancelledFactorialBudget A := by
  have hc := residual_sub_pairing_sub_zeta_abs_le hA
  have hp := complete_pairing_sub_psi_floor_abs_le hA
  have ht := abs_add_le
    (mertensResidual A - completeCorrectedAbelPairing A - (riemannZeta (1 / 2 : ℂ)).re)
    (completeCorrectedAbelPairing A - actualPsiFloorPairing A)
  have he : (mertensResidual A - completeCorrectedAbelPairing A -
      (riemannZeta (1 / 2 : ℂ)).re) +
        (completeCorrectedAbelPairing A - actualPsiFloorPairing A) =
      mertensResidual A - actualPsiFloorPairing A - (riemannZeta (1 / 2 : ℂ)).re := by ring
  rw [he] at ht
  linarith

/-- The unchanged original residual has vanishing error relative to the true arithmetic pairing. -/
theorem residual_sub_psi_floor_sub_zeta_tendsto_zero :
    Tendsto (fun A : ℝ => mertensResidual A - actualPsiFloorPairing A -
      (riemannZeta (1 / 2 : ℂ)).re) atTop (𝓝 (0 : ℝ)) := by
  have h0 : Tendsto (fun A : ℝ => 1 / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_div] using tendsto_inv_atTop_zero
  have h2 : Tendsto (fun A : ℝ => 260 / A ^ 2) atTop (𝓝 (0 : ℝ)) := by
    simpa [div_eq_mul_inv, one_div, inv_pow] using (h0.pow 2).const_mul 260
  have h3 : Tendsto (fun A : ℝ => 960 * 67 / A ^ 3) atTop (𝓝 (0 : ℝ)) := by
    simpa [div_eq_mul_inv, one_div, inv_pow] using (h0.pow 3).const_mul (960 * 67)
  have hb : Tendsto (fun A : ℝ => 260 / A ^ 2 + 960 * 67 / A ^ 3)
      atTop (𝓝 (0 : ℝ)) := by simpa only [add_zero] using h2.add h3
  have hc : Tendsto (fun A : ℝ => mertensResidual A - completeCorrectedAbelPairing A -
      (riemannZeta (1 / 2 : ℂ)).re) atTop (𝓝 (0 : ℝ)) := by
    apply tendsto_zero_iff_norm_tendsto_zero.2
    simp only [Real.norm_eq_abs]
    apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _ hb
    filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
    exact residual_sub_pairing_sub_zeta_abs_le hA
  have hh := hc.add complete_pairing_sub_psi_floor_tendsto_zero
  have he : (fun A : ℝ =>
      (mertensResidual A - completeCorrectedAbelPairing A - (riemannZeta (1 / 2 : ℂ)).re) +
        (completeCorrectedAbelPairing A - actualPsiFloorPairing A)) =
      (fun A : ℝ => mertensResidual A - actualPsiFloorPairing A -
        (riemannZeta (1 / 2 : ℂ)).re) := by funext A; ring
  simpa only [he, add_zero] using hh

/-- The quarter-sized actual factorial budget is at most fifteen at every real A>=25600. -/
theorem fiveCancelledFactorialBudget_le_fifteen {A : ℝ} (hA : 25600 ≤ A) :
    fiveCancelledFactorialBudget A ≤ 15 := by
  have hp : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  let T := Real.log (vaughanCutoff A : ℝ)
  let S := Real.sqrt A
  have hs0 : 0 < S := Real.sqrt_pos.2 hp
  have hs160 : 160 ≤ S := by
    apply Real.le_sqrt_of_sq_le
    norm_num
    exact hA
  have hss : S ^ 2 = A := Real.sq_sqrt hp.le
  have ht0 : 0 ≤ T := Real.log_nonneg (actual_cutoff_order A hA1).1
  have ht2 : T ^ 2 ≤ 64 * S :=
    RH16IndependentChallengeNext.actualCutoff_log_sq_le_sqrt hA1
  have htA : T ^ 2 ≤ A := (actual_cutoff_logs_le_scale hA).1
  have hTS : T ≤ S := by nlinarith
  have h1 : 2240 / S ≤ (14 : ℝ) := (div_le_iff₀ hs0).2 (by linarith)
  have h2 : 960 / A ≤ (1 : ℝ) := (div_le_iff₀ hp).2 (by linarith)
  unfold fiveCancelledFactorialBudget
  calc
    _ ≤ (2240 * S + 960) / A := by
      change (30 * T ^ 2 + 320 * T + 960) / A ≤ _
      apply div_le_div_of_nonneg_right _ hp.le
      nlinarith
    _ = 2240 / S + 960 / A := by
      rw [add_div]
      congr 1
      apply (div_eq_div_iff hp.ne' hs0.ne').2
      nlinarith [hss]
    _ ≤ 15 := by linarith

/-- A fixed numerical reconstruction cost keeps the complete real signed arithmetic source. -/
theorem complete_pairing_sub_psi_floor_abs_le_seventy {A : ℝ} (hA : 25600 ≤ A) :
    |completeCorrectedAbelPairing A - actualPsiFloorPairing A| ≤ 70 := by
  have he := complete_pairing_sub_psi_floor_abs_le (by linarith : 91 ≤ A)
  have hs := fullKappaShortBudget_le_fifty_five hA
  have hf := fiveCancelledFactorialBudget_le_fifteen hA
  linarith

/-- Same real radius preserves equivalent upper witnesses for the true arithmetic pairing. -/
theorem psi_floor_upper_iff_complete_pairing_upper_at_radius (R : ℝ) (hR : 25600 ≤ R) :
    (∃ K : ℝ, ∀ A : ℝ, R ≤ A → actualPsiFloorPairing A ≤ K) ↔
      (∃ K : ℝ, ∀ A : ℝ, R ≤ A → completeCorrectedAbelPairing A ≤ K) := by
  constructor
  · rintro ⟨K, hK⟩
    refine ⟨K + 70, ?_⟩
    intro A hRA
    have he := abs_le.mp (complete_pairing_sub_psi_floor_abs_le_seventy (hR.trans hRA))
    have hk := hK A hRA
    linarith
  · rintro ⟨K, hK⟩
    refine ⟨K + 70, ?_⟩
    intro A hRA
    have he := abs_le.mp (complete_pairing_sub_psi_floor_abs_le_seventy (hR.trans hRA))
    have hk := hK A hRA
    linarith

/-- The sole remaining input is a genuine uniform upper bound of actual psi-minus-floor work. -/
theorem estimate_of_actual_psi_floor_signed_tail {K R : ℝ} (hR : 25600 ≤ R)
    (hpsi : ∀ A : ℝ, R ≤ A → actualPsiFloorPairing A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_complete_corrected_signed_tail (K := K + 70) (by linarith : 117 ≤ R)
  intro A hRA
  have he := abs_le.mp (complete_pairing_sub_psi_floor_abs_le_seventy (hR.trans hRA))
  have hk := hpsi A hRA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualPsiFloorConsumer
```

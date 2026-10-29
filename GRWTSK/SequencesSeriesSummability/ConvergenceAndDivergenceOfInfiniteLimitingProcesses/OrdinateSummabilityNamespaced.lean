-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.OrdinateWeightComparison.Variant45c8e9562691ef5b42c04699e104b5ce2af27febd511382de770cd4fd0bf46f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"45c8e9562691ef5b42c04699e104b5ce2af27febd511382de770cd4fd0bf46f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.OrdinateWeightComparison.Variant45c8e9562691ef5b42c04699e104b5ce2af27febd511382de770cd4fd0bf46f0","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"45c8e9562691ef5b42c04699e104b5ce2af27febd511382de770cd4fd0bf46f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/finite-stieltjes-independent-review/overlay/scratch/common_mean_stieltjes_20261004/OrdinateSummability.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_20261004.FiveModeZeroTailInputs
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount

/-!
Unconditional actual positive-ordinate sixth-power summability. Analytic
multiplicity occurrences and the actual open zero strip are retained. The
accepted radial sixth-weight theorem is compared to ordinates; neither RH nor
the corrected sharp counting theorem is assumed.
Originating direction: grwtsk contributors. Lean assistance: OpenAI Codex.
-/

namespace GRWTSK.Analysis.AsymptoticAnalysis.OrdinateWeightComparison.Variant45c8e9562691ef5b42c04699e104b5ce2af27febd511382de770cd4fd0bf46f0

set_option autoImplicit false
set_option maxHeartbeats 1000000
noncomputable section
namespace CommonMeanStieltjes
open CommonMeanScratch
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

theorem ordinate_weight_comparison (T : ℝ) (hT : 3/2 ≤ T)
    (o : ZeroObject.ZeroOccurrence) (ho : 0 < (ZeroObject.shiftedValue o).im) :
    1/(max T (ZeroObject.shiftedValue o).im)^6 ≤
      64*(1+‖ZeroObject.shiftedValue o‖)^(-6 : ℝ) := by
  let z := ZeroObject.shiftedValue o
  have hr : |z.re| ≤ (1/2 : ℝ) := by
    rw [abs_le]
    exact ⟨(ZeroObject.shiftedValue_strip o).1.le, (ZeroObject.shiftedValue_strip o).2.le⟩
  have hn : ‖z‖ ≤ 1/2+z.im := by
    have h := Complex.norm_le_abs_re_add_abs_im z
    rw [abs_of_pos ho] at h
    linarith
  have hp : 0 < max T z.im := ho.trans_le (le_max_right _ _)
  have hm : 1+‖z‖ ≤ 2*max T z.im := by
    have ht := hT.trans (le_max_left T z.im)
    have hi := le_max_right T z.im
    linarith
  have hs := pow_le_pow_left₀ (by positivity : (0 : ℝ) ≤ 1+‖z‖) hm 6
  have hw : (1+‖z‖)^(-6 : ℝ) = 1/(1+‖z‖)^6 := by
    rw [show (-6 : ℝ) = -((6 : ℕ) : ℝ) by norm_num,
      Real.rpow_neg (by positivity), Real.rpow_natCast]
    simp only [one_div]
  change 1/(max T z.im)^6 ≤ 64*(1+‖z‖)^(-6 : ℝ)
  rw [hw, ← mul_div_assoc, mul_one]
  apply (div_le_div_iff₀ (pow_pos hp _) (by positivity : (0 : ℝ) < (1+‖z‖)^6)).2
  simpa only [mul_pow, one_mul, show (2 : ℝ)^6=64 by norm_num] using hs

theorem actual_positive_max_sixth_summable (T : ℝ) (hT : 3/2 ≤ T) :
    Summable (fun o : {o : ZeroObject.ZeroOccurrence //
      0 < (ZeroObject.shiftedValue o).im} =>
        1/(max T (ZeroObject.shiftedValue o.val).im)^6) := by
  have hm : Summable (fun o : {o : ZeroObject.ZeroOccurrence //
      0 < (ZeroObject.shiftedValue o).im} =>
        64*(1+‖ZeroObject.shiftedValue o.val‖)^(-6 : ℝ)) :=
    (ZeroShellCount.zero_summability.subtype
      (fun o => 0 < (ZeroObject.shiftedValue o).im)).mul_left 64
  exact Summable.of_nonneg_of_le (fun _ => by positivity)
    (fun o => ordinate_weight_comparison T hT o.val o.property) hm

/-- The actual strict positive-ordinate sixth-power sum has no sharp-count
or verified-height premise. The cutoff assumption holds at T=3e12. -/
theorem actual_positive_sixth_summable (T : ℝ) (hT : 3/2 ≤ T) :
    Summable (positiveSixthPowerWeight T) := by
  have h := (ZeroShellCount.zero_summability.subtype
    (fun o => o ∈ zeroPositiveStrictTailSet T)).mul_left 64
  apply Summable.of_nonneg_of_le (fun _ => by unfold positiveSixthPowerWeight; positivity) ?_ h
  intro o
  have hp : 0 < (ZeroObject.shiftedValue o.val).im := by
    have ho : T < (ZeroObject.shiftedValue o.val).im := o.property
    linarith
  have hc := ordinate_weight_comparison T hT o.val hp
  have ht : T ≤ (ZeroObject.shiftedValue o.val).im := o.property.le
  rw [max_eq_right ht] at hc
  exact hc

end CommonMeanStieltjes

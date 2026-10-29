-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualLowerTimeFactor.Variant15c5759256ccae51c0f7a2d1c9d8217f6a4ba3c6cb7a1866098a0266d5d053a1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"15c5759256ccae51c0f7a2d1c9d8217f6a4ba3c6cb7a1866098a0266d5d053a1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualLowerTimeFactor.Variant15c5759256ccae51c0f7a2d1c9d8217f6a4ba3c6cb7a1866098a0266d5d053a1","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"15c5759256ccae51c0f7a2d1c9d8217f6a4ba3c6cb7a1866098a0266d5d053a1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T223105Z-1791325865011045000/ActualSupportEdgeLowerTrace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualSupportEdgeBetaInteraction
import RootActualCriticalColumnTransfer

/-!
The complete actual finite-column correction multiplies the entire lower
trace, including its continuous compensation and genuine lower error head.
Closed support-edge jets and genuine exponential moments give its decay.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualLowerTimeFactor.Variant15c5759256ccae51c0f7a2d1c9d8217f6a4ba3c6cb7a1866098a0266d5d053a1

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualSupportEdgeLowerTrace
open MeasureTheory Set
open scoped Interval
open Filter Topology
open ActualSupportEdgeMangoldtRow ActualSupportEdgeBetaInteraction
open SourceActualAdjointAbelPrimitives RootActualUpperTimeJets SourceActualDoubleMixedKernel
open RootActualCriticalColumnTransfer SourceJointWorkSupport SourceSamplingCoefficients
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel
open RH16IndependentChallengeNext SourcePairing SourceMangoldtAbel CorrelationRegularity
open RootActualDoubleAdjointTransfer
noncomputable section

/-- The genuine lower-column time factor, retaining the original anchored primitive. -/
def actualLowerTimeFactor (A : ℝ) : ℝ :=
  ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
    actualAdjointTimePrimitive A 0 t * actualTwistedTimeDensity A t
      (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))

private theorem actual_orders {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ actualTimeLower A ∧
      actualTimeLower A ≤ Real.log (sourceKernelCutoff A : ℝ) ∧
        0 ≤ 2 * A - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ∧
          2 * A - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤
            Real.log (sourceKernelCutoff A : ℝ) := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hUN : (vaughanCutoff A : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_le_sourceKernelCutoff A hA
  have hK := SourceActualLogColumnTransport.actual_column_window_nonempty hA
  have hN : vaughanCutoff A + 1 ≤ sourceKernelCutoff A :=
    hK.trans (Nat.div_le_self _ _)
  have hNF : (sourceKernelCutoff A : ℝ) ≤ Real.exp (2 * A) :=
    Nat.floor_le (Real.exp_pos _).le
  have ha : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ 2 * A := by
    rw [Real.log_le_iff_le_exp (by positivity)]
    exact (by exact_mod_cast hN : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤
      (sourceKernelCutoff A : ℝ)).trans hNF
  exact ⟨Real.log_nonneg (by exact_mod_cast vaughanCutoff_pos A hA),
    Real.log_le_log hU hUN, by linarith,
    actualJointSupportUpper_le_log_sourceCutoff A hA⟩

private theorem mixed_contDiff {A : ℝ} (hA : 0 < A) (a : ℝ) :
    ContDiff ℝ 1 (fun t => actualLogMixedDensity A t a) := by
  have h0 : ContDiff ℝ 1 (sourceCorrelation explicitSecondDerivative A) :=
    (actual_correlation_contDiff_four A hA).of_le (by norm_num)
  have h2 : ContDiff ℝ 1 (iteratedDeriv 2
      (sourceCorrelation explicitSecondDerivative A)) := by
    rw [iteratedDeriv_eq_iterate]
    exact ContDiff.iterate_deriv' 1 2
      ((actual_correlation_contDiff_four A hA).of_le (by norm_num))
  unfold actualLogMixedDensity
  fun_prop

/-- Actual covariant Abel removes neither the continuous sector nor the lower error head. -/
theorem actualLowerTimeFactor_eq_negative_error_integral {A : ℝ} (hA : 1 ≤ A) :
    actualLowerTimeFactor A =
      -(∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        mangoldtLogError t * actualLogMixedDensity A t
          (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))) := by
  let a := Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)
  have h := actual_time_covariant_abel A 0 (Real.log (sourceKernelCutoff A : ℝ))
    (actual_orders hA).2.1 (fun t => actualLogMixedDensity A t a)
    (mixed_contDiff (by linarith) a)
  simp only [sub_zero, actualMixedDensity_upperTime_zero A hA a le_rfl,
    mul_zero, zero_sub, actualTwistedTimeDensity_eq_time_deriv (by linarith : 0 < A)] at h
  dsimp only [actualLowerTimeFactor, a] at h ⊢
  linarith

private theorem source_jet_zero_right (A : ℝ) (hA : 1 ≤ A) (n : ℕ) :
    ∀ z : ℝ, 2 * A ≤ z → iteratedDeriv n (sourceCorrelation explicitSecondDerivative A) z = 0 := by
  induction n with
  | zero =>
    intro z hz
    simp only [iteratedDeriv_zero]
    exact sourceCorrelation_eq_zero_of_two_mul_le_abs A z (by linarith)
      (hz.trans (le_abs_self z))
  | succ n ih =>
    intro z hz
    have hh : ∀ y ∈ Ici z,
        iteratedDeriv n (sourceCorrelation explicitSecondDerivative A) y = 0 :=
      fun y hy => ih y (hz.trans hy)
    have hd : HasDerivWithinAt (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A))
        0 (Ici z) z :=
      (hasDerivWithinAt_const z (Ici z) (0 : ℝ)).congr
        (fun y hy => hh y hy) (hh z self_mem_Ici)
    simpa only [iteratedDeriv_succ] using hd.deriv_eq_zero (uniqueDiffWithinAt_Ici z)

private theorem mixed_zero_right {A a t : ℝ} (hA : 1 ≤ A) (ht : 2 * A - a ≤ t) :
    actualLogMixedDensity A t a = 0 := by
  have h0 := source_jet_zero_right A hA 0 (t + a) (by linarith)
  have h2 := source_jet_zero_right A hA 2 (t + a) (by linarith)
  simp only [iteratedDeriv_zero] at h0
  simp only [actualLogMixedDensity, h0, h2, zero_div, sub_zero, mul_zero]

private theorem exponential_truncated_moment_le (j : ℕ) {L : ℝ} (hL : 0 ≤ L) :
    (∫ t in 0..L, (L - t) ^ j * Real.exp (t / 2)) ≤
      Real.exp (L / 2) * ((2 : ℝ) ^ (j + 1) * (j.factorial : ℝ)) := by
  have hi := exponential_half_integrable j
  have hn : ∀ᵐ t ∂volume.restrict (Ioi (0 : ℝ)),
      0 ≤ t ^ j * Real.exp (-t / 2) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact mul_nonneg (pow_nonneg (show 0 ≤ t from ht.le) j) (Real.exp_pos _).le
  have hm := setIntegral_mono_set (s := Ioc (0 : ℝ) L) (t := Ioi (0 : ℝ)) hi hn
    (Filter.Eventually.of_forall (fun _ ht => ht.1))
  rw [← intervalIntegral.integral_of_le hL, exponential_half_integral] at hm
  have hs := intervalIntegral.integral_comp_sub_left
    (fun t : ℝ => t ^ j * Real.exp (-t / 2)) (a := (0 : ℝ)) (b := L) L
  simp only [sub_self, sub_zero] at hs
  calc
    _ = Real.exp (L / 2) * (∫ t in 0..L, (L - t) ^ j * Real.exp (-(L - t) / 2)) := by
      rw [← intervalIntegral.integral_const_mul]
      apply intervalIntegral.integral_congr
      intro t _
      dsimp only
      have he : Real.exp (t / 2) = Real.exp (L / 2) * Real.exp (-(L - t) / 2) := by
        rw [← Real.exp_add]
        congr 1
        ring
      rw [he]
      ring
    _ = Real.exp (L / 2) * (∫ t in 0..L, t ^ j * Real.exp (-t / 2)) := by rw [hs]
    _ ≤ _ := mul_le_mul_of_nonneg_left hm (Real.exp_pos _).le

/-- The full actual time factor has a support-edge gamma budget, without deleting its heads. -/
theorem actualLowerTimeFactor_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualLowerTimeFactor A| ≤
      1072 * (Real.log 4 + 4 + Real.log 2) *
        Real.exp (A - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) / A ^ 4 := by
  let l := actualTimeLower A
  let b := Real.log (sourceKernelCutoff A : ℝ)
  let a := Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)
  let L := 2 * A - a
  let H := fun t => actualLogMixedDensity A t a
  let CE := Real.log 4 + 4 + Real.log 2
  obtain ⟨hl, hlb, hL, hLb⟩ := actual_orders (by linarith : 1 ≤ A)
  have hc : Continuous H := (mixed_contDiff (by linarith : 0 < A) a).continuous
  have hE : IntervalIntegrable mangoldtLogError volume l b := by
    simpa using mangoldtLogError_mul_deriv_intervalIntegrable l b hlb
      (fun t : ℝ => t) contDiff_id
  have hEH := hE.mul_continuousOn hc.continuousOn
  have hmono := intervalIntegral.integral_mono_on hlb hEH.abs
    ((hc.abs.intervalIntegrable l b).const_mul CE) (fun t ht => by
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_right (mangoldtLogError_abs_le t (hl.trans ht.1))
        (abs_nonneg (H t)))
  have hrestrict := intervalIntegral.integral_mono_interval (μ := volume) hl hlb le_rfl
    (f := fun t => |H t|) (Filter.Eventually.of_forall (fun t => abs_nonneg (H t)))
    (hc.abs.intervalIntegrable 0 b)
  have htail : (∫ t in L..b, |H t|) = 0 := by
    apply intervalIntegral.integral_zero_ae
    exact Filter.Eventually.of_forall (fun t ht => by
      rw [uIoc_of_le hLb] at ht
      have hz : 2 * A - a ≤ t := ht.1.le
      change |actualLogMixedDensity A t a| = 0
      rw [mixed_zero_right (a := a) (by linarith : 1 ≤ A) hz, abs_zero])
  have hsplit := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
    (hc.abs.intervalIntegrable 0 L) (hc.abs.intervalIntegrable L b)
  rw [htail, add_zero] at hsplit
  have heq : (∫ t in 0..L,
      67 / A ^ 4 * Real.exp (-a / 2) *
        ((L - t) ^ 2 / 2 + (L - t) ^ 4 / 96) * Real.exp (t / 2)) =
      67 / A ^ 4 * Real.exp (-a / 2) *
        ((∫ t in 0..L, (L - t) ^ 2 * Real.exp (t / 2)) / 2 +
          (∫ t in 0..L, (L - t) ^ 4 * Real.exp (t / 2)) / 96) := by
    rw [← intervalIntegral.integral_div, ← intervalIntegral.integral_div,
      ← intervalIntegral.integral_add ((by fun_prop : Continuous (fun t : ℝ =>
          (L - t) ^ 2 * Real.exp (t / 2) / 2)).intervalIntegrable 0 L)
        ((by fun_prop : Continuous (fun t : ℝ =>
          (L - t) ^ 4 * Real.exp (t / 2) / 96)).intervalIntegrable 0 L),
      ← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    ring
  have hkernel : (∫ t in 0..L, |H t|) ≤
      67 / A ^ 4 * Real.exp (-a / 2) * Real.exp (L / 2) * 16 := by
    have hm := intervalIntegral.integral_mono_on (μ := volume) hL (hc.abs.intervalIntegrable 0 L)
      ((by fun_prop : Continuous (fun t : ℝ =>
        67 / A ^ 4 * Real.exp (-a / 2) *
          ((L - t) ^ 2 / 2 + (L - t) ^ 4 / 96) * Real.exp (t / 2))).intervalIntegrable 0 L)
      (fun t ht => by
        have h2 := actual_correlation_second_edge_abs_le (z := t + a) hA
        have h0 := actual_correlation_edge_abs_le (z := t + a) hA
        have hh := abs_sub (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A)
          (t + a)) (sourceCorrelation explicitSecondDerivative A (t + a) / 4)
        rw [abs_div, abs_of_nonneg (by norm_num : 0 ≤ (4 : ℝ))] at hh
        have hb : |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + a) -
            sourceCorrelation explicitSecondDerivative A (t + a) / 4| ≤
            67 / A ^ 4 * ((L - t) ^ 2 / 2 + (L - t) ^ 4 / 96) := by
          rw [show 2 * A - (t + a) = L - t by dsimp only [L]; ring] at h2 h0
          linarith
        dsimp only [H]
        unfold actualLogMixedDensity
        rw [abs_mul, abs_mul, abs_of_pos (Real.exp_pos _),
          abs_of_pos (Real.exp_pos _)]
        calc
          _ ≤ (Real.exp (t / 2) * Real.exp (-a / 2)) *
              (67 / A ^ 4 * ((L - t) ^ 2 / 2 + (L - t) ^ 4 / 96)) :=
            mul_le_mul_of_nonneg_left hb (by positivity)
          _ = _ := by ring)
    rw [heq] at hm
    have h2 := exponential_truncated_moment_le 2 hL
    have h4 := exponential_truncated_moment_le 4 hL
    norm_num only [Nat.factorial, Nat.cast_ofNat] at h2 h4
    calc
      _ ≤ _ := hm
      _ ≤ 67 / A ^ 4 * Real.exp (-a / 2) *
          (Real.exp (L / 2) * 16 / 2 + Real.exp (L / 2) * 768 / 96) := by
        apply mul_le_mul_of_nonneg_left _ (by positivity)
        exact add_le_add (div_le_div_of_nonneg_right h2 (by norm_num))
          (div_le_div_of_nonneg_right h4 (by norm_num))
      _ = _ := by ring
  have hb : |actualLowerTimeFactor A| ≤
      CE * (67 / A ^ 4 * Real.exp (-a / 2) * Real.exp (L / 2) * 16) := by
    rw [actualLowerTimeFactor_eq_negative_error_integral (by linarith : 1 ≤ A), abs_neg]
    exact (intervalIntegral.abs_integral_le_integral_abs hlb).trans
      (hmono.trans (by
        rw [intervalIntegral.integral_const_mul]
        apply mul_le_mul_of_nonneg_left _ (by dsimp only [CE]; positivity)
        exact hrestrict.trans (hsplit ▸ hkernel)))
  have he : Real.exp (-a / 2) * Real.exp (L / 2) = Real.exp (A - a) := by
    rw [← Real.exp_add]
    congr 1
    dsimp only [L]
    ring
  apply hb.trans_eq
  calc
    _ = 1072 * CE * (Real.exp (-a / 2) * Real.exp (L / 2)) / A ^ 4 := by ring
    _ = _ := by rw [he]

/-- The entire adjusted lower trace has a real uniform decaying budget, with all heads retained. -/
theorem actualCriticalAdjustedLowerColumnTrace_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualCriticalAdjustedLowerColumnTrace A| ≤
      25728 * (Real.log 4 + 4 + Real.log 2) / ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
  have ht := actualLowerTimeFactor_abs_le hA
  dsimp only [actualLowerTimeFactor] at ht
  have hq := actualCriticalAdjustedColumnPrimitive_lower_abs_le (by linarith : 4 ≤ A)
  have hA0 : A ≠ 0 := by linarith
  have hUa : 0 < ((vaughanCutoff A + 1 : ℕ) : ℝ) := by positivity
  unfold actualCriticalAdjustedLowerColumnTrace
  rw [abs_mul]
  calc
    _ ≤ (24 * A ^ 4 * Real.exp (-A)) *
        (1072 * (Real.log 4 + 4 + Real.log 2) *
          Real.exp (A - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) / A ^ 4) := by
      exact mul_le_mul hq ht (abs_nonneg _) (by positivity)
    _ = _ := by
      rw [Real.exp_sub, Real.exp_log hUa, Real.exp_neg]
      field_simp
      ring

/-- The actual natural floor gives a genuine all-real square-decay bound. -/
theorem actualCriticalAdjustedLowerColumnTrace_abs_le_square {A : ℝ} (hA : 91 ≤ A) :
    |actualCriticalAdjustedLowerColumnTrace A| ≤
      25728 * (Real.log 4 + 4 + Real.log 2) / A ^ 2 := by
  have hU := Nat.lt_floor_add_one (A ^ 2)
  have hUs : A ^ 2 ≤ ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
    simp only [Nat.cast_add, Nat.cast_one]
    exact hU.le
  exact (actualCriticalAdjustedLowerColumnTrace_abs_le hA).trans
    (div_le_div_of_nonneg_left (by positivity) (by positivity : 0 < A ^ 2) hUs)

/-- Only this complete finite correction vanishes; the signed interior remains actual. -/
theorem actualCriticalAdjustedLowerColumnTrace_tendsto_zero :
    Tendsto actualCriticalAdjustedLowerColumnTrace atTop (𝓝 (0 : ℝ)) := by
  apply tendsto_zero_iff_norm_tendsto_zero.2
  simp only [Real.norm_eq_abs]
  have he : Tendsto (fun A : ℝ =>
      25728 * (Real.log 4 + 4 + Real.log 2) / A ^ 2) atTop (𝓝 (0 : ℝ)) := by
    have h := ((tendsto_inv_atTop_zero :
      Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 (0 : ℝ))).pow 2).const_mul
        (25728 * (Real.log 4 + 4 + Real.log 2))
    simpa only [inv_pow, div_eq_mul_inv, zero_pow (by norm_num : 2 ≠ 0), mul_zero] using h
  apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _ he
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  exact actualCriticalAdjustedLowerColumnTrace_abs_le_square hA

end
end FormalResearch.RiemannHypothesis.ActualSupportEdgeLowerTrace

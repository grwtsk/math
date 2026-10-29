-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualUpperPeriodMeanTrace.Variant75fb026334b8ea358a3110854f3ee2b6ca209e2c66dc5181f18c321a9335ee98","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"75fb026334b8ea358a3110854f3ee2b6ca209e2c66dc5181f18c321a9335ee98","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualUpperPeriodMeanTrace.Variant75fb026334b8ea358a3110854f3ee2b6ca209e2c66dc5181f18c321a9335ee98","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"75fb026334b8ea358a3110854f3ee2b6ca209e2c66dc5181f18c321a9335ee98","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/dependencies/owner-source-captures/SourceActualUpperPeriodMeanTrace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualPeriodMeanMangoldtReadout
import ActualCenteredPeriodMeanBudget
import RootActualAnchoredStripRefinement

/-!
The actual upper period-mean trace has an exponentially decaying budget.
Its anchored time primitive, actual natural quotient and true source seam
are retained. The lower mean, half-cut mean and complete signed near work
are not estimated by this separate upper-boundary consequence.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualUpperPeriodMeanTrace.Variant75fb026334b8ea358a3110854f3ee2b6ca209e2c66dc5181f18c321a9335ee98

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualUpperPeriodMeanTrace
open MeasureTheory Set Filter
open scoped Interval Topology
open RootActualRetainedMeanTrace RootActualUpperColumnWindow RootActualAnchoredStripRefinement
open SourceActualAdjointAbelPrimitives SourceActualLogColumnTransport SourceJointWorkSupport
open SourceActualPeriodicColumnPrimitive ActualCenteredPeriodMeanBudget SourcePairing
open SourceFiveFullKappaShortReduction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel RH16IndependentChallengeNext
noncomputable section

/-- The literal upper mean multiplies the original time integral at the actual closed column. -/
def actualUpperPeriodMeanTrace (A : ℝ) : ℝ :=
  actualCenteredPrefixPeriodMean (vaughanCutoff A) *
    ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t *
        actualRetainedMeanSourcePrimitive A t (actualColumnUpper A)

private theorem upper_time_orders {A : ℝ} (hA : 1 ≤ A) :
    actualTimeLower A ≤ 2 * A - actualColumnUpper A ∧
      2 * A - actualColumnUpper A ≤ Real.log (sourceKernelCutoff A : ℝ) := by
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  have hU : 0 < (U : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hKa : U + 1 ≤ K := actual_column_window_nonempty hA
  have hK : 0 < (K : ℝ) := by exact_mod_cast (show 0 < K by omega)
  have hm : (K : ℝ) * ((U + 1 : ℕ) : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast Nat.div_mul_le_self (sourceKernelCutoff A) (U + 1)
  have hf : (sourceKernelCutoff A : ℝ) ≤ Real.exp (2 * A) :=
    Nat.floor_le (Real.exp_pos _).le
  have hs : (K : ℝ) * (U : ℝ) < Real.exp (2 * A) := by
    simp only [Nat.cast_add, Nat.cast_one] at hm
    nlinarith
  have hl := Real.log_lt_log (mul_pos hK hU) hs
  rw [Real.log_mul hK.ne' hU.ne', Real.log_exp] at hl
  have hb := actualJointSupportUpper_le_log_sourceCutoff A hA
  unfold actualJointSupportUpper at hb
  have hak : Real.log ((U + 1 : ℕ) : ℝ) ≤ Real.log (K : ℝ) :=
    Real.log_le_log (by positivity) (by exact_mod_cast hKa)
  change Real.log (U : ℝ) ≤ 2 * A - Real.log (K : ℝ) ∧
    2 * A - Real.log (K : ℝ) ≤ Real.log (sourceKernelCutoff A : ℝ)
  constructor <;> linarith

private theorem time_factor_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun t => actualAdjointTimePrimitive A 0 t *
      actualRetainedMeanSourcePrimitive A t (actualColumnUpper A)) volume
      (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  have ho := (upper_time_orders hA).1.trans (upper_time_orders hA).2
  have hp := (actualAdjointTimePrimitive_absolutelyContinuous A 0 _ ho).continuousOn
  rw [uIcc_of_le ho] at hp
  have h1 := (actual_correlation_contDiff_four A (by linarith : 0 < A)).continuous_iteratedDeriv 1
    (by norm_num)
  have h2 := (actual_correlation_contDiff_four A (by linarith : 0 < A)).continuous_iteratedDeriv 2
    (by norm_num)
  have hc : Continuous (fun t => actualRetainedMeanSourcePrimitive A t (actualColumnUpper A)) := by
    unfold actualRetainedMeanSourcePrimitive
    fun_prop
  exact (hp.intervalIntegrable_of_Icc ho).mul_continuousOn hc.continuousOn

/-- True closed support shortens the actual mean time integral, without deleting its lower trace. -/
theorem actualUpperPeriodMeanTimeFactor_eq_support {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t *
        actualRetainedMeanSourcePrimitive A t (actualColumnUpper A)) =
      ∫ t in actualTimeLower A..(2 * A - actualColumnUpper A),
        actualAdjointTimePrimitive A 0 t *
          actualRetainedMeanSourcePrimitive A t (actualColumnUpper A) := by
  obtain ⟨hl, hb⟩ := upper_time_orders hA
  have hm : 2 * A - actualColumnUpper A ∈
      uIcc (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
    rw [uIcc_of_le (hl.trans hb)]
    exact ⟨hl, hb⟩
  obtain ⟨hi1, hi2⟩ := (IntervalIntegrable.trans_iff hm).mp (time_factor_intervalIntegrable hA)
  have hz : (∫ t in (2 * A - actualColumnUpper A)..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t *
        actualRetainedMeanSourcePrimitive A t (actualColumnUpper A)) = 0 := by
    calc
      _ = ∫ _ in (2 * A - actualColumnUpper A)..Real.log (sourceKernelCutoff A : ℝ),
          (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro t ht
        have ht0 : 2 * A - actualColumnUpper A ≤ t := by
          simpa only [min_eq_left hb] using ht.1
        change actualAdjointTimePrimitive A 0 t *
          actualRetainedMeanSourcePrimitive A t (actualColumnUpper A) = 0
        rw [actualRetainedMeanSourcePrimitive_zero_right hA (by linarith), mul_zero]
      _ = 0 := by simp
  have he := intervalIntegral.integral_add_adjacent_intervals hi1 hi2
  rw [hz, add_zero] at he
  exact he.symm

private theorem mean_jet_abs_le {A z : ℝ} (hA : 91 ≤ A) (hz : 0 ≤ z) (hzs : z ≤ 2 * A) :
    |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) z +
      iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z / 2| ≤ 10 / A := by
  have hp : 0 < A := by linarith
  have h2 : |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) z| ≤ 5 / A ^ 2 := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      RH16FiveCesaro.actualCorrelation_second_abs_le_five hA z
  have h1 : |iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z| ≤ 10 / A := by
    have hh := actualCorrelation_first_abs_le_five hA z
    simp only [iteratedDeriv_succ, iteratedDeriv_zero, abs_of_nonneg hz] at hh ⊢
    calc
      _ ≤ 5 / A ^ 2 * z := hh
      _ ≤ 5 / A ^ 2 * (2 * A) := mul_le_mul_of_nonneg_left hzs (by positivity)
      _ = _ := by field_simp; ring
  have hj := abs_add_le (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) z)
    (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z / 2)
  rw [abs_div, abs_of_pos (by norm_num : 0 < (2 : ℝ))] at hj
  have ha : 5 / A ^ 2 + (10 / A) / 2 ≤ 10 / A := by
    field_simp
    nlinarith
  exact hj.trans ((add_le_add h2 (div_le_div_of_nonneg_right h1 (by norm_num))).trans ha)

private theorem upper_factor_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t *
        actualRetainedMeanSourcePrimitive A t (actualColumnUpper A)| ≤
      (Real.log 4 + 4 + Real.log 2) * (3 / (vaughanCutoff A : ℝ)) ^ 2 *
        Real.exp (3 / 2) * Real.sqrt (vaughanCutoff A : ℝ) /
          Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) * (10 / A) := by
  have hA1 : 1 ≤ A := by linarith
  let U : ℝ := vaughanCutoff A
  let K : ℝ := (sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ)
  let l := actualTimeLower A
  let c := actualColumnUpper A
  let b := 2 * A - c
  let δ := 3 / U
  let Ce := Real.log 4 + 4 + Real.log 2
  let D := Ce * δ * Real.exp (3 / 2) * Real.sqrt U / Real.sqrt K * (10 / A)
  have hU1 : 1 ≤ U := by
    change (1 : ℝ) ≤ (vaughanCutoff A : ℝ)
    exact_mod_cast vaughanCutoff_pos A hA1
  have hU : 0 < U := by linarith
  have hK : 0 < K := by
    change (0 : ℝ) < ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)
    have hk := actual_column_window_nonempty hA1
    exact_mod_cast (show 0 < sourceKernelCutoff A / (vaughanCutoff A + 1) by omega)
  have hδ3 : δ ≤ 3 := (div_le_iff₀ hU).2 (by linarith)
  have hCe : 0 ≤ Ce := by dsimp [Ce]; positivity
  have hD : 0 ≤ D := by dsimp [D]; positivity
  obtain ⟨hl, _⟩ := upper_time_orders hA1
  have hw : b - l ≤ δ := actualUpperColumn_time_width_le hA1
  have hc0 : 0 ≤ c := Real.log_nonneg (by
    have hk := actual_column_window_nonempty hA1
    exact_mod_cast (show 1 ≤ sourceKernelCutoff A / (vaughanCutoff A + 1) by omega))
  have hl0 : 0 ≤ l := Real.log_nonneg (by exact_mod_cast vaughanCutoff_pos A hA1)
  have hn (t : ℝ) (ht : t ∈ Ioc l b) :
      ‖actualAdjointTimePrimitive A 0 t * actualRetainedMeanSourcePrimitive A t c‖ ≤ D := by
    have hPt : |actualAdjointTimePrimitive A 0 t| ≤ Ce * δ := by
      have hh := actualAdjointTimePrimitive_anchored_abs_le (offset := 0) hA1 ht.1.le
      simp only [abs_zero, add_zero] at hh
      have he : 1 - Real.exp ((l - t) / 2) ≤ δ / 2 := by
        have ht' : t - l ≤ δ := by linarith [ht.2]
        nlinarith [Real.add_one_le_exp ((l - t) / 2)]
      calc
        _ ≤ 2 * Ce * (1 - Real.exp ((l - t) / 2)) := hh
        _ ≤ 2 * Ce * (δ / 2) := mul_le_mul_of_nonneg_left he (by positivity)
        _ = _ := by ring
    have hE : Real.exp (t / 2) ≤ Real.sqrt U * Real.exp (3 / 2) := by
      calc
        _ ≤ Real.exp (Real.log U / 2 + 3 / 2) := by
          apply Real.exp_le_exp.mpr
          have ht' : t - l ≤ 3 := by linarith [ht.2]
          change t - Real.log U ≤ 3 at ht'
          linarith
        _ = _ := by rw [Real.exp_add, Real.exp_half, Real.exp_log hU]
    have hEc : Real.exp (-c / 2) = 1 / Real.sqrt K := by
      change Real.exp (-Real.log K / 2) = _
      rw [show -Real.log K / 2 = -(Real.log K / 2) by ring, Real.exp_neg,
        Real.exp_half, Real.exp_log hK, one_div]
    have hj := mean_jet_abs_le hA (by linarith [ht.1] : 0 ≤ t + c)
      (by dsimp [b] at ht; linarith [ht.2] : t + c ≤ 2 * A)
    rw [Real.norm_eq_abs, abs_mul]
    unfold actualRetainedMeanSourcePrimitive
    rw [abs_mul, abs_mul, abs_of_pos (Real.exp_pos _), abs_of_pos (Real.exp_pos _), hEc]
    calc
      _ ≤ (Ce * δ) * ((Real.sqrt U * Real.exp (3 / 2)) * (1 / Real.sqrt K) * (10 / A)) := by
        gcongr
      _ = D := by dsimp [D]; ring
  have hiD : IntervalIntegrable (fun _ : ℝ => D) volume l b :=
    (by fun_prop : Continuous (fun _ : ℝ => D)).intervalIntegrable l b
  have hb := intervalIntegral.norm_integral_le_of_norm_le hl (Eventually.of_forall hn) hiD
  rw [intervalIntegral.integral_const, smul_eq_mul, Real.norm_eq_abs] at hb
  have hbound : |∫ t in l..b, actualAdjointTimePrimitive A 0 t *
      actualRetainedMeanSourcePrimitive A t c| ≤ D * δ := by
    exact hb.trans (by nlinarith)
  rw [actualUpperPeriodMeanTimeFactor_eq_support hA1]
  change _ ≤ Ce * δ ^ 2 * Real.exp (3 / 2) * Real.sqrt U / Real.sqrt K * (10 / A)
  calc
    _ ≤ D * δ := hbound
    _ = _ := by dsimp [D]; ring

/-- The literal upper period mean has a genuine exponential budget at every real source scale. -/
theorem actualUpperPeriodMeanTrace_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualUpperPeriodMeanTrace A| ≤
      135 * (Real.log 4 + 4 + Real.log 2) * Real.exp (3 / 2) / (A * Real.exp A) := by
  have hA1 : 1 ≤ A := by linarith
  let U : ℝ := vaughanCutoff A
  let K : ℝ := (sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ)
  have hU1 : 1 ≤ U := by
    change (1 : ℝ) ≤ (vaughanCutoff A : ℝ)
    exact_mod_cast vaughanCutoff_pos A hA1
  have hU : 0 < U := by linarith
  have hKa := actual_column_window_nonempty hA1
  have hK2 : 2 ≤ K := by
    change (2 : ℝ) ≤ ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)
    exact_mod_cast (show 2 ≤ sourceKernelCutoff A / (vaughanCutoff A + 1) by
      have := vaughanCutoff_pos A hA1
      omega)
  have hK : 0 < K := by linarith
  have hsU : 0 < Real.sqrt U := Real.sqrt_pos.2 hU
  have hsK : 0 < Real.sqrt K := Real.sqrt_pos.2 hK
  have he := actualUpperColumn_quotient_gap A
  have he4 : Real.exp (2 * A) ≤ 4 * (U * K) := by
    change Real.exp (2 * A) < (K + 2) * ((vaughanCutoff A + 1 : ℕ) : ℝ) at he
    have hau : ((vaughanCutoff A + 1 : ℕ) : ℝ) = U + 1 := by dsimp [U]; simp
    rw [hau] at he
    calc
      _ ≤ (K + 2) * (U + 1) := he.le
      _ ≤ (2 * K) * (2 * U) := mul_le_mul (by linarith) (by linarith) (by positivity)
        (by positivity)
      _ = _ := by ring
  have hep : Real.exp A ^ 2 = Real.exp (2 * A) := by
    rw [← Real.exp_nat_mul]
    congr 1
  have hs : Real.exp A ≤ 3 * (Real.sqrt U * Real.sqrt K) := by
    have hv : (Real.sqrt U * Real.sqrt K) ^ 2 = U * K := by
      rw [mul_pow, Real.sq_sqrt hU.le, Real.sq_sqrt hK.le]
    apply (sq_le_sq₀ (Real.exp_pos A).le (by positivity)).mp
    rw [hep]
    nlinarith
  have hm := actualCenteredPrefixPeriodMean_abs_le (vaughanCutoff A)
    (vaughanCutoff_pos A hA1)
  have ht := upper_factor_abs_le hA
  unfold actualUpperPeriodMeanTrace
  rw [abs_mul]
  calc
    _ ≤ ((U - 1) / 2) * ((Real.log 4 + 4 + Real.log 2) * (3 / U) ^ 2 *
        Real.exp (3 / 2) * Real.sqrt U / Real.sqrt K * (10 / A)) :=
      mul_le_mul hm ht (abs_nonneg _) (by positivity)
    _ ≤ (U / 2) * ((Real.log 4 + 4 + Real.log 2) * (3 / U) ^ 2 *
        Real.exp (3 / 2) * Real.sqrt U / Real.sqrt K * (10 / A)) := by
      gcongr
      linarith
    _ = 45 * (Real.log 4 + 4 + Real.log 2) * Real.exp (3 / 2) /
        (A * (Real.sqrt U * Real.sqrt K)) := by
      field_simp
      nlinarith [Real.sq_sqrt hU.le]
    _ = 135 * (Real.log 4 + 4 + Real.log 2) * Real.exp (3 / 2) /
        (A * (3 * (Real.sqrt U * Real.sqrt K))) := by ring
    _ ≤ _ := div_le_div_of_nonneg_left (by positivity)
      (mul_pos (by linarith : 0 < A) (Real.exp_pos A))
      (mul_le_mul_of_nonneg_left hs (by linarith : 0 ≤ A))

/-- This separate upper mean tends to zero; the lower mean and complete signed interior remain. -/
theorem actualUpperPeriodMeanTrace_tendsto_zero :
    Tendsto actualUpperPeriodMeanTrace atTop (𝓝 (0 : ℝ)) := by
  apply tendsto_zero_iff_norm_tendsto_zero.2
  simp only [Real.norm_eq_abs]
  have he : Tendsto (fun A : ℝ =>
      135 * (Real.log 4 + 4 + Real.log 2) * Real.exp (3 / 2) / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [div_eq_mul_inv, mul_zero] using
      (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 (0 : ℝ))).const_mul
        (135 * (Real.log 4 + 4 + Real.log 2) * Real.exp (3 / 2))
  apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _ he
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  apply (actualUpperPeriodMeanTrace_abs_le hA).trans
  apply div_le_div_of_nonneg_left (by positivity) (by linarith : 0 < A)
  have hx : 1 ≤ Real.exp A := Real.one_le_exp_iff.mpr (by linarith)
  nlinarith

end
end FormalResearch.RiemannHypothesis.SourceActualUpperPeriodMeanTrace

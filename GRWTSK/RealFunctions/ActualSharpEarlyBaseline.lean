import SourceStrictComplementaryEarlyBudget
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature

/-!
The actual early floor contribution has its full negative linear main term.
The proof retains the real floor cutoff, the source derivative orientation and
the complete signed complementary tail. No arithmetic upper witness is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false

namespace RH16IndependentChallengeNext

open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourcePairing SourcePositiveSampling SourceCorrelationCurvature
open SourceStrictComplementaryLocalization SourceStrictComplementaryEarlyBudget
open SourceStrictComplementaryAbel SourceFullDivisorLogInventory
open SourceCriticalWeightMassObstruction
open OmegaResearch.CriticalRelativePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateVaughanSource EstimateCorrelation

noncomputable section

/-- Evenness forces the actual correlation's genuine first derivative to vanish at zero. -/
theorem actualCorrelation_deriv_zero {A : ℝ} (hA : 0 < A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
  have hc := ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hA)).1 0).hasDerivAt
  have hcn : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) 0) (-(0 : ℝ)) := by
    simpa only [neg_zero] using hc
  have hn : HasDerivAt (fun u : ℝ => sourceCorrelation explicitSecondDerivative A (-u))
      (-deriv (sourceCorrelation explicitSecondDerivative A) 0) 0 := by
    simpa only [neg_zero, mul_neg_one, Function.comp_def] using
      hcn.comp 0 (hasDerivAt_neg (0 : ℝ))
  have he : (fun u : ℝ => sourceCorrelation explicitSecondDerivative A (-u)) =
      sourceCorrelation explicitSecondDerivative A := funext (sourceCorrelation_even A)
  rw [he] at hn
  have hd := hc.unique hn
  linarith

/-- The explicit source curvature gives a lower kernel estimate at every nonnegative argument. -/
theorem actualCriticalWeight_lower_curvature {A t : ℝ} (hA : 1 ≤ A) (ht : 0 ≤ t) :
    1 / 2 - (162826 / (7623 * A ^ 2)) * (t ^ 2 / 4 + t) ≤ criticalWeight A t := by
  have hzero := actualCorrelation_deriv_zero (by linarith : 0 < A)
  have hc := sourceCorrelation_linear_taylor_bound hA 0 t
  have hd := sourceCorrelation_deriv_increment_bound hA 0 t
  simp only [zero_add, hzero, mul_zero, sub_zero, actual_correlation_at_zero A hA,
    abs_of_nonneg ht] at hc hd
  unfold criticalWeight
  have hcL := (abs_le.mp hc).1
  have hdU := (abs_le.mp hd).2
  linarith

private theorem exp_neg_half_log_eq_inv_sqrt {x : ℝ} (hx : 0 < x) :
    Real.exp (-Real.log x / 2) = 1 / Real.sqrt x := by
  rw [show -Real.log x / 2 = -(Real.log x * (1 / 2)) by ring,
    Real.exp_neg, ← Real.rpow_def_of_pos hx, ← Real.sqrt_eq_rpow]
  simp only [one_div]

/-- A pointwise upper majorant for the genuine floor-weighted derivative on its actual prefix. -/
theorem actualEarlyDerivative_le_curvature_majorant {A x : ℝ} (hA : 25600 ≤ A)
    (hx : x ∈ Icc (1 : ℝ) (vaughanCutoff A : ℝ)) :
    (⌊x⌋₊ : ℝ) * deriv (plainProfile A 1) x ≤
      -(x - 1) / (2 * x * Real.sqrt x) +
        (162826 / (7623 * A ^ 2)) *
          ((Real.log x) ^ 2 / 4 + Real.log x) / Real.sqrt x := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hx0 : 0 < x := by linarith [hx.1]
  have hs : 0 < Real.sqrt x := Real.sqrt_pos.2 hx0
  have ht : 0 ≤ Real.log x := Real.log_nonneg hx.1
  have htU := Real.log_le_log hx0 hx.2
  have htW := htU.trans (log_vaughanCutoff_le_early_window hA)
  have hw := criticalWeight_early_lower (by linarith : 40 ≤ A) ht htW
  have hl := actualCriticalWeight_lower_curvature hA1 ht
  have hf : x - 1 ≤ (⌊x⌋₊ : ℝ) := (Nat.sub_one_lt_floor x).le
  have hfc : (x - 1) * criticalWeight A (Real.log x) ≤
      (⌊x⌋₊ : ℝ) * criticalWeight A (Real.log x) :=
    mul_le_mul_of_nonneg_right hf (by linarith)
  have he := mul_le_mul_of_nonneg_left hl (show 0 ≤ x - 1 by linarith [hx.1])
  have hr : 0 ≤ (162826 / (7623 * A ^ 2)) *
      ((Real.log x) ^ 2 / 4 + Real.log x) := by positivity
  have hferr : (x - 1) * ((162826 / (7623 * A ^ 2)) *
      ((Real.log x) ^ 2 / 4 + Real.log x)) ≤
      x * ((162826 / (7623 * A ^ 2)) *
      ((Real.log x) ^ 2 / 4 + Real.log x)) :=
    mul_le_mul_of_nonneg_right (by linarith) hr
  rw [(plainProfile_hasDerivAt hp 1 hx0).deriv]
  simp only [Real.log_one, zero_add]
  rw [exp_neg_half_log_eq_inv_sqrt hx0]
  have hden : 0 < x * Real.sqrt x := mul_pos hx0 hs
  have hn : -((⌊x⌋₊ : ℝ) * criticalWeight A (Real.log x)) ≤
      -(x - 1) / 2 + x * ((162826 / (7623 * A ^ 2)) *
        ((Real.log x) ^ 2 / 4 + Real.log x)) := by nlinarith
  have hd := div_le_div_of_nonneg_right hn hden.le
  calc
    _ = -((⌊x⌋₊ : ℝ) * criticalWeight A (Real.log x)) / (x * Real.sqrt x) := by
      unfold criticalWeight
      field_simp
      ring
    _ ≤ _ := hd
    _ = _ := by field_simp

private def sharpEarlyPrimitive (A x : ℝ) : ℝ :=
  -Real.sqrt x - 1 / Real.sqrt x +
    (162826 / (7623 * A ^ 2)) / 2 * Real.sqrt x * (Real.log x) ^ 2

private theorem sharpEarlyPrimitive_hasDerivAt {A x : ℝ} (hx : 0 < x) :
    HasDerivAt (sharpEarlyPrimitive A)
      (-(x - 1) / (2 * x * Real.sqrt x) +
        (162826 / (7623 * A ^ 2)) *
          ((Real.log x) ^ 2 / 4 + Real.log x) / Real.sqrt x) x := by
  have hs := Real.hasDerivAt_sqrt hx.ne'
  have hl := Real.hasDerivAt_log hx.ne'
  have hsq := Real.sq_sqrt hx.le
  have hs0 : Real.sqrt x ≠ 0 := (Real.sqrt_pos.2 hx).ne'
  have hd := (hs.neg.sub (hs.inv hs0)).add
    (((hs.const_mul ((162826 / (7623 * A ^ 2)) / 2)).mul (hl.pow 2)))
  have he : sharpEarlyPrimitive A =
      (fun y : ℝ => -Real.sqrt y - (Real.sqrt y)⁻¹ +
        ((162826 / (7623 * A ^ 2)) / 2 * Real.sqrt y) * (Real.log y) ^ 2) := by
    funext y
    simp only [sharpEarlyPrimitive, one_div]
  rw [he]
  apply hd.congr_deriv
  simp only [Pi.pow_apply, Nat.cast_ofNat, Nat.reduceSub, pow_one]
  field_simp [hx.ne', hs0]
  simp only [hsq]
  ring

/-- Integrating the actual prefix majorant retains its exact square-root endpoint. -/
theorem complementaryEarlyBaseline_le_curvature_endpoint {A : ℝ} (hA : 25600 ≤ A) :
    complementaryEarlyBaseline A ≤
      -Real.sqrt (vaughanCutoff A : ℝ) - 1 / Real.sqrt (vaughanCutoff A : ℝ) + 2 +
        (162826 / (7623 * A ^ 2)) / 2 * Real.sqrt (vaughanCutoff A : ℝ) *
          (Real.log (vaughanCutoff A : ℝ)) ^ 2 := by
  have hA1 : 1 ≤ A := by linarith
  have hU := (actual_cutoff_order A hA1).1
  let D : ℝ → ℝ := fun x => -(x - 1) / (2 * x * Real.sqrt x) +
    (162826 / (7623 * A ^ 2)) * ((Real.log x) ^ 2 / 4 + Real.log x) / Real.sqrt x
  have hc : ContinuousOn D (Icc 1 (vaughanCutoff A : ℝ)) := by
    intro x hx
    have hx0 : 0 < x := by linarith [hx.1]
    have hs0 : Real.sqrt x ≠ 0 := (Real.sqrt_pos.2 hx0).ne'
    exact (((continuousAt_id.sub continuousAt_const).neg.div
      ((continuousAt_const.mul continuousAt_id).mul Real.continuous_sqrt.continuousAt)
      (mul_ne_zero (mul_ne_zero (by norm_num) hx0.ne') hs0)).add
      ((continuousAt_const.mul
        (((Real.continuousAt_log hx0.ne').pow 2).div_const 4 |>.add
          (Real.continuousAt_log hx0.ne'))).div
        Real.continuous_sqrt.continuousAt hs0)).continuousWithinAt
  have hiD : IntervalIntegrable D volume 1 (vaughanCutoff A : ℝ) :=
    hc.intervalIntegrable_of_Icc hU
  have hi : IntervalIntegrable
      (fun x => (⌊x⌋₊ : ℝ) * deriv (plainProfile A 1) x) volume 1 (vaughanCutoff A : ℝ) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hU).mpr
      ((early_floor_derivative_integrable hA1).mono_set Ioc_subset_Icc_self)
  have hm := intervalIntegral.integral_mono_on hU hi hiD
    (fun x hx => actualEarlyDerivative_le_curvature_majorant hA hx)
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x hx => sharpEarlyPrimitive_hasDerivAt (show 0 < x by
      rw [uIcc_of_le hU] at hx
      linarith [hx.1])) hiD
  rw [he] at hm
  unfold complementaryEarlyBaseline
  rw [← intervalIntegral.integral_of_le hU]
  simp only [sharpEarlyPrimitive, Real.sqrt_one, Real.log_one,
    zero_pow (by decide : 2 ≠ 0), mul_zero, one_div_one] at hm
  linarith

/-- A nested-square-root logarithm estimate controls the actual moving floor endpoint. -/
theorem actualCutoff_log_sq_le_sqrt {A : ℝ} (hA : 1 ≤ A) :
    (Real.log (vaughanCutoff A : ℝ)) ^ 2 ≤ 64 * Real.sqrt A := by
  have hp : 0 < A := by linarith
  have hU : (1 : ℝ) ≤ (vaughanCutoff A : ℝ) := (actual_cutoff_order A hA).1
  have hU0 : (0 : ℝ) < (vaughanCutoff A : ℝ) := by linarith
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have ht0 : 0 ≤ Real.log (vaughanCutoff A : ℝ) := Real.log_nonneg hU
  have ht := Real.log_le_log hU0 hf
  rw [Real.log_pow] at ht
  norm_num at ht
  have hs0 : 0 < Real.sqrt A := Real.sqrt_pos.2 hp
  have hss0 : 0 < Real.sqrt (Real.sqrt A) := Real.sqrt_pos.2 hs0
  have hl := Real.log_le_sub_one_of_pos hss0
  rw [Real.log_sqrt hs0.le, Real.log_sqrt hp.le] at hl
  have hts : Real.log (vaughanCutoff A : ℝ) ≤ 8 * Real.sqrt (Real.sqrt A) := by
    linarith
  have hm := mul_self_le_mul_self ht0 hts
  have hsq := Real.sq_sqrt hs0.le
  nlinarith

/-- The actual floor changes its square-root scale by at most one half at these real scales. -/
theorem actualCutoff_sqrt_lower {A : ℝ} (hA : 25600 ≤ A) :
    A - 1 / 2 ≤ Real.sqrt (vaughanCutoff A : ℝ) := by
  have hf : A ^ 2 - 1 ≤ (vaughanCutoff A : ℝ) := (Nat.sub_one_lt_floor (A ^ 2)).le
  apply Real.le_sqrt_of_sq_le
  nlinarith

/-- The explicitly calibrated curvature error at the moving floor endpoint is below 9/2. -/
theorem actualCutoff_curvature_error_le {A : ℝ} (hA : 25600 ≤ A) :
    (162826 / (7623 * A ^ 2)) / 2 * Real.sqrt (vaughanCutoff A : ℝ) *
      (Real.log (vaughanCutoff A : ℝ)) ^ 2 ≤ 9 / 2 := by
  have hp : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hs : Real.sqrt (vaughanCutoff A : ℝ) ≤ A := by
    simpa only [Real.sqrt_sq hp.le] using Real.sqrt_le_sqrt hf
  have ht := actualCutoff_log_sq_le_sqrt hA1
  have hsp := Real.sqrt_pos.2 hp
  have hs160 := Real.sqrt_le_sqrt hA
  norm_num at hs160
  have hcoef : 0 ≤ (162826 / (7623 * A ^ 2)) / 2 := by positivity
  have hm : (162826 / (7623 * A ^ 2)) / 2 * Real.sqrt (vaughanCutoff A : ℝ) *
      (Real.log (vaughanCutoff A : ℝ)) ^ 2 ≤
      (162826 / (7623 * A ^ 2)) / 2 * A * (64 * Real.sqrt A) :=
    mul_le_mul (mul_le_mul_of_nonneg_left hs hcoef) ht
      (sq_nonneg _) (by positivity)
  have he : (162826 / (7623 * A ^ 2)) / 2 * A * (64 * Real.sqrt A) =
      (32 * (162826 / 7623 : ℝ)) / Real.sqrt A := by
    field_simp [hp.ne', hsp.ne']
    nlinarith [Real.sq_sqrt hp.le]
  have hd : (32 * (162826 / 7623 : ℝ)) / Real.sqrt A ≤
      (32 * (162826 / 7623 : ℝ)) / 160 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hs160
  rw [he] at hm
  exact hm.trans (hd.trans (by norm_num))

/-- The genuine early floor contribution retains its full negative A term
with a fixed loss seven. -/
theorem complementaryEarlyBaseline_le_neg_scale_add_seven {A : ℝ} (hA : 25600 ≤ A) :
    complementaryEarlyBaseline A ≤ -A + 7 := by
  have he := complementaryEarlyBaseline_le_curvature_endpoint hA
  have hs := actualCutoff_sqrt_lower hA
  have hc := actualCutoff_curvature_error_le hA
  have hi : 0 ≤ 1 / Real.sqrt (vaughanCutoff A : ℝ) := by positivity
  linarith

/-- Full actual L-B is bounded by its complete genuine signed tail minus A plus seven. -/
theorem literal_L_sub_plain_le_tail_sub_scale_add_seven {A : ℝ} (hA : 25600 ≤ A) :
    literalOmegaComplementarySector A - ContinuousResearch.ActualIntegerInventory.plainInventory A ≤
      complementarySignedTail A - A + 7 := by
  rw [literal_L_sub_plain_eq_early_add_tail A (by linarith : 1 ≤ A)]
  have he := complementaryEarlyBaseline_le_neg_scale_add_seven hA
  linarith

end
end RH16IndependentChallengeNext

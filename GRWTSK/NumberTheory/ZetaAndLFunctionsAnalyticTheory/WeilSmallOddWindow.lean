/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralWindow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSharpBoundaryNorm

/-!
# Coercivity of the literal odd form on a small window

The exact gamma periodization from Sections 2–5 of `weil-periodic-boundary.md`
gives a lower bound on every odd sine mode at radius 1/1024. The first
frequency already covers the gamma constant and the signed boundary loss.
No prime shift meets the window since its diameter is smaller than log 2.
Cauchy–Schwarz on the literal support controls the negative rank-one pole
by four times the radius times the squared mass.

The result is a form estimate at zero shift on the small real odd window.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

open Filter MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SmallOddWindow

open LowSchur OddRootProjection OddOutputTrace OddMultiplierBounds
open OddSineForm OddWrapEnergy OddExactPeriodization OddHighComplement OddLiteralWindow

private theorem activePrimePowers_eq_empty {T : ℝ} (hT : 2 * T < Real.log 2) :
    activePrimePowers T = ∅ := by
  have hexp : Real.exp (2 * T) < 2 := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using Real.exp_lt_exp.mpr hT
  apply Finset.eq_empty_iff_forall_notMem.mpr
  intro q hq
  obtain ⟨_, hq2, hqexp⟩ := Finset.mem_filter.mp hq
  have hq2' : (2 : ℝ) ≤ (q : ℝ) := by exact_mod_cast hq2
  exact (not_lt_of_ge hq2') (hqexp.trans hexp)

private theorem boundaryLoss_small_le :
    OddSharpBoundaryNorm.boundaryLoss (1 / 1024) ≤ 2 := by
  unfold OddSharpBoundaryNorm.boundaryLoss
  linarith [Real.pi_lt_d2, Real.add_one_le_exp (-(1 / 1024 : ℝ))]

private theorem multiplier_small_ge :
    (33 / 4 : ℝ) ≤ periodicMultiplier 0 (frequency (1 / 1024) 1) := by
  have hw : 0 < frequency (1 / 1024) 1 := by unfold frequency; positivity
  have harg : (2 : ℝ) ^ 12 ≤ 2 * frequency (1 / 1024) 1 := by
    norm_num [frequency]
    linarith [Real.pi_gt_d2]
  have hlog := Real.log_le_log (by positivity : (0 : ℝ) < 2 ^ (12 : ℕ)) harg
  rw [Real.log_pow] at hlog
  linarith [Real.log_two_gt_d9, log_two_mul_le_periodicMultiplier_zero hw]

/-- The pole profile is bounded by one on a sufficiently small window. -/
theorem abs_sinh_half_le_one {T t : ℝ} (hsmall : T / 2 ≤ Real.log 2)
    (ht : t ∈ Icc (-T) T) : |Real.sinh (t / 2)| ≤ 1 := by
  have ht' : |t / 2| ≤ T / 2 := by
    rw [abs_le]
    exact ⟨by linarith [ht.1], by linarith [ht.2]⟩
  have hlog : Real.sinh (Real.log 2) ≤ 1 := by
    rw [Real.sinh_eq, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
    linarith [Real.exp_pos (-Real.log 2)]
  rw [Real.abs_sinh]
  exact (Real.sinh_le_sinh.mpr (ht'.trans hsmall)).trans hlog

/-- The full negative pole costs at most four times the radius times the squared mass. -/
theorem poleCost_le {T : ℝ} (hT : 0 ≤ T) (hsmall : T / 2 ≤ Real.log 2)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    2 * (∫ t : ℝ, f t * Real.sinh (t / 2)) ^ 2 ≤
      (4 * T) * (∫ t : ℝ, ‖f t‖ ^ 2) := by
  let W := Icc (-T) T
  let μ := volume.restrict W
  have hW : MeasurableSet W := measurableSet_Icc
  have : IsFiniteMeasure μ := ⟨by simp [μ, W, Real.volume_Icc]⟩
  have hmoment :
      (∫ t : ℝ, f t * Real.sinh (t / 2)) = ∫ t, f t * Real.sinh (t / 2) ∂μ := by
    rw [← integral_indicator hW]
    apply integral_congr_ae
    filter_upwards [hs] with t ht
    by_cases hm : t ∈ W
    · rw [indicator_of_mem hm]
    · rw [indicator_of_notMem hm, ht hm, zero_mul]
  have hfn : MemLp (fun t => ‖f t‖) 2 μ := (hf.restrict W).norm
  have hfi : Integrable (fun t => ‖f t‖) μ := hfn.integrable (by norm_num)
  have hnorm : |∫ t, f t * Real.sinh (t / 2) ∂μ| ≤ ∫ t, ‖f t‖ ∂μ := by
    rw [← Real.norm_eq_abs]
    apply norm_integral_le_of_norm_le hfi
    filter_upwards [ae_restrict_mem (μ := volume) hW] with t ht
    rw [norm_mul, Real.norm_eq_abs (Real.sinh (t / 2))]
    simpa only [mul_one] using mul_le_mul_of_nonneg_left (abs_sinh_half_le_one hsmall ht) (norm_nonneg (f t))
  have htwo : (2 : ℝ).HolderConjugate 2 := Real.holderConjugate_iff.mpr (by norm_num)
  have hfn' : MemLp (fun t => ‖f t‖) (ENNReal.ofReal (2 : ℝ)) μ := by simpa using hfn
  have hC := integral_mul_le_Lp_mul_Lq_of_nonneg htwo
    (Eventually.of_forall (fun t => norm_nonneg (f t)))
    (Eventually.of_forall (fun _ : ℝ => zero_le_one (α := ℝ))) hfn' (memLp_const (1 : ℝ))
  have hsize : (∫ _ : ℝ, (1 : ℝ) ∂μ) = 2 * T := by
    rw [integral_const, smul_eq_mul, mul_one, MeasureTheory.measureReal_restrict_apply_univ]
    unfold W
    rw [Real.volume_real_Icc_of_le (by linarith : -T ≤ T)]
    ring
  have hroot : (∫ t, ‖f t‖ ∂μ) ≤ Real.sqrt (∫ t, ‖f t‖ ^ 2 ∂μ) * Real.sqrt (2 * T) := by
    simpa only [mul_one, Real.rpow_two, one_pow, ← Real.sqrt_eq_rpow, hsize] using hC
  have hsq := pow_le_pow_left₀ (abs_nonneg _) (hnorm.trans hroot) 2
  rw [sq_abs, mul_pow, Real.sq_sqrt (integral_nonneg (fun _ => sq_nonneg _)),
    Real.sq_sqrt (by positivity)] at hsq
  have hmass : (∫ t, ‖f t‖ ^ 2 ∂μ) = ∫ t : ℝ, ‖f t‖ ^ 2 := by
    rw [← integral_indicator hW]
    apply integral_congr_ae
    filter_upwards [hs] with t ht
    by_cases hm : t ∈ W
    · rw [indicator_of_mem hm]
    · rw [indicator_of_notMem hm, ht hm, norm_zero, zero_pow (by decide : (2 : ℕ) ≠ 0)]
  rw [hmass, ← hmoment] at hsq
  nlinarith

/-- The small window has a floor of three quarters before the pole is included.
With a zero head this applies to every odd mode. -/
theorem highFloor_small : HighFloor (1 / 1024) 0 (3 / 4) 0 := by
  intro f hf2 hf hodd hsupport hhead hzero
  have hT : (0 : ℝ) < 1 / 1024 := by norm_num
  have hprime : primeEnergy (1 / 1024) f = 0 := by
    unfold primeEnergy
    rw [activePrimePowers_eq_empty (by linarith [Real.log_two_gt_d9])]
    simp
  have hbudget : (3 / 4 : ℝ) ≤ gammaConstant 1 0 - 0 +
      periodicMultiplier 0 (frequency (1 / 1024) (0 + 1)) - 0 -
      OddSharpBoundaryNorm.boundaryLoss (1 / 1024) := by
    rw [zero_add]
    linarith [gammaConstant_one_zero_ge, multiplier_small_ge, boundaryLoss_small_le]
  exact shiftedOddCoreEnergy_ge_of_exactBudget (N := 0) (1 / 1024) hT
    0 0 (OddSharpBoundaryNorm.boundaryLoss (1 / 1024)) (3 / 4) hbudget hf hf2 hodd
    hsupport hhead hzero (by rw [hprime, zero_mul])
    (OddSharpBoundaryNorm.oddKernel_quadratic_ge (1 / 1024) hT f hf hf2.integrable_sq.integrableOn)

/-- The literal shifted odd Weil form at radius 1/1024 and shift zero has
a lower bound of half the squared mass on its supported odd gamma domain. -/
theorem shiftedOddWeilEnergy_small_ge {f : ℝ → ℝ}
    (hf : Measurable f) (hf2 : MemLp f 2 volume) (hodd : Function.Odd f)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-(1 / 1024 : ℝ)) (1 / 1024) → f t = 0)
    (hzero : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    (1 / 2) * (∫ t : ℝ, ‖f t‖ ^ 2) ≤ shiftedOddWeilEnergy (1 / 1024) 0 f := by
  have hcore := highFloor_small hf2 hf hodd hsupport
    (fun n hn => (Nat.not_lt_zero n hn).elim) hzero
  have hT : (0 : ℝ) ≤ 1 / 1024 := by norm_num
  have hpole := poleCost_le hT (by linarith [Real.log_two_gt_d9]) hf2 hsupport
  unfold shiftedOddWeilEnergy
  have hmass : 0 ≤ ∫ t : ℝ, ‖f t‖ ^ 2 := integral_nonneg (fun _ => sq_nonneg _)
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.SmallOddWindow

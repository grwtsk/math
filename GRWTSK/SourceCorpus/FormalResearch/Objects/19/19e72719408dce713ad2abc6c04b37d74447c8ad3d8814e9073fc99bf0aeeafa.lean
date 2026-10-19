import FormalResearch.RiemannHypothesis.SourceComparison.MobiusPrefixTilt
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt

/-! Uniform half-plane control of the actual entire corrected finite Möbius quotient. -/
set_option autoImplicit false
namespace CorrectedQuotientBudgetScratch
open MeasureTheory Set Filter Finset
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open FiniteMobiusController MobiusPoleNumerator MobiusPrefixTilt
noncomputable section

/-- The actual signed reciprocal-prefix integral, with its original finite endpoint. -/
def quotientIntegral (X : ℕ) (w : ℂ) : ℂ :=
  ∫ x : ℝ in Set.Ioc 1 (X : ℝ), (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
    Complex.exp ((1 / 2 - w) * (Real.log x : ℂ)) / (x : ℂ)

/-- The complete finite prefix integrand is genuinely integrable at every complex parameter. -/
theorem quotient_integrand_integrable (X : ℕ) (w : ℂ) :
    IntegrableOn (fun x : ℝ => (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - w) * (Real.log x : ℂ)) / (x : ℂ)) (Set.Ioc 1 (X : ℝ)) :=
  (reciprocal_prefix_power_integrable X w).mono_set Set.Ioc_subset_Icc_self

/-- Parameter continuity of the genuine prefix integral includes the canceled point. -/
theorem quotientIntegral_continuous (X : ℕ) : Continuous (quotientIntegral X) := by
  apply continuous_iff_continuousAt.mpr
  intro w
  let G : ℂ × ℝ → ℂ := fun p => Complex.exp ((1 / 2 - p.1) * (Real.log p.2 : ℂ))
  have hl : ContinuousOn (fun p : ℂ × ℝ => (Real.log p.2 : ℂ))
      (Metric.closedBall w 1 ×ˢ Set.Icc (1 : ℝ) X) := by
    apply Complex.continuous_ofReal.comp_continuousOn
    apply Real.continuousOn_log.comp continuous_snd.continuousOn
    intro p hp
    exact ne_of_gt (lt_of_lt_of_le zero_lt_one hp.2.1)
  have hG : ContinuousOn G (Metric.closedBall w 1 ×ˢ Set.Icc (1 : ℝ) X) := by
    exact Complex.continuous_exp.comp_continuousOn
      ((continuous_const.sub continuous_fst).continuousOn.mul hl)
  obtain ⟨C, hC⟩ := ((isCompact_closedBall w 1).prod
    (isCompact_Icc : IsCompact (Set.Icc (1 : ℝ) X))).exists_bound_of_continuousOn hG
  have hb : IntegrableOn (fun x : ℝ => (mobiusReciprocalSum ⌊x⌋₊ : ℂ) / (x : ℂ))
      (Set.Ioc 1 (X : ℝ)) := by
    simpa only [sub_self, zero_mul, Complex.exp_zero, mul_one] using
      quotient_integrand_integrable X (1 / 2)
  apply tendsto_integral_filter_of_dominated_convergence
    (fun x : ℝ => C * ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) / (x : ℂ)‖)
  · exact Eventually.of_forall (fun z => (quotient_integrand_integrable X z).aestronglyMeasurable)
  · filter_upwards [Metric.ball_mem_nhds w (by norm_num : (0 : ℝ) < 1)] with z hz
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
    have hcx := hC (z, x) ⟨Metric.ball_subset_closedBall hz, hx.1.le, hx.2⟩
    change ‖Complex.exp ((1 / 2 - z) * (Real.log x : ℂ))‖ ≤ C at hcx
    calc
      ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
          Complex.exp ((1 / 2 - z) * (Real.log x : ℂ)) / (x : ℂ)‖ =
          ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) / (x : ℂ)‖ *
            ‖Complex.exp ((1 / 2 - z) * (Real.log x : ℂ))‖ := by
        rw [← norm_mul]
        congr 1
        ring
      _ ≤ ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) / (x : ℂ)‖ * C :=
        mul_le_mul_of_nonneg_left hcx (norm_nonneg _)
      _ = _ := mul_comm _ _
  · exact hb.norm.const_mul C
  · filter_upwards [] with x
    exact (show Continuous (fun z : ℂ => (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - z) * (Real.log x : ℂ)) / (x : ℂ)) by fun_prop).continuousAt

private theorem correctedQuotient_eq_integral_of_ne (X : ℕ) (w : ℂ) (hw : w ≠ 1 / 2) :
    correctedQuotient X w = quotientIntegral X w := by
  rw [correctedQuotient_of_ne X w hw, correctedNumerator_eq_prefix_integral]
  exact mul_div_cancel_left₀ _ (sub_ne_zero.mpr hw)

/-- The actual entire quotient equals the genuine Abel integral at every point, including one half.
-/
theorem correctedQuotient_eq_integral (X : ℕ) (w : ℂ) :
    correctedQuotient X w = quotientIntegral X w := by
  by_cases hw : w = 1 / 2
  · subst w
    have hQ : Tendsto (correctedQuotient X) (𝓝[≠] (1 / 2))
        (𝓝 (correctedQuotient X (1 / 2))) :=
      ((correctedQuotient_differentiable X).continuous.continuousAt
        (x := (1 / 2 : ℂ))).tendsto.mono_left nhdsWithin_le_nhds
    have hI : Tendsto (quotientIntegral X) (𝓝[≠] (1 / 2))
        (𝓝 (quotientIntegral X (1 / 2))) :=
      ((quotientIntegral_continuous X).continuousAt
        (x := (1 / 2 : ℂ))).tendsto.mono_left nhdsWithin_le_nhds
    have heq : correctedQuotient X =ᶠ[𝓝[≠] (1 / 2)] quotientIntegral X := by
      filter_upwards [self_mem_nhdsWithin] with z hz
      exact correctedQuotient_eq_integral_of_ne X z hz
    exact tendsto_nhds_unique hQ ((tendsto_congr' heq).mpr hI)
  · exact correctedQuotient_eq_integral_of_ne X w hw

/-- Absolute values of the original signed reciprocal prefix are bounded by the harmonic prefix. -/
theorem mobiusReciprocalSum_abs_le_harmonic (N : ℕ) :
    |mobiusReciprocalSum N| ≤ (harmonic N : ℝ) := by
  rw [mobiusReciprocalSum, harmonic_eq_sum_Icc]
  simp only [Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro n _hn
  rw [abs_div, abs_of_nonneg (show 0 ≤ (n : ℝ) from Nat.cast_nonneg n)]
  have hm : |(ArithmeticFunction.moebius n : ℝ)| ≤ 1 := by
    exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))
  simpa only [one_div] using div_le_div_of_nonneg_right hm (Nat.cast_nonneg n)

/-- The real-floor prefix obeys the elementary logarithmic budget on its whole domain. -/
theorem mobiusReciprocalSum_floor_abs_le (x : ℝ) (hx : 1 ≤ x) :
    |mobiusReciprocalSum ⌊x⌋₊| ≤ 1 + Real.log x :=
  (mobiusReciprocalSum_abs_le_harmonic _).trans (harmonic_floor_le_one_add_log x hx)

/-- In the closed right half-plane, the exact integrand is bounded by an inverse-square-root
weight. -/
theorem quotient_integrand_norm_le (X : ℕ) (w : ℂ) (hw : 0 ≤ w.re)
    (x : ℝ) (hx : x ∈ Set.Ioc 1 (X : ℝ)) :
    ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - w) * (Real.log x : ℂ)) / (x : ℂ)‖ ≤
        (1 + Real.log (X : ℝ)) / Real.sqrt x := by
  have hx0 : 0 < x := lt_trans zero_lt_one hx.1
  have hxlog : 0 ≤ Real.log x := Real.log_nonneg hx.1.le
  have hm : |mobiusReciprocalSum ⌊x⌋₊| ≤ 1 + Real.log (X : ℝ) :=
    (mobiusReciprocalSum_floor_abs_le x hx.1.le).trans
      (add_le_add le_rfl (Real.log_le_log hx0 hx.2))
  have hs : 0 < Real.sqrt x := Real.sqrt_pos.mpr hx0
  have hsq : Real.sqrt x * Real.sqrt x = x := Real.mul_self_sqrt hx0.le
  have he : Real.exp ((1 / 2 - w.re) * Real.log x) ≤ Real.sqrt x := by
    calc
      _ ≤ Real.exp ((1 / 2) * Real.log x) := by
        apply Real.exp_le_exp.mpr
        nlinarith
      _ = Real.sqrt x := by
        rw [Real.sqrt_eq_rpow, Real.rpow_def_of_pos hx0]
        congr 1
        ring
  rw [norm_div, norm_mul, Complex.norm_real, Complex.norm_real,
    Real.norm_eq_abs, Real.norm_eq_abs, abs_of_pos hx0, Complex.norm_exp]
  simp only [Complex.mul_re, Complex.sub_re, Complex.div_ofNat_re, Complex.one_re,
    Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero]
  calc
    |mobiusReciprocalSum ⌊x⌋₊| * Real.exp ((1 / 2 - w.re) * Real.log x) / x ≤
        (1 + Real.log (X : ℝ)) * Real.sqrt x / x :=
      div_le_div_of_nonneg_right (mul_le_mul hm he (Real.exp_pos _).le
        (le_trans (abs_nonneg _) hm)) hx0.le
    _ = _ := by
      apply (div_eq_div_iff hx0.ne' hs.ne').mpr
      rw [mul_assoc, hsq]

private theorem inverse_sqrt_integrable (X : ℕ) :
    IntegrableOn (fun x : ℝ => (Real.sqrt x)⁻¹) (Set.Ioc 1 (X : ℝ)) := by
  apply ContinuousOn.integrableOn_Icc ?_ |>.mono_set Set.Ioc_subset_Icc_self
  apply Real.continuous_sqrt.continuousOn.inv₀
  intro x hx
  exact (Real.sqrt_pos.mpr (lt_of_lt_of_le zero_lt_one hx.1)).ne'

private theorem integral_inverse_sqrt (X : ℕ) (hX : 1 ≤ X) :
    (∫ x : ℝ in Set.Ioc 1 (X : ℝ), (Real.sqrt x)⁻¹) = 2 * (Real.sqrt (X : ℝ) - 1) := by
  have hXr : (1 : ℝ) ≤ X := by exact_mod_cast hX
  have hint : IntervalIntegrable (fun x : ℝ => (Real.sqrt x)⁻¹) volume 1 X := by
    exact (intervalIntegrable_iff_integrableOn_Ioc_of_le hXr).mpr
      (inverse_sqrt_integrable X)
  have hd : ∀ x ∈ uIcc (1 : ℝ) X,
      HasDerivAt (fun x : ℝ => 2 * Real.sqrt x) ((Real.sqrt x)⁻¹) x := by
    intro x hx
    rw [uIcc_of_le hXr] at hx
    have hx0 : 0 < x := lt_of_lt_of_le zero_lt_one hx.1
    have hs : Real.sqrt x ≠ 0 := (Real.sqrt_pos.mpr hx0).ne'
    simpa [div_eq_mul_inv, mul_comm, mul_left_comm] using
      (Real.hasDerivAt_sqrt hx0.ne').const_mul 2
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt hd hint
  rw [intervalIntegral.integral_of_le hXr] at h
  simpa only [Real.sqrt_one, mul_one, mul_sub] using h

/-- The actual entire corrected quotient has the uniform requested budget, including w=one half. -/
theorem correctedQuotient_norm_le (X : ℕ) (hX : 1 ≤ X) (w : ℂ) (hw : 0 ≤ w.re) :
    ‖correctedQuotient X w‖ ≤ 2 * Real.sqrt (X : ℝ) * (1 + Real.log (X : ℝ)) := by
  have hXr : (1 : ℝ) ≤ X := by exact_mod_cast hX
  have hC : 0 ≤ 1 + Real.log (X : ℝ) := by
    have := Real.log_nonneg hXr
    linarith
  rw [correctedQuotient_eq_integral, quotientIntegral]
  apply (norm_integral_le_integral_norm _).trans
  have hi : IntegrableOn (fun x : ℝ => (1 + Real.log (X : ℝ)) / Real.sqrt x)
      (Set.Ioc 1 (X : ℝ)) := by
    exact ((inverse_sqrt_integrable X).const_mul (1 + Real.log (X : ℝ))).congr
      (Eventually.of_forall (fun x => by simp only [div_eq_mul_inv]))
  calc
    (∫ x : ℝ in Set.Ioc 1 (X : ℝ), ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
        Complex.exp ((1 / 2 - w) * (Real.log x : ℂ)) / (x : ℂ)‖) ≤
        ∫ x : ℝ in Set.Ioc 1 (X : ℝ), (1 + Real.log (X : ℝ)) / Real.sqrt x := by
      apply integral_mono_ae (quotient_integrand_integrable X w).norm hi
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
      exact quotient_integrand_norm_le X w hw x hx
    _ = (1 + Real.log (X : ℝ)) * (2 * (Real.sqrt (X : ℝ) - 1)) := by
      simp only [div_eq_mul_inv, integral_const_mul, integral_inverse_sqrt X hX]
    _ ≤ _ := by nlinarith

end
end CorrectedQuotientBudgetScratch

import FormalResearch.RiemannHypothesis.WeightedPrimeMertens
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent

/-!
# Weighted-prime Abel transport with a variation error

Closed prime prefixes are transported to logarithmic coordinates by a finite
sum of closed steps. The resulting integration-by-parts identity retains both
endpoints. Elementary weighted-prime Mertens then controls the replacement
error by endpoint values and the integral of the absolute derivative.

No estimate of a signed Mangoldt–Möbius covariance is asserted here.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.WeightedPrimeAbel

open MeasureTheory Set
open scoped BigOperators Interval
open WeightedPrimeMertens
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent

noncomputable section

/-- Complete closed prime inventory below the logarithmic height `b`. -/
def primeLogInventory (b : ℝ) : Finset ℕ :=
  (Finset.Ioc 0 ⌊Real.exp b⌋₊).filter Nat.Prime

/-- The closed weighted prime prefix in logarithmic coordinates. -/
def primeLogPrefix (t : ℝ) : ℝ := weightedPrime ⌊Real.exp t⌋₊

/-- The finite weighted sum evaluated on a logarithmic test. -/
def primeLogSum (b : ℝ) (F : ℝ → ℝ) : ℝ :=
  ∑ p ∈ primeLogInventory b, Real.log (p : ℝ) / (p : ℝ) * F (Real.log p)

/-- Subtraction of closed prefixes retains exactly the half-open window `a < log p ≤ b`. -/
def primeLogWindow (a b : ℝ) (F : ℝ → ℝ) : ℝ := primeLogSum b F - primeLogSum a F

/-- The elementary Mertens error, with its original closed prime prefix. -/
def primeLogError (t : ℝ) : ℝ := primeLogPrefix t - t

theorem primeLogPrefix_eq_sum (b : ℝ) :
    primeLogPrefix b = ∑ p ∈ primeLogInventory b, Real.log (p : ℝ) / (p : ℝ) := by
  exact weightedPrime_eq_filtered ⌊Real.exp b⌋₊

theorem primeLogInventory_filter_log (b t : ℝ) (ht : t ≤ b) :
    (primeLogInventory b).filter (fun p : ℕ => Real.log p ≤ t) = primeLogInventory t := by
  ext p
  simp only [primeLogInventory, Finset.mem_filter, Finset.mem_Ioc]
  by_cases hp : p.Prime
  · have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
    rw [Real.log_le_iff_le_exp hp0,
      Nat.le_floor_iff (Real.exp_pos b).le, Nat.le_floor_iff (Real.exp_pos t).le]
    constructor
    · exact fun h => ⟨⟨h.1.1.1, h.2⟩, h.1.2⟩
    · exact fun h => ⟨⟨⟨h.1.1, h.1.2.trans (Real.exp_le_exp.mpr ht)⟩, h.2⟩, h.1.2⟩
  · simp [hp]

theorem primeLogPrefix_eq_steps (b t : ℝ) (ht : t ≤ b) :
    primeLogPrefix t = ∑ p ∈ primeLogInventory b,
      if Real.log p ≤ t then Real.log (p : ℝ) / (p : ℝ) else 0 := by
  rw [← Finset.sum_filter, primeLogInventory_filter_log b t ht, primeLogPrefix_eq_sum]

theorem primeLogInventory_log_bounds (b : ℝ) (p : ℕ) (hp : p ∈ primeLogInventory b) :
    0 ≤ Real.log (p : ℝ) ∧ Real.log (p : ℝ) ≤ b := by
  have hp' := Finset.mem_filter.mp hp
  have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp'.2.pos
  refine ⟨Real.log_nonneg (by exact_mod_cast hp'.2.one_lt.le), ?_⟩
  exact (Real.log_le_iff_le_exp hp0).mpr
    ((Nat.le_floor_iff (Real.exp_pos b).le).mp (Finset.mem_Ioc.mp hp'.1).2)

theorem primeLogPrefix_zero : primeLogPrefix 0 = 0 := by
  simp [primeLogPrefix, weightedPrime, primeCoefficient]

theorem primeLogError_uniformly_bounded :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ t : ℝ, 0 ≤ t → |primeLogError t| ≤ C := by
  obtain ⟨C, hC0, hC⟩ := weightedPrime_mertens_log_cutoff
  refine ⟨C, hC0, ?_⟩
  intro t ht
  simpa only [primeLogError, primeLogPrefix, weightedPrime_eq_filtered] using hC t ht

theorem primeLogPrefix_mul_deriv_intervalIntegrable
    (a b : ℝ) (hab : a ≤ b) (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    IntervalIntegrable (fun t => primeLogPrefix t * deriv F t) volume a b := by
  have hi : IntervalIntegrable (fun t => ∑ p ∈ primeLogInventory b,
      Real.log (p : ℝ) / (p : ℝ) * (if Real.log p ≤ t then deriv F t else 0)) volume a b := by
    have hi' : IntervalIntegrable (∑ p ∈ primeLogInventory b,
        fun t : ℝ => Real.log (p : ℝ) / p * (if Real.log p ≤ t then deriv F t else 0)) volume a b :=
      IntervalIntegrable.sum (primeLogInventory b) (fun p _ =>
      (intervalIntegrable_closed_step a b (Real.log p) (deriv F)
        (hF.continuous_deriv_one.intervalIntegrable a b)).const_mul (Real.log (p : ℝ) / p))
    have heq : (∑ p ∈ primeLogInventory b,
        fun t : ℝ => Real.log (p : ℝ) / p * (if Real.log p ≤ t then deriv F t else 0)) =
        (fun t : ℝ => ∑ p ∈ primeLogInventory b,
          Real.log (p : ℝ) / p * (if Real.log p ≤ t then deriv F t else 0)) := by
      ext t
      simp
    rw [heq] at hi'
    exact hi'
  apply hi.congr
  intro t ht
  dsimp only
  rw [primeLogPrefix_eq_steps b t ((uIoc_of_le hab ▸ ht).2), Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro p hp
  split_ifs <;> simp

/-- Exact finite Abel identity anchored below the first prime. -/
theorem primeLogSum_abel (b : ℝ) (hb : 0 ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    primeLogSum b F = F b * primeLogPrefix b -
      ∫ t in 0..b, primeLogPrefix t * deriv F t := by
  have hi := integral_finite_steps_deriv 0 b (primeLogInventory b)
    (fun p => Real.log p) (fun p => Real.log (p : ℝ) / (p : ℝ))
    (fun p hp => primeLogInventory_log_bounds b p hp) F hF
  have hint : (∫ t in 0..b, ∑ p ∈ primeLogInventory b,
      Real.log (p : ℝ) / (p : ℝ) * (if Real.log p ≤ t then deriv F t else 0)) =
      ∫ t in 0..b, primeLogPrefix t * deriv F t := by
    apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    rw [primeLogPrefix_eq_steps b t ((uIcc_of_le hb ▸ ht).2), Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro p hp
    split_ifs <;> simp
  rw [hint] at hi
  simp_rw [mul_sub] at hi
  rw [Finset.sum_sub_distrib, ← Finset.sum_mul, ← primeLogPrefix_eq_sum] at hi
  unfold primeLogSum
  linarith

/-- Both endpoints in the logarithmic window are explicit; the lower prime atom is excluded. -/
theorem primeLogWindow_abel (a b : ℝ) (ha : 0 ≤ a) (hab : a ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    primeLogWindow a b F = F b * primeLogPrefix b - F a * primeLogPrefix a -
      ∫ t in a..b, primeLogPrefix t * deriv F t := by
  rw [primeLogWindow, primeLogSum_abel b (ha.trans hab) F hF, primeLogSum_abel a ha F hF]
  have hint := intervalIntegral.integral_add_adjacent_intervals
    (primeLogPrefix_mul_deriv_intervalIntegrable 0 a ha F hF)
    (primeLogPrefix_mul_deriv_intervalIntegrable a b hab F hF)
  linarith

/-- The lower threshold atom is excluded and the upper threshold atom is included. -/
theorem primeLogWindow_eq_filter (a b : ℝ) (hab : a ≤ b) (F : ℝ → ℝ) :
    primeLogWindow a b F = ∑ p ∈ (primeLogInventory b).filter (fun p : ℕ => a < Real.log p),
      Real.log (p : ℝ) / (p : ℝ) * F (Real.log p) := by
  classical
  have hs := Finset.sum_filter_add_sum_filter_not (primeLogInventory b)
    (fun p : ℕ => Real.log p ≤ a)
    (fun p : ℕ => Real.log (p : ℝ) / (p : ℝ) * F (Real.log p))
  rw [primeLogInventory_filter_log b a hab] at hs
  simp only [not_le] at hs
  unfold primeLogWindow primeLogSum
  linarith

/-- Exact finite integer inventory for the logarithmic half-open prime window. -/
theorem primeLogWindow_eq_interval_sum (a b : ℝ) (hab : a ≤ b) (F : ℝ → ℝ) :
    primeLogWindow a b F =
      ∑ p ∈ (Finset.Ioc ⌊Real.exp a⌋₊ ⌊Real.exp b⌋₊).filter Nat.Prime,
        Real.log (p : ℝ) / (p : ℝ) * F (Real.log p) := by
  rw [primeLogWindow_eq_filter a b hab F]
  congr 1
  ext p
  simp only [primeLogInventory, Finset.mem_filter, Finset.mem_Ioc]
  by_cases hp : p.Prime
  · have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
    rw [Real.lt_log_iff_exp_lt hp0, ← Nat.floor_lt (Real.exp_pos a).le]
    simp only [hp, and_true]
    omega
  · simp [hp]

theorem primeLogError_mul_deriv_intervalIntegrable
    (a b : ℝ) (hab : a ≤ b) (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    IntervalIntegrable (fun t => primeLogError t * deriv F t) volume a b := by
  have hi := (primeLogPrefix_mul_deriv_intervalIntegrable a b hab F hF).sub
    ((continuous_id.mul hF.continuous_deriv_one).intervalIntegrable a b)
  simpa only [primeLogError, sub_mul, Pi.sub_apply, Pi.mul_apply, id_eq] using hi

/-- Exact replacement by Lebesgue integration, retaining the signed remainder. -/
theorem primeLogWindow_sub_integral (a b : ℝ) (ha : 0 ≤ a) (hab : a ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    primeLogWindow a b F - (∫ t in a..b, F t) =
      F b * primeLogError b - F a * primeLogError a -
        ∫ t in a..b, primeLogError t * deriv F t := by
  have hparts := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := fun t : ℝ => t) (u' := fun _ : ℝ => (1 : ℝ))
    (v := F) (v' := deriv F)
    (fun t _ => hasDerivAt_id t)
    (fun t _ => ((contDiff_one_iff_deriv.mp hF).1 t).hasDerivAt)
    (continuous_const.intervalIntegrable a b)
    (hF.continuous_deriv_one.intervalIntegrable a b)
  simp only [one_mul] at hparts
  have hint : (∫ t in a..b, primeLogError t * deriv F t) =
      (∫ t in a..b, primeLogPrefix t * deriv F t) - (∫ t in a..b, t * deriv F t) := by
    simp only [primeLogError, sub_mul]
    exact intervalIntegral.integral_sub
      (primeLogPrefix_mul_deriv_intervalIntegrable a b hab F hF)
      ((continuous_id.mul hF.continuous_deriv_one).intervalIntegrable a b)
  rw [primeLogWindow_abel a b ha hab F hF, hint]
  dsimp only [primeLogError]
  nlinarith

/-- Endpoint and total-variation budget for the weighted-prime replacement. -/
theorem primeLogWindow_error_le (a b : ℝ) (ha : 0 ≤ a) (hab : a ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) (C : ℝ)
    (hC : ∀ t : ℝ, 0 ≤ t → |primeLogError t| ≤ C) :
    |primeLogWindow a b F - (∫ t in a..b, F t)| ≤
      C * (|F a| + |F b| + ∫ t in a..b, |deriv F t|) := by
  have hi := primeLogError_mul_deriv_intervalIntegrable a b hab F hF
  have hia : IntervalIntegrable (fun t => |primeLogError t * deriv F t|) volume a b := hi.abs
  have higm : IntervalIntegrable (fun t => C * |deriv F t|) volume a b :=
    (hF.continuous_deriv_one.abs.intervalIntegrable a b).const_mul C
  have him : (∫ t in a..b, |primeLogError t * deriv F t|) ≤
      ∫ t in a..b, C * |deriv F t| := by
    apply intervalIntegral.integral_mono_on hab hia higm
    intro t ht
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_right (hC t (ha.trans ht.1)) (abs_nonneg _)
  have hib : |∫ t in a..b, primeLogError t * deriv F t| ≤
      C * (∫ t in a..b, |deriv F t|) := by
    exact ((intervalIntegral.abs_integral_le_integral_abs hab).trans him).trans_eq
      (intervalIntegral.integral_const_mul C _)
  have hba : |F a * primeLogError a| ≤ C * |F a| := by
    rw [abs_mul, mul_comm C]
    exact mul_le_mul_of_nonneg_left (hC a ha) (abs_nonneg _)
  have hbb : |F b * primeLogError b| ≤ C * |F b| := by
    rw [abs_mul, mul_comm C]
    exact mul_le_mul_of_nonneg_left (hC b (ha.trans hab)) (abs_nonneg _)
  rw [primeLogWindow_sub_integral a b ha hab F hF]
  have htri := abs_add_le (F b * primeLogError b) (-(F a * primeLogError a))
  have htri2 := abs_add_le (F b * primeLogError b - F a * primeLogError a)
    (-(∫ t in a..b, primeLogError t * deriv F t))
  simp only [abs_neg] at htri htri2
  rw [← sub_eq_add_neg] at htri htri2
  nlinarith

/-- One fixed elementary arithmetic constant works for every logarithmic window and C1 test. -/
theorem primeLogWindow_uniform_error_le :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ (a b : ℝ), 0 ≤ a → a ≤ b →
      ∀ (F : ℝ → ℝ), ContDiff ℝ 1 F →
      |primeLogWindow a b F - (∫ t in a..b, F t)| ≤
        C * (|F a| + |F b| + ∫ t in a..b, |deriv F t|) := by
  obtain ⟨C, hC0, hC⟩ := primeLogError_uniformly_bounded
  exact ⟨C, hC0, fun a b ha hab F hF => primeLogWindow_error_le a b ha hab F hF C hC⟩

end
end FormalResearch.RiemannHypothesis.WeightedPrimeAbel

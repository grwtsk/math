import SourceGrowingXiHead
import FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel

/-! Actual balanced first-prime density and original seven-anchored primitive.
Direction and conceptual origin: grwtsk contributors.
Source construction and formalization: OpenAI Codex assistance.
The original first-prime signed tail and complete RH estimate remain open. -/
set_option autoImplicit false
noncomputable section
namespace RH16BalancedFirstPrimePrimitive
open MeasureTheory Set Filter
open RH16GrowingXiHead RH16ActualF7 RH16CompleteXiTail
open FormalResearch.RiemannHypothesis
open WeightedPrimeAbel SourcePairing SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity PrimePowerDescent

/-- Exact actual theta source, including the fixed square-mean compensation. -/
def balancedFirstPrimeDensity (t : ℝ) : ℝ :=
  (Chebyshev.theta (Real.exp t) - Real.exp t + Real.exp (t / 2)) *
    Real.exp (-t / 2)

/-- The seven anchor is retained; every earlier first-prime atom remains in theta. -/
def balancedFirstPrimePrimitive (t : ℝ) : ℝ :=
  ∫ s in Real.log 7..t, balancedFirstPrimeDensity s

/-- The actual moving time head, with the original primitive and curvature. -/
def balancedFirstPrimeHead (A : ℝ) : ℝ :=
  -(∫ t in Real.log 7..Real.log (⌊A ^ 2⌋₊ : ℝ),
    balancedFirstPrimePrimitive t * actualXiCurvature A t)

private theorem theta_exp_eq_steps (b t : ℝ) (ht : t ≤ b) :
    Chebyshev.theta (Real.exp t) =
      ∑ p ∈ primeLogInventory b, if Real.log (p : ℝ) ≤ t then Real.log p else 0 := by
  change (∑ p ∈ primeLogInventory t, Real.log (p : ℝ)) = _
  rw [← primeLogInventory_filter_log b t ht, Finset.sum_filter]

private theorem theta_time_density_integrable (a b : ℝ) (hab : a ≤ b) :
    IntervalIntegrable (fun t => Chebyshev.theta (Real.exp t) * Real.exp (-t / 2))
      volume a b := by
  have hi : IntervalIntegrable
      (∑ p ∈ primeLogInventory b, fun t : ℝ => Real.log (p : ℝ) *
        (if Real.log (p : ℝ) ≤ t then Real.exp (-t / 2) else 0)) volume a b :=
    IntervalIntegrable.sum _ (fun p _ => by
      have hstep := intervalIntegrable_closed_step a b (Real.log (p : ℝ)) _
        ((by fun_prop : Continuous (fun t : ℝ => Real.exp (-t / 2))).intervalIntegrable a b)
      exact hstep.const_mul (Real.log (p : ℝ)))
  apply hi.congr
  intro t ht
  simp only [Finset.sum_apply]
  rw [theta_exp_eq_steps b t ((uIoc_of_le hab ▸ ht).2), Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro p _
  split_ifs <;> simp

theorem balancedFirstPrimeDensity_eq (t : ℝ) :
    balancedFirstPrimeDensity t =
      Chebyshev.theta (Real.exp t) * Real.exp (-t / 2) - Real.exp (t / 2) + 1 := by
  have h1 : Real.exp t * Real.exp (-t / 2) = Real.exp (t / 2) := by
    rw [← Real.exp_add]; congr 1; ring
  have h2 : Real.exp (t / 2) * Real.exp (-t / 2) = 1 := by
    rw [← Real.exp_add, show t / 2 + -t / 2 = 0 by ring, Real.exp_zero]
  unfold balancedFirstPrimeDensity
  rw [add_mul, sub_mul, h1, h2]

/-- Finite closed steps prove integrability; total-integral conventions are not used. -/
theorem balancedFirstPrimeDensity_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable balancedFirstPrimeDensity volume a b := by
  suffices h : ∀ a b : ℝ, a ≤ b →
      IntervalIntegrable balancedFirstPrimeDensity volume a b by
    rcases le_total a b with hab | hba
    · exact h a b hab
    · exact (h b a hba).symm
  intro a b hab
  have hi := theta_time_density_integrable a b hab
  have he : IntervalIntegrable (fun t : ℝ => Real.exp (t / 2)) volume a b :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  have hc : IntervalIntegrable (fun _ : ℝ => (1 : ℝ)) volume a b :=
    intervalIntegrable_const
  simpa only [← balancedFirstPrimeDensity_eq] using (hi.sub he).add hc

theorem balancedFirstPrimePrimitive_continuous : Continuous balancedFirstPrimePrimitive :=
  intervalIntegral.continuous_primitive balancedFirstPrimeDensity_intervalIntegrable (Real.log 7)

theorem balancedFirstPrimePrimitive_at_lower :
    balancedFirstPrimePrimitive (Real.log 7) = 0 := by
  simp [balancedFirstPrimePrimitive]

/-- Elementary theta bounds preserve the square compensation before taking absolute values. -/
theorem balancedFirstPrimeDensity_abs_le {t : ℝ} (ht : Real.log 7 ≤ t) :
    |balancedFirstPrimeDensity t| ≤ Real.exp (t / 2) := by
  have hy : 7 ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using Real.exp_le_exp.mpr ht
  have he : 0 < Real.exp (t / 2) := Real.exp_pos _
  have he2 : Real.exp (t / 2) * Real.exp (t / 2) = Real.exp t := by
    rw [← Real.exp_add]; congr 1; ring
  have hege : 2 ≤ Real.exp (t / 2) := by nlinarith
  have hehalf : Real.exp (t / 2) ≤ Real.exp t / 2 := by nlinarith
  have hlog : Real.log 4 ≤ (3 / 2 : ℝ) := by
    have hp := Real.log_pow (2 : ℝ) 2
    norm_num at hp
    linarith [Real.log_two_lt_d9]
  have htheta := Chebyshev.theta_le_log4_mul_x (Real.exp_pos t).le
  have htheta0 := Chebyshev.theta_nonneg (Real.exp t)
  have hnum : |Chebyshev.theta (Real.exp t) - Real.exp t + Real.exp (t / 2)| ≤
      Real.exp t := by
    apply abs_le.mpr
    constructor
    · linarith
    · have hm := mul_le_mul_of_nonneg_right hlog (Real.exp_pos t).le
      nlinarith
  unfold balancedFirstPrimeDensity
  rw [abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ Real.exp t * Real.exp (-t / 2) :=
      mul_le_mul_of_nonneg_right hnum (Real.exp_pos _).le
    _ = _ := by rw [← Real.exp_add]; congr 1; ring

theorem balancedFirstPrimePrimitive_abs_le {t : ℝ} (ht : Real.log 7 ≤ t) :
    |balancedFirstPrimePrimitive t| ≤ 2 * (Real.exp (t / 2) - Real.sqrt 7) := by
  have hi : IntervalIntegrable (fun r : ℝ => Real.exp (r / 2)) volume (Real.log 7) t :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  have hh := intervalIntegral.norm_integral_le_of_norm_le ht
    (Eventually.of_forall (fun r hr => by
      rw [Real.norm_eq_abs]
      exact balancedFirstPrimeDensity_abs_le hr.1.le)) hi
  have hd (r : ℝ) : HasDerivAt (fun r : ℝ => 2 * Real.exp (r / 2))
      (Real.exp (r / 2)) r := by
    convert! (((hasDerivAt_id r).div_const (2 : ℝ)).exp.const_mul (2 : ℝ)) using 1
    dsimp
    ring
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hd r) hi
  have he7 : Real.exp (Real.log 7 / 2) = Real.sqrt 7 := by
    rw [Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 7)]
  rw [he, he7] at hh
  simpa only [Real.norm_eq_abs, balancedFirstPrimePrimitive, mul_sub] using hh

end RH16BalancedFirstPrimePrimitive

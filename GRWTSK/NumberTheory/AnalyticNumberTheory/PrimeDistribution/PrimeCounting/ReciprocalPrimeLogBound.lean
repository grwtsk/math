import GRWTSK.NumberTheory.AnalyticNumberTheory.PrimeDistribution.PrimeCounting.ReciprocalPrimeIntervalBounds
import Mathlib.NumberTheory.AbelSummation
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-! Prime-reciprocal logarithmic control from elementary Chebyshev bounds.
No prime number theorem or analytic hypothesis is imported as an assumption.
-/

noncomputable section

open scoped BigOperators
open MeasureTheory Set

namespace PPNCP04.PrimeHarmonicLog

def primeIndicator (n : ℕ) : ℝ := if n.Prime then 1 else 0

theorem indicator_sum_is_count (x : ℝ) :
    (∑ n ∈ Finset.Icc 0 ⌊x⌋₊, primeIndicator n) =
      (Nat.primeCounting ⌊x⌋₊ : ℝ) := by
  rw [← Nat.primesLE_card_eq_primeCounting]
  simp [primeIndicator, Nat.primesLE_eq_filter_Icc_zero]

def countConstant : ℝ := 2 * Real.log 4 + 2

theorem countConstant_positive : 0 < countConstant := by
  have hl : 0 < Real.log (4 : ℝ) := Real.log_pos (by norm_num)
  unfold countConstant
  linarith

/-- Uniform elementary prime-count bound on the whole interval [2,infinity). -/
theorem prime_count_bound {x : ℝ} (hx : 2 ≤ x) :
    (Nat.primeCounting ⌊x⌋₊ : ℝ) ≤ countConstant * x / Real.log x := by
  have hxpos : 0 < x := by linarith
  have hxone : 1 < x := by linarith
  have hlogpos : 0 < Real.log x := Real.log_pos hxone
  have hspos : 0 < Real.sqrt x := Real.sqrt_pos.mpr hxpos
  have hlogsqrt := Real.log_le_sub_one_of_pos hspos
  have heq : Real.log (Real.sqrt x) = Real.log x / 2 :=
    Real.log_sqrt hxpos.le
  have hlogupper : Real.log x ≤ 2 * Real.sqrt x := by
    rw [heq] at hlogsqrt
    linarith
  have hmul := mul_le_mul_of_nonneg_left hlogupper hspos.le
  have hsq : Real.sqrt x ^ 2 = x := Real.sq_sqrt hxpos.le
  have hsupper : Real.sqrt x ≤ 2 * x / Real.log x := by
    apply (le_div_iff₀ hlogpos).mpr
    nlinarith
  have hcount := Chebyshev.pi_le_log4_mul_div hxone
  rw [heq] at hcount
  calc
    (Nat.primeCounting ⌊x⌋₊ : ℝ) ≤
        Real.log 4 * x / (Real.log x / 2) + Real.sqrt x := hcount
    _ ≤ Real.log 4 * x / (Real.log x / 2) + 2 * x / Real.log x :=
      by linarith
    _ = countConstant * x / Real.log x := by
      unfold countConstant
      field_simp

theorem prime_reciprocal_abel {x : ℝ} (hx : 2 ≤ x) :
    PPNCP04.Obstruction.harmonicMass (Nat.primesLE ⌊x⌋₊) =
      (Nat.primeCounting ⌊x⌋₊ : ℝ) / x +
        ∫ t in 2..x, (Nat.primeCounting ⌊t⌋₊ : ℝ) / t ^ 2 := by
  have hsum : PPNCP04.Obstruction.harmonicMass (Nat.primesLE ⌊x⌋₊) =
      ∑ n ∈ Finset.Icc 0 ⌊x⌋₊, (n : ℝ)⁻¹ * primeIndicator n := by
    simp [PPNCP04.Obstruction.harmonicMass, Nat.primesLE_eq_filter_Icc_zero,
      Finset.sum_filter, primeIndicator, one_div]
  have hdiff : ∀ z ∈ Icc (2 : ℝ) x,
      DifferentiableAt ℝ (fun t : ℝ => t⁻¹) z := by
    intro z hz
    have hz0 : z ≠ 0 := by linarith [hz.1]
    fun_prop
  have hint : IntegrableOn (deriv (fun t : ℝ => t⁻¹)) (Icc 2 x) := by
    simp only [deriv_inv']
    apply ContinuousOn.integrableOn_Icc
    intro z hz
    have hz0 : z ≠ 0 := by linarith [hz.1]
    have hzsq : z ^ 2 ≠ 0 := pow_ne_zero 2 hz0
    exact (by fun_prop : ContinuousAt (fun t : ℝ => -(t ^ 2)⁻¹) z).continuousWithinAt
  rw [hsum, sum_mul_eq_sub_integral_mul₁ primeIndicator
    (by norm_num [primeIndicator]) (by norm_num [primeIndicator]) x hdiff hint,
    indicator_sum_is_count, ← intervalIntegral.integral_of_le hx]
  have hderiv : (∫ t in 2..x, deriv (fun u : ℝ => u⁻¹) t *
      ∑ n ∈ Finset.Icc 0 ⌊t⌋₊, primeIndicator n) =
      -(∫ t in 2..x, (Nat.primeCounting ⌊t⌋₊ : ℝ) / t ^ 2) := by
    rw [← intervalIntegral.integral_neg]
    apply intervalIntegral.integral_congr
    intro t ht
    change deriv (fun u : ℝ => u⁻¹) t *
      (∑ n ∈ Finset.Icc 0 ⌊t⌋₊, primeIndicator n) =
        -((Nat.primeCounting ⌊t⌋₊ : ℝ) / t ^ 2)
    rw [deriv_inv, indicator_sum_is_count]
    simp [div_eq_mul_inv]
    ring
  rw [hderiv]
  simp [div_eq_mul_inv]
  ring

theorem count_integrand_intervalIntegrable {x : ℝ} (hx : 2 ≤ x) :
    IntervalIntegrable
      (fun t : ℝ => (Nat.primeCounting ⌊t⌋₊ : ℝ) / t ^ 2) volume 2 x := by
  rw [intervalIntegrable_iff_integrableOn_Icc_of_le hx]
  have hg : IntegrableOn (fun t : ℝ => (t ^ 2)⁻¹) (Icc 2 x) := by
    apply ContinuousOn.integrableOn_Icc
    intro z hz
    have hz0 : z ≠ 0 := by linarith [hz.1]
    have hzsq : z ^ 2 ≠ 0 := pow_ne_zero 2 hz0
    exact (by fun_prop : ContinuousAt (fun t : ℝ => (t ^ 2)⁻¹) z).continuousWithinAt
  have hi := integrableOn_mul_sum_Icc primeIndicator (m := 0) (by norm_num : (0 : ℝ) ≤ 2) hg
  simpa only [indicator_sum_is_count, div_eq_mul_inv, mul_comm] using hi

theorem comparison_integrand_intervalIntegrable {x : ℝ} (hx : 2 ≤ x) :
    IntervalIntegrable (fun t : ℝ => countConstant * (t⁻¹ / Real.log t))
      volume 2 x := by
  rw [intervalIntegrable_iff_integrableOn_Icc_of_le hx]
  apply ContinuousOn.integrableOn_Icc
  intro z hz
  have hz0 : z ≠ 0 := by linarith [hz.1]
  have hz1 : 1 < z := by linarith [hz.1]
  have hlogne : Real.log z ≠ 0 := (Real.log_pos hz1).ne'
  exact (by fun_prop :
    ContinuousAt (fun t : ℝ => countConstant * (t⁻¹ / Real.log t)) z).continuousWithinAt

theorem prime_harmonic_bound_at_x {x : ℝ} (hx : 2 ≤ x) :
    PPNCP04.Obstruction.harmonicMass (Nat.primesLE ⌊x⌋₊) ≤
      countConstant / Real.log 2 +
        countConstant * (Real.log (Real.log x) - Real.log (Real.log 2)) := by
  have hx0 : 0 < x := by linarith
  have hx1 : 1 < x := by linarith
  have hlog2 : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  have hlogx : 0 < Real.log x := Real.log_pos hx1
  have hlogmono : Real.log 2 ≤ Real.log x := Real.log_le_log (by norm_num) hx
  have hendpoint : (Nat.primeCounting ⌊x⌋₊ : ℝ) / x ≤
      countConstant / Real.log 2 := by
    calc
      (Nat.primeCounting ⌊x⌋₊ : ℝ) / x ≤ (countConstant * x / Real.log x) / x :=
        div_le_div_of_nonneg_right (prime_count_bound hx) hx0.le
      _ = countConstant / Real.log x := by field_simp
      _ ≤ countConstant / Real.log 2 := by
        exact div_le_div_of_nonneg_left countConstant_positive.le hlog2 hlogmono
  have hpoint : ∀ t ∈ Icc (2 : ℝ) x,
      (Nat.primeCounting ⌊t⌋₊ : ℝ) / t ^ 2 ≤
        countConstant * (t⁻¹ / Real.log t) := by
    intro t ht
    have ht0 : 0 < t := by linarith [ht.1]
    have htlog : 0 < Real.log t := Real.log_pos (by linarith [ht.1])
    calc
      (Nat.primeCounting ⌊t⌋₊ : ℝ) / t ^ 2 ≤
          (countConstant * t / Real.log t) / t ^ 2 :=
        div_le_div_of_nonneg_right (prime_count_bound ht.1) (sq_nonneg t)
      _ = countConstant * (t⁻¹ / Real.log t) := by
        field_simp
  have hintegral : (∫ t in 2..x, (Nat.primeCounting ⌊t⌋₊ : ℝ) / t ^ 2) ≤
      countConstant * (Real.log (Real.log x) - Real.log (Real.log 2)) := by
    calc
      (∫ t in 2..x, (Nat.primeCounting ⌊t⌋₊ : ℝ) / t ^ 2) ≤
          ∫ t in 2..x, countConstant * (t⁻¹ / Real.log t) :=
        intervalIntegral.integral_mono_on hx (count_integrand_intervalIntegrable hx)
          (comparison_integrand_intervalIntegrable hx) hpoint
      _ = countConstant * (Real.log (Real.log x) - Real.log (Real.log 2)) := by
        rw [intervalIntegral.integral_const_mul,
          integral_inv_div_log (by norm_num : (1 : ℝ) < 2) hx1]
  rw [prime_reciprocal_abel hx]
  exact add_le_add hendpoint hintegral

def offsetConstant : ℝ := 1 / Real.log 2 + |Real.log (Real.log 2)|

def primeHarmonicConstant : ℝ :=
  3 / Real.log 2 + countConstant * (1 + offsetConstant / Real.log 2)

theorem offsetConstant_nonnegative : 0 ≤ offsetConstant := by
  have hlog : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  unfold offsetConstant
  positivity

theorem primeHarmonicConstant_nonnegative : 0 ≤ primeHarmonicConstant := by
  have hlog : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  have hC := countConstant_positive
  have hoffset := offsetConstant_nonnegative
  unfold primeHarmonicConstant
  positivity

theorem inventory_harmonic_log_bound {T : ℝ} (hT : 0 ≤ T) :
    PPNCP04.PrimeHarmonic.inventoryHarmonicMass T ≤
      primeHarmonicConstant * Real.log (T + 2) := by
  have hlog2 : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  have hlogmono : Real.log 2 ≤ Real.log (T + 2) :=
    Real.log_le_log (by norm_num) (by linarith)
  have hlogpos : 0 < Real.log (T + 2) := Real.log_pos (by linarith)
  have hoffset := offsetConstant_nonnegative
  have hC := countConstant_positive
  have hsmallCoefficient : 3 / Real.log 2 ≤ primeHarmonicConstant := by
    unfold primeHarmonicConstant
    have he : 0 ≤ countConstant * (1 + offsetConstant / Real.log 2) := by positivity
    linarith
  have hlargeCoefficient : countConstant * (1 + offsetConstant / Real.log 2) ≤
      primeHarmonicConstant := by
    unfold primeHarmonicConstant
    have he : 0 ≤ (3 : ℝ) / Real.log 2 := by positivity
    linarith
  by_cases hsmall : T ≤ 2
  · calc
      PPNCP04.PrimeHarmonic.inventoryHarmonicMass T ≤ 1 + T :=
        PPNCP04.PrimeHarmonic.inventory_harmonic_linear_bound hT
      _ ≤ 3 := by linarith
      _ = (3 / Real.log 2) * Real.log 2 := by field_simp
      _ ≤ (3 / Real.log 2) * Real.log (T + 2) :=
        mul_le_mul_of_nonneg_left hlogmono (by positivity)
      _ ≤ primeHarmonicConstant * Real.log (T + 2) :=
        mul_le_mul_of_nonneg_right hsmallCoefficient hlogpos.le
  · have hTlarge : 2 ≤ T := by linarith
    have hx : 2 ≤ Real.exp T := by nlinarith [Real.add_one_le_exp T]
    have hbound : PPNCP04.PrimeHarmonic.inventoryHarmonicMass T ≤
        countConstant / Real.log 2 +
          countConstant * (Real.log T - Real.log (Real.log 2)) := by
      simpa only [PPNCP04.PrimeHarmonic.inventoryHarmonicMass, primeInventory_eq,
        Real.log_exp] using prime_harmonic_bound_at_x hx
    have hlogT : Real.log T ≤ Real.log (T + 2) :=
      Real.log_le_log (by linarith) (by linarith)
    have hoffsetBound : offsetConstant ≤
        (offsetConstant / Real.log 2) * Real.log (T + 2) := by
      calc
        offsetConstant = (offsetConstant / Real.log 2) * Real.log 2 := by field_simp
        _ ≤ (offsetConstant / Real.log 2) * Real.log (T + 2) :=
          mul_le_mul_of_nonneg_left hlogmono (div_nonneg hoffset hlog2.le)
    calc
      PPNCP04.PrimeHarmonic.inventoryHarmonicMass T ≤
          countConstant / Real.log 2 +
            countConstant * (Real.log T - Real.log (Real.log 2)) := hbound
      _ ≤ countConstant / Real.log 2 +
          countConstant * (Real.log (T + 2) + |Real.log (Real.log 2)|) := by
        have hm : countConstant * (Real.log T - Real.log (Real.log 2)) ≤
            countConstant * (Real.log (T + 2) + |Real.log (Real.log 2)|) := by
          apply mul_le_mul_of_nonneg_left _ hC.le
          linarith [neg_le_abs (Real.log (Real.log 2))]
        linarith
      _ = countConstant * (Real.log (T + 2) + offsetConstant) := by
        unfold offsetConstant
        ring
      _ ≤ countConstant * (Real.log (T + 2) +
          (offsetConstant / Real.log 2) * Real.log (T + 2)) := by
        apply mul_le_mul_of_nonneg_left _ hC.le
        linarith
      _ = (countConstant * (1 + offsetConstant / Real.log 2)) *
          Real.log (T + 2) := by ring
      _ ≤ primeHarmonicConstant * Real.log (T + 2) :=
        mul_le_mul_of_nonneg_right hlargeCoefficient hlogpos.le

/-- Literal all-T prime-harmonic estimate used by the closure theorem. -/
theorem prime_harmonic_logarithmic_estimate :
    ∃ C_M : ℝ, 0 ≤ C_M ∧ ∀ T : ℝ, 0 ≤ T →
      PPNCP04.Obstruction.harmonicMass (primeInventory T) ≤
        C_M * Real.log (2 + T) := by
  refine ⟨primeHarmonicConstant, primeHarmonicConstant_nonnegative, ?_⟩
  intro T hT
  simpa only [PPNCP04.PrimeHarmonic.inventoryHarmonicMass, add_comm] using
    inventory_harmonic_log_bound hT

end PPNCP04.PrimeHarmonicLog

#print axioms PPNCP04.PrimeHarmonicLog.prime_count_bound
#print axioms PPNCP04.PrimeHarmonicLog.prime_reciprocal_abel
#print axioms PPNCP04.PrimeHarmonicLog.prime_harmonic_bound_at_x
#print axioms PPNCP04.PrimeHarmonicLog.prime_harmonic_logarithmic_estimate

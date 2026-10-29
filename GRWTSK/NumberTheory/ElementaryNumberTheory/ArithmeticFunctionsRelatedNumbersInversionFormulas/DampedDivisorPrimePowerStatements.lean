import Mathlib.Data.Nat.Factorization.PrimePow
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget
import Mathlib.NumberTheory.ArithmeticFunction.Moebius

/-! Exact damped divisor coefficients: finite prime products and coefficient positivity. -/
set_option autoImplicit false
namespace DampedDivisorCoefficientScratch
open Finset ArithmeticFunction
open scoped ArithmeticFunction.zeta
noncomputable section

/-- The original finite Möbius divisor sum with its exact exponential damping. -/
def dampedDivisorCoefficient (ε : ℝ) (n : ℕ) : ℝ :=
  ∑ d ∈ n.divisors, (ArithmeticFunction.moebius d : ℝ) * Real.exp (-ε * Real.log (d : ℝ))

private def damping (ε : ℝ) : ArithmeticFunction ℝ :=
  ⟨fun n => if n = 0 then 0 else Real.exp (-ε * Real.log (n : ℝ)), by simp⟩

private theorem damping_multiplicative (ε : ℝ) : (damping ε).IsMultiplicative := by
  rw [IsMultiplicative.iff_ne_zero]
  constructor
  · simp [damping]
  · intro m n hm hn _
    have hmR : (m : ℝ) ≠ 0 := by exact_mod_cast hm
    have hnR : (n : ℝ) ≠ 0 := by exact_mod_cast hn
    simp only [damping, ArithmeticFunction.coe_mk, if_neg hm, if_neg hn,
      if_neg (mul_ne_zero hm hn), Nat.cast_mul]
    rw [Real.log_mul hmR hnR, mul_add, Real.exp_add]

private def divisorFunction (ε : ℝ) : ArithmeticFunction ℝ :=
  ((ArithmeticFunction.moebius : ArithmeticFunction ℝ).pmul (damping ε)) * ζ

private theorem divisorFunction_apply (ε : ℝ) (n : ℕ) :
    divisorFunction ε n = dampedDivisorCoefficient ε n := by
  rw [divisorFunction, coe_mul_zeta_apply]
  unfold dampedDivisorCoefficient
  apply Finset.sum_congr rfl
  intro d hd
  change (ArithmeticFunction.moebius d : ℝ) *
    (if d = 0 then 0 else Real.exp (-ε * Real.log (d : ℝ))) = _
  rw [if_neg (Nat.pos_of_mem_divisors hd).ne']

private theorem divisorFunction_multiplicative (ε : ℝ) : (divisorFunction ε).IsMultiplicative :=
  (isMultiplicative_moebius.intCast.pmul (damping_multiplicative ε)).mul
    isMultiplicative_zeta.natCast

private theorem divisorFunction_prime_pow (ε : ℝ) (p k : ℕ) (hp : p.Prime) :
    divisorFunction ε (p ^ (k + 1)) = 1 - Real.exp (-ε * Real.log (p : ℝ)) := by
  rw [divisorFunction_apply, dampedDivisorCoefficient, Nat.sum_divisors_prime_pow hp,
    Finset.sum_range_succ']
  simp only [pow_zero, ArithmeticFunction.moebius_apply_one, Int.cast_one, Nat.cast_one,
    Real.log_one, mul_zero, Real.exp_zero, mul_one]
  have hf (i : ℕ) : (ArithmeticFunction.moebius (p ^ (i + 1)) : ℝ) *
      Real.exp (-ε * Real.log ((p ^ (i + 1) : ℕ) : ℝ)) =
      if i = 0 then -Real.exp (-ε * Real.log (p : ℝ)) else 0 := by
    rw [ArithmeticFunction.moebius_apply_prime_pow hp (Nat.succ_ne_zero i)]
    by_cases hi : i = 0
    · simp [hi]
    · simp [hi]
  simp_rw [hf]
  simp
  ring

/-- Every positive integer retains the exact finite product over all its distinct prime factors. -/
theorem dampedDivisorCoefficient_eq_primeFactors_prod (ε : ℝ) (n : ℕ) (hn : 1 ≤ n) :
    dampedDivisorCoefficient ε n =
      ∏ p ∈ n.primeFactors, (1 - Real.exp (-ε * Real.log (p : ℝ))) := by
  rw [← divisorFunction_apply]
  rw [(divisorFunction_multiplicative ε).multiplicative_factorization _ (by omega : n ≠ 0)]
  apply Finset.prod_congr n.support_factorization
  intro p hp
  have hpp := Nat.prime_of_mem_primeFactors hp
  have hk : 0 < n.factorization p := Nat.pos_of_ne_zero (Finsupp.mem_support_iff.mp hp)
  obtain ⟨k, hk⟩ := Nat.exists_eq_succ_of_ne_zero hk.ne'
  rw [hk]
  exact divisorFunction_prime_pow ε p k hpp

/-- Nonnegative damping makes every actual divisor coefficient nonnegative. -/
theorem dampedDivisorCoefficient_nonneg (ε : ℝ) (hε : 0 ≤ ε) (n : ℕ) (hn : 1 ≤ n) :
    0 ≤ dampedDivisorCoefficient ε n := by
  rw [dampedDivisorCoefficient_eq_primeFactors_prod ε n hn]
  apply Finset.prod_nonneg
  intro p hp
  have hp1 : (1 : ℝ) ≤ p := by exact_mod_cast (Nat.prime_of_mem_primeFactors hp).one_le
  have he : Real.exp (-ε * Real.log (p : ℝ)) ≤ 1 :=
    Real.exp_le_one_iff.mpr (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hε)
      (Real.log_nonneg hp1))
  linarith

/-- Every actual damped divisor coefficient is at most one; no residual positivity is asserted. -/
theorem dampedDivisorCoefficient_le_one (ε : ℝ) (hε : 0 ≤ ε) (n : ℕ) (hn : 1 ≤ n) :
    dampedDivisorCoefficient ε n ≤ 1 := by
  rw [dampedDivisorCoefficient_eq_primeFactors_prod ε n hn]
  apply Finset.prod_le_one
  · intro p hp
    have hp1 : (1 : ℝ) ≤ p := by exact_mod_cast (Nat.prime_of_mem_primeFactors hp).one_le
    exact sub_nonneg.mpr (Real.exp_le_one_iff.mpr
      (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hε) (Real.log_nonneg hp1)))
  · intro p _
    exact sub_le_self _ (Real.exp_nonneg _)

/-- At zero damping the original divisor sum is exactly the unit arithmetic function. -/
theorem dampedDivisorCoefficient_zero (n : ℕ) (hn : 1 ≤ n) :
    dampedDivisorCoefficient 0 n = if n = 1 then 1 else 0 := by
  rw [dampedDivisorCoefficient_eq_primeFactors_prod 0 n hn]
  simp only [neg_zero, zero_mul, Real.exp_zero, sub_self]
  by_cases h : n = 1
  · simp [h]
  · have hp : n.primeFactors.Nonempty := Nat.nonempty_primeFactors.mpr (by omega : 1 < n)
    simp [h, hp.ne_empty]

/-- Zero damping leaves a nonzero actual divisor coefficient exactly at the integer one. -/
theorem dampedDivisorCoefficient_zero_ne_zero_iff (n : ℕ) (hn : 1 ≤ n) :
    dampedDivisorCoefficient 0 n ≠ 0 ↔ n = 1 := by
  rw [dampedDivisorCoefficient_zero n hn]
  split_ifs <;> simp_all

end
end DampedDivisorCoefficientScratch

/-! Exact prime-power values and a divisor-count-free quadratic bound off prime powers. -/
set_option autoImplicit false
namespace DampedDivisorPrimePowerScratch
open Finset
open DampedDivisorCoefficientScratch
noncomputable section

/-- A positive prime power has exactly one damped factor, independently of its exponent. -/
theorem dampedDivisorCoefficient_prime_pow (ε : ℝ) (p k : ℕ) (hp : p.Prime) (hk : 1 ≤ k) :
    dampedDivisorCoefficient ε (p ^ k) = 1 - Real.exp (-ε * Real.log (p : ℝ)) := by
  rw [dampedDivisorCoefficient_eq_primeFactors_prod ε (p ^ k)
    (one_le_pow₀ hp.one_le), Nat.primeFactors_prime_pow (by omega : k ≠ 0) hp,
    Finset.prod_singleton]

/-- Two distinct actual prime factors give the uniform quadratic remainder without divisor-count loss. -/
theorem dampedDivisorCoefficient_le_sq_of_not_prime_pow (ε : ℝ) (hε : 0 ≤ ε)
    (n : ℕ) (hn : 2 ≤ n) (hnp : ¬IsPrimePow n) :
    dampedDivisorCoefficient ε n ≤ ε ^ 2 * Real.log (n : ℝ) ^ 2 := by
  obtain ⟨p, hp, q, hq, hpq⟩ := (Nat.not_isPrimePow_iff_nontrivial_of_two_le hn).mp hnp
  let f : ℕ → ℝ := fun r => 1 - Real.exp (-ε * Real.log (r : ℝ))
  have hf0 (r : ℕ) (hr : r ∈ n.primeFactors) : 0 ≤ f r := by
    have hr1 : (1 : ℝ) ≤ r := by exact_mod_cast (Nat.prime_of_mem_primeFactors hr).one_le
    exact sub_nonneg.mpr (Real.exp_le_one_iff.mpr
      (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hε) (Real.log_nonneg hr1)))
  have hf1 (r : ℕ) : f r ≤ 1 := sub_le_self _ (Real.exp_nonneg _)
  have hflog (r : ℕ) (hr : r ∈ n.primeFactors) : f r ≤ ε * Real.log (n : ℝ) := by
    have h0 : 0 < (r : ℝ) := by exact_mod_cast (Nat.prime_of_mem_primeFactors hr).pos
    have hle : (r : ℝ) ≤ n := by exact_mod_cast Nat.le_of_mem_primeFactors hr
    have hl := Real.log_le_log h0 hle
    have hlow := Real.add_one_le_exp (-ε * Real.log (r : ℝ))
    calc
      f r ≤ ε * Real.log (r : ℝ) := by dsimp only [f]; linarith
      _ ≤ _ := mul_le_mul_of_nonneg_left hl hε
  have hsub : ({p, q} : Finset ℕ) ⊆ n.primeFactors := by
    intro r hr
    simp only [Finset.mem_insert, Finset.mem_singleton] at hr
    rcases hr with rfl | rfl
    · exact hp
    · exact hq
  have hprod : (∏ r ∈ n.primeFactors, f r) ≤ f p * f q := by
    have hb := Finset.prod_le_prod_of_subset_of_le_one hsub hf0 (fun r _ _ => hf1 r)
    simpa only [Finset.prod_pair hpq] using hb
  rw [dampedDivisorCoefficient_eq_primeFactors_prod ε n (by omega)]
  calc
    _ ≤ f p * f q := hprod
    _ ≤ (ε * Real.log (n : ℝ)) * (ε * Real.log (n : ℝ)) :=
      mul_le_mul (hflog p hp) (hflog q hq) (hf0 q hq)
        (mul_nonneg hε (Real.log_nonneg (by exact_mod_cast (show 1 ≤ n by omega))))
    _ = _ := by ring

end
end DampedDivisorPrimePowerScratch

open DampedDivisorCoefficientScratch DampedDivisorPrimePowerScratch

example (ε : ℝ) (p k : ℕ) (hp : p.Prime) (hk : 1 ≤ k) :
    dampedDivisorCoefficient ε (p ^ k) = 1 - Real.exp (-ε * Real.log (p : ℝ)) :=
  dampedDivisorCoefficient_prime_pow ε p k hp hk

example (ε : ℝ) (hε : 0 ≤ ε) (n : ℕ) (hn : 2 ≤ n) (hnp : ¬IsPrimePow n) :
    dampedDivisorCoefficient ε n ≤ ε ^ 2 * Real.log (n : ℝ) ^ 2 :=
  dampedDivisorCoefficient_le_sq_of_not_prime_pow ε hε n hn hnp

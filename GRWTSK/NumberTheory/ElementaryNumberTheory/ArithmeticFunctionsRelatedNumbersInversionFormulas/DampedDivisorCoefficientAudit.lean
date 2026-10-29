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

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @DampedDivisorCoefficientScratch.dampedDivisorCoefficient
#print DampedDivisorCoefficientScratch.dampedDivisorCoefficient
#print axioms DampedDivisorCoefficientScratch.dampedDivisorCoefficient
#check @DampedDivisorCoefficientScratch.dampedDivisorCoefficient_eq_primeFactors_prod
#print DampedDivisorCoefficientScratch.dampedDivisorCoefficient_eq_primeFactors_prod
#print axioms DampedDivisorCoefficientScratch.dampedDivisorCoefficient_eq_primeFactors_prod
#check @DampedDivisorCoefficientScratch.dampedDivisorCoefficient_nonneg
#print DampedDivisorCoefficientScratch.dampedDivisorCoefficient_nonneg
#print axioms DampedDivisorCoefficientScratch.dampedDivisorCoefficient_nonneg
#check @DampedDivisorCoefficientScratch.dampedDivisorCoefficient_le_one
#print DampedDivisorCoefficientScratch.dampedDivisorCoefficient_le_one
#print axioms DampedDivisorCoefficientScratch.dampedDivisorCoefficient_le_one
#check @DampedDivisorCoefficientScratch.dampedDivisorCoefficient_zero
#print DampedDivisorCoefficientScratch.dampedDivisorCoefficient_zero
#print axioms DampedDivisorCoefficientScratch.dampedDivisorCoefficient_zero
#check @DampedDivisorCoefficientScratch.dampedDivisorCoefficient_zero_ne_zero_iff
#print DampedDivisorCoefficientScratch.dampedDivisorCoefficient_zero_ne_zero_iff
#print axioms DampedDivisorCoefficientScratch.dampedDivisorCoefficient_zero_ne_zero_iff

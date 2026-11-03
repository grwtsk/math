/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.RetainedCoefficientPrimeCongruence

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Complete retained-prime criterion and exact natural integer rate.
No additive height estimate for this class is supplied. NOT_RUN. -/
namespace GRWTSK.NumberTheory.ABC.IntegerRateSupportCharacterization
open RetainedArithmeticDerivative IntegerAdditiveDefectCongruences
open IntegerRateRadicalCoefficient RetainedCoefficientPrimeCongruence

def supportIntegerRate (n : ℕ) : ℕ := ∑ p ∈ n.factorization.support, n.factorization p/p

theorem radical_dvd_coefficient_of_exponent_divisibility (n : ℕ)
    (h : ∀ p ∈ n.factorization.support, p ∣ n.factorization p) :
    UniqueFactorizationMonoid.radical n ∣ retainedSupportCoefficient n := by
  unfold retainedSupportCoefficient
  apply Finset.dvd_sum
  intro p hp
  obtain ⟨k,hk⟩ := h p hp
  have he := Nat.mul_div_cancel' (support_prime_dvd_radical n p hp)
  refine ⟨k,?_⟩
  rw [hk, ← he]
  ring

theorem integer_rate_iff_supported_exponents (n : ℕ) (hn : n ≠ 0) :
    n ∣ naturalArithmeticDerivative n ↔ ∀ p ∈ n.factorization.support, p ∣ n.factorization p := by
  constructor
  · intro h p hp
    exact integer_rate_supported_exponent_divisible n hn h p hp
  · intro h
    exact (integer_rate_iff_radical_dvd_coefficient n hn).mpr
      (radical_dvd_coefficient_of_exponent_divisibility n h)

theorem derivative_eq_input_mul_support_rate (n : ℕ)
    (h : ∀ p ∈ n.factorization.support, p ∣ n.factorization p) :
    naturalArithmeticDerivative n = n*supportIntegerRate n := by
  unfold naturalArithmeticDerivative supportIntegerRate
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro p hp
  have hd : p ∣ n := Nat.dvd_of_mem_primeFactors
    (by simpa only [Nat.support_factorization] using hp)
  obtain ⟨k,hk⟩ := h p hp
  have hn := Nat.mul_div_cancel' hd
  have hpp := (support_prime n p hp).pos
  rw [hk, Nat.mul_div_right _ hpp]
  calc
    _ = k*(p*(n/p)) := by ring
    _ = n*k := by rw [hn]; ring

end GRWTSK.NumberTheory.ABC.IntegerRateSupportCharacterization

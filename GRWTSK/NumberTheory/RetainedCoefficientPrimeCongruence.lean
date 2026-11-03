/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.IntegerRateRadicalCoefficient

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Isolate each actual supported exponent modulo its prime.
No additive-triple height estimate is supplied. NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.RetainedCoefficientPrimeCongruence
open RetainedArithmeticDerivative IntegerAdditiveDefectCongruences

theorem support_prime (n p : ℕ) (hp : p ∈ n.factorization.support) : Nat.Prime p :=
  Nat.prime_of_mem_primeFactors (by simpa only [Nat.support_factorization] using hp)

theorem cross_radical_quotient_dvd (n p q : ℕ)
    (hp : p ∈ n.factorization.support) (hq : q ∈ n.factorization.support) (hpq : p ≠ q) :
    p ∣ UniqueFactorizationMonoid.radical n/q := by
  have hP := support_prime n p hp
  have hQ := support_prime n q hq
  have he : q*(UniqueFactorizationMonoid.radical n/q)=UniqueFactorizationMonoid.radical n :=
    Nat.mul_div_cancel' (support_prime_dvd_radical n q hq)
  have hd : p ∣ q*(UniqueFactorizationMonoid.radical n/q) := by
    rw [he]
    exact support_prime_dvd_radical n p hp
  rcases hP.dvd_mul.mp hd with hbad | hgood
  · rcases (Nat.dvd_prime hQ).mp hbad with h1 | heq
    · exact (hP.ne_one h1).elim
    · exact (hpq heq).elim
  · exact hgood

theorem own_radical_quotient_not_dvd (n p : ℕ) (hp : p ∈ n.factorization.support) :
    ¬ p ∣ UniqueFactorizationMonoid.radical n/p := by
  intro h
  obtain ⟨k,hk⟩ := h
  have he : p*(UniqueFactorizationMonoid.radical n/p)=UniqueFactorizationMonoid.radical n :=
    Nat.mul_div_cancel' (support_prime_dvd_radical n p hp)
  have hs : p*p ∣ UniqueFactorizationMonoid.radical n := by
    refine ⟨k,?_⟩
    rw [← he,hk]
    ring
  have hu := (UniqueFactorizationMonoid.squarefree_radical (a := n)) p hs
  exact (support_prime n p hp).ne_one (Nat.isUnit_iff.mp hu)

theorem retained_coefficient_prime_dvd_iff_exponent (n p : ℕ)
    (hp : p ∈ n.factorization.support) :
    p ∣ retainedSupportCoefficient n ↔ p ∣ n.factorization p := by
  let f : ℕ → ℕ := fun q => n.factorization q*(UniqueFactorizationMonoid.radical n/q)
  have hother : p ∣ ∑ q ∈ n.factorization.support.erase p, f q := by
    apply Finset.dvd_sum
    intro q hq
    have hh := Finset.mem_erase.mp hq
    exact dvd_mul_of_dvd_right (cross_radical_quotient_dvd n p q hp hh.2 hh.1.symm) _
  have hsplit : retainedSupportCoefficient n =
      (∑ q ∈ n.factorization.support.erase p, f q)+f p := by
    exact (Finset.sum_erase_add _ hp).symm
  rw [hsplit, Nat.dvd_add_iff_left hother]
  change p ∣ n.factorization p*(UniqueFactorizationMonoid.radical n/p) ↔ _
  rw [(support_prime n p hp).dvd_mul]
  simp [own_radical_quotient_not_dvd n p hp]

theorem integer_rate_supported_exponent_divisible (n : ℕ) (hn : n ≠ 0)
    (hD : n ∣ naturalArithmeticDerivative n) (p : ℕ) (hp : p ∈ n.factorization.support) :
    p ∣ n.factorization p := by
  have hR := (IntegerRateRadicalCoefficient.integer_rate_iff_radical_dvd_coefficient n hn).mp hD
  exact (retained_coefficient_prime_dvd_iff_exponent n p hp).mp
    ((support_prime_dvd_radical n p hp).trans hR)

end GRWTSK.NumberTheory.ABC.RetainedCoefficientPrimeCongruence

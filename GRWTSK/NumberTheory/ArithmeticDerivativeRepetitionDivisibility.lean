/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticDerivativeIntegrality
import GRWTSK.NumberTheory.NaturalRepetitionSource

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Repetition quotient divides the actual integer arithmetic derivative.
All prime exponents are retained. This is divisibility, not a bound on
additive failure. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.RetainedArithmeticDerivative
open NaturalRepetitionSource

theorem support_prime_dvd_radical (n p : ℕ) (hp : p ∈ n.factorization.support) :
    p ∣ UniqueFactorizationMonoid.radical n := by
  have hm : p ∈ n.primeFactors := by
    simpa only [Nat.support_factorization] using hp
  rw [Nat.radical_eq_prod_primeFactors]
  exact Finset.dvd_prod_of_mem (fun q : ℕ => q) hm

theorem retained_quotient_factorization (n p : ℕ)
    (hp : p ∈ n.factorization.support) :
    n / p = repetitionQuotient n * (UniqueFactorizationMonoid.radical n / p) := by
  have hd := support_prime_dvd_radical n p hp
  calc
    n / p = (repetitionQuotient n * UniqueFactorizationMonoid.radical n) / p := by
      rw [mul_comm, radical_mul_repetitionQuotient]
    _ = repetitionQuotient n * (UniqueFactorizationMonoid.radical n / p) :=
      Nat.mul_div_assoc _ hd

theorem repetitionQuotient_dvd_naturalArithmeticDerivative (n : ℕ) :
    repetitionQuotient n ∣ naturalArithmeticDerivative n := by
  apply support_quotient_dvd_derivative
  intro p hp
  rw [retained_quotient_factorization n p hp]
  exact dvd_mul_right _ _

end GRWTSK.NumberTheory.ABC.RetainedArithmeticDerivative

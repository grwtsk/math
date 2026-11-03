/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.RetainedArithmeticDerivative

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Integer realization retaining every prime multiplicity.
Divisibility below retains its exact support hypothesis; no uniform ABC
additive-defect bound is supplied. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.ABC.RetainedArithmeticDerivative

def naturalArithmeticDerivative (n : ℕ) : ℕ :=
  ∑ p ∈ n.factorization.support, n.factorization p * (n / p)

theorem naturalArithmeticDerivative_cast (n : ℕ) :
    (naturalArithmeticDerivative n : ℚ) = arithmeticDerivative n := by
  unfold naturalArithmeticDerivative arithmeticDerivative logarithmicDerivative
  rw [Finsupp.sum, Finset.mul_sum]
  push_cast
  apply Finset.sum_congr rfl
  intro p hp
  have hmem : p ∈ n.primeFactors := by
    simpa only [Nat.support_factorization] using hp
  have hd : p ∣ n := Nat.dvd_of_mem_primeFactors hmem
  rw [Nat.cast_div_charZero hd]
  ring

/-- A common divisor of all retained quotients divides the integer derivative. -/
theorem support_quotient_dvd_derivative (n d : ℕ)
    (h : ∀ p ∈ n.factorization.support, d ∣ n / p) :
    d ∣ naturalArithmeticDerivative n := by
  unfold naturalArithmeticDerivative
  apply Finset.dvd_sum
  intro p hp
  exact dvd_mul_of_dvd_right (h p hp) _

end GRWTSK.NumberTheory.ABC.RetainedArithmeticDerivative

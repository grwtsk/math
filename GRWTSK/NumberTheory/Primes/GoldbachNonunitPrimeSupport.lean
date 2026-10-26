/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

/-!
# Finite prime-divisor support for nonunit prime mass

The prime/nonunit support interface is discharged using the pinned
Mathlib criterion ZMod.isUnit_prime_iff_not_dvd. The original
conditional interface is preserved for dependent source compatibility.
No prime-counting estimate is claimed.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit

noncomputable section

/-- Finite prime divisors of q through the inclusive cutoff N. -/
def finitePrimeDivisors (q N : ℕ) : Finset ℕ :=
  (Finset.range (N + 1)).filter (fun p => Nat.Prime p ∧ p ∣ q)

/-- A prime is nonunit modulo q precisely when it divides q, for
every natural modulus including q = 0 and q = 1. -/
theorem prime_nonunit_iff_dvd (q p : ℕ) (hp : Nat.Prime p) :
    (¬ IsUnit (p : ZMod q)) ↔ p ∣ q := by
  rw [ZMod.isUnit_prime_iff_not_dvd hp]
  simp

/-- Exact prime-only nonunit mass from a supplied, pointwise
prime-support equivalence. The equivalence is the missing arithmetic
supplier and is not silently inferred. -/
theorem nonunitPrimeMass_eq_primeDivisorSum
    (q N : ℕ)
    (hsupport : ∀ p : ℕ, Nat.Prime p →
      (¬ IsUnit (p : ZMod q) ↔ p ∣ q)) :
    nonunitPrimeMass q N =
      ∑ p ∈ finitePrimeDivisors q N, Real.log (p : ℝ) := by
  classical
  unfold nonunitPrimeMass finitePrimeDivisors
  rw [← Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hp : Nat.Prime n
  · simp [primeLogWeight, hp, hsupport n hp]
  · simp [primeLogWeight, hp]

/-- The prime-only finite nonunit mass has exact prime-divisor
support, without an additional arithmetic support hypothesis. -/
theorem nonunitPrimeMass_eq_primeDivisorSum_unconditional (q N : ℕ) :
    nonunitPrimeMass q N =
      ∑ p ∈ finitePrimeDivisors q N, Real.log (p : ℝ) :=
  nonunitPrimeMass_eq_primeDivisorSum q N
    (fun p hp => prime_nonunit_iff_dvd q p hp)

end
end GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport

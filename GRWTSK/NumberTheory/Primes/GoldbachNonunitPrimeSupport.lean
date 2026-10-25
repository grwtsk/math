/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit
import Mathlib.Tactic

/-!
# Finite prime-divisor support for nonunit prime mass

The arithmetic unit/coprime equivalence and prime divisor criterion
are stated as explicit interfaces until proved against pinned Mathlib.
This does not assume a prime-counting estimate.

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

end
end GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport

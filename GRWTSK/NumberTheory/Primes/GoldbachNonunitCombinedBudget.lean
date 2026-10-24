/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeTransfer
import Mathlib.Tactic

/-!
# Finite nonunit proper-power and total error composition

The proper-power budget is an explicit hypothesis. The theorem composes
it with the prime-divisor budget without asserting an unproved exponent
count, canonical von Mangoldt identification or prime cancellation.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachNonunitCombinedBudget

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit
open GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport
open GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeBudget
open GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeTransfer
open GRWTSK.NumberTheory.Primes.GoldbachNonunitBudget

noncomputable section

/-- The complete nonunit prime-power mass is controlled by the
prime-divisor logarithmic budget plus an explicit proper-power error. -/
theorem nonunitPsiMass_le_prime_count_add_proper
    (q N : ℕ) (C : ℝ)
    (hsupport : ∀ p : ℕ, Nat.Prime p →
      (¬ IsUnit (p : ZMod q) ↔ p ∣ q))
    (hlog : ∀ p ∈ finitePrimeDivisors q N,
      Real.log (p : ℝ) ≤ Real.log (N : ℝ))
    (hproper : nonunitProperPowerMass q N ≤ C) :
    nonunitPsiMass q N ≤
      (finitePrimeDivisorCount q N : ℝ) * Real.log (N : ℝ) + C := by
  rw [nonunitPsiMass_eq_prime_add_proper]
  exact add_le_add
    (nonunitPrimeMass_le_count_mul_log q N hsupport hlog) hproper

end
end GRWTSK.NumberTheory.Primes.GoldbachNonunitCombinedBudget

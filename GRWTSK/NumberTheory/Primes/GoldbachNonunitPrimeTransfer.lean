/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeBudget
import Mathlib.Tactic

/-!
# Nonunit prime-only logarithmic budget from explicit arithmetic suppliers

The original finite prime-support/logarithmic interfaces remain
conditional. The pinned ZMod prime-support and real-log suppliers now
compose into an assumption-free finite prime-only mass bound.
No prime-power exponent count or Dirichlet-character estimate is supplied.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeTransfer

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport
open GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeBudget
open GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit

noncomputable section

/-- Exact finite prime-only nonunit mass bound from pointwise
prime support and logarithmic monotonicity. -/
theorem nonunitPrimeMass_le_count_mul_log
    (q N : ℕ)
    (hsupport : ∀ p : ℕ, Nat.Prime p →
      (¬ IsUnit (p : ZMod q) ↔ p ∣ q))
    (hlog : ∀ p ∈ finitePrimeDivisors q N,
      Real.log (p : ℝ) ≤ Real.log (N : ℝ)) :
    nonunitPrimeMass q N ≤
      (finitePrimeDivisorCount q N : ℝ) * Real.log (N : ℝ) := by
  rw [nonunitPrimeMass_eq_primeDivisorSum q N hsupport]
  exact primeDivisorLogSum_le_count_mul_log q N hlog

/-- Exact finite prime-only nonunit mass bound with the arithmetic
prime-support and pointwise logarithmic premises discharged. -/
theorem nonunitPrimeMass_le_count_mul_log_unconditional (q N : ℕ) :
    nonunitPrimeMass q N ≤
      (finitePrimeDivisorCount q N : ℝ) * Real.log (N : ℝ) := by
  rw [nonunitPrimeMass_eq_primeDivisorSum_unconditional q N]
  exact primeDivisorLogSum_le_count_mul_log_unconditional q N

end
end GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeTransfer

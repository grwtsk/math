/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitBridge
import GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeLogSupplier

/-!
# Canonical nonunit von Mangoldt sum with finite logarithmic correction

This substitutes the exact canonical von Mangoldt filtered-sum
identity into the positive-modulus nonunit psi mass estimate.
No character cancellation or prime-distribution estimate is inferred.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitLogBound

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitBridge
open GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeLogSupplier
open GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport
open GRWTSK.NumberTheory.Primes.GoldbachNonunitBudget

/-- The canonical von Mangoldt nonunit sum obeys the explicit
finite positive-modulus logarithmic correction bound. -/
theorem nonunit_vonMangoldt_sum_le_log_correction
    (q N : ℕ) (hq : q ≠ 0) :
    (∑ n ∈ (Finset.range (N + 1)).filter
      (fun n => ¬ IsUnit (n : ZMod q)),
      ArithmeticFunction.vonMangoldt n) ≤
      (finitePrimeDivisorCount q N : ℝ) * Real.log (N : ℝ) +
        (Nat.log2 N : ℝ) * Real.log (q : ℝ) := by
  rw [← nonunitPsiMass_eq_vonMangoldt_sum]
  exact nonunitPsiMass_le_prime_count_add_log2_correction q N hq

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitLogBound

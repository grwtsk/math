/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitCharacterBridge
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitLogBound
import Mathlib.Tactic

/-!
# Complex nonunit correction norm bounded by finite logarithmic budget

The complex correction is a cast of the real nonunit von Mangoldt
sum. Its real source is nonnegative; hence its complex norm equals
that source, which is bounded by the finite logarithmic correction.
No character cancellation or zero-free region is used.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitComplexNorm

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachPsiUnitNonunit
open GRWTSK.NumberTheory.Primes.GoldbachNonunitBudget
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitCharacterBridge
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitLogBound
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitBridge

/-- Norm of the complex nonunit correction has the explicit
positive-modulus finite logarithmic upper bound. -/
theorem norm_nonunitPsiTotal_le_log_correction (q N : ℕ)
    (hq : q ≠ 0) :
    ‖nonunitPsiTotal q N‖ ≤
      (finitePrimeDivisorCount q N : ℝ) * Real.log (N : ℝ) +
        (Nat.log2 N : ℝ) * Real.log (q : ℝ) := by
  rw [nonunitPsiTotal_eq_canonical_cast]
  rw [← nonunitPsiMass_eq_vonMangoldt_sum]
  rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (nonunitPsiMass_nonneg q N)]
  exact nonunitPsiMass_le_prime_count_add_log2_correction q N hq

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitComplexNorm

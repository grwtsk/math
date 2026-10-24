/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtUniqueSupport
import Mathlib.Tactic

/-!
# Proper-prime-power weight as a filtered product sum

Only the finite summation presentation changes. Canonical von
Mangoldt identification remains a separate mathematical obligation.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPacketProduct

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection

/-- The nested proper-prime-power sum equals its filtered product form. -/
theorem properPrimePowerWeight_eq_filtered_product (n : ℕ) :
    properPrimePowerWeight n =
      ∑ pk ∈ ((Finset.range (n + 1)).product (Finset.Icc 2 n)).filter
          (fun pk => Nat.Prime pk.1 ∧ pk.1 ^ pk.2 = n),
        Real.log (pk.1 : ℝ) := by
  classical
  unfold properPrimePowerWeight
  rw [Finset.sum_filter, Finset.sum_product]
  rfl

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPacketProduct

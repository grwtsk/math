/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerRadicalLog
import Mathlib.RingTheory.Radical.NatInt

/-!
# Radical bounded by a positive modulus

The exact pinned Mathlib theorem Nat.radical_le_self_iff
characterizes the necessary nonzero hypothesis. This is a
finite arithmetic supplier, not a prime-density statement.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerRadicalBound

/-- The radical of a nonzero natural number does not exceed it. -/
theorem radical_le_of_ne_zero (q : ℕ) (hq : q ≠ 0) :
    Nat.radical q ≤ q := by
  exact Nat.radical_le_self_iff.mpr hq

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerRadicalBound

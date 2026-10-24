/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerLogCountBound
import Mathlib.Tactic

/-!
# Explicit binary-logarithmic exponent-count bound

The interval [2, Nat.log2 N] contains at most Nat.log2 N
natural numbers, including small-N cases where it is empty.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerLogCountExplicit

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerLogCountBound

/-- Eligible exponents of a base p≥2 are at most Nat.log2 N in number. -/
theorem properExponentCount_le_log2 (p N : ℕ) (hp : 2 ≤ p) :
    properExponentCount p N ≤ Nat.log2 N := by
  calc
    properExponentCount p N ≤ (Finset.Icc 2 (Nat.log2 N)).card :=
      properExponentCount_le_logIcc p N hp
    _ ≤ Nat.log2 N := by
      simp only [Nat.card_Icc]
      omega

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerLogCountExplicit

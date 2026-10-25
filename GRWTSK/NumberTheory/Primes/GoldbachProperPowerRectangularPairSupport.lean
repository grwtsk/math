/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPacket
import Mathlib.Tactic

/-!
# Finite rectangular prime-power pair support

The finite product over p and k is filtered by the exact arithmetic
support predicate. This is a membership-level supplier for the
remaining rectangular subtype sum normalization.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairSupport

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexSupport

/-- The exact finite rectangular support for prime bases and exponents. -/
def rectangularPairSupport (N : ℕ) : Finset (ℕ × ℕ) :=
  ((Finset.range (N + 1)).product (Finset.Icc 2 N)).filter
    (fun t => Nat.Prime t.1 ∧ t.1 ^ t.2 ≤ N)

/-- Membership in the rectangular pair filter equals RectangularSupport. -/
theorem mem_rectangularPairSupport_iff (N p k : ℕ) :
    (p, k) ∈ rectangularPairSupport N ↔
      RectangularSupport N p k := by
  classical
  simp [rectangularPairSupport, RectangularSupport,
    Finset.mem_product, Finset.mem_Icc, Finset.mem_range,
    Nat.lt_succ_iff, and_assoc]

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairSupport

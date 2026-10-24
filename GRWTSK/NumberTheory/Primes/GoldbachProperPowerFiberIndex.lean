/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberMembership
import Mathlib.Tactic

/-!
# Finite dependent prime-power fiber index

The sigma-style index retains n in the outer finite range and a
pair (p,k) in pairSupportAt n. It is equivalent in support to the
original triple predicate. No sum equality is asserted here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberIndex

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPairFilter
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberMembership
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexSupport

/-- A dependent finite fiber index carrying the original n,p,k data. -/
def FiberIndex (N : ℕ) :=
  { t : ℕ × ℕ × ℕ //
      t.1 ∈ Finset.range (N + 1) ∧
        (t.2.1, t.2.2) ∈ pairSupportAt t.1 }

/-- The dependent fiber predicate is equivalent to OriginalSupport. -/
theorem fiberIndex_iff_originalSupport (N : ℕ)
    (t : ℕ × ℕ × ℕ) :
    (t.1 ∈ Finset.range (N + 1) ∧
      (t.2.1, t.2.2) ∈ pairSupportAt t.1) ↔
        OriginalSupport N t.2.1 t.2.2 t.1 := by
  constructor
  · rintro ⟨hn, hpair⟩
    exact (pairSupport_iff_originalSupport N t.1 t.2.1 t.2.2 hn).mp hpair
  · intro h
    have hn : t.1 ∈ Finset.range (N + 1) := by
      exact Finset.mem_range.mpr (Nat.lt_succ_of_le h.1)
    exact ⟨hn,
      (pairSupport_iff_originalSupport N t.1 t.2.1 t.2.2 hn).mpr h⟩

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberIndex

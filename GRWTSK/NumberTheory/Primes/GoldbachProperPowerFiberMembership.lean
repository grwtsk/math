/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberSum
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerTriplePacket
import Mathlib.Tactic

/-!
# Finite dependent fiber support and triple support correspondence

The dependent fiber (n,(p,k)) is represented by the same triple
(n,p,k) as the original support predicate. This module establishes
the exact pointwise membership equivalence, not the sum flattening.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberMembership

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPairFilter
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexSupport
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerTriplePacket

/-- Exact membership equivalence for a fixed n in the outer range. -/
theorem pairSupport_iff_originalSupport
    (N n p k : ℕ) (hn : n ∈ Finset.range (N + 1)) :
    (p, k) ∈ pairSupportAt n ↔ OriginalSupport N p k n := by
  have hnN : n ≤ N := Nat.le_of_lt_succ (Finset.mem_range.mp hn)
  rw [mem_pairSupportAt_iff]
  unfold OriginalSupport
  constructor
  · rintro ⟨hpn, hk2, hkn, hp, hpow⟩
    exact ⟨hnN, hpn, hk2, hkn, hp, hpow⟩
  · rintro ⟨_, hpn, hk2, hkn, hp, hpow⟩
    exact ⟨hpn, hk2, hkn, hp, hpow⟩

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberMembership

/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerTriplePacket
import Mathlib.Tactic

/-!
# Exact membership of the original proper-power triple packet

The support predicate itself implies all bounds of the containing
finite product. Thus the filtered box has exactly the intended
original triples, with no extra cutoff assumptions.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerTripleMembership

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexSupport
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerTriplePacket

/-- Original support forces membership in the ambient finite box. -/
theorem mem_tripleBox_of_support (N : ℕ) (t : ℕ × ℕ × ℕ)
    (h : OriginalSupport N t.2.1 t.2.2 t.1) :
    t ∈ tripleBox N := by
  rcases t with ⟨n, p, k⟩
  rcases h with ⟨hn, hp, hk2, hk, hprime, hpow⟩
  simp only [tripleBox, Finset.mem_product, Finset.mem_range,
    Finset.mem_Icc]
  exact ⟨Nat.lt_succ_of_le hn,
    ⟨Nat.lt_succ_of_le (hp.trans hn), ⟨hk2, hk.trans hn⟩⟩⟩

/-- The finite filtered triple box has exactly the original support. -/
theorem mem_supportedTripleBox_iff (N : ℕ) (t : ℕ × ℕ × ℕ) :
    t ∈ supportedTripleBox N ↔
      OriginalSupport N t.2.1 t.2.2 t.1 := by
  constructor
  · exact mem_supportedTripleBox_support N t
  · intro h
    exact Finset.mem_filter.mpr ⟨mem_tripleBox_of_support N t h, h⟩

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerTripleMembership

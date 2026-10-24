/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberIndex
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerTripleEquiv

/-!
# Finite fiber and supported-box index equivalence

The two subtypes have identical underlying triples. Their membership
predicates are equivalent by the previously stated exact support
lemmas. No finite-sum identity is asserted.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberBoxEquiv

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberIndex
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerTripleMembership
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerTripleEquiv

/-- A dependent fiber index is the same supported triple as a box index. -/
def fiberToBox (N : ℕ) (t : FiberIndex N) : BoxIndex N :=
  ⟨t.1, (mem_supportedTripleBox_iff N t.1).mpr
    ((fiberIndex_iff_originalSupport N t.1).mp t.2)⟩

/-- A supported box index supplies the corresponding dependent fiber. -/
def boxToFiber (N : ℕ) (t : BoxIndex N) : FiberIndex N :=
  ⟨t.1, (fiberIndex_iff_originalSupport N t.1).mpr
    ((mem_supportedTripleBox_iff N t.1).mp t.2)⟩

/-- Exact index equivalence, preserving each triple and multiplicity. -/
def fiberBoxEquiv (N : ℕ) : FiberIndex N ≃ BoxIndex N where
  toFun := fiberToBox N
  invFun := boxToFiber N
  left_inv := by
    intro t
    apply Subtype.ext
    rfl
  right_inv := by
    intro t
    apply Subtype.ext
    rfl

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberBoxEquiv

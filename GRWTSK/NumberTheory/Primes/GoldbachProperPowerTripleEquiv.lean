/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerTripleWeight
import Mathlib.Tactic

/-!
# Finite supported-triple membership subtype equivalence

The filtered triple box and OriginalIndex are the same support
predicate, with the ambient box membership reconstructed from it.
No finite sum normalization is asserted by this module.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerTripleEquiv

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerTriplePacket
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerTripleMembership
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexEquiv

/-- Supported triple box membership, represented as a subtype. -/
def BoxIndex (N : ℕ) :=
  { t : ℕ × ℕ × ℕ // t ∈ supportedTripleBox N }

/-- Forget the finite-box membership proof in favor of OriginalSupport. -/
def boxToOriginal (N : ℕ) (t : BoxIndex N) : OriginalIndex N :=
  ⟨t.1, (mem_supportedTripleBox_iff N t.1).mp t.2⟩

/-- Recover finite-box membership from OriginalSupport. -/
def originalToBox (N : ℕ) (t : OriginalIndex N) : BoxIndex N :=
  ⟨t.1, (mem_supportedTripleBox_iff N t.1).mpr t.2⟩

/-- Exact equivalence of the two supported finite index types. -/
def boxIndexEquiv (N : ℕ) : BoxIndex N ≃ OriginalIndex N where
  toFun := boxToOriginal N
  invFun := originalToBox N
  left_inv := by
    intro t
    apply Subtype.ext
    rfl
  right_inv := by
    intro t
    apply Subtype.ext
    rfl

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerTripleEquiv

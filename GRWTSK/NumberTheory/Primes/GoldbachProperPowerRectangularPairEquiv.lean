/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairSum
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerSumTransport
import Mathlib.Tactic

/-!
# Rectangular finite filtered pair subtype equivalence

The finite pair filter and RectangularIndex are the same predicate
on the same underlying (p,k) pair. The equivalence preserves every
index; weighted sum normalization is a separate step.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairEquiv

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairSupport
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexEquiv

/-- Membership subtype of the finite rectangular pair filter. -/
def PairIndex (N : ℕ) :=
  { t : ℕ × ℕ // t ∈ rectangularPairSupport N }

/-- Convert filter membership to RectangularSupport. -/
def pairToRectangular (N : ℕ) (t : PairIndex N) : RectangularIndex N :=
  ⟨t.1, (mem_rectangularPairSupport_iff N t.1.1 t.1.2).mp t.2⟩

/-- Convert RectangularSupport to filter membership. -/
def rectangularToPair (N : ℕ) (t : RectangularIndex N) : PairIndex N :=
  ⟨t.1, (mem_rectangularPairSupport_iff N t.1.1 t.1.2).mpr t.2⟩

/-- Exact index equivalence preserving the underlying prime-power pair. -/
def pairIndexEquiv (N : ℕ) : PairIndex N ≃ RectangularIndex N where
  toFun := pairToRectangular N
  invFun := rectangularToPair N
  left_inv := by
    intro t
    apply Subtype.ext
    rfl
  right_inv := by
    intro t
    apply Subtype.ext
    rfl

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairEquiv

/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachUnitCharacterPsi
import GRWTSK.NumberTheory.Primes.GoldbachPsiUnitNonunit

/-!
# Pointwise unit-fiber membership supplier

This is a finite residue-support fact, not character orthogonality.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachUnitFiberMembership

/-- Membership in a unit fiber forces a unit residue. -/
theorem unit_fiber_implies_isUnit (q n : ℕ) (u : (ZMod q)ˣ)
    (h : (n : ZMod q) = (u : ZMod q)) :
    IsUnit (n : ZMod q) := by
  rw [h]
  exact u.isUnit

end GRWTSK.NumberTheory.Primes.GoldbachUnitFiberMembership

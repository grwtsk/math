/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachUnitFiberMembership
import Mathlib.Tactic

/-!
# Unique unit representative of a unit residue

An IsUnit proof gives a unit-group element whose coercion is the
original residue. Uniqueness follows from injectivity of the units
coercion. This is a finite fiber supplier, not character cancellation.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachUnitFiberRepresentative

/-- Every unit residue has a unique unit-group representative. -/
theorem exists_unique_unit_rep (q n : ℕ)
    (hn : IsUnit (n : ZMod q)) :
    ∃! u : (ZMod q)ˣ, (u : ZMod q) = (n : ZMod q) := by
  obtain ⟨u, hu⟩ := hn
  refine ⟨u, hu, ?_⟩
  intro v hv
  exact Units.ext (hv.trans hu.symm)

end GRWTSK.NumberTheory.Primes.GoldbachUnitFiberRepresentative

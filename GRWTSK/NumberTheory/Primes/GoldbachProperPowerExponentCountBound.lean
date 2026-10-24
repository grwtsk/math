/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount
import Mathlib.Tactic

/-!
# Uniform finite proper-power exponent-count bound

The exponent support is a subset of Icc 2 N. The cardinality
bound requires no assumptions on p and is intentionally elementary.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCountBound

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount

/-- The count of eligible exponents cannot exceed the ambient range. -/
theorem properExponentCount_le_card_Icc (p N : ℕ) :
    properExponentCount p N ≤ (Finset.Icc 2 N).card := by
  classical
  unfold properExponentCount
  exact Finset.card_filter_le _ _

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCountBound

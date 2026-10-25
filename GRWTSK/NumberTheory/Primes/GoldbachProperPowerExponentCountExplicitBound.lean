/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCountBound
import Mathlib.Tactic

/-!
# Explicit ambient bound for proper-power exponent counts

The interval [2,N] has at most N elements, including N=0 and N=1.
This is a deliberately conservative finite bound, not a logarithmic
estimate. SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCountExplicitBound

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCountBound

/-- The number of eligible proper-power exponents is at most N. -/
theorem properExponentCount_le (p N : ℕ) :
    properExponentCount p N ≤ N := by
  calc
    properExponentCount p N ≤ (Finset.Icc 2 N).card :=
      properExponentCount_le_card_Icc p N
    _ ≤ N := by
      simp only [Nat.card_Icc]
      omega

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCountExplicitBound

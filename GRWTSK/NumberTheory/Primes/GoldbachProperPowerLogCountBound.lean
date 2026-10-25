/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerLogCutoff
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount
import Mathlib.Tactic

/-!
# Binary-logarithmic finite exponent-count bound

For p≥2, eligible exponents lie in Icc 2 (Nat.log2 N).
The count is bounded by the cardinality of that interval.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerLogCountBound

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerLogCutoff

/-- Every eligible exponent lies in the logarithmic finite interval. -/
theorem exponent_support_subset_logIcc (p N : ℕ) (hp : 2 ≤ p) :
    (Finset.Icc 2 N).filter (fun k => p ^ k ≤ N) ⊆
      Finset.Icc 2 (Nat.log2 N) := by
  intro k hk
  have h := Finset.mem_filter.mp hk
  exact Finset.mem_Icc.mpr
    ⟨(Finset.mem_Icc.mp h.1).1,
      eligible_exponent_le_log2 p N k hp h.2⟩

/-- A prime-base proper-power exponent count is logarithmically bounded. -/
theorem properExponentCount_le_logIcc (p N : ℕ) (hp : 2 ≤ p) :
    properExponentCount p N ≤ (Finset.Icc 2 (Nat.log2 N)).card := by
  classical
  unfold properExponentCount
  exact Finset.card_le_card (exponent_support_subset_logIcc p N hp)

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerLogCountBound

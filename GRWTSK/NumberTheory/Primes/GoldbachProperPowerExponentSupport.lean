/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount
import Mathlib.Tactic

/-!
# Finite proper-power exponent support and cardinality

Elementary source-only bounds on the finite exponent count.
No prime-distribution or character estimate.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentSupport

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount

noncomputable section

/-- Membership in the proper exponent support retains both endpoints. -/
theorem mem_properExponent_support (p N k : ℕ) :
    k ∈ (Finset.Icc 2 N).filter (fun j => p ^ j ≤ N) ↔
      2 ≤ k ∧ k ≤ N ∧ p ^ k ≤ N := by
  simp only [Finset.mem_filter, Finset.mem_Icc]
  tauto

/-- The exponent count cannot exceed its unfiltered interval. -/
theorem properExponentCount_le_interval_card (p N : ℕ) :
    properExponentCount p N ≤ (Finset.Icc 2 N).card := by
  unfold properExponentCount
  exact Finset.card_filter_le _ _

/-- Transfer the finite interval-cardinality bound to log mass. -/
theorem properExponentLogMass_le_interval_card
    (p N : ℕ) (hlog : 0 ≤ Real.log (p : ℝ)) :
    properExponentLogMass p N ≤
      ((Finset.Icc 2 N).card : ℝ) * Real.log (p : ℝ) := by
  apply properExponentLogMass_le p N _ hlog
  exact_mod_cast properExponentCount_le_interval_card p N

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentSupport

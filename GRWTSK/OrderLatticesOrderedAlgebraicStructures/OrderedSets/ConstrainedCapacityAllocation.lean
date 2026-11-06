/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.OrderLatticesOrderedAlgebraicStructures.OrderedSets.FiniteCapacityAllocation

/-!
# Two-pool allocation with eligibility constraints

Three disjoint demands are supplied: left-only, right-only, and flexible.
Only the flexible demand may be shared. Feasibility is characterized by three
cuts: each exclusive demand must fit its own pool and total demand must fit the
combined pools. This is an exact two-pool result, not a general matching theorem.

Primary argument: add the two allocation inequalities for necessity. For
sufficiency reserve the exclusive demands, then greedily split the flexible
remainder. `feasible_iff_residual_allocation` is the proved return to the
unconstrained allocation theorem, with both reservation inequalities retained.

Hostile boundary: arbitrary spare right capacity cannot repair an overloaded
left-only demand. Truncated subtraction without the reservation inequalities
would conceal that obstruction. Consumer: coalition feasibility when some
obligations cannot be transferred to another pool.

Novelty not assessed. Independent review, compilation, fresh kernel checking,
and transitive axiom audit: NOT_RUN. Target: leanprover/lean4:v4.34.1.
-/

namespace GRWTSK.Order.Capacity.TwoPool

/-- Exclusive loads remain in their respective pools; only the shared load moves. -/
def Feasible (leftOnly rightOnly shared leftCapacity rightCapacity : Nat) : Prop :=
  ∃ leftShare rightShare,
    leftShare + rightShare = shared ∧
    leftOnly + leftShare ≤ leftCapacity ∧
    rightOnly + rightShare ≤ rightCapacity

/-- All three cuts are necessary and jointly sufficient in the two-pool model. -/
theorem feasible_iff (leftOnly rightOnly shared leftCapacity rightCapacity : Nat) :
    Feasible leftOnly rightOnly shared leftCapacity rightCapacity ↔
      leftOnly ≤ leftCapacity ∧ rightOnly ≤ rightCapacity ∧
      leftOnly + rightOnly + shared ≤ leftCapacity + rightCapacity := by
  constructor
  · intro h
    obtain ⟨leftShare, rightShare, hsum, hl, hr⟩ := h
    omega
  · intro h
    obtain ⟨hl, hr, ht⟩ := h
    refine ⟨min shared (leftCapacity - leftOnly),
      shared - min shared (leftCapacity - leftOnly), ?_, ?_, ?_⟩ <;> omega

/-- The canonical split is a complete witness whenever the three cuts hold. -/
theorem greedy_witness (leftOnly rightOnly shared leftCapacity rightCapacity : Nat)
    (hl : leftOnly ≤ leftCapacity) (hr : rightOnly ≤ rightCapacity)
    (ht : leftOnly + rightOnly + shared ≤ leftCapacity + rightCapacity) :
    let leftShare := min shared (leftCapacity - leftOnly)
    let rightShare := shared - leftShare
    leftShare + rightShare = shared ∧
      leftOnly + leftShare ≤ leftCapacity ∧
      rightOnly + rightShare ≤ rightCapacity := by
  dsimp
  omega

/-- Reserving exclusive demand is valid only when neither reservation overdraws. -/
theorem feasible_iff_residual_allocation
    (leftOnly rightOnly shared leftCapacity rightCapacity : Nat) :
    Feasible leftOnly rightOnly shared leftCapacity rightCapacity ↔
      leftOnly ≤ leftCapacity ∧ rightOnly ≤ rightCapacity ∧
      GRWTSK.Order.Capacity.Feasible shared
        [leftCapacity - leftOnly, rightCapacity - rightOnly] := by
  rw [feasible_iff, GRWTSK.Order.Capacity.feasible_iff]
  simp only [GRWTSK.Order.Capacity.mass]
  omega

/-- The unconstrained theorem is recovered when all demand is eligible for either pool. -/
theorem all_flexible_iff (shared leftCapacity rightCapacity : Nat) :
    Feasible 0 0 shared leftCapacity rightCapacity ↔
      GRWTSK.Order.Capacity.Feasible shared [leftCapacity, rightCapacity] := by
  rw [feasible_iff, GRWTSK.Order.Capacity.feasible_iff]
  simp only [GRWTSK.Order.Capacity.mass]
  omega

theorem capacity_mono {leftOnly rightOnly shared leftCapacity rightCapacity
    largerLeft largerRight : Nat}
    (hl : leftCapacity ≤ largerLeft) (hr : rightCapacity ≤ largerRight)
    (h : Feasible leftOnly rightOnly shared leftCapacity rightCapacity) :
    Feasible leftOnly rightOnly shared largerLeft largerRight := by
  obtain ⟨leftShare, rightShare, hsum, hleft, hright⟩ := h
  refine ⟨leftShare, rightShare, hsum, ?_, ?_⟩ <;> omega

theorem smaller_shared_feasible {leftOnly rightOnly small large
    leftCapacity rightCapacity : Nat}
    (hsize : small ≤ large)
    (h : Feasible leftOnly rightOnly large leftCapacity rightCapacity) :
    Feasible leftOnly rightOnly small leftCapacity rightCapacity := by
  have bounds := (feasible_iff leftOnly rightOnly large leftCapacity rightCapacity).mp h
  apply (feasible_iff leftOnly rightOnly small leftCapacity rightCapacity).mpr
  omega

/-- Aggregate capacity alone is not a sufficient feasibility certificate. -/
theorem total_capacity_can_hide_an_eligibility_bottleneck :
    2 + 0 + 0 ≤ 1 + 10 ∧ ¬ Feasible 2 0 0 1 10 := by
  constructor
  · decide
  · intro h
    have bounds := (feasible_iff 2 0 0 1 10).mp h
    omega

/-- Increasing the wrong pool never repairs this exclusive overload. -/
theorem exclusive_overload_not_repaired_elsewhere (leftCapacity spare : Nat) :
    ¬ Feasible (leftCapacity + 1) 0 0 leftCapacity spare := by
  intro h
  have bounds := (feasible_iff (leftCapacity + 1) 0 0 leftCapacity spare).mp h
  omega

/-- Cooperation remains strictly useful when the eligibility cuts allow it. -/
theorem constrained_cooperation_can_be_necessary :
    Feasible 1 1 2 2 2 ∧ ¬ Feasible 1 1 2 2 1 ∧ ¬ Feasible 1 1 2 1 2 := by
  constructor
  · exact ⟨1, 1, rfl, by decide, by decide⟩
  · constructor
    · intro h
      have bounds := (feasible_iff 1 1 2 2 1).mp h
      omega
    · intro h
      have bounds := (feasible_iff 1 1 2 1 2).mp h
      omega

end GRWTSK.Order.Capacity.TwoPool

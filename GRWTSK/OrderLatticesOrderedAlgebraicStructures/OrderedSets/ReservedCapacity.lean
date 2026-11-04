/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.OrderLatticesOrderedAlgebraicStructures.OrderedSets.FiniteCapacityAllocation

/-!
# Cooperative allocation with protected existing obligations

This uses `Capacity.Fits`, `mass`, `greedy`, and `feasible_iff` directly. A reserved
list protects already assigned obligations position by position. Extra demand
may use only the remaining capacities. Thus cooperation is not modeled by
silently transferring another participant's protected workload into free space.

The central exact criterion is `reserved_feasible_iff`: under positional validity
of the reservation, extra demand is feasible iff demand plus total reservation
fits total capacity. Its construction applies the existing greedy allocation to
the residual list. Independent necessity is the sum of positional inequalities.
The `combine_fits` theorem supplies the local bound that a total inequality alone
would omit. The fungibility and independent-position hypotheses of the imported
allocation theorem remain material; this is not a measurement of human capacity.

No existing theorem is replaced. The new object is reserved, not unrestricted,
allocation. Empty resources, zero slack, increased reservations, and necessary
joint participation are covered. Independent review and all Lean verification:
NOT_RUN. Target: Lean v4.34.1; standard library and proof-producing omega.
-/

namespace GRWTSK.Order.Capacity.Reservation

/-- Residual capacities are positional; valid inputs have matching lengths. -/
def remaining : List Nat → List Nat → List Nat
  | r :: rs, c :: cs => (c - r) :: remaining rs cs
  | _, _ => []

/-- Combine protected obligations and new allocations at the same positions. -/
def combine : List Nat → List Nat → List Nat
  | r :: rs, x :: xs => (r + x) :: combine rs xs
  | _, _ => []

/-- Reservations and residual capacities account for all original capacity. -/
theorem remaining_mass {reserved capacities : List Nat}
    (valid : Fits reserved capacities) :
    mass reserved + mass (remaining reserved capacities) = mass capacities := by
  induction reserved generalizing capacities with
  | nil =>
    cases capacities with
    | nil => rfl
    | cons c cs => cases valid
  | cons r rs ih =>
    cases capacities with
    | nil => cases valid
    | cons c cs =>
      have headBound := valid.1
      have tailMass := ih valid.2
      change r + mass rs + ((c - r) + mass (remaining rs cs)) = c + mass cs
      omega

/-- A residual budget never exceeds the original capacity at any position. -/
theorem remaining_fits {reserved capacities : List Nat}
    (valid : Fits reserved capacities) : Fits (remaining reserved capacities) capacities := by
  induction reserved generalizing capacities with
  | nil =>
    cases capacities with
    | nil => trivial
    | cons c cs => cases valid
  | cons r rs ih =>
    cases capacities with
    | nil => cases valid
    | cons c cs =>
      refine ⟨?_, ih valid.2⟩
      change c - r ≤ c
      omega

/-- The combined workload respects every local bound, not only the total bound. -/
theorem combine_fits {reserved capacities extra : List Nat}
    (valid : Fits reserved capacities)
    (extraFits : Fits extra (remaining reserved capacities)) :
    Fits (combine reserved extra) capacities := by
  induction reserved generalizing capacities extra with
  | nil =>
    cases capacities with
    | nil =>
      cases extra with
      | nil => trivial
      | cons x xs => cases extraFits
    | cons c cs => cases valid
  | cons r rs ih =>
    cases capacities with
    | nil => cases valid
    | cons c cs =>
      cases extra with
      | nil => cases extraFits
      | cons x xs =>
        have headReserved := valid.1
        have headExtra : x ≤ c - r := extraFits.1
        refine ⟨?_, ih valid.2 extraFits.2⟩
        change r + x ≤ c
        omega

/-- Combined allocations conserve both protected and additional work exactly. -/
theorem combine_mass {reserved capacities extra : List Nat}
    (valid : Fits reserved capacities)
    (extraFits : Fits extra (remaining reserved capacities)) :
    mass (combine reserved extra) = mass reserved + mass extra := by
  induction reserved generalizing capacities extra with
  | nil =>
    cases capacities with
    | nil =>
      cases extra with
      | nil => rfl
      | cons x xs => cases extraFits
    | cons c cs => cases valid
  | cons r rs ih =>
    cases capacities with
    | nil => cases valid
    | cons c cs =>
      cases extra with
      | nil => cases extraFits
      | cons x xs =>
        have tailMass := ih valid.2 extraFits.2
        change (r + x) + mass (combine rs xs) = (r + mass rs) + (x + mass xs)
        omega

/-- Extra service must fit the residual budget and the recombined workload. -/
def ReservedFeasible (demand : Nat) (reserved capacities : List Nat) : Prop :=
  ∃ extra, Fits extra (remaining reserved capacities) ∧ mass extra = demand ∧
    Fits (combine reserved extra) capacities

/-- Exact feasibility criterion with the reservation explicitly protected. -/
theorem reserved_feasible_iff (demand : Nat) {reserved capacities : List Nat}
    (valid : Fits reserved capacities) :
    ReservedFeasible demand reserved capacities ↔
      demand + mass reserved ≤ mass capacities := by
  have accounted := remaining_mass valid
  constructor
  · intro h
    obtain ⟨extra, hfit, hmass, _⟩ := h
    have bound := mass_le_of_fits hfit
    omega
  · intro bound
    have residualBound : demand ≤ mass (remaining reserved capacities) := by omega
    obtain ⟨extra, hfit, hmass⟩ :=
      (feasible_iff demand (remaining reserved capacities)).mpr residualBound
    exact ⟨extra, hfit, hmass, combine_fits valid hfit⟩

/-- The previously implemented greedy construction is a concrete protected witness. -/
theorem greedy_protected (demand : Nat) {reserved capacities : List Nat}
    (valid : Fits reserved capacities)
    (budget : demand + mass reserved ≤ mass capacities) :
    Fits (combine reserved (greedy demand (remaining reserved capacities))) capacities ∧
      mass (greedy demand (remaining reserved capacities)) = demand := by
  constructor
  · exact combine_fits valid (greedy_fits demand _)
  · have accounted := remaining_mass valid
    rw [mass_greedy]
    omega

/-- With no residual capacity, only zero extra demand can be met. -/
theorem no_slack_iff_zero (demand : Nat) {reserved capacities : List Nat}
    (valid : Fits reserved capacities) (full : mass reserved = mass capacities) :
    ReservedFeasible demand reserved capacities ↔ demand = 0 := by
  rw [reserved_feasible_iff demand valid]
  omega

/-- Increasing protected obligations cannot create new available capacity. -/
theorem feasible_with_fewer_reservations {demand : Nat}
    {smaller larger capacities : List Nat}
    (increase : Fits smaller larger) (valid : Fits larger capacities)
    (feasible : ReservedFeasible demand larger capacities) :
    ReservedFeasible demand smaller capacities := by
  have oldBound := (reserved_feasible_iff demand valid).mp feasible
  have reservationBound := mass_le_of_fits increase
  apply (reserved_feasible_iff demand (fits_trans increase valid)).mpr
  omega

/-- Smaller extra demand preserves every existing protected allocation guarantee. -/
theorem feasible_with_smaller_demand {small large : Nat}
    {reserved capacities : List Nat} (valid : Fits reserved capacities)
    (size : small ≤ large) (feasible : ReservedFeasible large reserved capacities) :
    ReservedFeasible small reserved capacities := by
  have bound := (reserved_feasible_iff large valid).mp feasible
  apply (reserved_feasible_iff small valid).mpr
  omega

/-- Both participants may be necessary even while each keeps a protected unit. -/
theorem protected_cooperation_can_be_necessary :
    ReservedFeasible 2 [1, 1] [2, 2] ∧ ¬ ReservedFeasible 2 [1] [2] := by
  constructor
  · apply (reserved_feasible_iff 2 (show Fits [1, 1] [2, 2] from by decide)).mpr
    decide
  · intro h
    have impossible := (reserved_feasible_iff 2 (show Fits [1] [2] from by decide)).mp h
    change 2 + (1 + 0) ≤ 2 + 0 at impossible
    omega

end GRWTSK.Order.Capacity.Reservation

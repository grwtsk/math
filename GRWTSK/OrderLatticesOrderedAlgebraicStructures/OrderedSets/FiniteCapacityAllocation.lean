/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import Std
import Lean.Elab.Tactic.Omega

/-!
# Exact allocation under finite capacities

Capacities are independent list positions containing natural-number units.
Demand is fungible: units may be split between positions without eligibility
constraints, fixed costs, or indivisible jobs. These hypotheses are material.

The constructive result is `feasible_iff`: an exact allocation exists iff total
demand does not exceed total capacity. `greedy` supplies the witness. Its serviced
mass is exactly `min demand (mass capacities)`, and its residual is minimal among
all allocations respecting the same bounds. Allocation commutes with splitting
the capacity list into sequential stages, with the exact residual carried over.

Primary argument: fill the first position up to its capacity and recurse on
truncated residual demand. Induction gives the min identity. Necessity follows
independently by adding the componentwise capacity inequalities. This necessary
bound is also the optimality certificate for the constructive allocation.
Boundary tests cover empty capacity, zero demand, and jointly feasible demand
that neither position can meet alone. No theorem applies this arithmetic to an
unmeasured human capacity or treats duplicated descriptions as new resources.

Consumer: exact cooperative feasibility and explicit residual accounting.
Novelty not assessed. Independent review, compilation, fresh kernel checking,
and transitive axiom auditing: NOT_RUN. Lean target: v4.34.1; standard library.
-/

namespace GRWTSK.Order.Capacity

/-- Total mass, retaining the list's positional resource interpretation. -/
def mass : List Nat → Nat
  | [] => 0
  | x :: xs => x + mass xs

/-- Positional bounds, including exact agreement of lengths. -/
def Fits : List Nat → List Nat → Prop
  | [], [] => True
  | x :: xs, c :: cs => x ≤ c ∧ Fits xs cs
  | _, _ => False

/-- Fill each independent position before moving to the next one. -/
def greedy (demand : Nat) : List Nat → List Nat
  | [] => []
  | c :: cs => min demand c :: greedy (demand - c) cs

/-- Exact service, rather than merely an upper bound on the allocation. -/
def Feasible (demand : Nat) (capacities : List Nat) : Prop :=
  ∃ allocation, Fits allocation capacities ∧ mass allocation = demand

theorem mass_append (xs ys : List Nat) : mass (xs ++ ys) = mass xs + mass ys := by
  induction xs with
  | nil => simp [mass]
  | cons x xs ih => simp [mass, ih, Nat.add_assoc]

theorem fits_refl (xs : List Nat) : Fits xs xs := by
  induction xs with
  | nil => trivial
  | cons x xs ih => exact ⟨Nat.le_refl x, ih⟩

theorem fits_trans {xs ys zs : List Nat} (hxy : Fits xs ys) (hyz : Fits ys zs) :
    Fits xs zs := by
  induction xs generalizing ys zs with
  | nil =>
    cases ys with
    | nil =>
      cases zs with
      | nil => trivial
      | cons z zs => cases hyz
    | cons y ys => cases hxy
  | cons x xs ih =>
    cases ys with
    | nil => cases hxy
    | cons y ys =>
      cases zs with
      | nil => cases hyz
      | cons z zs =>
        exact ⟨Nat.le_trans hxy.1 hyz.1, ih hxy.2 hyz.2⟩

theorem length_eq_of_fits {xs cs : List Nat} (h : Fits xs cs) :
    xs.length = cs.length := by
  induction cs generalizing xs with
  | nil =>
    cases xs with
    | nil => rfl
    | cons x xs => cases h
  | cons c cs ih =>
    cases xs with
    | nil => cases h
    | cons x xs =>
      have ht := ih h.2
      simpa only [List.length_cons] using congrArg Nat.succ ht

/-- The upper bound uses only the positional inequalities, not the algorithm. -/
theorem mass_le_of_fits {xs cs : List Nat} (h : Fits xs cs) : mass xs ≤ mass cs := by
  induction cs generalizing xs with
  | nil =>
    cases xs with
    | nil => exact Nat.le_refl 0
    | cons x xs => cases h
  | cons c cs ih =>
    cases xs with
    | nil => cases h
    | cons x xs =>
      have hhead := h.1
      have htail := ih h.2
      change x + mass xs ≤ c + mass cs
      omega

theorem greedy_fits (demand : Nat) (cs : List Nat) : Fits (greedy demand cs) cs := by
  induction cs generalizing demand with
  | nil => trivial
  | cons c cs ih =>
    refine ⟨?_, ih (demand - c)⟩
    change min demand c ≤ c
    omega

theorem greedy_length (demand : Nat) (cs : List Nat) :
    (greedy demand cs).length = cs.length :=
  length_eq_of_fits (greedy_fits demand cs)

/-- Exact serviced mass, including the insufficient-capacity case. -/
theorem mass_greedy (demand : Nat) (cs : List Nat) :
    mass (greedy demand cs) = min demand (mass cs) := by
  induction cs generalizing demand with
  | nil => simp [greedy, mass]
  | cons c cs ih =>
    simp only [greedy, mass, ih]
    omega

/-- The existence theorem is constructive in its sufficient direction. -/
theorem feasible_iff (demand : Nat) (cs : List Nat) :
    Feasible demand cs ↔ demand ≤ mass cs := by
  constructor
  · intro h
    obtain ⟨xs, hfit, hmass⟩ := h
    have bound := mass_le_of_fits hfit
    rw [hmass] at bound
    exact bound
  · intro h
    refine ⟨greedy demand cs, greedy_fits demand cs, ?_⟩
    rw [mass_greedy]
    omega

/-- No feasible allocation bounded by the demand serves more than the greedy one. -/
theorem greedy_maximal (demand : Nat) (cs xs : List Nat)
    (hfit : Fits xs cs) (hbudget : mass xs ≤ demand) :
    mass xs ≤ mass (greedy demand cs) := by
  have hcap := mass_le_of_fits hfit
  rw [mass_greedy]
  omega

/-- Every allocation has residual at least the greedy residual. -/
theorem greedy_minimal_residual (demand : Nat) (cs xs : List Nat)
    (hfit : Fits xs cs) :
    demand - mass (greedy demand cs) ≤ demand - mass xs := by
  have hcap := mass_le_of_fits hfit
  rw [mass_greedy]
  omega

theorem residual_exact (demand : Nat) (cs : List Nat) :
    demand - mass (greedy demand cs) = demand - mass cs := by
  rw [mass_greedy]
  omega

/-- Service plus unmet demand is exactly the original demand. -/
theorem demand_conservation (demand : Nat) (cs : List Nat) :
    mass (greedy demand cs) + (demand - mass cs) = demand := by
  rw [mass_greedy]
  omega

/-- Service plus unused capacity is exactly the original capacity. -/
theorem capacity_conservation (demand : Nat) (cs : List Nat) :
    mass (greedy demand cs) + (mass cs - mass (greedy demand cs)) = mass cs := by
  have h := mass_le_of_fits (greedy_fits demand cs)
  omega

/-- Sequential stages agree with one allocation over the concatenated positions. -/
theorem greedy_append (demand : Nat) (xs ys : List Nat) :
    greedy demand (xs ++ ys) =
      greedy demand xs ++ greedy (demand - mass xs) ys := by
  induction xs generalizing demand with
  | nil => simp [greedy, mass]
  | cons c cs ih =>
    change min demand c :: greedy (demand - c) (cs ++ ys) =
      (min demand c :: greedy (demand - c) cs) ++
        greedy (demand - (c + mass cs)) ys
    rw [ih (demand - c)]
    have residual : demand - c - mass cs = demand - (c + mass cs) := by omega
    simp only [List.cons_append, residual]

theorem residual_append (demand : Nat) (xs ys : List Nat) :
    demand - mass (xs ++ ys) = (demand - mass xs) - mass ys := by
  rw [mass_append]
  omega

/-- Exact decomposition of a feasible joint demand into locally feasible demands. -/
theorem feasible_append_iff (demand : Nat) (xs ys : List Nat) :
    Feasible demand (xs ++ ys) ↔
      ∃ left right, left + right = demand ∧ Feasible left xs ∧ Feasible right ys := by
  constructor
  · intro h
    have bound := (feasible_iff demand (xs ++ ys)).mp h
    rw [mass_append] at bound
    refine ⟨min demand (mass xs), demand - mass xs, ?_, ?_, ?_⟩
    · omega
    · apply (feasible_iff _ xs).mpr
      omega
    · apply (feasible_iff _ ys).mpr
      omega
  · intro h
    obtain ⟨left, right, hsum, hl, hr⟩ := h
    have bl := (feasible_iff left xs).mp hl
    have br := (feasible_iff right ys).mp hr
    apply (feasible_iff demand (xs ++ ys)).mpr
    rw [mass_append]
    omega

/-- Expanding independent capacities preserves every existing feasible demand. -/
theorem feasible_of_capacity_extension {demand : Nat} {cs ds : List Nat}
    (hfit : Fits cs ds) (h : Feasible demand cs) : Feasible demand ds := by
  obtain ⟨xs, hxs, hmass⟩ := h
  exact ⟨xs, fits_trans hxs hfit, hmass⟩

theorem feasible_of_smaller_demand {small large : Nat} {cs : List Nat}
    (hsize : small ≤ large) (h : Feasible large cs) : Feasible small cs := by
  apply (feasible_iff small cs).mpr
  have bound := (feasible_iff large cs).mp h
  omega

theorem no_feasible_overload (demand : Nat) (cs : List Nat)
    (overload : mass cs < demand) : ¬ Feasible demand cs := by
  intro h
  have bound := (feasible_iff demand cs).mp h
  omega

theorem feasible_empty_iff (demand : Nat) : Feasible demand [] ↔ demand = 0 := by
  rw [feasible_iff]
  change demand ≤ 0 ↔ demand = 0
  omega

theorem zero_demand_feasible (cs : List Nat) : Feasible 0 cs :=
  (feasible_iff 0 cs).mpr (Nat.zero_le _)

/-- Cooperation can be necessary, not merely optional duplication of sufficient slots. -/
theorem joint_capacity_can_be_necessary :
    Feasible 2 [1, 1] ∧ ¬ Feasible 2 [1] := by
  constructor
  · exact ⟨[1, 1], by decide, rfl⟩
  · apply no_feasible_overload
    decide

/-- A zero-capacity position cannot be turned into service by repeating a demand. -/
theorem zero_capacity_boundary : ¬ Feasible 1 [0, 0, 0] := by
  apply no_feasible_overload
  decide

end GRWTSK.Order.Capacity

/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.OrderLatticesOrderedAlgebraicStructures.OrderedSets.RankedReachability

/-!
# Pointwise improvement is stronger than aggregate improvement

Profiles are natural-valued functions on arbitrary coordinate types. Coordinates
and units are supplied by the model, not inferred from a narrative. Decreasing
one aggregate does not prove that no coordinate increased. Indeed, no single
natural-valued score can represent the whole pointwise order even on two
coordinates: incomparable profiles become comparable in the score's total order.

Primary arguments: componentwise inequalities add along a finite list; strict
improvement at a listed coordinate makes the sum strictly decrease. Singleton
lists recover every component inequality. Two incomparable Boolean-indexed
profiles obstruct an order-reflecting scalar score. The finite sum is nevertheless
a useful rank *after* pointwise improvement has been separately proved.

Consumers: pathwise non-transfer of a burden and bounded strict correction.
`path_pointwise` and `path_budget` retain both conclusions separately. The rank
bound is in discrete mathematical units, not elapsed time or human worth.
Boundary: a total of four can drop to three while one coordinate rises from two
to three. A weighted or repeated coordinate list would not change the need for
separate pointwise hypotheses.

Novelty not assessed. Independent review, compilation, fresh kernel checking,
and transitive axiom audit: NOT_RUN. Target: leanprover/lean4:v4.34.1.
-/

namespace GRWTSK.Order.Comparison

universe u

variable {Index : Type u}

abbrev Profile (Index : Type u) := Index → Nat

/-- The second profile is no larger at any coordinate. -/
def NoIncrease (before after : Profile Index) : Prop := ∀ i, after i ≤ before i

/-- Strict progress is explicitly required at one coordinate. -/
def Strict (before after : Profile Index) : Prop :=
  NoIncrease before after ∧ ∃ i, after i < before i

/-- A finite sum; the input list explicitly determines multiplicities. -/
def total (indices : List Index) (profile : Profile Index) : Nat :=
  match indices with
  | [] => 0
  | i :: rest => profile i + total rest profile

/-- Strict change must occur at a coordinate visible to this finite rank. -/
def StrictOn (indices : List Index) (before after : Profile Index) : Prop :=
  NoIncrease before after ∧ ∃ i, i ∈ indices ∧ after i < before i

theorem noIncrease_refl (p : Profile Index) : NoIncrease p p :=
  fun i => Nat.le_refl (p i)

theorem noIncrease_trans {p q r : Profile Index}
    (hpq : NoIncrease p q) (hqr : NoIncrease q r) : NoIncrease p r := by
  intro i
  exact Nat.le_trans (hqr i) (hpq i)

theorem noIncrease_antisymm {p q : Profile Index}
    (hpq : NoIncrease p q) (hqp : NoIncrease q p) : p = q := by
  funext i
  exact Nat.le_antisymm (hqp i) (hpq i)

theorem strict_irrefl (p : Profile Index) : ¬ Strict p p := by
  intro h
  obtain ⟨i, hi⟩ := h.2
  omega

theorem strict_trans {p q r : Profile Index} (hpq : Strict p q) (hqr : Strict q r) :
    Strict p r := by
  refine ⟨noIncrease_trans hpq.1 hqr.1, ?_⟩
  obtain ⟨i, hi⟩ := hpq.2
  have hlast := hqr.1 i
  refine ⟨i, ?_⟩
  omega

theorem strict_asymm {p q : Profile Index} (h : Strict p q) : ¬ Strict q p := by
  intro reverse
  exact strict_irrefl p (strict_trans h reverse)

/-- Aggregation preserves an already established pointwise comparison. -/
theorem total_mono (indices : List Index) {before after : Profile Index}
    (h : NoIncrease before after) : total indices after ≤ total indices before := by
  induction indices with
  | nil => exact Nat.le_refl 0
  | cons i rest ih =>
    have hhead := h i
    change after i + total rest after ≤ before i + total rest before
    omega

theorem total_strict (indices : List Index) {before after : Profile Index}
    (h : NoIncrease before after) :
    (∃ i, i ∈ indices ∧ after i < before i) →
      total indices after < total indices before := by
  induction indices with
  | nil =>
    intro witness
    obtain ⟨i, hi, _⟩ := witness
    simp at hi
  | cons head rest ih =>
    intro witness
    obtain ⟨i, hi, strictHere⟩ := witness
    simp only [List.mem_cons] at hi
    cases hi with
    | inl equalHead =>
      subst i
      have restBound := total_mono rest h
      change after head + total rest after < before head + total rest before
      omega
    | inr inTail =>
      have strictTail := ih ⟨i, inTail, strictHere⟩
      have headBound := h head
      change after head + total rest after < before head + total rest before
      omega

/-- All finite aggregate tests are sufficient; one chosen total is not. -/
theorem noIncrease_iff_all_finite_totals (before after : Profile Index) :
    NoIncrease before after ↔
      ∀ indices : List Index, total indices after ≤ total indices before := by
  constructor
  · intro h indices
    exact total_mono indices h
  · intro h i
    simpa [total] using h [i]

/-- Composing non-increasing transformations cannot transfer an increase downstream. -/
theorem transformations_compose (f g : Profile Index → Profile Index)
    (hf : ∀ p, NoIncrease p (f p)) (hg : ∀ p, NoIncrease p (g p)) :
    ∀ p, NoIncrease p (g (f p)) := by
  intro p
  exact noIncrease_trans (hf p) (hg (f p))

def leftUnit : Profile Bool := fun b => if b then 0 else 1

def rightUnit : Profile Bool := fun b => if b then 1 else 0

/-- A single scalar cannot faithfully encode this partial order as a total order. -/
theorem no_order_reflecting_scalar :
    ¬ ∃ score : Profile Bool → Nat,
      ∀ p q, score q ≤ score p ↔ NoIncrease p q := by
  intro h
  obtain ⟨score, faithful⟩ := h
  by_cases hle : score leftUnit ≤ score rightUnit
  · have pointwise := (faithful rightUnit leftUnit).mp hle
    have bad := pointwise false
    change 1 ≤ 0 at bad
    omega
  · have reverse : score rightUnit ≤ score leftUnit := by omega
    have pointwise := (faithful leftUnit rightUnit).mp reverse
    have bad := pointwise true
    change 1 ≤ 0 at bad
    omega

/-- A falling total can hide a worsening component. -/
theorem aggregate_reduction_can_transfer_burden :
    let before : Profile Bool := fun _ => 2
    let after : Profile Bool := fun b => if b then 3 else 0
    total [false, true] after < total [false, true] before ∧
      ¬ NoIncrease before after := by
  constructor
  · decide
  · intro h
    have bad := h true
    change 3 ≤ 2 at bad
    omega

/-- Pointwise protection remains true at the end of every improvement path. -/
theorem path_pointwise (indices : List Index) {n : Nat}
    {before after : Profile Index}
    (path : Ranking.Path (StrictOn indices) n before after) :
    NoIncrease before after := by
  apply path.preserves (fun p => NoIncrease before p)
  · intro p q hp edge
    exact noIncrease_trans hp edge.1
  · exact noIncrease_refl before

/-- The finite rank gives a bound only after the separate comparison is proved. -/
theorem path_budget (indices : List Index) {n : Nat}
    {before after : Profile Index}
    (path : Ranking.Path (StrictOn indices) n before after) :
    n + total indices after ≤ total indices before := by
  apply Ranking.path_rank_bound (StrictOn indices) (total indices) _ path
  intro p q edge
  exact total_strict indices edge.1 edge.2

/-- There cannot be infinitely many visible unit improvements within a finite budget. -/
theorem no_infinite_strict_improvement (indices : List Index)
    (trace : Nat → Profile Index) :
    ¬ (∀ n, StrictOn indices (trace n) (trace (n + 1))) := by
  apply Ranking.no_infinite_trace (StrictOn indices) (total indices) _ trace
  intro p q edge
  exact total_strict indices edge.1 edge.2

/-- Available strict improvements yield a terminal state and retain pointwise safety. -/
theorem terminal_with_pointwise_return (indices : List Index)
    (terminal : Profile Index → Prop)
    (progress : ∀ p, ¬ terminal p → ∃ q, StrictOn indices p q)
    (initial : Profile Index) :
    ∃ n final, Ranking.Path (StrictOn indices) n initial final ∧
      terminal final ∧ NoIncrease initial final ∧ n ≤ total indices initial := by
  have drops : ∀ p q, StrictOn indices p q → total indices q < total indices p := by
    intro p q edge
    exact total_strict indices edge.1 edge.2
  obtain ⟨n, final, path, doneThere, bound⟩ :=
    Ranking.reaches_terminal (StrictOn indices) (total indices) terminal progress drops initial
  exact ⟨n, final, path, doneThere, path_pointwise indices path, bound⟩

end GRWTSK.Order.Comparison

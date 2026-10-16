/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Lean/Mathlib List and Option authors Leonardo de Moura, Jeremy Avigad, Mario Carneiro,
Parikshit Khanna and Floris van Doorn retain their individual Apache-2.0 credits.
The imported actual state, compaction and schedule codecs retain their source credits. -/
import GRWTSK.Combinatorics.DirectedGraph.PrefixTableSchedule

/-!
# Transport of actual old references through finite prefix-table schedules

The partial map is the actual compactor's numeric remap at a compact action and
identity at an append-only batch action. A chronological fold runs these maps
beside the existing actual state producers. Membership in the original real
references derives successful transport, final real-reference membership and
exact old full-history lookup. No totality on unused dictionary slots, revival
of a dropped slot by a later equal payload, or runtime refinement is asserted.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedGraph.PrefixTableReferenceTransport

open Quiver PathUnfolding OccurrencePrefix PrefixInventory ParentTraceDictionary PrefixTableState
open PrefixTableCompaction PrefixTableBatch PrefixTableCheckpoint PrefixTableSchedule

variable {V Key : Type*} [Quiver V] [DecidableEq (EdgeTrace.TotalEdge V)]

/-- The actual old slot is unchanged by append-only update, and partially remapped by compaction. -/
noncomputable def actionSlot (root : V) (state : ValidRootedState root Key)
    (action : Action root Key) (slot : Nat) : Option Nat :=
  match action with
  | .inl _ => some slot
  | .inr _ => remap state.1.1 state.2 slot

/-- Existing actual state execution, paired only with a possibly lost numeric old slot. -/
noncomputable def trackedStep (root : V)
    (tracked : ValidRootedState root Key × Option Nat) (action : Action root Key) :
    ValidRootedState root Key × Option Nat :=
  (applyAction root tracked.1 action, tracked.2.bind (actionSlot root tracked.1 action))

noncomputable def transportSlotAt (root : V) (state : ValidRootedState root Key)
    (actions : List (Action root Key)) (slot : Nat) : Option Nat :=
  (actions.foldl (trackedStep root) (state, some slot)).2

/-- Forgetting the tracked slot gives exactly the existing actual schedule execution. -/
theorem tracked_state (root : V) (state : ValidRootedState root Key) (slot : Option Nat)
    (actions : List (Action root Key)) :
    (actions.foldl (trackedStep root) (state, slot)).1 = executeAt root state actions := by
  induction actions generalizing state slot with
  | nil => rfl
  | cons action rest ih => exact ih (applyAction root state action) _

/-- Losing an old identity is absorbing, even if a later batch reintroduces equal bytes. -/
theorem tracked_none (root : V) (state : ValidRootedState root Key)
    (actions : List (Action root Key)) :
    (actions.foldl (trackedStep root) (state, none)).2 = none := by
  induction actions generalizing state with
  | nil => rfl
  | cons action rest ih => exact ih (applyAction root state action)

theorem transportSlotAt_nil (root : V) (state : ValidRootedState root Key) (slot : Nat) :
    transportSlotAt root state [] slot = some slot := rfl

/-- Actual state-dependent Kleisli composition, rather than final payload lookup. -/
theorem transportSlotAt_cons (root : V) (state : ValidRootedState root Key)
    (action : Action root Key) (rest : List (Action root Key)) (slot : Nat) :
    transportSlotAt root state (action :: rest) slot =
      (actionSlot root state action slot).bind
        (transportSlotAt root (applyAction root state action) rest) := by
  cases hstep : actionSlot root state action slot with
  | none =>
    change (rest.foldl (trackedStep root)
      (applyAction root state action, actionSlot root state action slot)).2 = _
    rw [hstep]
    exact tracked_none root (applyAction root state action) rest
  | some next =>
    change (rest.foldl (trackedStep root)
      (applyAction root state action, actionSlot root state action slot)).2 = _
    rw [hstep]
    rfl

/-- One actual compact action retains each actual old real reference and its full payload. -/
theorem compact_reference (state : State V Key) (hstate : WellFormed state)
    (reference : Key × Nat) (hreference : reference ∈ state.references) :
    ∃ target, remap state hstate reference.2 = some target ∧
      (reference.1, target) ∈ (compact state hstate).references ∧
      (compact state hstate).dictionary[target]? = state.dictionary[reference.2]? := by
  have select {references : List (Key × Nat)}
      {entries : List (Key × List (EdgeTrace.TotalEdge V))}
      (hpairs : List.Forall₂ (fun reference entry => reference.1 = entry.1 ∧
        state.dictionary[reference.2]? = some entry.2) references entries) :
      ∀ reference ∈ references, ∃ entry ∈ entries,
        reference.1 = entry.1 ∧ state.dictionary[reference.2]? = some entry.2 := by
    induction hpairs with
    | nil => simp
    | @cons head entry references entries hpair hpairs ih =>
      intro candidate hmem
      rcases List.mem_cons.mp hmem with rfl | htail
      · exact ⟨entry, List.mem_cons_self .., hpair⟩
      · obtain ⟨found, hfound, hpair⟩ := ih candidate htail
        exact ⟨found, List.mem_cons_of_mem _ hfound, hpair⟩
  obtain ⟨entry, hentry, hkey, hlookup⟩ :=
    select (references_decoded state hstate) reference hreference
  have hremap := remap_retained state hstate reference.2 entry.2 hlookup
    (realEntries_mem_compact_dictionary state hstate entry hentry)
  refine ⟨position (realRows state hstate) entry.2, hremap, ?_,
    remap_lookup state hstate _ _ hremap⟩
  rw [compact_references]
  change (reference.1, position (realRows state hstate) entry.2) ∈
    (traceRows (realRows state hstate)).map
      (fun entry => (entry.1, position (realRows state hstate) entry.2))
  rw [traceRows_realRows]
  exact List.mem_map.mpr ⟨entry, hentry, by rw [hkey]⟩

/-- Structural validity and real-reference membership derive the one-action transport facts. -/
theorem action_reference (root : V) (state : ValidRootedState root Key)
    (action : Action root Key) (reference : Key × Nat)
    (hreference : reference ∈ state.1.1.references) :
    ∃ target, actionSlot root state action reference.2 = some target ∧
      (reference.1, target) ∈ (applyAction root state action).1.1.references ∧
      (applyAction root state action).1.1.dictionary[target]? =
        state.1.1.dictionary[reference.2]? := by
  cases action with
  | inl rows =>
    have hprefix := step_prefixes root state.1 rows
    refine ⟨reference.2, rfl, hprefix.2.2.subset hreference, ?_⟩
    obtain ⟨suffix, hsuffix⟩ := hprefix.1
    change (step root state.1 rows).1.dictionary[reference.2]? = _
    rw [← hsuffix]
    exact List.getElem?_append_left (state.2.references reference hreference)
  | inr marker => exact compact_reference state.1.1 state.2 reference hreference

/-- Totality only on actual original real-reference support, with the actual final slot and payload. -/
theorem transport_reference (root : V) (state : ValidRootedState root Key)
    (actions : List (Action root Key)) (reference : Key × Nat)
    (hreference : reference ∈ state.1.1.references) :
    ∃ target, transportSlotAt root state actions reference.2 = some target ∧
      (reference.1, target) ∈ (executeAt root state actions).1.1.references ∧
      (executeAt root state actions).1.1.dictionary[target]? =
        state.1.1.dictionary[reference.2]? := by
  induction actions generalizing state reference with
  | nil => exact ⟨reference.2, rfl, hreference, rfl⟩
  | cons action rest ih =>
    obtain ⟨middle, hmiddle, hmem, hlookup⟩ :=
      action_reference root state action reference hreference
    obtain ⟨target, htarget, hfinal, hpayload⟩ :=
      ih (applyAction root state action) (reference.1, middle) hmem
    refine ⟨target, ?_, hfinal, hpayload.trans hlookup⟩
    rw [transportSlotAt_cons, hmiddle]
    exact htarget

/-- Keys and every repeated original reference are transported through an actual ordered mapM. -/
noncomputable def transportReferences (root : V) (state : ValidRootedState root Key)
    (actions : List (Action root Key)) : Option (List (Key × Nat)) :=
  state.1.1.references.mapM (fun reference =>
    (transportSlotAt root state actions reference.2).map (fun target => (reference.1, target)))

/-- The actual producer succeeds and preserves each original row, including its order/multiplicity. -/
theorem transportReferences_success (root : V) (state : ValidRootedState root Key)
    (actions : List (Action root Key)) :
    ∃ references, transportReferences root state actions = some references ∧
      references.length = state.1.1.references.length ∧
      List.Forall₂ (fun old new => old.1 = new.1 ∧
        new ∈ (executeAt root state actions).1.1.references ∧
        (executeAt root state actions).1.1.dictionary[new.2]? =
          state.1.1.dictionary[old.2]?) state.1.1.references references := by
  have main (references : List (Key × Nat)) :
      (∀ reference ∈ references, reference ∈ state.1.1.references) →
      ∃ mapped,
        references.mapM (fun reference =>
          (transportSlotAt root state actions reference.2).map
            (fun target => (reference.1, target))) = some mapped ∧
        mapped.length = references.length ∧
        List.Forall₂ (fun old new => old.1 = new.1 ∧
          new ∈ (executeAt root state actions).1.1.references ∧
          (executeAt root state actions).1.1.dictionary[new.2]? =
            state.1.1.dictionary[old.2]?) references mapped := by
    induction references with
    | nil => exact fun _ => ⟨[], rfl, rfl, List.Forall₂.nil⟩
    | cons reference references ih =>
      intro hmem
      obtain ⟨target, htarget, hfinal, hlookup⟩ := transport_reference root state actions
        reference (hmem reference (List.mem_cons_self ..))
      obtain ⟨mapped, hmapped, hlength, hpairs⟩ :=
        ih (fun reference hreference => hmem reference (List.mem_cons_of_mem _ hreference))
      refine ⟨(reference.1, target) :: mapped, ?_, by simp [hlength],
        List.Forall₂.cons ⟨rfl, hfinal, hlookup⟩ hpairs⟩
      simp only [List.mapM_cons, htarget, Option.map_some, Option.bind_eq_bind, Option.bind,
        hmapped]
      rfl
  exact main state.1.1.references (fun _ hmem => hmem)

end GRWTSK.Combinatorics.DirectedGraph.PrefixTableReferenceTransport

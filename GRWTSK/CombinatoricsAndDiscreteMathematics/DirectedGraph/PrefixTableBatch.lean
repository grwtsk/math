/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Lean List.foldl and Mathlib List authors Leonardo de Moura, Jeremy Avigad,
Mario Carneiro, Parikshit Khanna, Floris van Doorn retain their original credits
and Apache-2.0 terms. Existing local stored-state/path codecs retain their credits. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixTableUpdateReindex

/-!
# Finite chronological rooted prefix-table batches

The runner is the existing List.foldl of the actual State.update. A fixed-root
subtype of the existing State makes transports of rooted occurrence inputs
explicit; it is not another state or path datatype. Root retention is structural.
Initial WellFormed derives final WellFormed and actual checked decoding of old
rows followed by chronological flatMap traceRows. Old dictionary, node and real
reference arrays remain literal prefixes. Injective table reindexing commutes
with the actual runner fields without a WellFormed premise.

No grouped raw representation equality, automatic new-row criterion, or external
serialization/runtime refinement is supplied.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixTableBatch

open Quiver PathUnfolding OccurrencePrefix PrefixInventory PrefixTableState
open RoleRelationTable RoleRelationReindex PrefixTableReindex PrefixTableUpdateReindex

variable {V Key : Type*} [Quiver V]

/-- A fiber of the existing State at the retained root, with no extra state fields. -/
abbrev RootedState (root : V) (Key : Type*) := {state : State V Key // state.root = root}

variable [DecidableEq (EdgeTrace.TotalEdge V)]

/-- Invoke the actual updater on occurrences transported along the retained-root equality. -/
noncomputable def step (root : V) (state : RootedState root Key)
    (rows : List (Key × Occurrence root)) : RootedState root Key :=
  ⟨update state.1 (state.2.symm ▸ rows), state.2⟩

/-- The actual existing chronological left fold; no desired decoding law is a field. -/
noncomputable def runAt (root : V) (state : RootedState root Key)
    (batches : List (List (Key × Occurrence root))) : RootedState root Key :=
  batches.foldl (step root) state

noncomputable def run (state : State V Key)
    (batches : List (List (Key × Occurrence state.root))) : State V Key :=
  (runAt state.root ⟨state, rfl⟩ batches).1

theorem run_root (state : State V Key)
    (batches : List (List (Key × Occurrence state.root))) : (run state batches).root = state.root :=
  (runAt state.root ⟨state, rfl⟩ batches).2

theorem run_nil (state : State V Key) : run state [] = state := rfl

theorem run_cons (state : State V Key) (first : List (Key × Occurrence state.root))
    (rest : List (List (Key × Occurrence state.root))) :
    run state (first :: rest) = run (update state first) rest := rfl

theorem step_wellFormed (root : V) (state : RootedState root Key)
    (hstate : WellFormed state.1) (rows : List (Key × Occurrence root)) :
    WellFormed (step root state rows).1 := by
  rcases state with ⟨state, hroot⟩
  cases hroot
  exact update_wellFormed state hstate rows

theorem runAt_wellFormed (root : V) (state : RootedState root Key)
    (hstate : WellFormed state.1) (batches : List (List (Key × Occurrence root))) :
    WellFormed (runAt root state batches).1 := by
  induction batches generalizing state with
  | nil => exact hstate
  | cons first rest ih =>
    exact ih (step root state first) (step_wellFormed root state hstate first)

theorem run_wellFormed (state : State V Key) (hstate : WellFormed state)
    (batches : List (List (Key × Occurrence state.root))) : WellFormed (run state batches) :=
  runAt_wellFormed state.root ⟨state, rfl⟩ hstate batches

theorem decode_step (root : V) (state : RootedState root Key)
    (hstate : WellFormed state.1) (rows : List (Key × Occurrence root)) :
    PrefixTableState.decode (step root state rows).1 =
      (PrefixTableState.decode state.1).map (fun oldRows => oldRows ++ traceRows rows) := by
  rcases state with ⟨state, hroot⟩
  cases hroot
  exact decode_update state hstate rows

/-- Initial structural validity supplies the actual old-plus-chronological-batches decoder law. -/
theorem decode_runAt (root : V) (state : RootedState root Key)
    (hstate : WellFormed state.1) (batches : List (List (Key × Occurrence root))) :
    PrefixTableState.decode (runAt root state batches).1 =
      (PrefixTableState.decode state.1).map
        (fun oldRows => oldRows ++ batches.flatMap traceRows) := by
  induction batches generalizing state with
  | nil =>
    simp only [runAt, List.foldl_nil, List.flatMap_nil, List.append_nil]
    cases PrefixTableState.decode state.1 <;> rfl
  | cons first rest ih =>
    change PrefixTableState.decode (runAt root (step root state first) rest).1 = _
    rw [ih (step root state first) (step_wellFormed root state hstate first),
      decode_step root state hstate first]
    simp only [Option.map_map, Function.comp_def, List.flatMap_cons, List.append_assoc]

theorem decode_run (state : State V Key) (hstate : WellFormed state)
    (batches : List (List (Key × Occurrence state.root))) :
    PrefixTableState.decode (run state batches) =
      (PrefixTableState.decode state).map (fun oldRows => oldRows ++ batches.flatMap traceRows) :=
  decode_runAt state.root ⟨state, rfl⟩ hstate batches

theorem step_prefixes (root : V) (state : RootedState root Key)
    (rows : List (Key × Occurrence root)) :
    state.1.dictionary <+: (step root state rows).1.dictionary ∧
      state.1.nodes <+: (step root state rows).1.nodes ∧
      state.1.references <+: (step root state rows).1.references := by
  rcases state with ⟨state, hroot⟩
  cases hroot
  exact prefixes_retained state rows

/-- Literal old array values, including numeric node/ref fields, survive every finite step. -/
theorem runAt_prefixes (root : V) (state : RootedState root Key)
    (batches : List (List (Key × Occurrence root))) :
    state.1.dictionary <+: (runAt root state batches).1.dictionary ∧
      state.1.nodes <+: (runAt root state batches).1.nodes ∧
      state.1.references <+: (runAt root state batches).1.references := by
  induction batches generalizing state with
  | nil => exact ⟨List.prefix_rfl, List.prefix_rfl, List.prefix_rfl⟩
  | cons first rest ih =>
    have hstep := step_prefixes root state first
    have hrest := ih (step root state first)
    exact ⟨hstep.1.trans hrest.1, hstep.2.1.trans hrest.2.1, hstep.2.2.trans hrest.2.2⟩

theorem run_prefixes (state : State V Key)
    (batches : List (List (Key × Occurrence state.root))) :
    state.dictionary <+: (run state batches).dictionary ∧
      state.nodes <+: (run state batches).nodes ∧
      state.references <+: (run state batches).references :=
  runAt_prefixes state.root ⟨state, rfl⟩ batches

theorem node_lookup_retained (state : State V Key)
    (batches : List (List (Key × Occurrence state.root))) (slot : Nat)
    (hbound : slot < state.nodes.length) :
    (run state batches).nodes[slot]? = state.nodes[slot]? := by
  obtain ⟨suffix, hsuffix⟩ := (run_prefixes state batches).2.1
  rw [← hsuffix]
  exact List.getElem?_append_left hbound

section Reindex

omit [Quiver V] [DecidableEq (EdgeTrace.TotalEdge V)]

variable {Role : Type*} {n m : Nat}
variable {old : Table V Role n} {new : Table V Role m}
variable (translation : Reindex old new) (role : Role)
variable [DecidableEq (EdgeTrace.TotalEdge (Vertex old role))]
variable [DecidableEq (EdgeTrace.TotalEdge (Vertex new role))]

/-- Map the actual stored State and its proved fixed-root equality. -/
def transportRooted (root : Vertex old role) (state : RootedState root Key) :
    RootedState (mapVertex translation role root) Key :=
  ⟨transport translation role state.1, congrArg (mapVertex translation role) state.2⟩

theorem step_transport (hinjective : Function.Injective translation.index)
    (root : Vertex old role) (state : RootedState root Key)
    (rows : List (Key × Occurrence root)) :
    transportRooted translation role root (step root state rows) =
      step (mapVertex translation role root) (transportRooted translation role root state)
        (mapOccurrenceRows translation role root rows) := by
  rcases state with ⟨state, hroot⟩
  cases hroot
  apply Subtype.ext
  exact update_transport translation role hinjective state rows

/-- Exact stored fields commute by the actual List.foldl homomorphism API. -/
theorem runAt_transport (hinjective : Function.Injective translation.index)
    (root : Vertex old role) (state : RootedState root Key)
    (batches : List (List (Key × Occurrence root))) :
    transportRooted translation role root (runAt root state batches) =
      runAt (mapVertex translation role root) (transportRooted translation role root state)
        (batches.map (mapOccurrenceRows translation role root)) := by
  unfold runAt
  rw [List.foldl_map]
  exact (List.foldl_hom (transportRooted translation role root)
    (fun current rows => (step_transport translation role hinjective root current rows).symm)).symm

theorem run_transport (hinjective : Function.Injective translation.index)
    (state : State (Vertex old role) Key)
    (batches : List (List (Key × Occurrence state.root))) :
    transport translation role (run state batches) =
      run (transport translation role state)
        (batches.map (mapOccurrenceRows translation role state.root)) :=
  congrArg Subtype.val (runAt_transport translation role hinjective state.root ⟨state, rfl⟩ batches)

theorem decode_run_transport (hinjective : Function.Injective translation.index)
    (state : State (Vertex old role) Key) (hstate : WellFormed state)
    (batches : List (List (Key × Occurrence state.root))) :
    PrefixTableState.decode (run (transport translation role state)
        (batches.map (mapOccurrenceRows translation role state.root))) =
      (PrefixTableState.decode (run state batches)).map (mapRows translation role) := by
  rw [← run_transport translation role hinjective]
  exact decode_transport translation role hinjective _ (run_wellFormed state hstate batches)

end Reindex

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixTableBatch

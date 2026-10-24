# Complete source: GRWTSK.Combinatorics.DirectedGraph.PrefixTableUpdateReindex

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8f334e1f5cb3a723a9e1292e174c9aa35b77211` · SHA-256 `f4bade597e8ebe500fff0e0219864079f982a2374f1ee9881397a4203fa54b13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib Quiver David Wärn/Kim Morrison and List Parikshit Khanna/Jeremy Avigad/
Leonardo de Moura/Floris van Doorn/Mario Carneiro retain Apache-2.0 credit.
Existing local path, trace, dictionary and stored-state proofs retain their credits. -/
import GRWTSK.Combinatorics.DirectedGraph.PrefixTableReindex

/-!
# Actual stored prefix-table updates commute with injective relation reindexing

Actual occurrence histories are mapped through the table prefunctor. The exact
rightmost-deduplicated inventory, missing prefixes, final-edge cells and new real
references are proved to commute. The resulting equality concerns all actual
State fields, without recanonicalizing old stored arrays. Rooted semantic one-
and two-step consumers additionally use the existing structural invariant.

Relation IDs and parent slots remain different indices. No criterion inheritance,
raw compaction equality, generic finite fold or external runtime codec is supplied.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedGraph.PrefixTableUpdateReindex

open Quiver RoleRelationTable RoleRelationReindex PrefixTableReindex
open PathUnfolding OccurrencePrefix PrefixInventory PrefixTableState
open GRWTSK.Logic.FiniteSequences IndexedDictionary

variable {V Role Key : Type*} {n m : Nat}
variable {old : Table V Role n} {new : Table V Role m}
variable (translation : Reindex old new) (role : Role)

def mapOccurrence (root : Vertex old role) (node : Occurrence root) :
    Occurrence (mapVertex translation role root) :=
  ⟨mapStar translation role root node.history⟩

def mapOccurrenceRows (root : Vertex old role) (rows : List (Key × Occurrence root)) :
    List (Key × Occurrence (mapVertex translation role root)) :=
  rows.map (fun row => (row.1, mapOccurrence translation role root row.2))

theorem encodePath_map {source target : Vertex old role} (path : Path source target) :
    EdgeTrace.encodePath ((prefunctor translation role).mapPath path) =
      mapTrace translation role (EdgeTrace.encodePath path) := by
  induction path with
  | nil => rfl
  | cons path edge ih =>
    change EdgeTrace.encodePath
      (((prefunctor translation role).mapPath path).cons
        ((prefunctor translation role).map edge)) = _
    rw [EdgeTrace.encodePath_cons, EdgeTrace.encodePath_cons, ih]
    simp only [mapTrace, List.map_append, List.map_cons, List.map_nil]
    rfl

theorem trace_mapOccurrence (root : Vertex old role) (node : Occurrence root) :
    trace (mapOccurrence translation role root node) = mapTrace translation role (trace node) :=
  encodePath_map translation role node.path

theorem traceRows_map (root : Vertex old role) (rows : List (Key × Occurrence root)) :
    traceRows (mapOccurrenceRows translation role root rows) =
      mapRows translation role (traceRows rows) := by
  simp only [traceRows, mapOccurrenceRows, mapRows, List.map_map, Function.comp_def,
    trace_mapOccurrence]

variable [DecidableEq (EdgeTrace.TotalEdge (Vertex old role))]
variable [DecidableEq (EdgeTrace.TotalEdge (Vertex new role))]

theorem inventory_map (hinjective : Function.Injective translation.index)
    (root : Vertex old role) (rows : List (Key × Occurrence root)) :
    inventory (mapOccurrenceRows translation role root rows) =
      (inventory rows).map (mapTrace translation role) := by
  have hraw : (mapOccurrenceRows translation role root rows).flatMap
      (fun row => (trace row.2).inits) =
      (rows.flatMap (fun row => (trace row.2).inits)).map (mapTrace translation role) := by
    simp only [mapOccurrenceRows, List.flatMap_map,
      trace_mapOccurrence, mapTrace, List.map_inits, List.map_flatMap]
    rfl
  unfold inventory
  rw [hraw, List.dedup_map_of_injective (mapTrace_injective translation role hinjective)]

theorem prefixEntries_map (hinjective : Function.Injective translation.index)
    (root : Vertex old role) (rows : List (Key × Occurrence root)) :
    IncrementalPrefixTable.prefixEntries (mapOccurrenceRows translation role root rows) =
      mapRows translation role (IncrementalPrefixTable.prefixEntries rows) := by
  simp only [IncrementalPrefixTable.prefixEntries, inventory_map translation role hinjective,
    mapRows, List.map_map, Function.comp_def]

/-- Derive filtering and rightmost deduplication in the actual missing-prefix producer. -/
theorem missingPayloads_map (hinjective : Function.Injective translation.index)
    (dictionary : List (List (EdgeTrace.TotalEdge (Vertex old role))))
    (entries : List (Key × List (EdgeTrace.TotalEdge (Vertex old role)))) :
    IncrementalDictionary.missingPayloads (dictionary.map (mapTrace translation role))
        (mapRows translation role entries) =
      (IncrementalDictionary.missingPayloads dictionary entries).map
        (mapTrace translation role) := by
  let : BEq (List (EdgeTrace.TotalEdge (Vertex old role))) := instBEqOfDecidableEq
  let : BEq (List (EdgeTrace.TotalEdge (Vertex new role))) := instBEqOfDecidableEq
  have hpredicate : (fun initial => decide (mapTrace translation role initial ∉
        dictionary.map (mapTrace translation role))) =
      (fun initial => decide (initial ∉ dictionary)) := by
    funext initial
    simp only [List.mem_map_of_injective (mapTrace_injective translation role hinjective)]
  have hentries : (mapRows translation role entries).map Prod.snd =
      (entries.map Prod.snd).map (mapTrace translation role) := by
    simp only [mapRows, List.map_map, Function.comp_def]
  unfold IncrementalDictionary.missingPayloads
  rw [hentries, List.filter_map]
  change (((entries.map Prod.snd).filter
      (fun initial => decide (mapTrace translation role initial ∉
        dictionary.map (mapTrace translation role)))).map (mapTrace translation role)).dedup = _
  rw [hpredicate, List.dedup_map_of_injective (mapTrace_injective translation role hinjective)]

theorem expandedDictionary_map (hinjective : Function.Injective translation.index)
    (dictionary : List (List (EdgeTrace.TotalEdge (Vertex old role))))
    (entries : List (Key × List (EdgeTrace.TotalEdge (Vertex old role)))) :
    IncrementalDictionary.expandedDictionary (dictionary.map (mapTrace translation role))
        (mapRows translation role entries) =
      (IncrementalDictionary.expandedDictionary dictionary entries).map
        (mapTrace translation role) := by
  unfold IncrementalDictionary.expandedDictionary
  rw [missingPayloads_map translation role hinjective, List.map_append]

theorem extendedDictionary_map (hinjective : Function.Injective translation.index)
    (state : State (Vertex old role) Key) (rows : List (Key × Occurrence state.root)) :
    extendedDictionary (transport translation role state)
        (mapOccurrenceRows translation role state.root rows) =
      (extendedDictionary state rows).map (mapTrace translation role) := by
  change IncrementalDictionary.expandedDictionary (state.dictionary.map (mapTrace translation role))
    (IncrementalPrefixTable.prefixEntries (mapOccurrenceRows translation role state.root rows)) = _
  rw [prefixEntries_map translation role hinjective,
    expandedDictionary_map translation role hinjective]
  rfl

theorem extendedNodes_map (hinjective : Function.Injective translation.index)
    (state : State (Vertex old role) Key) (rows : List (Key × Occurrence state.root)) :
    extendedNodes (transport translation role state)
        (mapOccurrenceRows translation role state.root rows) =
      (extendedNodes state rows).map (mapNode translation role) := by
  change state.nodes.map (mapNode translation role) ++
    (IncrementalDictionary.missingPayloads (state.dictionary.map (mapTrace translation role))
      (IncrementalPrefixTable.prefixEntries
        (mapOccurrenceRows translation role state.root rows))).map
      (IncrementalPrefixTable.cell (extendedDictionary (transport translation role state)
        (mapOccurrenceRows translation role state.root rows))) =
    (state.nodes ++ (IncrementalDictionary.missingPayloads state.dictionary
      (IncrementalPrefixTable.prefixEntries rows)).map
      (IncrementalPrefixTable.cell (extendedDictionary state rows))).map (mapNode translation role)
  rw [prefixEntries_map translation role hinjective,
    missingPayloads_map translation role hinjective,
    extendedDictionary_map translation role hinjective, List.map_append, List.map_map, List.map_map]
  apply congrArg (fun suffix => state.nodes.map (mapNode translation role) ++ suffix)
  apply List.map_congr_left
  intro initial _
  exact (map_cell translation role hinjective (extendedDictionary state rows) initial).symm

/-- New real references use actual equal search results; auxiliary prefix rows add no real refs. -/
theorem appendReferences_map (hinjective : Function.Injective translation.index)
    (dictionary : List (List (EdgeTrace.TotalEdge (Vertex old role))))
    (references : List (Key × Nat))
    (entries : List (Key × List (EdgeTrace.TotalEdge (Vertex old role)))) :
    (IncrementalDictionary.appendEntries
        (⟨dictionary.map (mapTrace translation role), references⟩ : Packed Key _)
        (mapRows translation role entries)).references =
      (IncrementalDictionary.appendEntries (⟨dictionary, references⟩ : Packed Key _)
        entries).references := by
  let : BEq (List (EdgeTrace.TotalEdge (Vertex old role))) := instBEqOfDecidableEq
  let : BEq (List (EdgeTrace.TotalEdge (Vertex new role))) := instBEqOfDecidableEq
  change references ++ (mapRows translation role entries).map (fun entry => (entry.1,
      (IncrementalDictionary.expandedDictionary (dictionary.map (mapTrace translation role))
        (mapRows translation role entries)).idxOf entry.2)) = _
  rw [expandedDictionary_map translation role hinjective]
  simp only [IncrementalDictionary.appendEntries, mapRows, List.map_map, Function.comp_def]
  apply congrArg (fun suffix => references ++ suffix)
  apply List.map_congr_left
  intro entry _
  rw [mapTrace_idxOf translation role hinjective]

theorem realReferences_map (hinjective : Function.Injective translation.index)
    (state : State (Vertex old role) Key) (rows : List (Key × Occurrence state.root)) :
    (realPacked (transport translation role state)
        (mapOccurrenceRows translation role state.root rows)).references =
      (realPacked state rows).references := by
  change (IncrementalDictionary.appendEntries
    (⟨extendedDictionary (transport translation role state)
      (mapOccurrenceRows translation role state.root rows), state.references⟩ : Packed Key _)
    (traceRows (mapOccurrenceRows translation role state.root rows))).references = _
  rw [extendedDictionary_map translation role hinjective, traceRows_map]
  exact appendReferences_map translation role hinjective (extendedDictionary state rows)
    state.references (traceRows rows)

/-- Exact all-field State equality for actual updates, with no structural invariant assumed. -/
theorem update_transport (hinjective : Function.Injective translation.index)
    (state : State (Vertex old role) Key) (rows : List (Key × Occurrence state.root)) :
    transport translation role (update state rows) =
      update (transport translation role state)
        (mapOccurrenceRows translation role state.root rows) := by
  change (⟨mapVertex translation role state.root,
    (extendedDictionary state rows).map (mapTrace translation role),
    (extendedNodes state rows).map (mapNode translation role),
    (realPacked state rows).references⟩ : State _ Key) = _
  unfold update
  rw [extendedDictionary_map translation role hinjective,
    extendedNodes_map translation role hinjective,
    realReferences_map translation role hinjective]
  rfl

theorem mapped_update_wellFormed (hinjective : Function.Injective translation.index)
    (state : State (Vertex old role) Key) (hstate : WellFormed state)
    (rows : List (Key × Occurrence state.root)) :
    WellFormed (update (transport translation role state)
      (mapOccurrenceRows translation role state.root rows)) := by
  rw [← update_transport translation role hinjective]
  exact transport_wellFormed translation role hinjective _ (update_wellFormed state hstate rows)

theorem decode_update_transport (hinjective : Function.Injective translation.index)
    (state : State (Vertex old role) Key) (hstate : WellFormed state)
    (rows : List (Key × Occurrence state.root)) :
    PrefixTableState.decode (update (transport translation role state)
        (mapOccurrenceRows translation role state.root rows)) =
      (PrefixTableState.decode (update state rows)).map (mapRows translation role) := by
  rw [← update_transport translation role hinjective]
  exact decode_transport translation role hinjective _ (update_wellFormed state hstate rows)

/-- Actual two successive updates retain exact field naturality without grouping the batches. -/
theorem two_updates_transport (hinjective : Function.Injective translation.index)
    (state : State (Vertex old role) Key)
    (first second : List (Key × Occurrence state.root)) :
    transport translation role (update (update state first) second) =
      update (update (transport translation role state)
        (mapOccurrenceRows translation role state.root first))
        (mapOccurrenceRows translation role state.root second) := by
  have hfirst := update_transport translation role hinjective state first
  calc
    _ = update (transport translation role (update state first))
        (mapOccurrenceRows translation role state.root second) :=
      update_transport translation role hinjective (update state first) second
    _ = _ := by
      change (⟨(transport translation role (update state first)).root,
        extendedDictionary (transport translation role (update state first))
          (mapOccurrenceRows translation role state.root second),
        extendedNodes (transport translation role (update state first))
          (mapOccurrenceRows translation role state.root second),
        (realPacked (transport translation role (update state first))
          (mapOccurrenceRows translation role state.root second)).references⟩ : State _ Key) =
        ⟨(update (transport translation role state)
            (mapOccurrenceRows translation role state.root first)).root,
          extendedDictionary (update (transport translation role state)
            (mapOccurrenceRows translation role state.root first))
            (mapOccurrenceRows translation role state.root second),
          extendedNodes (update (transport translation role state)
            (mapOccurrenceRows translation role state.root first))
            (mapOccurrenceRows translation role state.root second),
          (realPacked (update (transport translation role state)
            (mapOccurrenceRows translation role state.root first))
            (mapOccurrenceRows translation role state.root second)).references⟩
      unfold extendedDictionary extendedNodes realPacked basePacked rawPacked
      dsimp only [extendedDictionary]
      rw [congrArg State.dictionary hfirst, congrArg State.nodes hfirst,
        congrArg State.references hfirst]
      rfl

theorem decode_two_updates_transport (hinjective : Function.Injective translation.index)
    (state : State (Vertex old role) Key) (hstate : WellFormed state)
    (first second : List (Key × Occurrence state.root)) :
    PrefixTableState.decode (update (update (transport translation role state)
        (mapOccurrenceRows translation role state.root first))
        (mapOccurrenceRows translation role state.root second)) =
      (PrefixTableState.decode (update (update state first) second)).map
        (mapRows translation role) := by
  rw [← two_updates_transport translation role hinjective]
  exact decode_transport translation role hinjective _
    (update_wellFormed (update state first) (update_wellFormed state hstate first) second)

end GRWTSK.Combinatorics.DirectedGraph.PrefixTableUpdateReindex
```

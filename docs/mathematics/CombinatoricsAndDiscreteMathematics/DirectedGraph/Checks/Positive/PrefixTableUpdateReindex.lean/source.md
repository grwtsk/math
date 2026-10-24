# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableUpdateReindex

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae0a4942fc811e1f3cdb4ac80750ffbb4127ea50` · SHA-256 `0825683f1220e1f3f915a0f6571a439ba451bcc23d4dc16db913e6e90ae79c6f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.PrefixTableUpdateReindex

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph
open RoleRelationTable RoleRelationReindex PrefixTableReindex PrefixTableUpdateReindex
open PathUnfolding OccurrencePrefix PrefixInventory ParentTraceDictionary PrefixTableState
open GRWTSK.Logic.FiniteSequences IndexedDictionary DecisionCertificate

namespace GRWTSK.Combinatorics.DirectedGraph.PrefixTableUpdateReindex.Checks.Positive

def original : Table Bool Bool 4 where
  source index := if index.1 < 2 then false else true
  target index := if index.1 < 2 then true else false
  kind index := index.1 == 3

def swapIndex : Fin 4 ≃ Fin 4 := Equiv.swap 0 2

def updated : Table Bool Bool 4 where
  source index := original.source (swapIndex index)
  target index := original.target (swapIndex index)
  kind index := original.kind (swapIndex index)

def translation : Reindex original updated where
  index := swapIndex
  source index := congrArg original.source (Equiv.swap_apply_self 0 2 index)
  target index := congrArg original.target (Equiv.swap_apply_self 0 2 index)
  kind index := congrArg original.kind (Equiv.swap_apply_self 0 2 index)

theorem translation_bijective : Function.Bijective translation.index := swapIndex.bijective

def vertexA : Vertex original false := ⟨false⟩
def vertexB : Vertex original false := ⟨true⟩
def id0 : RoleId original false := ⟨0, by decide⟩
def id1 : RoleId original false := ⟨1, by decide⟩
def new0 : RoleId updated false := ⟨0, by decide⟩
def new1 : RoleId updated false := ⟨1, by decide⟩
def new2 : RoleId updated false := ⟨2, by decide⟩

def oldTag0 := fullEdge original false id0
def oldTag1 := fullEdge original false id1
def newTag0 := fullEdge updated false new0
def newTag1 := fullEdge updated false new1
def newTag2 := fullEdge updated false new2

noncomputable instance oldTagDecidableEq :
    DecidableEq (EdgeTrace.TotalEdge (Vertex original false)) := Classical.decEq _

noncomputable instance newTagDecidableEq :
    DecidableEq (EdgeTrace.TotalEdge (Vertex updated false)) := Classical.decEq _

theorem old_tags_distinct : oldTag0 ≠ oldTag1 := by
  intro hequal
  have hid := congrArg (edgeId original false) hequal
  have hindex := congrArg (fun index : RoleId original false => index.1.1) hid
  change 0 = 1 at hindex
  omega

def arrow0 : vertexA ⟶ vertexB := ⟨0, by decide, by decide, by decide⟩
def arrow1 : vertexA ⟶ vertexB := ⟨1, by decide, by decide, by decide⟩
def single0 : PathStar vertexA := ⟨vertexB, arrow0.toPath⟩
def single1 : PathStar vertexA := ⟨vertexB, arrow1.toPath⟩

noncomputable def seedRows : List (Nat × Occurrence vertexA) :=
  [(1, ofPath single0.2), (2, ofPath single1.2)]

noncomputable def seed : State (Vertex original false) Nat := update (empty vertexA) seedRows

/-- A genuinely stored, noncanonical state: only the first parallel history is referenced. -/
noncomputable def before : State (Vertex original false) Nat :=
  { seed with references := [(11, 0), (11, 0)] }

theorem seed_inventory : inventory seedRows = [[oldTag0], [], [oldTag1]] := by
  change ([[], [oldTag0], [], [oldTag1]] :
    List (List (EdgeTrace.TotalEdge (Vertex original false)))).dedup = _
  simp [old_tags_distinct]

theorem before_dictionary : before.dictionary = [[oldTag0], [], [oldTag1]] := by
  simp [before, seed, update, extendedDictionary, empty,
    IncrementalDictionary.expandedDictionary, IncrementalDictionary.missingPayloads,
    IncrementalPrefixTable.prefixEntries, seed_inventory]
  simp [old_tags_distinct]

theorem before_wellFormed : WellFormed before := by
  have hseed : WellFormed seed := update_wellFormed _ (empty_wellFormed _) _
  refine ⟨hseed.nodup, hseed.closed, hseed.rooted, hseed.cells, ?_⟩
  intro reference hreference
  have hequal : reference = (11, 0) := by simpa [rawPacked, before] using hreference
  subst reference
  rw [show (rawPacked before).dictionary = before.dictionary from rfl, before_dictionary]
  decide

theorem before_nodes : before.nodes =
    [(1, some (1, oldTag0)), (0, none), (1, some (1, oldTag1))] := by
  rw [before_wellFormed.cells, before_dictionary]
  simp [IncrementalPrefixTable.cell]

theorem before_actual_decode :
    PrefixTableState.decode before = some [(11, [oldTag0]), (11, [oldTag0])] := by
  rw [decode_eq_unpack before before_wellFormed]
  change unpack (⟨before.dictionary, [(11, 0), (11, 0)]⟩ : Packed Nat _) = _
  rw [before_dictionary]
  rfl

def id2 : RoleId original false := ⟨2, by decide⟩
def oldTag2 := fullEdge original false id2

def arrow2 : vertexB ⟶ vertexA := ⟨2, by decide, by decide, by decide⟩
def returnPath : PathStar vertexA := ⟨vertexA, arrow0.toPath.comp arrow2.toPath⟩

noncomputable def returnRows : List (Nat × Occurrence vertexA) :=
  [(12, ofPath returnPath.2), (12, ofPath returnPath.2)]

noncomputable def parallelRows : List (Nat × Occurrence vertexA) :=
  [(11, ofPath single1.2)]

noncomputable def firstState := update before returnRows
noncomputable def secondState := update firstState parallelRows

theorem return_trace : trace (ofPath returnPath.2) = [oldTag0, oldTag2] := by
  change EdgeTrace.encodePath (arrow0.toPath.comp arrow2.toPath) = _
  rw [EdgeTrace.encodePath_comp]
  rfl

theorem return_inventory : inventory returnRows = [[], [oldTag0], [oldTag0, oldTag2]] := by
  change (([[], [oldTag0], [oldTag0, oldTag2]] ++
    [[], [oldTag0], [oldTag0, oldTag2]]) :
    List (List (EdgeTrace.TotalEdge (Vertex original false)))).dedup = _
  simp

theorem first_dictionary : firstState.dictionary =
    [[oldTag0], [], [oldTag1], [oldTag0, oldTag2]] := by
  have hinventory : inventory (root := before.root) returnRows =
      [[], [oldTag0], [oldTag0, oldTag2]] := return_inventory
  simp [firstState, update, extendedDictionary, IncrementalDictionary.expandedDictionary,
    IncrementalDictionary.missingPayloads, IncrementalPrefixTable.prefixEntries,
    before_dictionary]
  rw [hinventory]
  simp

theorem first_wellFormed : WellFormed firstState :=
  update_wellFormed before before_wellFormed returnRows

theorem second_wellFormed : WellFormed secondState :=
  update_wellFormed firstState first_wellFormed parallelRows

theorem first_nodes : firstState.nodes =
    [(1, some (1, oldTag0)), (0, none), (1, some (1, oldTag1)),
      (2, some (0, oldTag2))] := by
  rw [first_wellFormed.cells, first_dictionary]
  simp [IncrementalPrefixTable.cell]


/-- Actual new real references target slot 3; auxiliary empty/one-edge prefixes add no rows. -/
theorem first_references : firstState.references = [(11, 0), (11, 0), (12, 3), (12, 3)] := by
  let : BEq (List (EdgeTrace.TotalEdge (Vertex original false))) := instBEqOfDecidableEq
  change before.references ++ (traceRows returnRows).map (fun entry =>
    (entry.1, (realPacked before returnRows).dictionary.idxOf entry.2)) = _
  rw [real_dictionary before returnRows]
  change before.references ++ (traceRows returnRows).map (fun entry =>
    (entry.1, firstState.dictionary.idxOf entry.2)) = _
  rw [first_dictionary]
  change [(11, 0), (11, 0)] ++
    [(12, @List.idxOf _ instBEqOfDecidableEq [oldTag0, oldTag2]
      [[oldTag0], [], [oldTag1], [oldTag0, oldTag2]]),
    (12, @List.idxOf _ instBEqOfDecidableEq [oldTag0, oldTag2]
      [[oldTag0], [], [oldTag1], [oldTag0, oldTag2]])] = _
  simp

theorem first_actual_decode : PrefixTableState.decode firstState =
    some [(11, [oldTag0]), (11, [oldTag0]),
      (12, [oldTag0, oldTag2]), (12, [oldTag0, oldTag2])] := by
  calc
    _ = (PrefixTableState.decode before).map (fun oldRows => oldRows ++ traceRows returnRows) :=
      decode_update before before_wellFormed returnRows
    _ = _ := by
      rw [before_actual_decode]
      change some ([(11, [oldTag0]), (11, [oldTag0])] ++
        [(12, trace (ofPath returnPath.2)), (12, trace (ofPath returnPath.2))]) = _
      rw [return_trace]
      rfl

theorem second_actual_decode : PrefixTableState.decode secondState =
    some [(11, [oldTag0]), (11, [oldTag0]), (12, [oldTag0, oldTag2]),
      (12, [oldTag0, oldTag2]), (11, [oldTag1])] := by
  calc
    _ = (PrefixTableState.decode firstState).map
        (fun oldRows => oldRows ++ traceRows parallelRows) :=
      decode_update firstState first_wellFormed parallelRows
    _ = _ := by
      rw [first_actual_decode]
      rfl

theorem actual_all_fields_commute :
    transport translation false secondState =
      update (update (transport translation false before)
        (mapOccurrenceRows translation false before.root returnRows))
        (mapOccurrenceRows translation false before.root parallelRows) :=
  two_updates_transport translation false translation_bijective.1 before returnRows parallelRows

/-- Actual successive new-side updates, rather than an assumed mapped-row serializer. -/
theorem actual_new_decode : PrefixTableState.decode
    (update (update (transport translation false before)
      (mapOccurrenceRows translation false before.root returnRows))
      (mapOccurrenceRows translation false before.root parallelRows)) =
    some [(11, [newTag2]), (11, [newTag2]), (12, [newTag2, newTag0]),
      (12, [newTag2, newTag0]), (11, [newTag1])] := by
  calc
    _ = (PrefixTableState.decode secondState).map (mapRows translation false) :=
      decode_two_updates_transport translation false translation_bijective.1
        before before_wellFormed returnRows parallelRows
    _ = _ := by
      rw [second_actual_decode]
      rfl

example : (transport translation false firstState).nodes =
    [(1, some (1, newTag2)), (0, none), (1, some (1, newTag1)),
      (2, some (0, newTag0))] := by
  change firstState.nodes.map (mapNode translation false) = _
  rw [first_nodes]
  rfl

example : transport translation false (update before []) =
    update (transport translation false before) [] :=
  update_transport translation false translation_bijective.1 before []

example : (update (transport translation false (empty vertexB : State _ Nat)) []).root.value =
    true := rfl

def collapseIndex (index : Fin 4) : Fin 4 := if index = 1 then 0 else index

/-- Equal parallel endpoints and roles allow a noninjective table map. -/
def collapse : Reindex original original where
  index := collapseIndex
  source index := by
    by_cases hequal : index = 1
    · subst index
      decide
    · simp [collapseIndex, hequal]
  target index := by
    by_cases hequal : index = 1
    · subst index
      decide
    · simp [collapseIndex, hequal]
  kind index := by
    by_cases hequal : index = 1
    · subst index
      decide
    · simp [collapseIndex, hequal]

theorem collapse_not_injective : ¬ Function.Injective collapse.index := by
  intro hinjective
  have hbad : (0 : Fin 4) = 1 := hinjective (show collapse.index 0 = collapse.index 1 from rfl)
  exact (by decide : (0 : Fin 4) ≠ 1) hbad

theorem mapped_seed_dictionary :
    (transport collapse false (update (empty vertexA) seedRows)).dictionary =
      [[oldTag0], [], [oldTag0]] := by
  change seed.dictionary.map (mapTrace collapse false) = _
  change before.dictionary.map (mapTrace collapse false) = _
  rw [before_dictionary]
  rfl

theorem collapsed_inventory : inventory
    (mapOccurrenceRows collapse false vertexA seedRows) = [[], [oldTag0]] := by
  change ([[], [oldTag0], [], [oldTag0]] :
    List (List (EdgeTrace.TotalEdge (Vertex original false)))).dedup = _
  simp

theorem collapsed_update_dictionary :
    (update (transport collapse false (empty vertexA : State _ Nat))
      (mapOccurrenceRows collapse false vertexA seedRows)).dictionary = [[], [oldTag0]] := by
  simp [update, extendedDictionary, transport, empty,
    IncrementalDictionary.expandedDictionary, IncrementalDictionary.missingPayloads,
    IncrementalPrefixTable.prefixEntries, collapsed_inventory]

/-- Mapping a duplicate-preserving stored array differs from producing deduplicated mapped rows. -/
theorem actual_noninjective_update_failure :
    transport collapse false (update (empty vertexA) seedRows) ≠
      update (transport collapse false (empty vertexA : State _ Nat))
        (mapOccurrenceRows collapse false vertexA seedRows) := by
  intro hequal
  have hdict := congrArg State.dictionary hequal
  rw [mapped_seed_dictionary, collapsed_update_dictionary] at hdict
  have hlength := congrArg List.length hdict
  change 3 = 2 at hlength
  omega

theorem actual_noninjective_wellFormed_failure :
    ¬ WellFormed (transport collapse false (update (empty vertexA) seedRows)) := by
  intro hstate
  have hnodup := hstate.nodup
  rw [mapped_seed_dictionary] at hnodup
  simp at hnodup

end GRWTSK.Combinatorics.DirectedGraph.PrefixTableUpdateReindex.Checks.Positive
```

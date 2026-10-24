# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableBatch

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2b80f55f781c501465b05846f5ef2ce5a18ce3e` · SHA-256 `b70db5260d5eeb8815e95454b474121c1590f98989f4fd6d8eab8e1001ce8a58`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.PrefixTableBatch

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph
open RoleRelationTable RoleRelationReindex PrefixTableReindex
open PrefixTableUpdateReindex PrefixTableBatch
open PathUnfolding OccurrencePrefix PrefixInventory ParentTraceDictionary PrefixTableState
open GRWTSK.Logic.FiniteSequences IndexedDictionary DecisionCertificate

namespace GRWTSK.Combinatorics.DirectedGraph.PrefixTableBatch.Checks.Positive

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

noncomputable def thirdRows : List (Nat × Occurrence vertexA) := [(12, ofPath single0.2)]

noncomputable def threeBatches : List (List (Nat × Occurrence vertexA)) :=
  [returnRows, parallelRows, thirdRows]

noncomputable def forward := run before threeBatches
noncomputable def backward := run before threeBatches.reverse

theorem forward_as_updates : forward = update secondState thirdRows := rfl

theorem forward_wellFormed : WellFormed forward := run_wellFormed before before_wellFormed _

theorem forward_actual_decode : PrefixTableState.decode forward =
    some [(11, [oldTag0]), (11, [oldTag0]), (12, [oldTag0, oldTag2]),
      (12, [oldTag0, oldTag2]), (11, [oldTag1]), (12, [oldTag0])] := by
  calc
    _ = (PrefixTableState.decode secondState).map (fun entries => entries ++ traceRows thirdRows) :=
      decode_update secondState second_wellFormed thirdRows
    _ = _ := by
      rw [second_actual_decode]
      rfl

theorem backward_actual_decode : PrefixTableState.decode backward =
    some [(11, [oldTag0]), (11, [oldTag0]), (12, [oldTag0]), (11, [oldTag1]),
      (12, [oldTag0, oldTag2]), (12, [oldTag0, oldTag2])] := by
  calc
    _ = (PrefixTableState.decode before).map
        (fun entries => entries ++ threeBatches.reverse.flatMap traceRows) :=
      decode_run before before_wellFormed threeBatches.reverse
    _ = _ := by
      rw [before_actual_decode]
      change some ([(11, [oldTag0]), (11, [oldTag0]), (12, [oldTag0]), (11, [oldTag1]),
        (12, trace (ofPath returnPath.2)), (12, trace (ofPath returnPath.2))]) = _
      rw [return_trace]

/-- Reversing actual batches changes full histories, even with repeated matching keys. -/
theorem actual_reverse_order_changes_histories :
    PrefixTableState.decode forward ≠ PrefixTableState.decode backward := by
  rw [forward_actual_decode, backward_actual_decode]
  intro hequal
  have hthird := congrArg (fun entries => entries[2]?) (Option.some.inj hequal)
  change some (12, [oldTag0, oldTag2]) = some (12, [oldTag0]) at hthird
  have hlength := congrArg (fun entry => entry.2.length) (Option.some.inj hthird)
  change 2 = 1 at hlength
  omega

example : before.dictionary <+: forward.dictionary ∧ before.nodes <+: forward.nodes ∧
    before.references <+: forward.references := run_prefixes before threeBatches

example : forward.nodes[0]? = some (1, some (1, oldTag0)) := by
  calc
    _ = before.nodes[0]? := node_lookup_retained before threeBatches 0
      (by rw [before_nodes]; decide)
    _ = _ := by rw [before_nodes]; rfl

example : run before [] = before := run_nil before

example : (run (empty vertexB : State _ Nat) [[], []]).root.value = true :=
  congrArg Vertex.value (run_root (empty vertexB : State _ Nat) [[], []])

/-- An internal empty batch retains the same actual chronological decoded histories. -/
example : PrefixTableState.decode (run before [returnRows, [], parallelRows, thirdRows]) =
    PrefixTableState.decode forward := by
  calc
    _ = (PrefixTableState.decode before).map (fun entries =>
        entries ++ [returnRows, [], parallelRows, thirdRows].flatMap traceRows) :=
      decode_run before before_wellFormed [returnRows, [], parallelRows, thirdRows]
    _ = _ := by
      have hforward := decode_run before before_wellFormed threeBatches
      exact hforward.symm

/-- Raw full field naturality of the actual finite runner. -/
example : transport translation false forward =
    run (transport translation false before)
      (threeBatches.map (mapOccurrenceRows translation false before.root)) :=
  run_transport translation false translation_bijective.1 before threeBatches

example : PrefixTableState.decode (run (transport translation false before)
    (threeBatches.map (mapOccurrenceRows translation false before.root))) =
    some [(11, [newTag2]), (11, [newTag2]), (12, [newTag2, newTag0]),
      (12, [newTag2, newTag0]), (11, [newTag1]), (12, [newTag2])] := by
  calc
    _ = (PrefixTableState.decode forward).map (mapRows translation false) :=
      decode_run_transport translation false translation_bijective.1 before before_wellFormed _
    _ = _ := by rw [forward_actual_decode]; rfl

noncomputable def singletonRows : List (Nat × Occurrence vertexA) := [(12, ofPath single0.2)]

/-- The actual hostile initial reference is outside both the empty D and the empty parent table. -/
def invalid : State (Vertex original false) Nat :=
  { (empty vertexA : State (Vertex original false) Nat) with references := [(11, 0)] }

noncomputable def repaired := run invalid [singletonRows]
noncomputable def good := update (empty vertexA : State _ Nat) singletonRows

theorem invalid_actual_decode : PrefixTableState.decode invalid = none := rfl

theorem invalid_not_wellFormed : ¬ WellFormed invalid := by
  intro hstate
  have hbad := hstate.references (11, 0) (by simp [rawPacked, invalid, empty])
  change 0 < 0 at hbad
  omega

theorem repaired_dictionary : repaired.dictionary = [[], [oldTag0]] := by
  have hinventory : inventory singletonRows = [[], [oldTag0]] := by
    change ([[], [oldTag0]] : List (List (EdgeTrace.TotalEdge (Vertex original false)))).dedup = _
    simp
  change good.dictionary = _
  simp [good, update, extendedDictionary, empty, IncrementalDictionary.expandedDictionary,
    IncrementalDictionary.missingPayloads, IncrementalPrefixTable.prefixEntries, hinventory]

theorem good_wellFormed : WellFormed good := update_wellFormed _ (empty_wellFormed _) _

theorem repaired_references : repaired.references = [(11, 0), (12, 1)] := by
  let : BEq (List (EdgeTrace.TotalEdge (Vertex original false))) := instBEqOfDecidableEq
  change invalid.references ++ (traceRows singletonRows).map (fun entry =>
    (entry.1, (realPacked invalid singletonRows).dictionary.idxOf entry.2)) = _
  rw [real_dictionary invalid singletonRows]
  change [(11, 0)] ++ (traceRows singletonRows).map (fun entry =>
    (entry.1, repaired.dictionary.idxOf entry.2)) = _
  rw [repaired_dictionary]
  change [(11, 0)] ++ [(12, @List.idxOf _ instBEqOfDecidableEq [oldTag0] [[], [oldTag0]])] = _
  simp

theorem repaired_wellFormed : WellFormed repaired := by
  refine ⟨good_wellFormed.nodup, good_wellFormed.closed, good_wellFormed.rooted,
    good_wellFormed.cells, ?_⟩
  intro reference hreference
  have hcases : reference = (11, 0) ∨ reference = (12, 1) := by
    change reference ∈ repaired.references at hreference
    rw [repaired_references] at hreference
    simpa using hreference
  rcases hcases with rfl | rfl
  · change 0 < repaired.dictionary.length
    rw [repaired_dictionary]
    decide
  · change 1 < repaired.dictionary.length
    rw [repaired_dictionary]
    decide

/-- The new empty prefix actually fills old slot0; numeric decoding changes None to Some. -/
theorem repaired_actual_decode :
    PrefixTableState.decode repaired = some [(11, []), (12, [oldTag0])] := by
  rw [decode_eq_unpack repaired repaired_wellFormed]
  change IndexedDictionary.unpack (⟨repaired.dictionary, repaired.references⟩ :
    IndexedDictionary.Packed Nat _) = _
  rw [repaired_dictionary, repaired_references]
  rfl

/-- Without initial WF, the desired old-plus-batches Option decoding equality is actually false. -/
theorem actual_missing_invariant_failure :
    PrefixTableState.decode (run invalid [singletonRows]) ≠
      (PrefixTableState.decode invalid).map
        (fun entries => entries ++ [singletonRows].flatMap traceRows) := by
  change PrefixTableState.decode repaired ≠ _
  rw [invalid_actual_decode, repaired_actual_decode]
  intro hbad
  cases hbad

end GRWTSK.Combinatorics.DirectedGraph.PrefixTableBatch.Checks.Positive
```

# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableCheckpoint

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f2c0d66b71552c1f2c6fcd1aaa3880f7b126333` · SHA-256 `99a8b531041d6c06f5423305c425490b5d4095877a67797c8dd909571293e473`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.PrefixTableCheckpoint

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph
open PathUnfolding OccurrencePrefix PrefixInventory ParentTraceDictionary
open PrefixTableState PrefixTableCompaction RootedTraceRevision
open PrefixTableBatch PrefixTableCheckpoint
open GRWTSK.Logic.FiniteSequences IndexedDictionary DecisionCertificate

namespace GRWTSK.Combinatorics.DirectedGraph.PrefixTableCheckpoint.Checks.Positive

noncomputable instance loopVertexDecidableEq : DecidableEq (SingleObj Bool) :=
  Classical.decEq _

noncomputable instance loopTagDecidableEq :
    DecidableEq (EdgeTrace.TotalEdge (SingleObj Bool)) := Classical.decEq _

def falseTag : EdgeTrace.TotalEdge (SingleObj Bool) :=
  ⟨SingleObj.star Bool, SingleObj.star Bool, SingleObj.toHom false⟩

def trueTag : EdgeTrace.TotalEdge (SingleObj Bool) :=
  ⟨SingleObj.star Bool, SingleObj.star Bool, SingleObj.toHom true⟩

theorem tags_distinct : falseTag ≠ trueTag := by
  intro hequal
  have harrow := eq_of_heq (Sigma.mk.inj (eq_of_heq (Sigma.mk.inj hequal).2)).2
  have hbool : false = true := harrow
  cases hbool

noncomputable def falseOccurrence : Occurrence (SingleObj.star Bool) :=
  ofPath (PathOccurrences.parallelLoop false)

noncomputable def trueOccurrence : Occurrence (SingleObj.star Bool) :=
  ofPath (PathOccurrences.parallelLoop true)

noncomputable def seedRows : List (Nat × Occurrence (SingleObj.star Bool)) :=
  [(1, falseOccurrence), (2, trueOccurrence)]

noncomputable def seed : State (SingleObj Bool) Nat :=
  update (empty (SingleObj.star Bool)) seedRows

noncomputable def before : State (SingleObj Bool) Nat :=
  { seed with references := [(11, 0), (11, 0)] }

noncomputable def retainedRows : List (Nat × Occurrence (SingleObj.star Bool)) :=
  [(11, falseOccurrence), (11, falseOccurrence)]

theorem seed_inventory : inventory seedRows = [[falseTag], [], [trueTag]] := by
  change ([[], [falseTag], [], [trueTag]] :
    List (List (EdgeTrace.TotalEdge (SingleObj Bool)))).dedup = _
  simp [tags_distinct]

theorem before_dictionary : before.dictionary = [[falseTag], [], [trueTag]] := by
  simp [before, seed, update, extendedDictionary, empty,
    IncrementalDictionary.expandedDictionary, IncrementalDictionary.missingPayloads,
    IncrementalPrefixTable.prefixEntries, seed_inventory]
  simp [tags_distinct]

theorem before_wellFormed : WellFormed before := by
  have hseed : WellFormed seed := update_wellFormed _ (empty_wellFormed _) _
  refine ⟨hseed.nodup, hseed.closed, hseed.rooted, hseed.cells, ?_⟩
  intro reference hreference
  have hequal : reference = (11, 0) := by simpa [rawPacked, before] using hreference
  subst reference
  rw [show (rawPacked before).dictionary = before.dictionary from rfl, before_dictionary]
  decide

theorem before_nodes : before.nodes =
    [(1, some (1, falseTag)), (0, none), (1, some (1, trueTag))] := by
  rw [before_wellFormed.cells, before_dictionary]
  simp [IncrementalPrefixTable.cell]

theorem before_actual_decode : decode before = some [(11, [falseTag]), (11, [falseTag])] := by
  rw [decode_eq_unpack before before_wellFormed]
  change unpack (⟨before.dictionary, [(11, 0), (11, 0)]⟩ : Packed Nat _) = _
  rw [before_dictionary]
  rfl

theorem before_realEntries : realEntries before before_wellFormed =
    [(11, [falseTag]), (11, [falseTag])] :=
  Option.some.inj ((decode_realEntries before before_wellFormed).symm.trans before_actual_decode)

theorem before_realRows : realRows before before_wellFormed = retainedRows :=
  realRows_of_decode before before_wellFormed retainedRows before_actual_decode

noncomputable def after : State (SingleObj Bool) Nat := compact before before_wellFormed

theorem retained_inventory : inventory retainedRows = [[], [falseTag]] := by
  change ([[], [falseTag], [], [falseTag]] :
    List (List (EdgeTrace.TotalEdge (SingleObj Bool)))).dedup = _
  simp

theorem after_wellFormed : WellFormed after := compact_wellFormed before before_wellFormed

theorem after_dictionary : after.dictionary = [[], [falseTag]] := by
  rw [after, compact_dictionary, before_realRows, retained_inventory]

theorem after_nodes : after.nodes = [(0, none), (1, some (0, falseTag))] := by
  rw [after_wellFormed.cells, after_dictionary]
  simp [IncrementalPrefixTable.cell]

theorem after_references : after.references = [(11, 1), (11, 1)] := by
  rw [after, compact_references, before_realRows]
  simp [PrefixInventory.packed, retained_inventory]
  change [(11, @List.idxOf _ instBEqOfDecidableEq [falseTag] [[], [falseTag]]),
    (11, @List.idxOf _ instBEqOfDecidableEq [falseTag] [[], [falseTag]])] = _
  simp

theorem after_actual_decode : decode after = some [(11, [falseTag]), (11, [falseTag])] :=
  (decode_compact before before_wellFormed).trans before_actual_decode

theorem actual_unused_branch_removed :
    [trueTag] ∈ before.dictionary ∧ [trueTag] ∉ after.dictionary ∧
      after.dictionary.length < before.dictionary.length := by
  rw [before_dictionary, after_dictionary]
  simp [Ne.symm tags_distinct]

theorem actual_old_false_slot_remapped : remap before before_wellFormed 0 = some 1 := by
  have hlookup : before.dictionary[0]? = some [falseTag] := by rw [before_dictionary]; rfl
  have hmem : [falseTag] ∈ (compact before before_wellFormed).dictionary := by
    change [falseTag] ∈ after.dictionary
    rw [after_dictionary]
    simp
  rw [remap_retained before before_wellFormed 0 [falseTag] hlookup hmem, before_realRows]
  simp [position, retained_inventory]

theorem actual_parent_slot_remapped : remap before before_wellFormed 1 = some 0 := by
  have hlookup : before.dictionary[1]? = some [] := by rw [before_dictionary]; rfl
  have hmem : [] ∈ (compact before before_wellFormed).dictionary := by
    change [] ∈ after.dictionary
    rw [after_dictionary]
    simp
  rw [remap_retained before before_wellFormed 1 [] hlookup hmem, before_realRows]
  simp [position, retained_inventory]

theorem actual_old_true_slot_removed : remap before before_wellFormed 2 = none := by
  apply remap_removed before before_wellFormed 2 [trueTag]
  · rw [before_dictionary]
    rfl
  · change [trueTag] ∉ after.dictionary
    rw [after_dictionary]
    simp [Ne.symm tags_distinct]

example : reindexReferences before before_wellFormed = some [(11, 1), (11, 1)] := by
  rw [reindexReferences_eq]
  exact congrArg some after_references

example (entries : List (Nat × List (EdgeTrace.TotalEdge (SingleObj Bool))))
    (hdecoded : decode after = some entries) :
    recoverRows entries (output_valid after after_wellFormed entries hdecoded) = retainedRows :=
  (compact_recovers before before_wellFormed entries hdecoded).trans before_realRows

/-- Deliberately keep the old numeric real references after changing the dictionary. -/
noncomputable def stale : State (SingleObj Bool) Nat :=
  { after with references := before.references }

theorem stale_wellFormed : WellFormed stale := by
  refine ⟨after_wellFormed.nodup, after_wellFormed.closed, after_wellFormed.rooted,
    after_wellFormed.cells, ?_⟩
  intro reference hreference
  have hequal : reference = (11, 0) := by simpa [rawPacked, stale, before] using hreference
  subst reference
  change 0 < after.dictionary.length
  rw [after_dictionary]
  decide

/-- Stale numeric references still pass structural bounds, but select empty histories. -/
theorem stale_actual_decode : decode stale = some [(11, []), (11, [])] := by
  rw [decode_eq_unpack stale stale_wellFormed]
  change unpack (⟨after.dictionary, [(11, 0), (11, 0)]⟩ : Packed Nat _) = _
  rw [after_dictionary]
  rfl

theorem stale_histories_changed : decode stale ≠ decode before := by
  rw [stale_actual_decode, before_actual_decode]
  intro hequal
  have hhead := (List.cons.inj (Option.some.inj hequal)).1
  have htrace := congrArg Prod.snd hhead
  cases htrace

noncomputable def parallelRows : List (Nat × Occurrence (SingleObj.star Bool)) :=
  [(12, trueOccurrence)]

noncomputable def post := checkpoint before before_wellFormed [] [parallelRows]
noncomputable def direct := run before [parallelRows]
noncomputable def stalePost := run stale [parallelRows]

theorem post_actual_update : post = update after parallelRows := rfl

theorem post_wellFormed : WellFormed post := checkpoint_wellFormed before before_wellFormed _ _

theorem post_dictionary : post.dictionary = [[], [falseTag], [trueTag]] := by
  have hinventory : inventory (root := after.root) parallelRows = [[], [trueTag]] := by
    change ([[], [trueTag]] : List (List (EdgeTrace.TotalEdge (SingleObj Bool)))).dedup = _
    simp
  change extendedDictionary after parallelRows = _
  simp [extendedDictionary, IncrementalDictionary.expandedDictionary,
    IncrementalDictionary.missingPayloads, IncrementalPrefixTable.prefixEntries, after_dictionary]
  rw [hinventory]
  simp [Ne.symm tags_distinct]

theorem post_references : post.references = [(11, 1), (11, 1), (12, 2)] := by
  let : BEq (List (EdgeTrace.TotalEdge (SingleObj Bool))) := instBEqOfDecidableEq
  change after.references ++ (traceRows parallelRows).map (fun entry =>
    (entry.1, (realPacked after parallelRows).dictionary.idxOf entry.2)) = _
  rw [real_dictionary after parallelRows]
  change after.references ++ (traceRows parallelRows).map (fun entry =>
    (entry.1, post.dictionary.idxOf entry.2)) = _
  rw [post_dictionary, after_references]
  change [(11, 1), (11, 1)] ++
    [(12, @List.idxOf _ instBEqOfDecidableEq [trueTag] [[], [falseTag], [trueTag]])] = _
  simp [tags_distinct]

theorem post_actual_decode : PrefixTableState.decode post =
    some [(11, [falseTag]), (11, [falseTag]), (12, [trueTag])] := by
  calc
    _ = (PrefixTableState.decode after).map (fun entries => entries ++ traceRows parallelRows) :=
      decode_update after after_wellFormed parallelRows
    _ = _ := by rw [after_actual_decode]; rfl

theorem direct_dictionary : direct.dictionary = [[falseTag], [], [trueTag]] := by
  have hinventory : inventory (root := before.root) parallelRows = [[], [trueTag]] := by
    change ([[], [trueTag]] : List (List (EdgeTrace.TotalEdge (SingleObj Bool)))).dedup = _
    simp
  change extendedDictionary before parallelRows = _
  simp [extendedDictionary, IncrementalDictionary.expandedDictionary,
    IncrementalDictionary.missingPayloads, IncrementalPrefixTable.prefixEntries, before_dictionary]
  rw [hinventory]
  simp


theorem direct_references : direct.references = [(11, 0), (11, 0), (12, 2)] := by
  let : BEq (List (EdgeTrace.TotalEdge (SingleObj Bool))) := instBEqOfDecidableEq
  change before.references ++ (traceRows parallelRows).map (fun entry =>
    (entry.1, (realPacked before parallelRows).dictionary.idxOf entry.2)) = _
  rw [real_dictionary before parallelRows]
  change before.references ++ (traceRows parallelRows).map (fun entry =>
    (entry.1, direct.dictionary.idxOf entry.2)) = _
  rw [direct_dictionary]
  change [(11, 0), (11, 0)] ++
    [(12, @List.idxOf _ instBEqOfDecidableEq [trueTag] [[falseTag], [], [trueTag]])] = _
  simp [tags_distinct]

theorem actual_checkpoint_histories :
    PrefixTableState.decode post = PrefixTableState.decode direct :=
  decode_checkpoint before before_wellFormed [] [parallelRows]

/-- The complete histories are equal while the actual stored numeric dictionaries differ. -/
theorem actual_arrays_differ : post.dictionary ≠ direct.dictionary := by
  rw [post_dictionary, direct_dictionary]
  intro hequal
  have hfirst := (List.cons.inj hequal).1
  cases hfirst

theorem stalePost_wellFormed : WellFormed stalePost :=
  run_wellFormed stale stale_wellFormed [parallelRows]

theorem stalePost_bounds : Valid (rawPacked stalePost) := stalePost_wellFormed.references

theorem stalePost_actual_decode : PrefixTableState.decode stalePost =
    some [(11, []), (11, []), (12, [trueTag])] := by
  calc
    _ = (PrefixTableState.decode stale).map
        (fun entries => entries ++ [parallelRows].flatMap traceRows) :=
      decode_run stale stale_wellFormed [parallelRows]
    _ = _ := by rw [stale_actual_decode]; rfl

/-- Bounds, ranks, root and semantic validity do not recover histories lost by stale refslots. -/
theorem stale_slots_change_histories :
    PrefixTableState.decode stalePost ≠ PrefixTableState.decode post := by
  rw [stalePost_actual_decode, post_actual_decode]
  intro hequal
  have hfirst := (List.cons.inj (Option.some.inj hequal)).1
  have htrace := congrArg Prod.snd hfirst
  cases htrace

example : (checkpoint before before_wellFormed [] []).root = before.root :=
  checkpoint_root before before_wellFormed [] []

example : PrefixTableState.decode (checkpoint before before_wellFormed [] []) =
    PrefixTableState.decode before := by
  calc
    _ = PrefixTableState.decode (run before []) := decode_checkpoint before before_wellFormed [] []
    _ = _ := rfl

/-- Both segments may be nonempty; repeated actual retained histories precede new parallel rows. -/
example : PrefixTableState.decode
    (checkpoint before before_wellFormed [retainedRows] [[], parallelRows]) =
    some [(11, [falseTag]), (11, [falseTag]), (11, [falseTag]), (11, [falseTag]),
      (12, [trueTag])] := by
  calc
    _ = (PrefixTableState.decode before).map (fun entries =>
        entries ++ ([retainedRows] ++ [[], parallelRows]).flatMap traceRows) :=
      checkpoint_histories before before_wellFormed [retainedRows] [[], parallelRows]
    _ = _ := by rw [before_actual_decode]; rfl

instance boolQuiver : Quiver Bool := ⟨fun _ _ => Unit⟩

noncomputable instance boolTagDecidableEq : DecidableEq (EdgeTrace.TotalEdge Bool) :=
  Classical.decEq _

example : (checkpoint (empty false : State Bool Nat) (empty_wellFormed false) [] []).root ≠
    (checkpoint (empty true : State Bool Nat) (empty_wellFormed true) [] []).root := by
  rw [checkpoint_root, checkpoint_root]
  exact Bool.false_ne_true

end GRWTSK.Combinatorics.DirectedGraph.PrefixTableCheckpoint.Checks.Positive
```

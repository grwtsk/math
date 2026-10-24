# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableDirectLookup

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55584e6630fa4889e19de96aec865ddc8b2302a7` · SHA-256 `4d0f7bdc03764b34273f73a9da15aa030aa4190a416b11cce575e9c4f3965919`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Lean core List.Nodup.idxOf_getElem (Init/Data/List/Nat/Pairwise.lean) retains
Mario Carneiro and James Gallicchio's Apache-2.0 credits. Imported Lean/Mathlib
List and Option authors Leonardo de Moura, Jeremy Avigad, Mario Carneiro,
Parikshit Khanna, Floris van Doorn and Kenny Lau retain their individual credits.
Existing local state, schedule and transport producers retain their source credits. -/
import GRWTSK.Combinatorics.DirectedGraph.PrefixTableDirectLookup

/-!
Actual Bool parallel-loop fixtures are copied in the new namespace from the
owner's existing PrefixTableSchedule and PrefixTableReferenceTransport positive
modules, preserving their MIT credit. No prior positive module is imported.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedGraph.PrefixTableDirectLookup.Checks.Positive

open Quiver
open GRWTSK.Combinatorics.DirectedGraph
open PathUnfolding OccurrencePrefix PrefixInventory ParentTraceDictionary
open PrefixTableState PrefixTableCompaction PrefixTableBatch PrefixTableCheckpoint
open PrefixTableSchedule PrefixTableReferenceTransport PrefixTableDirectLookup
open GRWTSK.Logic.FiniteSequences IndexedDictionary

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

theorem before_actual_decode : decode before = some [(11, [falseTag]), (11, [falseTag])] := by
  rw [decode_eq_unpack before before_wellFormed]
  change unpack (⟨before.dictionary, [(11, 0), (11, 0)]⟩ : Packed Nat _) = _
  rw [before_dictionary]
  rfl

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

theorem after_actual_decode : decode after = some [(11, [falseTag]), (11, [falseTag])] :=
  (decode_compact before before_wellFormed).trans before_actual_decode

theorem actual_old_false_slot_remapped : remap before before_wellFormed 0 = some 1 := by
  have hlookup : before.dictionary[0]? = some [falseTag] := by rw [before_dictionary]; rfl
  have hmem : [falseTag] ∈ (compact before before_wellFormed).dictionary := by
    change [falseTag] ∈ after.dictionary
    rw [after_dictionary]
    simp
  rw [remap_retained before before_wellFormed 0 [falseTag] hlookup hmem, before_realRows]
  simp [position, retained_inventory]

theorem actual_old_true_slot_removed : remap before before_wellFormed 2 = none := by
  apply remap_removed before before_wellFormed 2 [trueTag]
  · rw [before_dictionary]
    rfl
  · change [trueTag] ∉ after.dictionary
    rw [after_dictionary]
    simp [Ne.symm tags_distinct]

noncomputable def parallelRows : List (Nat × Occurrence (SingleObj.star Bool)) :=
  [(12, trueOccurrence)]

noncomputable def post := checkpoint before before_wellFormed [] [parallelRows]

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

theorem post_actual_decode : PrefixTableState.decode post =
    some [(11, [falseTag]), (11, [falseTag]), (12, [trueTag])] := by
  calc
    _ = (PrefixTableState.decode after).map (fun entries => entries ++ traceRows parallelRows) :=
      decode_update after after_wellFormed parallelRows
    _ = _ := by rw [after_actual_decode]; rfl

noncomputable def actions : List (Action (SingleObj.star Bool) Nat) :=
  [.inr (), .inl parallelRows, .inr ()]

noncomputable def scheduled := execute before before_wellFormed actions

noncomputable def finalRows : List (Nat × Occurrence (SingleObj.star Bool)) :=
  [(11, falseOccurrence), (11, falseOccurrence), (12, trueOccurrence)]

theorem scheduled_actual_producer : scheduled = compact post post_wellFormed := rfl

theorem post_realRows : realRows post post_wellFormed = finalRows :=
  realRows_of_decode post post_wellFormed finalRows post_actual_decode

theorem final_inventory : inventory finalRows = [[falseTag], [], [trueTag]] := by
  change ([[], [falseTag], [], [falseTag], [], [trueTag]] :
    List (List (EdgeTrace.TotalEdge (SingleObj Bool)))).dedup = _
  simp [tags_distinct]

theorem scheduled_dictionary : scheduled.dictionary = [[falseTag], [], [trueTag]] := by
  rw [scheduled_actual_producer, compact_dictionary, post_realRows, final_inventory]

noncomputable def initial : ValidRootedState (SingleObj.star Bool) Nat :=
  ⟨⟨before, rfl⟩, before_wellFormed⟩

theorem original_real_reference : (11, 0) ∈ initial.1.1.references := by
  change (11, 0) ∈ [(11, 0), (11, 0)]
  simp

theorem unused_slot_bound : 2 < initial.1.1.dictionary.length := by
  change 2 < before.dictionary.length
  rw [before_dictionary]
  decide

theorem unused_slot_not_referenced : (11, 2) ∉ initial.1.1.references := by
  change (11, 2) ∉ [(11, 0), (11, 0)]
  simp

theorem actual_first_compaction :
    transportSlotAt (SingleObj.star Bool) initial [.inr ()] 0 = some 1 :=
  actual_old_false_slot_remapped

theorem post_false_remap : remap post post_wellFormed 1 = some 0 := by
  have hlookup : post.dictionary[1]? = some [falseTag] := by
    rw [post_dictionary]
    rfl
  have hretained : [falseTag] ∈
      (compact post post_wellFormed).dictionary := by
    change [falseTag] ∈ scheduled.dictionary
    rw [scheduled_dictionary]
    simp
  rw [remap_retained post post_wellFormed 1 [falseTag]
    hlookup hretained, post_realRows]
  simp [position, final_inventory]

theorem actual_retained_transport :
    transportSlotAt (SingleObj.star Bool) initial actions 0 = some 0 := by
  change ((remap before before_wellFormed 0).bind (fun slot => some slot)).bind
    (fun next => remap post post_wellFormed next) = some 0
  rw [actual_old_false_slot_remapped]
  exact post_false_remap

theorem actual_dropped_transport :
    transportSlotAt (SingleObj.star Bool) initial actions 2 = none := by
  change ((remap before before_wellFormed 2).bind (fun slot => some slot)).bind
    (fun next => remap post post_wellFormed next) = none
  rw [actual_old_true_slot_removed]
  rfl

/-- The referenced old slot is still1 after the actual intervening append-only action. -/
theorem actual_intermediate_append :
    transportSlotAt (SingleObj.star Bool) initial [.inr (), .inl parallelRows] 0 = some 1 := by
  change (remap before before_wellFormed 0).bind (fun slot => some slot) = some 1
  rw [actual_old_false_slot_remapped]
  rfl

/-- The new support-only theorem is consumed with actual original membership. -/
theorem actual_supported_equality :
    transportSlotAt (SingleObj.star Bool) initial actions 0 =
      directLookupAt (SingleObj.star Bool) initial actions 0 :=
  transportSlotAt_eq_directLookup_of_reference (SingleObj.star Bool) initial actions
    (11, 0) original_real_reference

theorem actual_referenced_direct_lookup :
    directLookupAt (SingleObj.star Bool) initial actions 0 = some 0 := by
  rw [← actual_supported_equality]
  exact actual_retained_transport

/-- The dropped old payload is actually present again at final slot2. -/
theorem actual_reintroduced_direct_lookup :
    directLookupAt (SingleObj.star Bool) initial actions 2 = some 2 := by
  unfold directLookupAt
  change before.dictionary[2]?.bind (fun word =>
    if word ∈ scheduled.dictionary then
      some (@List.idxOf _ instBEqOfDecidableEq word scheduled.dictionary) else none) = some 2
  rw [before_dictionary, scheduled_dictionary]
  simp [tags_distinct]

theorem actual_endpoint_dictionaries_equal : before.dictionary = scheduled.dictionary := by
  rw [before_dictionary, scheduled_dictionary]

/-- Bounds and matching endpoint dictionaries do not replace original real-reference support. -/
theorem actual_bounded_global_equality_false :
    ¬ (∀ slot, slot < initial.1.1.dictionary.length →
      transportSlotAt (SingleObj.star Bool) initial actions slot =
        directLookupAt (SingleObj.star Bool) initial actions slot) := by
  intro hall
  have hbad := hall 2 unused_slot_bound
  rw [actual_dropped_transport, actual_reintroduced_direct_lookup] at hbad
  cases hbad

/-- The original repeated keyed references retain their exact multiplicity in direct searches. -/
theorem actual_repeated_direct_searches :
    initial.1.1.references.mapM (fun reference =>
      (directLookupAt (SingleObj.star Bool) initial actions reference.2).map
        (fun target => (reference.1, target))) = some [(11, 0), (11, 0)] := by
  change [(11, 0), (11, 0)].mapM (fun reference =>
    (directLookupAt (SingleObj.star Bool) initial actions reference.2).map
      (fun target => (reference.1, target))) = _
  simp [actual_referenced_direct_lookup]

theorem actual_empty_actions_reference :
    directLookupAt (SingleObj.star Bool) initial [] 0 = some 0 := by
  rw [← transportSlotAt_eq_directLookup_of_reference (SingleObj.star Bool) initial []
    (11, 0) original_real_reference]
  rfl

/-- A distinct-key fixture makes the original31,17,31 order observable. -/
noncomputable def ordered : State (SingleObj Bool) Nat :=
  { before with references := [(31, 0), (17, 0), (31, 0)] }

theorem ordered_wellFormed : WellFormed ordered := by
  refine ⟨before_wellFormed.nodup, before_wellFormed.closed, before_wellFormed.rooted,
    before_wellFormed.cells, ?_⟩
  intro reference hreference
  have hzero : reference.2 = 0 := by
    have hmem : reference ∈ [(31, 0), (17, 0), (31, 0)] := hreference
    simp only [List.mem_cons] at hmem
    rcases hmem with rfl | rfl | rfl | hnil <;> first | rfl | cases hnil
  change reference.2 < before.dictionary.length
  rw [hzero, before_dictionary]
  decide

noncomputable def orderedInitial : ValidRootedState (SingleObj.star Bool) Nat :=
  ⟨⟨ordered, rfl⟩, ordered_wellFormed⟩

/-- Direct searches preserve actual31,17,31 occurrence order with no key equality premise. -/
theorem actual_distinct_key_order : ∃ target,
    orderedInitial.1.1.references.mapM (fun reference =>
      (directLookupAt (SingleObj.star Bool) orderedInitial actions reference.2).map
        (fun next => (reference.1, next))) =
      some [(31, target), (17, target), (31, target)] := by
  have hreference : (31, 0) ∈ orderedInitial.1.1.references := by
    change (31, 0) ∈ [(31, 0), (17, 0), (31, 0)]
    simp
  obtain ⟨target, htarget, _, _⟩ :=
    transport_reference (SingleObj.star Bool) orderedInitial actions (31, 0) hreference
  have hdirect : directLookupAt (SingleObj.star Bool) orderedInitial actions 0 = some target := by
    rw [← transportSlotAt_eq_directLookup_of_reference (SingleObj.star Bool) orderedInitial
      actions (31, 0) hreference]
    exact htarget
  refine ⟨target, ?_⟩
  change [(31, 0), (17, 0), (31, 0)].mapM (fun reference =>
    (directLookupAt (SingleObj.star Bool) orderedInitial actions reference.2).map
      (fun next => (reference.1, next))) = _
  simp [hdirect]

noncomputable def emptyInitial : ValidRootedState (SingleObj.star Bool) Nat :=
  ⟨⟨empty (SingleObj.star Bool), rfl⟩, empty_wellFormed _⟩

/-- Empty original support is vacuous for every actual finite schedule, with root explicit. -/
theorem actual_empty_support (moreActions : List (Action (SingleObj.star Bool) Nat)) :
    ∀ reference ∈ emptyInitial.1.1.references,
      transportSlotAt (SingleObj.star Bool) emptyInitial moreActions reference.2 =
        directLookupAt (SingleObj.star Bool) emptyInitial moreActions reference.2 := by
  intro reference hreference
  exact transportSlotAt_eq_directLookup_of_reference (SingleObj.star Bool) emptyInitial
    moreActions reference hreference

theorem actual_empty_support_references : emptyInitial.1.1.references = [] := rfl

end GRWTSK.Combinatorics.DirectedGraph.PrefixTableDirectLookup.Checks.Positive
```

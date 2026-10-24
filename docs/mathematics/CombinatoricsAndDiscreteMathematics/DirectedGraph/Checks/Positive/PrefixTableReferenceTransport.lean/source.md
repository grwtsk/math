# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableReferenceTransport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e499a8f4ce3f6e43bc13fd4900086f73fb3fd9b7` · SHA-256 `13bf27634ad4fcbefe5cc63157dab890a337670472ae66749c08ced151327ee7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Actual Bool parallel-loop fixtures and all imported Lean/Mathlib credits retain their terms. -/
import GRWTSK.Combinatorics.DirectedGraph.PrefixTableReferenceTransport
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableSchedule

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedGraph.PrefixTableReferenceTransport.Checks.Positive

open Quiver
open GRWTSK.Combinatorics.DirectedGraph
open PrefixTableState PrefixTableCompaction PrefixTableBatch PrefixTableSchedule
open PrefixTableReferenceTransport PrefixInventory ParentTraceDictionary

open PrefixTableSchedule.Checks.Positive

noncomputable def initial : ValidRootedState (SingleObj.star Bool) Nat :=
  ⟨⟨before, rfl⟩, before_wellFormed⟩

theorem original_real_reference : (11, 0) ∈ initial.1.1.references := by
  change (11, 0) ∈ [(11, 0), (11, 0)]
  simp

/-- Actual original unused slot is present, but its payload is not a real old reference. -/
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

/-- The actual retained old slot follows0→1→1→0, not one final payload search. -/
theorem actual_retained_transport :
    transportSlotAt (SingleObj.star Bool) initial actions 0 = some 0 := by
  change ((remap before before_wellFormed 0).bind (fun slot => some slot)).bind
    (fun next => remap post post_wellFormed next) = some 0
  rw [actual_old_false_slot_remapped]
  exact post_false_remap

/-- An actually dropped old identity stays absent through actual later reintroduction. -/
theorem actual_dropped_transport :
    transportSlotAt (SingleObj.star Bool) initial actions 2 = none := by
  change ((remap before before_wellFormed 2).bind (fun slot => some slot)).bind
    (fun next => remap post post_wellFormed next) = none
  rw [actual_old_true_slot_removed]
  rfl

/-- Exact original/final full histories are equal at the actually transported referenced slot. -/
theorem actual_retained_payload :
    (executeAt (SingleObj.star Bool) initial actions).1.1.dictionary[0]? =
      initial.1.1.dictionary[0]? := by
  change scheduled.dictionary[0]? = before.dictionary[0]?
  rw [scheduled_dictionary, before_dictionary]

theorem actual_retained_final_reference :
    (11, 0) ∈ (executeAt (SingleObj.star Bool) initial actions).1.1.references := by
  change (11, 0) ∈ scheduled.references
  rw [scheduled_references]
  simp

/-- Every actual old occurrence, including repeated keys/slots, survives the real mapM. -/
theorem actual_ordered_old_references :
    transportReferences (SingleObj.star Bool) initial actions =
      some [(11, 0), (11, 0)] := by
  change [(11, 0), (11, 0)].mapM (fun reference =>
    (transportSlotAt (SingleObj.star Bool) initial actions reference.2).map
      (fun target => (reference.1, target))) = _
  simp [actual_retained_transport]

/-- The generic support theorem is consumed with actual support, not an assumed transport oracle. -/
example : ∃ target,
    transportSlotAt (SingleObj.star Bool) initial actions 0 = some target ∧
    (11, target) ∈ (executeAt (SingleObj.star Bool) initial actions).1.1.references ∧
    (executeAt (SingleObj.star Bool) initial actions).1.1.dictionary[target]? =
      initial.1.1.dictionary[0]? :=
  transport_reference (SingleObj.star Bool) initial actions (11, 0)
    original_real_reference

/-- Valid old bounds alone cannot justify total transport: slot2 is a genuine removed branch. -/
theorem actual_bounded_totality_counter : ¬ (∀ slot, slot < initial.1.1.dictionary.length →
    ∃ target, transportSlotAt (SingleObj.star Bool) initial actions slot = some target) := by
  intro htotal
  obtain ⟨target, htarget⟩ := htotal 2 unused_slot_bound
  rw [actual_dropped_transport] at htarget
  cases htarget

/-- Later final full-payload lookup still cannot replace the cumulative retention map. -/
example : transportSlotAt (SingleObj.star Bool) initial actions 2 ≠ directLookup := by
  rw [actual_dropped_transport, direct_lookup_some]
  intro hbad
  cases hbad

example : transportReferences (SingleObj.star Bool) initial [] =
    some [(11, 0), (11, 0)] := rfl

/-- Empty batches and repeated actual checkpoints still transport every actual original reference. -/
example : ∃ references,
    transportReferences (SingleObj.star Bool) initial
      [.inl [], .inr (), .inr (), .inl retainedRows, .inr ()] = some references ∧
    references.length = initial.1.1.references.length ∧
    List.Forall₂ (fun old new => old.1 = new.1 ∧
      new ∈ (executeAt (SingleObj.star Bool) initial
        [.inl [], .inr (), .inr (), .inl retainedRows, .inr ()]).1.1.references ∧
      (executeAt (SingleObj.star Bool) initial
        [.inl [], .inr (), .inr (), .inl retainedRows, .inr ()]).1.1.dictionary[new.2]? =
        initial.1.1.dictionary[old.2]?) initial.1.1.references references :=
  transportReferences_success (SingleObj.star Bool) initial _

/-- A genuine old producer with observably different keys and a repeated keyed occurrence. -/
noncomputable def ordered : State (SingleObj Bool) Nat :=
  { before with references := [(31, 0), (17, 0), (31, 0), (19, 0)] }

theorem ordered_wellFormed : WellFormed ordered := by
  refine ⟨before_wellFormed.nodup, before_wellFormed.closed, before_wellFormed.rooted,
    before_wellFormed.cells, ?_⟩
  intro reference hreference
  have hzero : reference.2 = 0 := by
    have hmem : reference ∈ [(31, 0), (17, 0), (31, 0), (19, 0)] := hreference
    simp only [List.mem_cons] at hmem
    rcases hmem with rfl | rfl | rfl | rfl | hnil <;> first | rfl | cases hnil
  change reference.2 < before.dictionary.length
  rw [hzero, before_dictionary]
  decide

noncomputable def orderedInitial : ValidRootedState (SingleObj.star Bool) Nat :=
  ⟨⟨ordered, rfl⟩, ordered_wellFormed⟩

/-- Actual mixed producers retain the exact31,17,31,19 order, not merely the key multiset. -/
theorem actual_distinct_key_order : ∃ target,
    transportReferences (SingleObj.star Bool) orderedInitial actions =
      some [(31, target), (17, target), (31, target), (19, target)] ∧
    target < (executeAt (SingleObj.star Bool) orderedInitial actions).1.1.dictionary.length := by
  have hreference : (31, 0) ∈ orderedInitial.1.1.references := by
    change (31, 0) ∈ [(31, 0), (17, 0), (31, 0), (19, 0)]
    simp
  obtain ⟨target, htarget, hmem, _⟩ :=
    transport_reference (SingleObj.star Bool) orderedInitial actions (31, 0) hreference
  refine ⟨target, ?_, (executeAt (SingleObj.star Bool) orderedInitial actions).2.references
    (31, target) hmem⟩
  change [(31, 0), (17, 0), (31, 0), (19, 0)].mapM (fun reference =>
    (transportSlotAt (SingleObj.star Bool) orderedInitial actions reference.2).map
      (fun next => (reference.1, next))) = _
  simp [htarget]

end GRWTSK.Combinatorics.DirectedGraph.PrefixTableReferenceTransport.Checks.Positive
```

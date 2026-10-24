/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixTableCompaction

set_option autoImplicit false

open Quiver
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph
open PathUnfolding OccurrencePrefix PrefixInventory ParentTraceDictionary
open PrefixTableState PrefixTableCompaction RootedTraceRevision
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences IndexedDictionary DecisionCertificate

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixTableCompaction.Checks.Positive

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

noncomputable def oldCertificate : Certificate Nat (RootedTrace (SingleObj Bool)) where
  entries := rootedRows (SingleObj.star Bool) [(11, [falseTag]), (11, [falseTag])]
  predicate entries := ∀ entry ∈ entries, entry.2.2 = [falseTag]
  evidence := by simp [rootedRows]

example : after.root = before.root ∧
    DecodesSatisfying (liftPacked after.root (rawPacked after)) oldCertificate.predicate := by
  apply certified_compact before before_wellFormed oldCertificate
  rw [before_realEntries]
  rfl

instance boolQuiver : Quiver Bool := ⟨fun _ _ => Unit⟩

noncomputable instance boolTagDecidableEq : DecidableEq (EdgeTrace.TotalEdge Bool) :=
  Classical.decEq _

example : (compact (empty false : State Bool Nat) (empty_wellFormed false)).root ≠
    (compact (empty true : State Bool Nat) (empty_wellFormed true)).root := Bool.false_ne_true

example : decode (compact (empty false : State Bool Nat) (empty_wellFormed false)) = some [] := by
  rw [decode_compact, decode_empty]

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixTableCompaction.Checks.Positive

# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.IncrementalPrefixTable

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2501c0de1b061609284b15b7afea36476cde288` · SHA-256 `4995e41c14a4afedf0b48ea41493dd50a02446c03918469c107291f39275c781`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.IncrementalPrefixTable

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph
open PathUnfolding OccurrencePrefix PrefixInventory ParentTraceDictionary RootedTraceRevision
open IncrementalPrefixTable
open GRWTSK.Logic.FiniteSequences IndexedDictionary DictionaryRevision DecisionCertificate

namespace GRWTSK.Combinatorics.DirectedGraph.IncrementalPrefixTable.Checks.Positive

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

noncomputable def joinedOccurrence : Occurrence (SingleObj.star Bool) :=
  extend falseOccurrence (SingleObj.toHom true)

noncomputable def oldRows : List (Nat × Occurrence (SingleObj.star Bool)) :=
  [(11, falseOccurrence)]

noncomputable def newRows : List (Nat × Occurrence (SingleObj.star Bool)) :=
  [(12, trueOccurrence)]

theorem old_inventory : inventory oldRows = [[], [falseTag]] := by
  change ([[], [falseTag]] : List (List (EdgeTrace.TotalEdge (SingleObj Bool)))).dedup = _
  simp

theorem new_inventory : inventory newRows = [[], [trueTag]] := by
  change ([[], [trueTag]] : List (List (EdgeTrace.TotalEdge (SingleObj Bool)))).dedup = _
  simp

/-- Stable extension differs from canonical rightmost repacking of the combined rows. -/
theorem stable_dictionary : dictionary oldRows newRows = [[], [falseTag], [trueTag]] := by
  simp [dictionary, prefixEntries, old_inventory, new_inventory,
    IncrementalDictionary.expandedDictionary, IncrementalDictionary.missingPayloads]
  simp [Ne.symm tags_distinct]

theorem canonical_dictionary : inventory (oldRows ++ newRows) = [[falseTag], [], [trueTag]] := by
  change ([[], [falseTag], [], [trueTag]] :
    List (List (EdgeTrace.TotalEdge (SingleObj Bool)))).dedup = _
  simp [tags_distinct]

theorem old_nodes : encodedNodes oldRows = [(0, none), (1, some (0, falseTag))] := by
  simp [encodedNodes, old_inventory, nodeFor, position]

theorem stable_nodes : nodes oldRows newRows =
    [(0, none), (1, some (0, falseTag)), (1, some (0, trueTag))] := by
  simp [nodes, old_nodes, old_inventory, prefixEntries, new_inventory,
    IncrementalDictionary.missingPayloads, cell, stable_dictionary]
  simp [Ne.symm tags_distinct]

theorem old_slot_preserved_canonical_slot_changed :
    (dictionary oldRows newRows)[1]? = some [falseTag] ∧
      (inventory (oldRows ++ newRows))[1]? = some [] := by
  rw [stable_dictionary, canonical_dictionary]
  exact ⟨rfl, rfl⟩

theorem complete_old_parent_cell_preserved :
    (nodes oldRows newRows)[1]? = (encodedNodes oldRows)[1]? ∧
      (nodes oldRows newRows)[0]? = (encodedNodes oldRows)[0]? := by
  rw [stable_nodes, old_nodes]
  exact ⟨rfl, rfl⟩

example : ValidRanks (nodes oldRows newRows) := nodes_validRanks oldRows newRows

example : expandDictionary (nodes oldRows newRows) = some [[], [falseTag], [trueTag]] := by
  rw [expandDictionary_nodes, stable_dictionary]

theorem actual_real_decode : decodeReferences (representation oldRows newRows) =
    some [(11, [falseTag]), (12, [trueTag])] := decode_representation oldRows newRows

theorem no_new_rows_omitted :
    unpack (realPacked oldRows newRows) ≠ some (traceRows oldRows) := by
  rw [unpack_realPacked]
  intro hequal
  have hlength := congrArg List.length (Option.some.inj hequal)
  change 2 = 1 at hlength
  omega

example : (representation oldRows newRows).references.length = 2 :=
  real_reference_count oldRows newRows

example (entries : List (Nat × List (EdgeTrace.TotalEdge (SingleObj Bool))))
    (hdecoded : decodeReferences (representation oldRows newRows) = some entries) :
    recoverRows entries (output_valid oldRows newRows entries hdecoded) = oldRows ++ newRows :=
  output_recovers oldRows newRows entries hdecoded

noncomputable def oldCertificate : Certificate Nat (RootedTrace (SingleObj Bool)) where
  entries := rootedRows (SingleObj.star Bool) (traceRows oldRows)
  predicate entries := ∀ entry ∈ entries, entry.2.2 = [falseTag]
  evidence := by simp [rootedRows, traceRows, oldRows]; rfl

theorem old_certificate_reused :
    (encode oldRows).root = (representation oldRows newRows).root ∧
      ∃ revised : Packed Nat (RootedTrace (SingleObj Bool)),
        expandRevision (encode oldRows) (representation oldRows newRows) = some revised ∧
        DecodesSatisfying revised oldCertificate.predicate :=
  certified_old_references oldRows newRows oldCertificate rfl

/-- Old evidence does not prove a criterion of the full actual extended row list. -/
theorem full_new_predicate_not_inherited :
    ¬ DecodesSatisfying (liftPacked (SingleObj.star Bool) (realPacked oldRows newRows))
      oldCertificate.predicate := by
  rintro ⟨entries, hdecoded, hpredicate⟩
  have hfull : unpack (liftPacked (SingleObj.star Bool) (realPacked oldRows newRows)) =
      some [(11, (SingleObj.star Bool, [falseTag])), (12, (SingleObj.star Bool, [trueTag]))] := by
    rw [unpack_liftPacked, unpack_realPacked]
    rfl
  have hentries := Option.some.inj (hdecoded.symm.trans hfull)
  subst entries
  have hbad : [trueTag] = [falseTag] :=
    hpredicate (12, (SingleObj.star Bool, [trueTag])) (by simp)
  exact tags_distinct (List.singleton_inj.mp hbad).symm

noncomputable def sharedRows : List (Nat × Occurrence (SingleObj.star Bool)) :=
  [(13, joinedOccurrence)]

theorem shared_inventory : inventory sharedRows = [[], [falseTag], [falseTag, trueTag]] := by
  change ([[], [falseTag], [falseTag, trueTag]] :
    List (List (EdgeTrace.TotalEdge (SingleObj Bool)))).dedup = _
  simp

theorem shared_prefix_only_one_new_cell : nodes oldRows sharedRows =
    [(0, none), (1, some (0, falseTag)), (2, some (1, trueTag))] := by
  simp [nodes, old_nodes, old_inventory, prefixEntries, shared_inventory, dictionary,
    IncrementalDictionary.expandedDictionary, IncrementalDictionary.missingPayloads, cell]

noncomputable def repeatedRows : List (Nat × Occurrence (SingleObj.star Bool)) :=
  [(11, falseOccurrence), (11, trueOccurrence), (11, falseOccurrence)]

example : decodeReferences (representation oldRows repeatedRows) =
    some [(11, [falseTag]), (11, [falseTag]), (11, [trueTag]), (11, [falseTag])] :=
  decode_representation oldRows repeatedRows

example : (representation oldRows repeatedRows).references.length = 4 :=
  real_reference_count oldRows repeatedRows

example : dictionary oldRows [] = inventory oldRows := by
  simp [dictionary, prefixEntries, IncrementalDictionary.expandedDictionary,
    IncrementalDictionary.missingPayloads]

example : nodes oldRows [] = encodedNodes oldRows := by
  simp [nodes, prefixEntries, IncrementalDictionary.missingPayloads]

example : decodeReferences (representation oldRows []) = some [(11, [falseTag])] :=
  decode_representation oldRows []

example : decodeReferences (representation [] newRows) = some [(12, [trueTag])] :=
  decode_representation [] newRows

instance boolQuiver : Quiver Bool := ⟨fun _ _ => Unit⟩

noncomputable instance boolTagDecidableEq : DecidableEq (EdgeTrace.TotalEdge Bool) :=
  Classical.decEq _

noncomputable def emptyFalse : Representation Bool Nat :=
  representation ([] : List (Nat × Occurrence false)) []

noncomputable def emptyTrue : Representation Bool Nat :=
  representation ([] : List (Nat × Occurrence true)) []

theorem empty_table_root_retained :
    emptyFalse.nodes = emptyTrue.nodes ∧ emptyFalse.references = emptyTrue.references ∧
      emptyFalse.root ≠ emptyTrue.root := ⟨rfl, rfl, Bool.false_ne_true⟩

end GRWTSK.Combinatorics.DirectedGraph.IncrementalPrefixTable.Checks.Positive
```

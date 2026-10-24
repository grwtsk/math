# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.IncrementalPrefixTable

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe8c0cca68875e6bc04b84026459a5e6a672e6d5` · SHA-256 `539ce89917d6fb04ef264a38f3dd39cf93854faa9b28a8fc1c96fe42c540f705`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib List.Basic: Parikshit Khanna, Jeremy Avigad, Leonardo de Moura,
Floris van Doorn, Mario Carneiro. Existing local codecs retain their source credits;
imported Lean/Mathlib definitions retain named authorship and Apache-2.0 terms. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.RootedTraceRevision
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IncrementalDictionary

/-!
# Stable incremental tables of complete history prefixes

The old complete dictionary and old parent cells are literal prefixes of their
extensions. Only missing prefixes of the new actual histories receive new cells.
Each new cell chooses its parent in the final extended dictionary; old cells are
copied unchanged. Existing rank-fuel expansion reconstructs the extended complete
dictionary. The real ordered references append one per new input row, excluding
the auxiliary prefix entries used to populate the dictionary.

Actual indexed decoding and actual edge decoding recover exactly old plus new
keyed occurrences. Old decision evidence is separately reused for the old
references with the retained outer root. This is not the canonical rightmost
repacking of the concatenated rows, a runtime refinement, or a predicate of all
new rows inferred from old evidence.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedGraph.IncrementalPrefixTable

open Quiver PathUnfolding OccurrencePrefix PrefixInventory ParentTraceDictionary
open RootedTraceRevision
open GRWTSK.Logic.FiniteSequences IndexedDictionary DictionaryRevision DecisionCertificate

variable {V Key : Type*} [Quiver V] {root : V}
variable [DecidableEq (EdgeTrace.TotalEdge V)]

/-- Auxiliary Unit keys are used only to supply all new prefixes, never as real output rows. -/
noncomputable def prefixEntries (rows : List (Key × Occurrence root)) :
    List (Unit × List (EdgeTrace.TotalEdge V)) :=
  (inventory rows).map (fun initial => ((), initial))

/-- Existing incremental dictionary extension preserves the entire old dictionary literally. -/
noncomputable def dictionary (oldRows newRows : List (Key × Occurrence root)) :
    List (List (EdgeTrace.TotalEdge V)) :=
  IncrementalDictionary.expandedDictionary (inventory oldRows) (prefixEntries newRows)

theorem mem_dictionary_iff (oldRows newRows : List (Key × Occurrence root))
    (initial : List (EdgeTrace.TotalEdge V)) :
    initial ∈ dictionary oldRows newRows ↔
      initial ∈ inventory oldRows ∨ initial ∈ inventory newRows := by
  simp only [dictionary, IncrementalDictionary.expandedDictionary, List.mem_append,
    IncrementalDictionary.mem_missingPayloads_iff, prefixEntries, List.map_map,
    Function.comp_def, List.map_id_fun']
  tauto

theorem dictionary_prefix (oldRows newRows : List (Key × Occurrence root)) :
    inventory oldRows <+: dictionary oldRows newRows :=
  IncrementalDictionary.dictionary_prefix _ _

theorem dictionary_nodup (oldRows newRows : List (Key × Occurrence root)) :
    (dictionary oldRows newRows).Nodup :=
  IncrementalDictionary.expandedDictionary_nodup _ _ (inventory_nodup oldRows)

theorem dictionary_closed (oldRows newRows : List (Key × Occurrence root))
    {first second : List (EdgeTrace.TotalEdge V)}
    (hmem : second ∈ dictionary oldRows newRows) (hprefix : first <+: second) :
    first ∈ dictionary oldRows newRows := by
  rcases (mem_dictionary_iff oldRows newRows second).mp hmem with hold | hnew
  · exact (mem_dictionary_iff oldRows newRows first).mpr
      (Or.inl (prefix_closed oldRows hold hprefix))
  · exact (mem_dictionary_iff oldRows newRows first).mpr
      (Or.inr (prefix_closed newRows hnew hprefix))

theorem dictionary_valid (oldRows newRows : List (Key × Occurrence root))
    (initial : List (EdgeTrace.TotalEdge V)) (hmem : initial ∈ dictionary oldRows newRows) :
    EdgeTrace.ValidFrom root initial := by
  rcases (mem_dictionary_iff oldRows newRows initial).mp hmem with hold | hnew
  · exact inventory_valid oldRows initial hold
  · exact inventory_valid newRows initial hnew

/-- A new cell uses the final dictionary's actual parent position. -/
noncomputable def cell (entries : List (List (EdgeTrace.TotalEdge V)))
    (initial : List (EdgeTrace.TotalEdge V)) : Node V :=
  (initial.length, if hnil : initial = [] then none else
    some (@List.idxOf _ instBEqOfDecidableEq initial.dropLast entries, initial.getLast hnil))

/-- Construction copies old cells, then adds cells only for genuinely missing prefixes. -/
noncomputable def nodes (oldRows newRows : List (Key × Occurrence root)) : List (Node V) :=
  encodedNodes oldRows ++
    (IncrementalDictionary.missingPayloads (inventory oldRows) (prefixEntries newRows)).map
      (cell (dictionary oldRows newRows))

theorem nodes_prefix (oldRows newRows : List (Key × Occurrence root)) :
    encodedNodes oldRows <+: nodes oldRows newRows := List.prefix_append _ _

/-- Relate already stored old indices to final semantics without recomputing old cells. -/
theorem old_cell_eq (oldRows newRows : List (Key × Occurrence root))
    (initial : List (EdgeTrace.TotalEdge V)) (hmem : initial ∈ inventory oldRows) :
    cell (dictionary oldRows newRows) initial = nodeFor oldRows initial := by
  let : BEq (List (EdgeTrace.TotalEdge V)) := instBEqOfDecidableEq
  simp only [cell, nodeFor, position]
  by_cases hnil : initial = []
  · simp only [dif_pos hnil]
  · simp only [dif_neg hnil]
    have hparent := parent_mem oldRows initial hmem
    have hindex : (dictionary oldRows newRows).idxOf initial.dropLast =
        (inventory oldRows).idxOf initial.dropLast :=
      List.idxOf_append_of_mem hparent
    rw [hindex]

/-- Exact semantic description of the copied old cells together with the appended cells. -/
theorem nodes_eq_map (oldRows newRows : List (Key × Occurrence root)) :
    nodes oldRows newRows = (dictionary oldRows newRows).map
      (cell (dictionary oldRows newRows)) := by
  have hold : encodedNodes oldRows = (inventory oldRows).map
      (cell (dictionary oldRows newRows)) := by
    apply List.map_congr_left
    intro initial hmem
    exact (old_cell_eq oldRows newRows initial hmem).symm
  rw [nodes, hold, ← List.map_append]
  rfl

theorem old_dictionary_lookup (oldRows newRows : List (Key × Occurrence root))
    (slot : Nat) (hslot : slot < (inventory oldRows).length) :
    (dictionary oldRows newRows)[slot]? = (inventory oldRows)[slot]? :=
  List.getElem?_append_left hslot

theorem old_node_lookup (oldRows newRows : List (Key × Occurrence root))
    (slot : Nat) (hslot : slot < (encodedNodes oldRows).length) :
    (nodes oldRows newRows)[slot]? = (encodedNodes oldRows)[slot]? :=
  List.getElem?_append_left hslot

/-- The old actual parent cell and its complete stored rank/link payload are unchanged. -/
theorem old_parent_lookup (oldRows newRows : List (Key × Occurrence root))
    (slot rank parent : Nat) (edge : EdgeTrace.TotalEdge V)
    (hchild : (encodedNodes oldRows)[slot]? = some (rank, some (parent, edge))) :
    ∃ parentNode : Node V,
      (nodes oldRows newRows)[slot]? = some (rank, some (parent, edge)) ∧
      (encodedNodes oldRows)[parent]? = some parentNode ∧
      (nodes oldRows newRows)[parent]? = some parentNode ∧ parentNode.1 < rank := by
  obtain ⟨parentNode, hparent, hlt⟩ := encoded_validRanks oldRows slot _ hchild
  obtain ⟨hslot, _⟩ := List.getElem?_eq_some_iff.mp hchild
  obtain ⟨hparentSlot, _⟩ := List.getElem?_eq_some_iff.mp hparent
  exact ⟨parentNode, (old_node_lookup oldRows newRows slot hslot).trans hchild,
    hparent, (old_node_lookup oldRows newRows parent hparentSlot).trans hparent, hlt⟩

theorem node_lookup (oldRows newRows : List (Key × Occurrence root)) (slot : Nat)
    (initial : List (EdgeTrace.TotalEdge V))
    (hlookup : (dictionary oldRows newRows)[slot]? = some initial) :
    (nodes oldRows newRows)[slot]? = some (cell (dictionary oldRows newRows) initial) := by
  rw [nodes_eq_map]
  simp only [List.getElem?_map, hlookup, Option.map_some]

theorem parent_lookup (oldRows newRows : List (Key × Occurrence root))
    (initial : List (EdgeTrace.TotalEdge V)) (hmem : initial ∈ dictionary oldRows newRows) :
    (dictionary oldRows newRows)[@List.idxOf _ instBEqOfDecidableEq
      initial.dropLast (dictionary oldRows newRows)]? = some initial.dropLast := by
  let : BEq (List (EdgeTrace.TotalEdge V)) := instBEqOfDecidableEq
  exact List.getElem?_idxOf (dictionary_closed oldRows newRows hmem (List.dropLast_prefix initial))

theorem nodes_validRanks (oldRows newRows : List (Key × Occurrence root)) :
    ValidRanks (nodes oldRows newRows) := by
  intro slot node hlookup
  have hmem : node ∈ nodes oldRows newRows := List.mem_of_getElem? hlookup
  rw [nodes_eq_map] at hmem
  obtain ⟨initial, hinitial, rfl⟩ := List.mem_map.mp hmem
  by_cases hnil : initial = []
  · subst initial
    simp [cell]
  · simp only [cell, dif_neg hnil]
    exact ⟨cell (dictionary oldRows newRows) initial.dropLast,
      node_lookup oldRows newRows _ _ (parent_lookup oldRows newRows initial hinitial),
      parent_rank_lt initial hnil⟩

/-- Existing actual rank-fuel expansion reconstructs the stable dictionary. -/
theorem expand_nodes (oldRows newRows : List (Key × Occurrence root)) (fuel : Nat) :
    ∀ (initial : List (EdgeTrace.TotalEdge V)) (slot : Nat),
      initial ∈ dictionary oldRows newRows →
      (dictionary oldRows newRows)[slot]? = some initial → initial.length ≤ fuel →
      expand (nodes oldRows newRows) fuel slot = some initial := by
  induction fuel with
  | zero =>
    intro initial slot hmem hlookup hlength
    have hnil : initial = [] := List.length_eq_zero_iff.mp (by omega)
    subst initial
    simp [expand, node_lookup oldRows newRows slot [] hlookup, cell]
  | succ fuel ih =>
    intro initial slot hmem hlookup hlength
    by_cases hnil : initial = []
    · subst initial
      simp [expand, node_lookup oldRows newRows slot [] hlookup, cell]
    · have hparent := dictionary_closed oldRows newRows hmem (List.dropLast_prefix initial)
      have hparentLookup := parent_lookup oldRows newRows initial hmem
      have hrecursive := ih initial.dropLast _ hparent hparentLookup
        (by have := parent_rank_lt initial hnil; omega)
      simp only [expand, node_lookup oldRows newRows slot initial hlookup,
        Option.bind_eq_bind, Option.bind, cell, dif_neg hnil]
      rw [node_lookup oldRows newRows _ _ hparentLookup]
      simp only [cell, parent_rank_lt initial hnil, ite_true, hrecursive,
        List.dropLast_append_getLast hnil]

theorem decodeSlot_nodes (oldRows newRows : List (Key × Occurrence root)) (slot : Nat)
    (initial : List (EdgeTrace.TotalEdge V)) (hmem : initial ∈ dictionary oldRows newRows)
    (hlookup : (dictionary oldRows newRows)[slot]? = some initial) :
    decodeSlot (nodes oldRows newRows) slot = some initial := by
  simp only [decodeSlot, node_lookup oldRows newRows slot initial hlookup,
    Option.bind_eq_bind, Option.bind, cell]
  exact expand_nodes oldRows newRows initial.length initial slot hmem hlookup (Nat.le_refl _)

theorem expandDictionary_nodes (oldRows newRows : List (Key × Occurrence root)) :
    expandDictionary (nodes oldRows newRows) = some (dictionary oldRows newRows) := by
  have hlength : (nodes oldRows newRows).length = (dictionary oldRows newRows).length := by
    rw [nodes_eq_map, List.length_map]
  have hbound (slot : Fin (nodes oldRows newRows).length) :
      slot.1 < (dictionary oldRows newRows).length := hlength ▸ slot.2
  have hfun : (fun slot : Fin (nodes oldRows newRows).length =>
      decodeSlot (nodes oldRows newRows) slot.1) =
      (fun slot : Fin (nodes oldRows newRows).length =>
        some ((dictionary oldRows newRows)[slot.1]'(hbound slot))) := by
    funext slot
    exact decodeSlot_nodes oldRows newRows slot.1 _ (List.getElem_mem (hbound slot))
      (List.getElem?_eq_getElem (hbound slot))
  have hlist : (List.finRange (nodes oldRows newRows).length).map
      (fun slot => (dictionary oldRows newRows)[slot.1]'(hbound slot)) =
      dictionary oldRows newRows := by
    rw [← List.ofFn_eq_map]
    apply List.ext_getElem
    · simp only [List.length_ofFn, hlength]
    · intro index hleft hright
      simp only [List.getElem_ofFn]
  unfold expandDictionary
  rw [hfun]
  calc
    _ = some ((List.finRange (nodes oldRows newRows).length).map
        (fun slot => (dictionary oldRows newRows)[slot.1]'(hbound slot))) := List.mapM_pure
    _ = some (dictionary oldRows newRows) := congrArg some hlist

noncomputable def oldPacked (oldRows newRows : List (Key × Occurrence root)) :
    Packed Key (List (EdgeTrace.TotalEdge V)) :=
  replaceDictionary (PrefixInventory.packed oldRows) (dictionary oldRows newRows)

theorem unpack_oldPacked (oldRows newRows : List (Key × Occurrence root)) :
    unpack (oldPacked oldRows newRows) = some (traceRows oldRows) := by
  have hagreement : AgreesOnReferences (inventory oldRows) (dictionary oldRows newRows)
      (PrefixInventory.packed oldRows).references := by
    intro reference hreference
    exact (old_dictionary_lookup oldRows newRows reference.2
      (packed_valid oldRows reference hreference)).symm
  rw [oldPacked, unpack_replaceDictionary _ _ hagreement]
  exact unpack_packed oldRows

theorem oldPacked_valid (oldRows newRows : List (Key × Occurrence root)) :
    Valid (oldPacked oldRows newRows) := by
  intro reference hreference
  exact lt_of_lt_of_le (packed_valid oldRows reference hreference)
    (dictionary_prefix oldRows newRows).length_le

/-- Only the original real new rows supply appended semantic references. -/
noncomputable def realPacked (oldRows newRows : List (Key × Occurrence root)) :
    Packed Key (List (EdgeTrace.TotalEdge V)) :=
  IncrementalDictionary.appendEntries (oldPacked oldRows newRows) (traceRows newRows)

theorem new_trace_mem (oldRows newRows : List (Key × Occurrence root))
    (entry : Key × List (EdgeTrace.TotalEdge V)) (hentry : entry ∈ traceRows newRows) :
    entry.2 ∈ dictionary oldRows newRows := by
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hentry
  exact (mem_dictionary_iff oldRows newRows _).mpr
    (Or.inr (trace_mem_inventory newRows row hrow))

theorem realPacked_dictionary (oldRows newRows : List (Key × Occurrence root)) :
    (realPacked oldRows newRows).dictionary = dictionary oldRows newRows := by
  have hmissing : IncrementalDictionary.missingPayloads (dictionary oldRows newRows)
      (traceRows newRows) = [] := by
    unfold IncrementalDictionary.missingPayloads
    apply (List.dedup_eq_nil _).mpr
    apply List.filter_eq_nil_iff.mpr
    intro initial hmem
    obtain ⟨entry, hentry, rfl⟩ := List.mem_map.mp hmem
    simp [new_trace_mem oldRows newRows entry hentry]
  simp only [realPacked, IncrementalDictionary.appendEntries, oldPacked, replaceDictionary]
  rw [IncrementalDictionary.expandedDictionary, hmissing, List.append_nil]

noncomputable def representation (oldRows newRows : List (Key × Occurrence root)) :
    Representation V Key := ⟨root, nodes oldRows newRows, (realPacked oldRows newRows).references⟩

theorem expandedPacked_representation (oldRows newRows : List (Key × Occurrence root)) :
    expandedPacked (representation oldRows newRows) = some (realPacked oldRows newRows) := by
  simp only [expandedPacked, representation, expandDictionary_nodes]
  rw [← realPacked_dictionary oldRows newRows]

theorem unpack_realPacked (oldRows newRows : List (Key × Occurrence root)) :
    unpack (realPacked oldRows newRows) = some (traceRows (oldRows ++ newRows)) := by
  rw [realPacked, IncrementalDictionary.unpack_appendEntries _ _ (oldPacked_valid _ _),
    unpack_oldPacked]
  simp only [Option.map_some, traceRows, List.map_append]

theorem decode_representation (oldRows newRows : List (Key × Occurrence root)) :
    decodeReferences (representation oldRows newRows) = some (traceRows (oldRows ++ newRows)) := by
  rw [decodeReferences, expandedPacked_representation]
  exact unpack_realPacked oldRows newRows

theorem real_reference_count (oldRows newRows : List (Key × Occurrence root)) :
    (representation oldRows newRows).references.length = oldRows.length + newRows.length := by
  simp only [representation, realPacked, IncrementalDictionary.appendEntries,
    oldPacked, replaceDictionary, List.length_append, List.length_map, traceRows,
    PrefixInventory.references_length]

theorem output_valid (oldRows newRows : List (Key × Occurrence root))
    (entries : List (Key × List (EdgeTrace.TotalEdge V)))
    (hdecoded : decodeReferences (representation oldRows newRows) = some entries) :
    ∀ entry ∈ entries, EdgeTrace.ValidFrom root entry.2 := by
  have hentries : entries = traceRows (oldRows ++ newRows) :=
    Option.some.inj (hdecoded.symm.trans (decode_representation oldRows newRows))
  subst entries
  exact traceRows_valid _

theorem output_recovers (oldRows newRows : List (Key × Occurrence root))
    (entries : List (Key × List (EdgeTrace.TotalEdge V)))
    (hdecoded : decodeReferences (representation oldRows newRows) = some entries) :
    recoverRows entries (output_valid oldRows newRows entries hdecoded) = oldRows ++ newRows := by
  have hentries : entries = traceRows (oldRows ++ newRows) :=
    Option.some.inj (hdecoded.symm.trans (decode_representation oldRows newRows))
  subst entries
  exact recoverRows_traceRows _

/-- The old-reference certificate view is derived from actual expansion of the stable table. -/
theorem expand_old_revision (oldRows newRows : List (Key × Occurrence root)) :
    expandRevision (encode oldRows) (representation oldRows newRows) =
      some (liftPacked root (oldPacked oldRows newRows)) := by
  rw [expandRevision, expandedPacked_representation]
  simp only [Option.map_some, realPacked_dictionary, representation, encode,
    oldPacked, liftPacked, replaceDictionary]

variable [DecidableEq V]

/-- Old certificates keep their original premises; no criterion for all new rows is inferred. -/
theorem certified_old_references (oldRows newRows : List (Key × Occurrence root))
    (certificate : Certificate Key (RootedTrace V))
    (hentries : certificate.entries = rootedRows root (traceRows oldRows)) :
    (encode oldRows).root = (representation oldRows newRows).root ∧
      ∃ revised : Packed Key (RootedTrace V),
        expandRevision (encode oldRows) (representation oldRows newRows) = some revised ∧
        DecodesSatisfying revised certificate.predicate := by
  refine ⟨rfl, liftPacked root (oldPacked oldRows newRows), expand_old_revision _ _, ?_⟩
  apply certificate.reuse_of_same_decoding
  rw [unpack_liftPacked, unpack_oldPacked]
  have hcertificate := certificate.unpack_packed
  rw [hentries] at hcertificate
  exact hcertificate.symm

end GRWTSK.Combinatorics.DirectedGraph.IncrementalPrefixTable
```

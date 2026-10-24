# Complete source: GRWTSK.Combinatorics.DirectedGraph.ParentTraceDictionary

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8773b305729b117baed9151bfcf5425f50041a35` · SHA-256 `2bbabfa0406869776c232f79f462b5b9ea96c319e6bc052e36f3d7cc7bc24129`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib List.Basic: Parikshit Khanna, Jeremy Avigad, Leonardo de Moura,
Floris van Doorn, Mario Carneiro; List.FinRange: Mario Carneiro, Kenny Lau,
Kim Morrison, Alex Keizer. Upstream Lean/Mathlib authorship and Apache-2.0 terms
remain attached to the imports; existing local codecs retain their source credits. -/
import GRWTSK.Combinatorics.DirectedGraph.PrefixInventory
import Mathlib.Data.List.FinRange

/-!
# Root-aware finite parent and final-edge dictionaries

Each complete prefix in an actual finite occurrence inventory is represented by
its trace-length rank and either an empty marker or a parent-slot reference and
its actual last fully tagged edge. The root is retained separately. Parents may
occupy later numeric slots: reconstruction descends in trace-length rank.

The actual Option decoder checks lookups and strict stored-rank descent and
uses rank as recursion fuel. The encoded table expands exactly to the complete
prefix inventory. Existing indexed unpacking then recovers the original keyed
traces, and the existing valid-trace decoder recovers the original actual
occurrences, retaining order and multiplicity. No reconstruction is assumed.

This is a noncomputable mathematical representation theorem, not runtime/JSON
refinement, byte or optimal compression, index stability, or proof authority.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedGraph.ParentTraceDictionary

open Quiver PathUnfolding OccurrencePrefix PrefixInventory
open GRWTSK.Logic.FiniteSequences

variable {V Key : Type*} [Quiver V] {root : V}

/-- Trace-length rank, then an empty marker or a parent index and actual final edge. -/
abbrev Node (V : Type*) [Quiver V] := Nat × Option (Nat × EdgeTrace.TotalEdge V)

/-- The root and original ordered references are retained independently of the parent table. -/
structure Representation (V Key : Type*) [Quiver V] where
  root : V
  nodes : List (Node V)
  references : List (Key × Nat)

/-- Parent indices must exist and decrease in stored rank; empty nodes have rank zero. -/
def ValidRanks (nodes : List (Node V)) : Prop :=
  ∀ (slot : Nat) (node : Node V), nodes[slot]? = some node →
    match node.2 with
    | none => node.1 = 0
    | some (parent, _) =>
      ∃ parentNode : Node V, nodes[parent]? = some parentNode ∧ parentNode.1 < node.1

/-- Actual expansion, with bounded lookups and rank checks, structurally recursive on fuel. -/
noncomputable def expand (nodes : List (Node V)) :
    Nat → Nat → Option (List (EdgeTrace.TotalEdge V))
  | 0, slot => do
    let node ← nodes[slot]?
    match node.2 with
    | none => if node.1 = 0 then some [] else none
    | some _ => none
  | fuel + 1, slot => do
    let node ← nodes[slot]?
    match node.2 with
    | none => if node.1 = 0 then some [] else none
    | some (parent, edge) => do
      let parentNode ← nodes[parent]?
      if parentNode.1 < node.1 then do
        let initial ← expand nodes fuel parent
        some (initial ++ [edge])
      else none

/-- Fuel comes from the stored length rank, never from a numeric slot-order assumption. -/
noncomputable def decodeSlot (nodes : List (Node V)) (slot : Nat) :
    Option (List (EdgeTrace.TotalEdge V)) := do
  let node ← nodes[slot]?
  expand nodes node.1 slot

/-- Decode all numeric slots in their original order. -/
noncomputable def expandDictionary (nodes : List (Node V)) :
    Option (List (List (EdgeTrace.TotalEdge V))) :=
  (List.finRange nodes.length).mapM (fun slot => decodeSlot nodes slot.1)

/-- Expand the parent table, then use the existing actual indexed dictionary type. -/
noncomputable def expandedPacked (representation : Representation V Key) :
    Option (IndexedDictionary.Packed Key (List (EdgeTrace.TotalEdge V))) :=
  match expandDictionary representation.nodes with
  | none => none
  | some dictionary => some ⟨dictionary, representation.references⟩

/-- The actual Option reference decoder, after actual parent-table expansion. -/
noncomputable def decodeReferences (representation : Representation V Key) :
    Option (List (Key × List (EdgeTrace.TotalEdge V))) :=
  (expandedPacked representation).bind IndexedDictionary.unpack

variable [DecidableEq (EdgeTrace.TotalEdge V)]

/-- Exact trace equality determines the position, using the existing dictionary convention. -/
noncomputable def position (rows : List (Key × Occurrence root))
    (initial : List (EdgeTrace.TotalEdge V)) : Nat :=
  @List.idxOf _ instBEqOfDecidableEq initial (inventory rows)

theorem position_lookup (rows : List (Key × Occurrence root))
    (initial : List (EdgeTrace.TotalEdge V)) (hmem : initial ∈ inventory rows) :
    (inventory rows)[position rows initial]? = some initial := by
  let : BEq (List (EdgeTrace.TotalEdge V)) := instBEqOfDecidableEq
  exact List.getElem?_idxOf hmem

theorem position_lt (rows : List (Key × Occurrence root))
    (initial : List (EdgeTrace.TotalEdge V)) (hmem : initial ∈ inventory rows) :
    position rows initial < (inventory rows).length := by
  let : BEq (List (EdgeTrace.TotalEdge V)) := instBEqOfDecidableEq
  exact List.idxOf_lt_length_of_mem hmem

/-- Encode a complete trace as its rank and its actual parent/final-edge decomposition. -/
noncomputable def nodeFor (rows : List (Key × Occurrence root))
    (initial : List (EdgeTrace.TotalEdge V)) : Node V :=
  (initial.length, if hnil : initial = [] then none else
    some (position rows initial.dropLast, initial.getLast hnil))

noncomputable def encodedNodes (rows : List (Key × Occurrence root)) : List (Node V) :=
  (inventory rows).map (nodeFor rows)

/-- Encode the table while preserving the original root and reference occurrences. -/
noncomputable def encode (rows : List (Key × Occurrence root)) : Representation V Key :=
  ⟨root, encodedNodes rows, (PrefixInventory.packed rows).references⟩

theorem encoded_lookup (rows : List (Key × Occurrence root)) (slot : Nat)
    (initial : List (EdgeTrace.TotalEdge V))
    (hlookup : (inventory rows)[slot]? = some initial) :
    (encodedNodes rows)[slot]? = some (nodeFor rows initial) := by
  simp only [encodedNodes, List.getElem?_map, hlookup, Option.map_some]

theorem parent_mem (rows : List (Key × Occurrence root))
    (initial : List (EdgeTrace.TotalEdge V)) (hmem : initial ∈ inventory rows) :
    initial.dropLast ∈ inventory rows :=
  prefix_closed rows hmem (List.dropLast_prefix initial)

/-- The last edge really joins the decoded parent's endpoint, with the fixed root retained. -/
theorem parent_join (rows : List (Key × Occurrence root))
    (initial : List (EdgeTrace.TotalEdge V)) (hmem : initial ∈ inventory rows)
    (hnil : initial ≠ []) :
    (initial.getLast hnil).1 = EdgeTrace.finish root initial.dropLast := by
  have hvalid := inventory_valid rows initial hmem
  rw [← List.dropLast_append_getLast hnil, EdgeTrace.validFrom_append_iff] at hvalid
  exact hvalid.2.1

omit [DecidableEq (EdgeTrace.TotalEdge V)] in
theorem parent_rank_lt (initial : List (EdgeTrace.TotalEdge V)) (hnil : initial ≠ []) :
    initial.dropLast.length < initial.length := by
  have hpos : 0 < initial.length := List.length_pos_iff.mpr hnil
  simp only [List.length_dropLast]
  omega

theorem nodeFor_empty_iff (rows : List (Key × Occurrence root))
    (initial : List (EdgeTrace.TotalEdge V)) : (nodeFor rows initial).2 = none ↔ initial = [] := by
  by_cases hnil : initial = [] <;> simp [nodeFor, hnil]

/-- Every actual encoded parent reference is in bounds and strictly smaller in trace-length rank. -/
theorem encoded_validRanks (rows : List (Key × Occurrence root)) :
    ValidRanks (encodedNodes rows) := by
  intro slot node hlookup
  have hmem : node ∈ encodedNodes rows := List.mem_of_getElem? hlookup
  obtain ⟨initial, hinitial, rfl⟩ := List.mem_map.mp hmem
  by_cases hnil : initial = []
  · subst initial
    simp [nodeFor]
  · simp only [nodeFor, dif_neg hnil]
    exact ⟨nodeFor rows initial.dropLast,
      encoded_lookup rows _ _ (position_lookup rows _ (parent_mem rows initial hinitial)),
      parent_rank_lt initial hnil⟩

/-- Actual expansion equals the original trace when fuel covers its length rank. -/
theorem expand_encoded (rows : List (Key × Occurrence root)) (fuel : Nat) :
    ∀ (initial : List (EdgeTrace.TotalEdge V)) (slot : Nat),
      initial ∈ inventory rows → (inventory rows)[slot]? = some initial →
      initial.length ≤ fuel → expand (encodedNodes rows) fuel slot = some initial := by
  induction fuel with
  | zero =>
    intro initial slot hmem hlookup hlength
    have hnil : initial = [] := List.length_eq_zero_iff.mp (by omega)
    subst initial
    simp [expand, encoded_lookup rows slot [] hlookup, nodeFor]
  | succ fuel ih =>
    intro initial slot hmem hlookup hlength
    by_cases hnil : initial = []
    · subst initial
      simp [expand, encoded_lookup rows slot [] hlookup, nodeFor]
    · have hparent := parent_mem rows initial hmem
      have hparentLookup := position_lookup rows initial.dropLast hparent
      have hrecursive := ih initial.dropLast (position rows initial.dropLast) hparent
        hparentLookup (by have := parent_rank_lt initial hnil; omega)
      simp only [expand, encoded_lookup rows slot initial hlookup, Option.bind_eq_bind, Option.bind,
        nodeFor, dif_neg hnil]
      rw [encoded_lookup rows _ _ hparentLookup]
      simp only [nodeFor, parent_rank_lt initial hnil, ite_true,
        hrecursive, List.dropLast_append_getLast hnil]

/-- Every valid encoded slot is reconstructed by the actual rank-fuel decoder. -/
theorem decodeSlot_encoded (rows : List (Key × Occurrence root)) (slot : Nat)
    (initial : List (EdgeTrace.TotalEdge V)) (hmem : initial ∈ inventory rows)
    (hlookup : (inventory rows)[slot]? = some initial) :
    decodeSlot (encodedNodes rows) slot = some initial := by
  simp only [decodeSlot, encoded_lookup rows slot initial hlookup,
    Option.bind_eq_bind, Option.bind, nodeFor]
  exact expand_encoded rows initial.length initial slot hmem hlookup (Nat.le_refl _)

/-- All encoded slots expand to the exact original complete dictionary in its actual order. -/
theorem expandDictionary_encoded (rows : List (Key × Occurrence root)) :
    expandDictionary (encodedNodes rows) = some (inventory rows) := by
  have hlength : (encodedNodes rows).length = (inventory rows).length := List.length_map _
  have hbound (slot : Fin (encodedNodes rows).length) : slot.1 < (inventory rows).length :=
    hlength ▸ slot.2
  have hfun : (fun slot : Fin (encodedNodes rows).length =>
      decodeSlot (encodedNodes rows) slot.1) =
      (fun slot : Fin (encodedNodes rows).length =>
        some ((inventory rows)[slot.1]'(hbound slot))) := by
    funext slot
    exact decodeSlot_encoded rows slot.1 _ (List.getElem_mem (hbound slot))
      (List.getElem?_eq_getElem (hbound slot))
  have hlist : (List.finRange (encodedNodes rows).length).map
      (fun slot => (inventory rows)[slot.1]'(hbound slot)) = inventory rows := by
    rw [← List.ofFn_eq_map]
    apply List.ext_getElem
    · simp only [List.length_ofFn, hlength]
    · intro index hleft hright
      simp only [List.getElem_ofFn]
  unfold expandDictionary
  rw [hfun]
  calc
    _ = some ((List.finRange (encodedNodes rows).length).map
        (fun slot => (inventory rows)[slot.1]'(hbound slot))) :=
      List.mapM_pure
    _ = some (inventory rows) := congrArg some hlist

theorem expandedPacked_encode (rows : List (Key × Occurrence root)) :
    expandedPacked (encode rows) = some (PrefixInventory.packed rows) := by
  simp only [expandedPacked, encode, expandDictionary_encoded]
  rfl

/-- The actual Option decoder returns every original key and full trace, in order. -/
theorem decodeReferences_encode (rows : List (Key × Occurrence root)) :
    decodeReferences (encode rows) = some (traceRows rows) := by
  rw [decodeReferences, expandedPacked_encode]
  exact unpack_packed rows

/-- A successful actual output itself supplies all valid-root and edge-join premises. -/
theorem decoded_valid (rows : List (Key × Occurrence root))
    (entries : List (Key × List (EdgeTrace.TotalEdge V)))
    (hdecoded : decodeReferences (encode rows) = some entries) :
    ∀ entry ∈ entries, EdgeTrace.ValidFrom root entry.2 := by
  apply unpack_valid rows entries
  simpa only [decodeReferences, expandedPacked_encode,
    Option.bind_eq_bind, Option.bind] using hdecoded

/-- Actual parent expansion, indexed unpacking and edge decoding recover full occurrence rows. -/
theorem decoded_recovers (rows : List (Key × Occurrence root))
    (entries : List (Key × List (EdgeTrace.TotalEdge V)))
    (hdecoded : decodeReferences (encode rows) = some entries) :
    recoverRows entries (decoded_valid rows entries hdecoded) = rows := by
  apply recoverRows_of_unpack rows entries _ (decoded_valid rows entries hdecoded)
  simpa only [decodeReferences, expandedPacked_encode,
    Option.bind_eq_bind, Option.bind] using hdecoded

/-- Nonempty input has an empty prefix; empty input has no inventory slots. -/
theorem empty_mem_iff (rows : List (Key × Occurrence root)) :
    [] ∈ inventory rows ↔ rows ≠ [] := by
  rw [mem_inventory_iff]
  constructor
  · rintro ⟨row, hrow, _⟩ rfl
    exact List.not_mem_nil hrow
  · intro hne
    obtain ⟨row, hrow⟩ := List.exists_mem_of_ne_nil rows hne
    exact ⟨row, hrow, List.nil_prefix⟩

/-- Exactly one complete empty trace represents the retained root when the input is nonempty. -/
theorem empty_count (rows : List (Key × Occurrence root)) (hne : rows ≠ []) :
    (inventory rows).count [] = 1 := by
  rw [(inventory_nodup rows).count]
  simp only [(empty_mem_iff rows).mpr hne, if_true]

omit [DecidableEq (EdgeTrace.TotalEdge V)] in
/-- Empty words alone cannot recover two distinct roots. -/
theorem no_root_decoder {first second : V} (hdistinct : first ≠ second) :
    ¬ ∃ recoverRoot : List (EdgeTrace.TotalEdge V) → V,
      (∀ vertex : V, recoverRoot (trace (origin vertex)) = vertex) := by
  rintro ⟨recoverRoot, hrecover⟩
  exact hdistinct ((hrecover first).symm.trans (hrecover second))

end GRWTSK.Combinatorics.DirectedGraph.ParentTraceDictionary
```

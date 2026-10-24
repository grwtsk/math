# Complete source: GRWTSK.Combinatorics.DirectedGraph.PrefixInventory

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5058f6bca1f6e0f7b896e091059c4f08fe3193e` · SHA-256 `980fbc1604871150633fa14d356945b8ca5e8cb24acd7fb6a10f300a3a992eb5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib List.Infix and List.Dedup: Mario Carneiro; upstream authorship and
Apache-2.0 licensing remain attached to their imports. Existing occurrence and
dictionary constructions retain the credit in their source modules. -/
import GRWTSK.Combinatorics.DirectedGraph.OccurrencePrefix
import GRWTSK.Logic.FiniteSequences.IndexedDictionary
import Mathlib.Data.List.Infix

/-!
# A finite inventory of complete path-history prefixes

For a finite list of keyed actual occurrences at one fixed root, the inventory
is exactly the deduplicated concatenation of all initial lists of their complete
typed edge traces. It is prefix closed, consists of valid histories, and has
length at most the sum of the input trace lengths plus one per row.

The existing indexed dictionary stores this inventory and ordered references
for the original keyed traces. Its actual decoder preserves keys, order and
multiplicity. The proof-indexed existing edge decoder then recovers the original
occurrences, using full trace identity rather than just their endpoints.

Decidable equality is required on complete typed edges. This is a finite
mathematical snapshot, not a byte compression bound, incremental index stability,
parent-pointer encoding, or runtime/JSON refinement theorem.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedGraph.PrefixInventory

open Quiver PathUnfolding OccurrencePrefix

open GRWTSK.Logic.FiniteSequences

variable {V Key : Type*} [Quiver V] {root : V}

/-- Keep each key and replace its occurrence by the complete chronological trace. -/
def traceRows (rows : List (Key × Occurrence root)) :
    List (Key × List (EdgeTrace.TotalEdge V)) :=
  rows.map (fun row => (row.1, trace row.2))

variable [DecidableEq (EdgeTrace.TotalEdge V)]

/-- All prefixes, with exact duplicate complete traces removed. -/
noncomputable def inventory (rows : List (Key × Occurrence root)) :
    List (List (EdgeTrace.TotalEdge V)) :=
  (rows.flatMap (fun row => (trace row.2).inits)).dedup

/-- Membership means exactly being a prefix of some actual input history. -/
theorem mem_inventory_iff (rows : List (Key × Occurrence root))
    (initial : List (EdgeTrace.TotalEdge V)) :
    initial ∈ inventory rows ↔ ∃ row ∈ rows, initial <+: trace row.2 := by
  simp only [inventory, List.mem_dedup, List.mem_flatMap, List.mem_inits]

theorem trace_mem_inventory (rows : List (Key × Occurrence root))
    (row : Key × Occurrence root) (hrow : row ∈ rows) :
    trace row.2 ∈ inventory rows :=
  (mem_inventory_iff rows _).mpr ⟨row, hrow, List.prefix_rfl⟩

/-- Every prefix of an inventoried trace is inventoried as well. -/
theorem prefix_closed (rows : List (Key × Occurrence root))
    {first second : List (EdgeTrace.TotalEdge V)}
    (hsecond : second ∈ inventory rows) (hprefix : first <+: second) :
    first ∈ inventory rows := by
  obtain ⟨row, hrow, htrace⟩ := (mem_inventory_iff rows second).mp hsecond
  exact (mem_inventory_iff rows first).mpr ⟨row, hrow, hprefix.trans htrace⟩

theorem inventory_nodup (rows : List (Key × Occurrence root)) :
    (inventory rows).Nodup := List.nodup_dedup _

/-- Every stored prefix satisfies the actual root and all consecutive edge joins. -/
theorem inventory_valid (rows : List (Key × Occurrence root))
    (initial : List (EdgeTrace.TotalEdge V)) (hmem : initial ∈ inventory rows) :
    EdgeTrace.ValidFrom root initial := by
  obtain ⟨row, _, suffix, hsuffix⟩ := (mem_inventory_iff rows initial).mp hmem
  have hvalid := EdgeTrace.validFrom_encodePath row.2.path
  change EdgeTrace.ValidFrom root (trace row.2) at hvalid
  rw [← hsuffix] at hvalid
  exact ((EdgeTrace.validFrom_append_iff root initial suffix).mp hvalid).1

/-- Decode an inventoried prefix to an actual existing occurrence at the fixed root. -/
noncomputable def occurrence (rows : List (Key × Occurrence root))
    (initial : List (EdgeTrace.TotalEdge V)) (hmem : initial ∈ inventory rows) :
    Occurrence root :=
  ⟨EdgeTrace.decode root initial (inventory_valid rows initial hmem)⟩

theorem trace_occurrence (rows : List (Key × Occurrence root))
    (initial : List (EdgeTrace.TotalEdge V)) (hmem : initial ∈ inventory rows) :
    trace (occurrence rows initial hmem) = initial :=
  EdgeTrace.encode_decode root initial (inventory_valid rows initial hmem)

/-- A referenced original trace recovers that actual occurrence, not only its endpoint. -/
theorem occurrence_trace (rows : List (Key × Occurrence root))
    (row : Key × Occurrence root) (hrow : row ∈ rows) :
    occurrence rows (trace row.2) (trace_mem_inventory rows row hrow) = row.2 :=
  trace_injective (trace_occurrence rows _ _)

/-- A finite upper bound counts all prefixes before sharing identical full histories. -/
theorem inventory_length_le (rows : List (Key × Occurrence root)) :
    (inventory rows).length ≤ (rows.map (fun row => (trace row.2).length + 1)).sum := by
  calc
    (inventory rows).length ≤
        (rows.flatMap (fun row => (trace row.2).inits)).length :=
      (List.dedup_sublist _).length_le
    _ = (rows.map (fun row => (trace row.2).length + 1)).sum := by
      simp only [List.length_flatMap, List.length_inits]

/-- Use the existing dictionary representation with one reference per original row. -/
noncomputable def packed (rows : List (Key × Occurrence root)) :
    IndexedDictionary.Packed Key (List (EdgeTrace.TotalEdge V)) where
  dictionary := inventory rows
  references := (traceRows rows).map (fun row =>
    (row.1, @List.idxOf _ instBEqOfDecidableEq row.2 (inventory rows)))

/-- Actual dictionary decoding retains all original keys, complete traces, order and repetitions. -/
theorem unpack_packed (rows : List (Key × Occurrence root)) :
    IndexedDictionary.unpack (packed rows) = some (traceRows rows) := by
  have hmem : ∀ entry ∈ traceRows rows, entry.2 ∈ inventory rows := by
    intro entry hentry
    obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hentry
    exact trace_mem_inventory rows row hrow
  simpa only [IndexedDictionary.unpack, packed] using
    IndexedDictionary.unpack_map_indices (inventory rows) (traceRows rows) hmem

/-- Original references always point to a present inventory slot. -/
theorem packed_valid (rows : List (Key × Occurrence root)) :
    IndexedDictionary.Valid (packed rows) := by
  let : BEq (List (EdgeTrace.TotalEdge V)) := instBEqOfDecidableEq
  intro reference hreference
  obtain ⟨entry, hentry, rfl⟩ := List.mem_map.mp hreference
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hentry
  exact List.idxOf_lt_length_of_mem (trace_mem_inventory rows row hrow)

/-- Dictionary sharing never removes an original keyed occurrence reference. -/
theorem references_length (rows : List (Key × Occurrence root)) :
    (packed rows).references.length = rows.length := by
  simp only [packed, traceRows, List.length_map]

omit [DecidableEq (EdgeTrace.TotalEdge V)] in
/-- Decode a finite list of valid traces with the existing proof-indexed path decoder. -/
noncomputable def recoverRows (entries : List (Key × List (EdgeTrace.TotalEdge V)))
    (hvalid : ∀ entry ∈ entries, EdgeTrace.ValidFrom root entry.2) :
    List (Key × Occurrence root) :=
  entries.attach.map (fun entry =>
    (entry.1.1, ⟨EdgeTrace.decode root entry.1.2 (hvalid entry.1 entry.2)⟩))

omit [DecidableEq (EdgeTrace.TotalEdge V)] in
theorem traceRows_valid (rows : List (Key × Occurrence root)) :
    ∀ entry ∈ traceRows rows, EdgeTrace.ValidFrom root entry.2 := by
  intro entry hentry
  obtain ⟨row, _, rfl⟩ := List.mem_map.mp hentry
  exact EdgeTrace.validFrom_encodePath row.2.path

omit [DecidableEq (EdgeTrace.TotalEdge V)] in
/-- Full typed traces recover the entire ordered keyed occurrence list. -/
theorem recoverRows_traceRows (rows : List (Key × Occurrence root)) :
    recoverRows (traceRows rows) (traceRows_valid rows) = rows := by
  unfold recoverRows traceRows
  rw [List.attach_map, List.map_map]
  calc
    _ = rows.attach.map (fun row => row.1) := by
      apply List.map_congr_left
      intro row _
      rcases row with ⟨⟨key, node⟩, hrow⟩
      change (key, _) = (key, node)
      apply Prod.ext
      · rfl
      · apply trace_injective
        exact EdgeTrace.encode_decode root _ _
    _ = rows := List.attach_map_subtype_val rows

/-- Any successful actual unpacking recovers precisely the original actual occurrences. -/
theorem recoverRows_of_unpack (rows : List (Key × Occurrence root))
    (entries : List (Key × List (EdgeTrace.TotalEdge V)))
    (hunpack : IndexedDictionary.unpack (packed rows) = some entries)
    (hvalid : ∀ entry ∈ entries, EdgeTrace.ValidFrom root entry.2) :
    recoverRows entries hvalid = rows := by
  have hequal : entries = traceRows rows :=
    Option.some.inj (hunpack.symm.trans (unpack_packed rows))
  subst entries
  exact recoverRows_traceRows rows

/-- Every actual successful output already supplies all decoder validity premises. -/
theorem unpack_valid (rows : List (Key × Occurrence root))
    (entries : List (Key × List (EdgeTrace.TotalEdge V)))
    (hunpack : IndexedDictionary.unpack (packed rows) = some entries) :
    ∀ entry ∈ entries, EdgeTrace.ValidFrom root entry.2 := by
  have hequal : entries = traceRows rows :=
    Option.some.inj (hunpack.symm.trans (unpack_packed rows))
  subst entries
  exact traceRows_valid rows

/-- Unpacking and actual history reconstruction require no extra output-validity assumption. -/
theorem unpack_recovers (rows : List (Key × Occurrence root))
    (entries : List (Key × List (EdgeTrace.TotalEdge V)))
    (hunpack : IndexedDictionary.unpack (packed rows) = some entries) :
    recoverRows entries (unpack_valid rows entries hunpack) = rows :=
  recoverRows_of_unpack rows entries hunpack (unpack_valid rows entries hunpack)

@[simp]
theorem inventory_nil : inventory ([] : List (Key × Occurrence root)) = [] := rfl

@[simp]
theorem inventory_singleton_origin (key : Key) :
    inventory [(key, origin root)] = [[]] := by
  simp [inventory, trace, EdgeTrace.encode, origin, ofPath]

end GRWTSK.Combinatorics.DirectedGraph.PrefixInventory
```

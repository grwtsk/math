/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib and Lean imports retain upstream authorship and licensing. -/
import GRWTSK.Logic.FiniteSequences.DictionaryRevision

/-!
# Stable incremental indexed dictionaries

`expandedDictionary` retains the complete original dictionary as a literal prefix
and appends only distinct missing payloads. `appendEntries` retains every original
key-index reference and appends an index for each new source occurrence.

For valid original references, the actual decoder reconstructs the old decoded
rows followed by the new rows. The specialization to an original `pack` uses
the existing proved `unpack_pack`, rather than an assumed codec law.

Validity matters: extending an empty dictionary can give a previously missing
slot a payload. A checked counterexample shows that the old decoding can then
change. These finite-list theorems do not verify hashing, compression, external
serialization, source custody, filesystem updates, or a Python refinement.
-/

set_option autoImplicit false

namespace GRWTSK.Logic.FiniteSequences.IncrementalDictionary

open IndexedDictionary DictionaryRevision

variable {Key Payload : Type*} [DecidableEq Payload]

/-- Distinct appended payloads absent from the original dictionary.
Within this new suffix, `List.dedup` retains rightmost occurrences. -/
def missingPayloads (dictionary : List Payload) (entries : List (Key × Payload)) :
    List Payload :=
  ((entries.map Prod.snd).filter (fun payload => decide (payload ∉ dictionary))).dedup

/-- Expand by a suffix of new payloads, leaving all existing numeric slots unchanged. -/
def expandedDictionary (dictionary : List Payload) (entries : List (Key × Payload)) :
    List Payload :=
  dictionary ++ missingPayloads dictionary entries

/-- Preserve original reference occurrences and append one reference per new entry. -/
def appendEntries (original : Packed Key Payload) (entries : List (Key × Payload)) :
    Packed Key Payload :=
  let dictionary := expandedDictionary original.dictionary entries
  ⟨dictionary, original.references ++
    entries.map (fun entry => (entry.1, dictionary.idxOf entry.2))⟩

/-- The extension adds exactly those payload values appearing in the new rows but absent before. -/
theorem mem_missingPayloads_iff (dictionary : List Payload)
    (entries : List (Key × Payload)) (payload : Payload) :
    payload ∈ missingPayloads dictionary entries ↔
      payload ∈ entries.map Prod.snd ∧ payload ∉ dictionary := by
  simp [missingPayloads]

theorem missingPayloads_nodup (dictionary : List Payload)
    (entries : List (Key × Payload)) :
    (missingPayloads dictionary entries).Nodup :=
  List.nodup_dedup _

/-- The original dictionary remains an exact ordered prefix, including all previous slots. -/
theorem dictionary_prefix (dictionary : List Payload) (entries : List (Key × Payload)) :
    dictionary <+: expandedDictionary dictionary entries :=
  List.prefix_append _ _

/-- Every new payload has an actual slot in the expanded dictionary. -/
theorem payload_mem_expandedDictionary (dictionary : List Payload)
    {entries : List (Key × Payload)} {entry : Key × Payload} (hentry : entry ∈ entries) :
    entry.2 ∈ expandedDictionary dictionary entries := by
  by_cases hmem : entry.2 ∈ dictionary
  · exact List.mem_append.mpr (Or.inl hmem)
  · exact List.mem_append.mpr (Or.inr
      ((mem_missingPayloads_iff dictionary entries entry.2).mpr
        ⟨List.mem_map.mpr ⟨entry, hentry, rfl⟩, hmem⟩))

/-- A duplicate-free original dictionary remains duplicate-free after extension. -/
theorem expandedDictionary_nodup (dictionary : List Payload)
    (entries : List (Key × Payload)) (hnodup : dictionary.Nodup) :
    (expandedDictionary dictionary entries).Nodup := by
  apply List.nodup_append.mpr
  refine ⟨hnodup, missingPayloads_nodup dictionary entries, ?_⟩
  intro a ha b hb hab
  exact ((mem_missingPayloads_iff dictionary entries b).mp hb).2 (hab ▸ ha)

/-- No old occurrence or numeric reference is deleted, merged, or reordered. -/
theorem references_prefix (original : Packed Key Payload) (entries : List (Key × Payload)) :
    original.references <+: (appendEntries original entries).references :=
  List.prefix_append _ _

/-- The complete new ordered key list is the original occurrence list followed by new keys. -/
theorem appendEntries_keys (original : Packed Key Payload) (entries : List (Key × Payload)) :
    (appendEntries original entries).references.map Prod.fst =
      original.references.map Prod.fst ++ entries.map Prod.fst := by
  simp [appendEntries, List.map_map]

/-- Appending no new rows leaves the exact packed representation unchanged. -/
theorem appendEntries_nil (original : Packed Key Payload) : appendEntries original [] = original := by
  cases original
  simp [appendEntries, expandedDictionary, missingPayloads]

/-- Old optional lookups agree with the expansion when the old references are in bounds. -/
theorem agreement_of_valid (original : Packed Key Payload) (entries : List (Key × Payload))
    (hvalid : Valid original) :
    AgreesOnReferences original.dictionary (expandedDictionary original.dictionary entries)
      original.references := by
  intro reference hreference
  exact (List.getElem?_append_left (hvalid reference hreference)).symm

/-- Reusing exactly the old references against the extension preserves their actual decoder. -/
theorem unpack_original_references (original : Packed Key Payload)
    (entries : List (Key × Payload)) (hvalid : Valid original) :
    unpack (replaceDictionary original (expandedDictionary original.dictionary entries)) =
      unpack original :=
  unpack_replaceDictionary _ _ (agreement_of_valid original entries hvalid)

/-- All original and appended references are in bounds after a valid extension. -/
theorem appendEntries_valid (original : Packed Key Payload) (entries : List (Key × Payload))
    (hvalid : Valid original) : Valid (appendEntries original entries) := by
  intro reference hreference
  change reference ∈ original.references ++ entries.map
    (fun entry => (entry.1, (expandedDictionary original.dictionary entries).idxOf entry.2))
      at hreference
  rcases List.mem_append.mp hreference with hold | hnew
  · exact Nat.lt_of_lt_of_le (hvalid reference hold)
      (dictionary_prefix original.dictionary entries).length_le
  · obtain ⟨entry, hentry, rfl⟩ := List.mem_map.mp hnew
    exact List.idxOf_lt_length_of_mem (payload_mem_expandedDictionary original.dictionary hentry)

/-- Actual incremental reconstruction preserves the old decoded sequence and appends every new row. -/
theorem unpack_appendEntries (original : Packed Key Payload) (entries : List (Key × Payload))
    (hvalid : Valid original) :
    unpack (appendEntries original entries) =
      (unpack original).map (fun rows => rows ++ entries) := by
  let dictionary := expandedDictionary original.dictionary entries
  have htail := unpack_map_indices dictionary entries
    (fun _ h => payload_mem_expandedDictionary original.dictionary h)
  have hold : original.references.mapM (decodeReference dictionary) = unpack original :=
    unpack_original_references original entries hvalid
  change (original.references ++ entries.map
    (fun entry => (entry.1, dictionary.idxOf entry.2))).mapM (decodeReference dictionary) =
      (unpack original).map (fun rows => rows ++ entries)
  rw [List.mapM_append, htail, hold]
  cases unpack original <;> rfl

/-- Freshly packed old rows admit exact incremental decoding, using the established codec theorem. -/
theorem unpack_appendEntries_pack (oldRows entries : List (Key × Payload)) :
    unpack (appendEntries (pack oldRows) entries) = some (oldRows ++ entries) := by
  rw [unpack_appendEntries _ _ (pack_valid oldRows), unpack_pack]
  rfl

/-- New payloads can fill invalid old slots, so the validity hypothesis is essential. -/
theorem missing_validity_counterexample :
    let invalid : Packed Nat Nat := ⟨[], [(11, 0)]⟩
    let entries : List (Nat × Nat) := [(12, 7)]
    ¬ Valid invalid ∧
      unpack invalid = none ∧
      unpack (replaceDictionary invalid (expandedDictionary invalid.dictionary entries)) =
        some [(11, 7)] ∧
      unpack (appendEntries invalid entries) = some [(11, 7), (12, 7)] ∧
      unpack (appendEntries invalid entries) ≠
        (unpack invalid).map (fun rows => rows ++ entries) := by
  refine ⟨?_, rfl, rfl, rfl, ?_⟩
  · simp [Valid]
  · decide

end GRWTSK.Logic.FiniteSequences.IncrementalDictionary

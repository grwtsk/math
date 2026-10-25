# Complete source: GRWTSK.Logic.FiniteSequences.IndexedDictionary

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ecf0105e1883c7074d68264248ef1cea613e480c` · SHA-256 `1cd074c5faeff7936497d5b61b0323d9a8e0e122b18e5e9d911b23c9ed6fb717`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import Mathlib.Data.List.Dedup
import Mathlib.Data.List.Basic

/-!
# Exact finite dictionaries with indexed references

`pack` interns equal payloads in a duplicate-free dictionary. It retains one
reference for every input occurrence, including repeated keys and payloads.
`unpack` checks every dictionary index and fails if a referenced index is absent.
The main contract is exact equality `unpack (pack entries) = some entries`.

These statements concern finite Lean lists and decidable equality. They do not
verify a byte serializer, cryptographic hash, compression library, filesystem,
repository synchronization, or a runtime adapter implementing these definitions.
No collision-freedom or external-integrity assumption is used by this codec.
-/

set_option autoImplicit false

namespace GRWTSK.Logic.FiniteSequences.IndexedDictionary

variable {Key Payload : Type*}

/-- A finite payload dictionary and an ordered list of key-index occurrences.
Indices are natural numbers, so malformed external representations can be modeled.
Neither keys nor references are deduplicated. -/
structure Packed (Key Payload : Type*) where
  dictionary : List Payload
  references : List (Key × Nat)

/-- Decode one reference using a checked dictionary lookup. -/
def decodeReference (dictionary : List Payload) (reference : Key × Nat) :
    Option (Key × Payload) :=
  dictionary[reference.2]?.map (fun payload => (reference.1, payload))

/-- Decode all references in occurrence order; any missing lookup returns `none`. -/
def unpack (packed : Packed Key Payload) : Option (List (Key × Payload)) :=
  packed.references.mapM (decodeReference packed.dictionary)

/-- All referenced dictionary indices lie within bounds. -/
def Valid (packed : Packed Key Payload) : Prop :=
  ∀ reference ∈ packed.references, reference.2 < packed.dictionary.length

variable [DecidableEq Payload]

/-- Intern payloads using exact decidable equality, keeping all input occurrences.
`List.dedup` retains the rightmost occurrence of each dictionary payload. -/
def pack (entries : List (Key × Payload)) : Packed Key Payload :=
  let dictionary := (entries.map Prod.snd).dedup
  ⟨dictionary, entries.map (fun entry => (entry.1, dictionary.idxOf entry.2))⟩

/-- Every payload appearing in the input appears in its packed dictionary. -/
theorem payload_mem_dictionary {entries : List (Key × Payload)}
    {entry : Key × Payload} (h : entry ∈ entries) :
    entry.2 ∈ (pack entries).dictionary := by
  exact List.mem_dedup.mpr (List.mem_map.mpr ⟨entry, h, rfl⟩)

/-- Equal payloads occupy only one dictionary slot. -/
theorem pack_dictionary_nodup (entries : List (Key × Payload)) :
    (pack entries).dictionary.Nodup :=
  List.nodup_dedup _

/-- Each encoded reference is a valid dictionary index. -/
theorem pack_reference_bound (entries : List (Key × Payload))
    {reference : Key × Nat} (h : reference ∈ (pack entries).references) :
    reference.2 < (pack entries).dictionary.length := by
  obtain ⟨entry, hentry, rfl⟩ := List.mem_map.mp h
  exact List.idxOf_lt_length_of_mem (payload_mem_dictionary hentry)

/-- Packing always produces a well-formed indexed dictionary. -/
theorem pack_valid (entries : List (Key × Payload)) : Valid (pack entries) :=
  fun _ h => pack_reference_bound entries h

/-- The reference list retains exactly the ordered key sequence, with multiplicity. -/
theorem pack_references_keys (entries : List (Key × Payload)) :
    (pack entries).references.map Prod.fst = entries.map Prod.fst := by
  simp [pack, List.map_map]

/-- Value interning does not remove source occurrences. -/
theorem pack_references_length (entries : List (Key × Payload)) :
    (pack entries).references.length = entries.length := by
  simp [pack]

/-- Decoding an index formed from a member of the dictionary returns that payload. -/
theorem decodeReference_index_of_mem (dictionary : List Payload)
    (key : Key) (payload : Payload) (h : payload ∈ dictionary) :
    decodeReference dictionary (key, dictionary.idxOf payload) = some (key, payload) := by
  simp [decodeReference, List.getElem?_idxOf h]

/-- Encoding and decoding against a dictionary covering every payload is exact. -/
theorem unpack_map_indices (dictionary : List Payload)
    (entries : List (Key × Payload))
    (h : ∀ entry ∈ entries, entry.2 ∈ dictionary) :
    (entries.map (fun entry => (entry.1, dictionary.idxOf entry.2))).mapM
      (decodeReference dictionary) = some entries := by
  induction entries with
  | nil => rfl
  | cons entry entries ih =>
    have hentry : entry.2 ∈ dictionary := h entry (List.mem_cons_self ..)
    have htail : ∀ e ∈ entries, e.2 ∈ dictionary :=
      fun e he => h e (List.mem_cons_of_mem _ he)
    simp [List.mapM_cons, decodeReference_index_of_mem dictionary entry.1 entry.2 hentry,
      ih htail]

/-- Exact round trip: source keys, payloads, multiplicity, and order all survive. -/
theorem unpack_pack (entries : List (Key × Payload)) :
    unpack (pack entries) = some entries := by
  exact unpack_map_indices (pack entries).dictionary entries
    (fun _ h => payload_mem_dictionary h)

/-- Equality of packed representations implies equality of the complete source lists. -/
theorem pack_injective : Function.Injective (pack (Key := Key) (Payload := Payload)) := by
  intro entries other h
  have heq := congrArg unpack h
  simpa only [unpack_pack, Option.some.injEq] using heq

/-- Exact round trip also preserves every optional position, including out-of-range ones. -/
theorem unpack_pack_position (entries : List (Key × Payload)) (index : Nat) :
    (unpack (pack entries)).map (fun decoded => decoded[index]?) = some entries[index]? := by
  rw [unpack_pack]
  rfl

end GRWTSK.Logic.FiniteSequences.IndexedDictionary
```

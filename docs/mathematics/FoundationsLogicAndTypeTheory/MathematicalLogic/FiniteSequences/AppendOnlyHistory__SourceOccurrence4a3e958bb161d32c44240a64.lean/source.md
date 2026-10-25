# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.AppendOnlyHistory

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `495b68dccadf415a5d3b361aa5853cf3c40e256b` · SHA-256 `a35ca082c9a546fdbb5c1baccc5a85c6717eddcdd7d0c760fb7cf6f40c40dbae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib and Lean imports retain upstream authorship and licensing. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DictionaryRevision

/-!
# Checked ordered history and indexed dictionary reconstruction

`checkPrefix` uses Lean's actual Boolean list-prefix test. Acceptance is exactly
the existence of an ordered suffix; old positions and the complete key sequence
are preserved. `checkDecodedExtension` applies that check to the actual checked
dictionary decoder, and rejects decoding failure.

The generic prefix relation and its composition already exist upstream. The
repository also contains `Classification.AppendOnly` with reflexivity and
transitivity. This module adds executable reflection and dictionary applications,
rather than another generic history relation.

Appending source entries need not preserve old numeric dictionary slots: the
codec's `dedup` keeps rightmost payload occurrences. A checked counterexample
shows why a fresh exact packed history must not reuse stale references without
the separate referenced-slot agreement premise. No runtime/serialization/IO
refinement or external authorization is asserted.
-/

set_option autoImplicit false

namespace GRWTSK.Logic.FiniteSequences.AppendOnlyHistory

open IndexedDictionary DictionaryRevision

variable {Row Key Payload : Type*}

/-- Decidable exact ordered-prefix check, using the upstream executable list API. -/
def checkPrefix [DecidableEq Row] (oldRows newRows : List Row) : Bool :=
  oldRows.isPrefixOf newRows

/-- Reflection into the established exact ordered-prefix relation. -/
theorem checkPrefix_eq_true_iff [DecidableEq Row] (oldRows newRows : List Row) :
    checkPrefix oldRows newRows = true ↔ oldRows <+: newRows :=
  List.isPrefixOf_iff_prefix

/-- Acceptance retains the whole old list literally, followed by an ordered suffix. -/
theorem checkPrefix_iff_suffix [DecidableEq Row] (oldRows newRows : List Row) :
    checkPrefix oldRows newRows = true ↔ ∃ tail, newRows = oldRows ++ tail :=
  (checkPrefix_eq_true_iff oldRows newRows).trans List.prefix_iff_exists_eq_append

theorem checkPrefix_refl [DecidableEq Row] (rows : List Row) :
    checkPrefix rows rows = true :=
  (checkPrefix_eq_true_iff rows rows).mpr (List.prefix_refl rows)

/-- Successive accepted history extensions remain accepted by the actual checker. -/
theorem checkPrefix_trans [DecidableEq Row] {first middle last : List Row}
    (h₁ : checkPrefix first middle = true) (h₂ : checkPrefix middle last = true) :
    checkPrefix first last = true :=
  (checkPrefix_eq_true_iff first last).mpr
    (((checkPrefix_eq_true_iff first middle).mp h₁).trans
      ((checkPrefix_eq_true_iff middle last).mp h₂))

/-- Every original row remains at exactly its original position. -/
theorem accepted_position [DecidableEq Row] {oldRows newRows : List Row}
    (h : checkPrefix oldRows newRows = true) (index : Nat) (hi : index < oldRows.length) :
    newRows[index]? = some oldRows[index] :=
  List.prefix_iff_getElem?.mp ((checkPrefix_eq_true_iff oldRows newRows).mp h) index hi

/-- Repeated keys and their original order are retained, without a key-uniqueness premise. -/
theorem accepted_key_order [DecidableEq Key] [DecidableEq Payload]
    {oldRows newRows : List (Key × Payload)} (h : checkPrefix oldRows newRows = true) :
    checkPrefix (oldRows.map Prod.fst) (newRows.map Prod.fst) = true :=
  (checkPrefix_eq_true_iff _ _).mpr
    (((checkPrefix_eq_true_iff oldRows newRows).mp h).map Prod.fst)

/-- Check the actual decoded history; a missing referenced dictionary slot is rejected. -/
def checkDecodedExtension [DecidableEq Key] [DecidableEq Payload]
    (oldRows : List (Key × Payload)) (packed : Packed Key Payload) : Bool :=
  match unpack packed with
  | none => false
  | some decoded => checkPrefix oldRows decoded

/-- Decoder-history acceptance is exactly successful reconstruction of the old rows plus a suffix. -/
theorem checkDecodedExtension_iff [DecidableEq Key] [DecidableEq Payload]
    (oldRows : List (Key × Payload)) (packed : Packed Key Payload) :
    checkDecodedExtension oldRows packed = true ↔
      ∃ tail, unpack packed = some (oldRows ++ tail) := by
  constructor
  · intro hcheck
    cases hdecode : unpack packed with
    | none => simp [checkDecodedExtension, hdecode] at hcheck
    | some decoded =>
      have hprefix : oldRows <+: decoded :=
        (checkPrefix_eq_true_iff oldRows decoded).mp
          (by simpa [checkDecodedExtension, hdecode] using hcheck)
      obtain ⟨tail, htail⟩ := hprefix
      exact ⟨tail, congrArg some htail.symm⟩
  · rintro ⟨tail, hdecode⟩
    simp only [checkDecodedExtension, hdecode]
    exact (checkPrefix_eq_true_iff _ _).mpr (List.prefix_append oldRows tail)

/-- An accepted successful reconstruction contains the exact old ordered history as a prefix. -/
theorem decoded_prefix_of_acceptance [DecidableEq Key] [DecidableEq Payload]
    (oldRows : List (Key × Payload)) (packed : Packed Key Payload)
    {decoded : List (Key × Payload)}
    (hcheck : checkDecodedExtension oldRows packed = true)
    (hdecode : unpack packed = some decoded) :
    oldRows <+: decoded := by
  obtain ⟨tail, htail⟩ := (checkDecodedExtension_iff oldRows packed).mp hcheck
  have heq : oldRows ++ tail = decoded := Option.some.inj (htail.symm.trans hdecode)
  exact ⟨tail, heq⟩

/-- Fresh packing of the extended source list passes through the actual proved round trip. -/
theorem checkDecodedExtension_pack_append [DecidableEq Key] [DecidableEq Payload]
    (oldRows tail : List (Key × Payload)) :
    checkDecodedExtension oldRows (pack (oldRows ++ tail)) = true :=
  (checkDecodedExtension_iff _ _).mpr ⟨tail, unpack_pack _⟩

/-- A permutation can retain precisely the same rows while violating their ordered history. -/
theorem reordered_rows_not_prefix :
    ([1, 2] : List Nat).Perm [2, 1] ∧
      checkPrefix ([1, 2] : List Nat) [2, 1] = false ∧
      ¬ ([1, 2] : List Nat) <+: [2, 1] := by
  refine ⟨List.Perm.swap 2 1 [], rfl, ?_⟩
  intro hprefix
  have hcheck := (checkPrefix_eq_true_iff ([1, 2] : List Nat) [2, 1]).mpr hprefix
  cases hcheck

/-- Appending a repeated payload reorders dictionary slots; stale references then corrupt history. -/
theorem append_repack_stale_slot_counterexample :
    let oldRows : List (Nat × Nat) := [(11, 7), (12, 8)]
    let tail : List (Nat × Nat) := [(13, 7)]
    let stale := replaceDictionary (pack oldRows) (pack (oldRows ++ tail)).dictionary
    checkPrefix oldRows (oldRows ++ tail) = true ∧
      (pack oldRows).dictionary = [7, 8] ∧
      (pack (oldRows ++ tail)).dictionary = [8, 7] ∧
      stale.references = (pack oldRows).references ∧
      Valid stale ∧
      unpack stale = some [(11, 8), (12, 7)] ∧
      unpack stale ≠ some oldRows ∧
      ¬ AgreesOnReferences (pack oldRows).dictionary (pack (oldRows ++ tail)).dictionary
        (pack oldRows).references := by
  dsimp only
  refine ⟨rfl, rfl, rfl, rfl, ?_, rfl, ?_, ?_⟩
  · simp [Valid, replaceDictionary, pack]
  · decide
  · intro hagreement
    have hslot := hagreement (11, 0) (by decide)
    simp [pack] at hslot

end GRWTSK.Logic.FiniteSequences.AppendOnlyHistory
```

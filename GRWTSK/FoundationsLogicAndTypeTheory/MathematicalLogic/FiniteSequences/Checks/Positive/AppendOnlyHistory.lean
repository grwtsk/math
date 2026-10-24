import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.AppendOnlyHistory

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IndexedDictionary
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.AppendOnlyHistory

set_option autoImplicit false

example {Row : Type*} [DecidableEq Row] (oldRows newRows : List Row) :
    checkPrefix oldRows newRows = true ↔ ∃ tail, newRows = oldRows ++ tail :=
  checkPrefix_iff_suffix oldRows newRows

example {Row : Type*} [DecidableEq Row] {a b c : List Row}
    (hab : checkPrefix a b = true) (hbc : checkPrefix b c = true) :
    checkPrefix a c = true :=
  checkPrefix_trans hab hbc

example {Row : Type*} [DecidableEq Row] {oldRows newRows : List Row}
    (h : checkPrefix oldRows newRows = true) (i : Nat) (hi : i < oldRows.length) :
    newRows[i]? = some oldRows[i] :=
  accepted_position h i hi

example {Key Payload : Type*} [DecidableEq Key] [DecidableEq Payload]
    (oldRows tail : List (Key × Payload)) :
    checkDecodedExtension oldRows (pack (oldRows ++ tail)) = true :=
  checkDecodedExtension_pack_append oldRows tail

-- Both repeated keys and repeated payloads keep their original ordered occurrences.
example : checkPrefix ([(11, 7), (11, 8)] : List (Nat × Nat))
    [(11, 7), (11, 8), (11, 7)] = true := rfl

example : checkPrefix ([1, 2] : List Nat) [2, 1] = false := rfl

-- Decoder failure is rejected even for an empty requested history.
example : checkDecodedExtension ([] : List (Nat × Nat)) ⟨[7], [(11, 1)]⟩ = false := rfl

-- Repacking the complete appended source is safe; retaining the previous numeric slots is not.
example :
    unpack (pack ([(11, 7), (12, 8)] ++ [(13, 7)] : List (Nat × Nat))) =
      some [(11, 7), (12, 8), (13, 7)] :=
  unpack_pack _

example :
    unpack (GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DictionaryRevision.replaceDictionary
      (pack ([(11, 7), (12, 8)] : List (Nat × Nat)))
      (pack ([(11, 7), (12, 8), (13, 7)] : List (Nat × Nat))).dictionary) =
      some [(11, 8), (12, 7)] := rfl

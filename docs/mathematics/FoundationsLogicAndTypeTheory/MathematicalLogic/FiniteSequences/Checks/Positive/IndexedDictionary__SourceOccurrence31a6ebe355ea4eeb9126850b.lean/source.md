# Complete source: GRWTSK.Logic.FiniteSequences.Checks.Positive.IndexedDictionary

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1217c2a51055d144cb6d71fd143ceb4ce5930e8` · SHA-256 `421c43bcf34cdb8deac3f4d959e247abeecdaecc60b3dd2c51a2c5799163fd2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteSequences.IndexedDictionary

open GRWTSK.Logic.FiniteSequences.IndexedDictionary

set_option autoImplicit false

example {Key Payload : Type*} [DecidableEq Payload]
    (entries : List (Key × Payload)) :
    unpack (pack entries) = some entries :=
  unpack_pack entries

example {Key Payload : Type*} [DecidableEq Payload]
    (entries : List (Key × Payload)) :
    (pack entries).dictionary.Nodup ∧ Valid (pack entries) :=
  ⟨pack_dictionary_nodup entries, pack_valid entries⟩

example {Key Payload : Type*} [DecidableEq Payload]
    (entries : List (Key × Payload)) :
    (pack entries).references.map Prod.fst = entries.map Prod.fst ∧
      (pack entries).references.length = entries.length :=
  ⟨pack_references_keys entries, pack_references_length entries⟩

-- Three occurrences of payload 7 use one dictionary slot; all four references remain.
-- The repeated key 11 is retained in precisely its source positions as well.
example :
    (pack ([(11, 7), (12, 7), (11, 8), (11, 7)] : List (Nat × Nat))).dictionary =
      [8, 7] := by
  decide

example :
    (pack ([(11, 7), (12, 7), (11, 8), (11, 7)] : List (Nat × Nat))).references =
      [(11, 1), (12, 1), (11, 0), (11, 1)] := by
  decide

example :
    unpack (pack ([(11, 7), (12, 7), (11, 8), (11, 7)] : List (Nat × Nat))) =
      some [(11, 7), (12, 7), (11, 8), (11, 7)] :=
  unpack_pack _

example : unpack (⟨[], [(11, 0)]⟩ : Packed Nat Nat) = none := rfl

example : unpack (⟨[7], [(11, 1)]⟩ : Packed Nat Nat) = none := rfl

example : unpack (⟨[7], []⟩ : Packed Nat Nat) = some [] := rfl
```

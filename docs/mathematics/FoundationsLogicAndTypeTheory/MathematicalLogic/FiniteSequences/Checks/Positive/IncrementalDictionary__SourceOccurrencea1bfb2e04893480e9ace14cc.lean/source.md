# Complete source: GRWTSK.Logic.FiniteSequences.Checks.Positive.IncrementalDictionary

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `256c5383d013da7de5aa9b73091b9d3750019506` · SHA-256 `86d2edb49225a13cbb4c3737e07702755ec931c6564d52f812b85b3ae020c8c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteSequences.IncrementalDictionary

open GRWTSK.Logic.FiniteSequences.IndexedDictionary
open GRWTSK.Logic.FiniteSequences.IncrementalDictionary

set_option autoImplicit false

example {Key Payload : Type*} [DecidableEq Payload]
    (original : Packed Key Payload) (entries : List (Key × Payload))
    (hvalid : Valid original) :
    unpack (appendEntries original entries) =
      (unpack original).map (fun rows => rows ++ entries) :=
  unpack_appendEntries original entries hvalid

example {Key Payload : Type*} [DecidableEq Payload]
    (oldRows entries : List (Key × Payload)) :
    unpack (appendEntries (pack oldRows) entries) = some (oldRows ++ entries) :=
  unpack_appendEntries_pack oldRows entries

example {Key Payload : Type*} [DecidableEq Payload]
    (original : Packed Key Payload) (entries : List (Key × Payload))
    (hvalid : Valid original) (hnodup : original.dictionary.Nodup) :
    Valid (appendEntries original entries) ∧
      (appendEntries original entries).dictionary.Nodup :=
  ⟨appendEntries_valid original entries hvalid,
    expandedDictionary_nodup original.dictionary entries hnodup⟩

-- Previously present 7 keeps its old slot; new repeated 9 occupies exactly one new slot.
example :
    (appendEntries (pack ([(11, 7), (12, 8)] : List (Nat × Nat)))
      [(13, 7), (11, 9), (11, 9)]).dictionary = [7, 8, 9] := rfl

-- All repeated key/payload occurrences still have their own ordered references.
example :
    (appendEntries (pack ([(11, 7), (12, 8)] : List (Nat × Nat)))
      [(13, 7), (11, 9), (11, 9)]).references =
      [(11, 0), (12, 1), (13, 0), (11, 2), (11, 2)] := rfl

example :
    unpack (appendEntries (pack ([(11, 7), (12, 8)] : List (Nat × Nat)))
      [(13, 7), (11, 9), (11, 9)]) =
      some [(11, 7), (12, 8), (13, 7), (11, 9), (11, 9)] :=
  unpack_appendEntries_pack _ _

example :
    unpack (appendEntries (pack ([] : List (Nat × Nat))) [(11, 7), (11, 7)]) =
      some [(11, 7), (11, 7)] :=
  unpack_appendEntries_pack _ _

example {Key Payload : Type*} [DecidableEq Payload] (original : Packed Key Payload) :
    appendEntries original [] = original :=
  appendEntries_nil original

-- The invalid old slot becomes populated, demonstrating why the main theorem needs validity.
example :
    unpack (appendEntries (⟨[], [(11, 0)]⟩ : Packed Nat Nat) [(12, 7)]) =
      some [(11, 7), (12, 7)] := rfl
```

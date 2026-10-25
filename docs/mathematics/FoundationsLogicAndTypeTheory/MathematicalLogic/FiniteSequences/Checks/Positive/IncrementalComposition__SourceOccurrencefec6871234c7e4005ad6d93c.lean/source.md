# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.Checks.Positive.IncrementalComposition

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6bd1163988577a5d50f1ae6ac598f2bd48515a48` · SHA-256 `2862ca7c2eca4200997c67efec1439ecc2adb50cdb839c6e611102ca292aa5e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IncrementalComposition

open GRWTSK.Logic.FiniteSequences.IndexedDictionary
open GRWTSK.Logic.FiniteSequences.IncrementalDictionary
open GRWTSK.Logic.FiniteSequences.IncrementalComposition

set_option autoImplicit false

example {Key Payload : Type*} [DecidableEq Payload]
    (original : Packed Key Payload) (first second : List (Key × Payload))
    (hvalid : Valid original) :
    unpack (appendEntries (appendEntries original first) second) =
      unpack (appendEntries original (first ++ second)) :=
  unpack_appendEntries_compose original first second hvalid

example {Key Payload : Type*} [DecidableEq Payload]
    (oldRows first second : List (Key × Payload)) :
    unpack (appendEntries (appendEntries (pack oldRows) first) second) =
      some (oldRows ++ (first ++ second)) :=
  unpack_appendEntries_twice_pack oldRows first second

-- Repeated keys and payloads remain separate ordered decoded occurrences across batches.
example :
    unpack (appendEntries
      (appendEntries (pack ([(11, 7)] : List (Nat × Nat))) [(11, 8), (11, 7)])
      [(11, 7), (12, 8)]) =
      some [(11, 7), (11, 8), (11, 7), (11, 7), (12, 8)] :=
  unpack_appendEntries_twice_pack _ _ _

example {Key Payload : Type*} [DecidableEq Payload]
    (oldRows : List (Key × Payload)) :
    unpack (appendEntries (appendEntries (pack oldRows) []) []) = some oldRows := by
  simpa using unpack_appendEntries_twice_pack oldRows [] []

-- Starting empty: two batches retain [7,8], while the combined new batch uses [8,7].
example :
    (appendEntries (appendEntries (pack ([] : List (Nat × Nat))) [(11, 7), (12, 8)])
      [(13, 7)]).dictionary = [7, 8] := rfl

example :
    (appendEntries (pack ([] : List (Nat × Nat)))
      ([(11, 7), (12, 8)] ++ [(13, 7)])).dictionary = [8, 7] := rfl

example :
    unpack (appendEntries (appendEntries (pack ([] : List (Nat × Nat)))
      [(11, 7), (12, 8)]) [(13, 7)]) =
      some [(11, 7), (12, 8), (13, 7)] :=
  unpack_appendEntries_twice_pack _ _ _
```

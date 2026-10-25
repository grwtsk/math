# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.Checks.Negative.IncrementalCompositionRepresentation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e423e64b3102051956ec141bd6f598ff9c2d4ac8` · SHA-256 `d82eba8a71340e1f6d252bd9a67f680321a20358c6371a53f7cfa916c785ed0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IncrementalComposition

open GRWTSK.Logic.FiniteSequences.IndexedDictionary
open GRWTSK.Logic.FiniteSequences.IncrementalDictionary
open GRWTSK.Logic.FiniteSequences.IncrementalComposition

private def firstBatch : List (Nat × Nat) := [(11, 7), (12, 8)]
private def secondBatch : List (Nat × Nat) := [(13, 7)]

-- Expected type mismatch: equality after decoding does not prove packed representation equality.
example :
    appendEntries (appendEntries (pack ([] : List (Nat × Nat))) firstBatch) secondBatch =
      appendEntries (pack []) (firstBatch ++ secondBatch) :=
  unpack_appendEntries_compose (pack []) firstBatch secondBatch (pack_valid [])
```

# Complete source: GRWTSK.Logic.FiniteSequences.Checks.Negative.IncrementalCompositionRepresentation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b01a1c81f7947d0db615abdc2eaa1170962af20d` · SHA-256 `c73ccb9c485298ccdcdfd289e88609c4bf7b23dc92a247473ee12cf3a7c15e36`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteSequences.IncrementalComposition

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

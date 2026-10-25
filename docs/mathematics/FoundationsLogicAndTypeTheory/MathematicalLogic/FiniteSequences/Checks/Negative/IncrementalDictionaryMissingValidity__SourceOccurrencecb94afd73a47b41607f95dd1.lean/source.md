# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.Checks.Negative.IncrementalDictionaryMissingValidity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e34ff76932594e9d91d229fc85c0cafeac31f72d` · SHA-256 `f8e3e5d6f98b8cb56cdd70ef5b96d7824f6098324cce7cdf44438459a3fb6457`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IncrementalDictionary

open GRWTSK.Logic.FiniteSequences.IndexedDictionary
open GRWTSK.Logic.FiniteSequences.IncrementalDictionary

private def invalid : Packed Nat Nat := ⟨[], [(11, 0)]⟩

-- Expected type mismatch: this theorem still requires Valid invalid, which is false here.
-- The expansion fills slot zero, so the original none decoding actually changes.
example : unpack (appendEntries invalid [(12, 7)]) =
    (unpack invalid).map (fun rows => rows ++ [(12, 7)]) :=
  unpack_appendEntries invalid [(12, 7)]
```

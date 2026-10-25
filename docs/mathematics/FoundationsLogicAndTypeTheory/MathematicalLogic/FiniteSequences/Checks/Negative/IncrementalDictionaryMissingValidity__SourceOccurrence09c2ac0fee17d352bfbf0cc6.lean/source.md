# Complete source: GRWTSK.Logic.FiniteSequences.Checks.Negative.IncrementalDictionaryMissingValidity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12aec054b363b033fd2aba2ba7946f42f4293db8` · SHA-256 `fd9eaec3a4a0b0d34dc283d60936bd8fad669a873e6d1fd21432684f6c7afb25`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteSequences.IncrementalDictionary

open GRWTSK.Logic.FiniteSequences.IndexedDictionary
open GRWTSK.Logic.FiniteSequences.IncrementalDictionary

private def invalid : Packed Nat Nat := ⟨[], [(11, 0)]⟩

-- Expected type mismatch: this theorem still requires Valid invalid, which is false here.
-- The expansion fills slot zero, so the original none decoding actually changes.
example : unpack (appendEntries invalid [(12, 7)]) =
    (unpack invalid).map (fun rows => rows ++ [(12, 7)]) :=
  unpack_appendEntries invalid [(12, 7)]
```

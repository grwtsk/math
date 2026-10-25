# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rename.Variantf73bf0a4995cc892d4f4eabc84fdbce7ee663753199486d7fb63ab5091434ced

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1212d616ec54decf0d871238a7537f99a46453d5` · SHA-256 `f73bf0a4995cc892d4f4eabc84fdbce7ee663753199486d7fb63ab5091434ced`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Rename

example (a : Nat) (b : Int) : Int × Nat := by
  rename' a => c, b => d
  exact (d, c)

example (a : Nat) (b : Int) : Int × Nat := by
  rename' a => b, b => a
  exact (a, b)
```

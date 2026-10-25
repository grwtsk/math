# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Coe.Variantf8b7ad7e82eb38c47f67fc71370e1ada1c122e048193d5270a1d17017a78da5b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc66dc30e8569b0866c8f71778005618208207eb` · SHA-256 `f8b7ad7e82eb38c47f67fc71370e1ada1c122e048193d5270a1d17017a78da5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Coe

example : { n : Nat // n > 3 } → Nat := (↑)
```

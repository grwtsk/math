# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Root.Variantac2e4fe33d07a584854d3427d738fde7106f55a78f34531254afd09f8f7e67ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b3bf831055d127268f54aa7d8198807466ae6f7` · SHA-256 `ac2e4fe33d07a584854d3427d738fde7106f55a78f34531254afd09f8f7e67ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Demo

inductive Obj where
  | mk

theorem obj_refl (x : Obj) : x = x := rfl

end Demo
```

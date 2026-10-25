# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foundation.Variant27fface5f41c737bc6aacbcc47b148fb1f01d0a5a48ba1075d87c0a4e65dc0bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a82a06e1f536808cce4974ad703471c9901039b` · SHA-256 `27fface5f41c737bc6aacbcc47b148fb1f01d0a5a48ba1075d87c0a4e65dc0bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Noninterference

/-!
# Semi-local defect foundation
-/

namespace Mathematics.SemiLocalDefect

structure SemiLocalDefectFoundation
    (primeUniverse : FinitePrimeUniverse)
    (model : OperatorModel) where
  capacity :
    PrimeCutDefectCapacity
      model primeUniverse.Prime
  graph :
    PrimeCutGraphAdapter primeUniverse
  ledger : SemiLocalUnknownLedger
  immutableCut : Prop
  immutableCutProof : immutableCut

end Mathematics.SemiLocalDefect
```

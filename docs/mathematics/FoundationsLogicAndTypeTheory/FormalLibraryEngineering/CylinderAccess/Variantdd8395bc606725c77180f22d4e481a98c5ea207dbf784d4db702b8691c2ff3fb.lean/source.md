# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CylinderAccess.Variantdd8395bc606725c77180f22d4e481a98c5ea207dbf784d4db702b8691c2ff3fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4c1c52b62092301dc863e74d457b619e75b9e25` · SHA-256 `dd8395bc606725c77180f22d4e481a98c5ea207dbf784d4db702b8691c2ff3fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Access

structure CylinderAccessDescriptor where
  systemRef : String
  finiteUniverseRef : String
  compressionRank : Nat
  compatibilityReceiptRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .cylinderAccess

end Mathematics.SemiLocalDefect.Access
```

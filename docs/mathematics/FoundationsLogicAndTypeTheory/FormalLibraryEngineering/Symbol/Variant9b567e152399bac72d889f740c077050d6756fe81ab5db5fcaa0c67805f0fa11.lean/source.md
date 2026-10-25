# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Symbol.Variant9b567e152399bac72d889f740c077050d6756fe81ab5db5fcaa0c67805f0fa11

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `929338ade6cb61c1bbd63e95d9bc1d440e9b14d5` · SHA-256 `9b567e152399bac72d889f740c077050d6756fe81ab5db5fcaa0c67805f0fa11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure SymbolDescriptor where
  symbolRef : String
  cutRef : String
  archimedeanAnchorRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .archimedeanBalanceExistence

end Mathematics.SemiLocalDefect.Hardy
```

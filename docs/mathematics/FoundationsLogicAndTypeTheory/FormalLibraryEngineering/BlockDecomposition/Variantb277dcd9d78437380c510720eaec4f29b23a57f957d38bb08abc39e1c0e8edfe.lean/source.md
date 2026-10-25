# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlockDecomposition.Variantb277dcd9d78437380c510720eaec4f29b23a57f957d38bb08abc39e1c0e8edfe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ea00bd682d03a39e1cd9603b629814f054c292e` · SHA-256 `b277dcd9d78437380c510720eaec4f29b23a57f957d38bb08abc39e1c0e8edfe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure BlockDecompositionDescriptor where
  decompositionRef : String
  toeplitzBlockRef : String
  hankelBlockRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .hardyBlockDecomposition

end Mathematics.SemiLocalDefect.Hardy
```

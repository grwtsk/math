# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArithmeticTail.Variant985b21a2b025a7b0622d96b4b2f78eef9f824d594242629dd1e2c5c43b216db6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cb3ec2f8b25d9db40d615c40313c267df686668` · SHA-256 `985b21a2b025a7b0622d96b4b2f78eef9f824d594242629dd1e2c5c43b216db6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Trace

structure ArithmeticTailDescriptor where
  tailRef : String
  finiteCutRef : String
  uniformBoundCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .arithmeticTail

end Mathematics.SemiLocalDefect.Trace
```

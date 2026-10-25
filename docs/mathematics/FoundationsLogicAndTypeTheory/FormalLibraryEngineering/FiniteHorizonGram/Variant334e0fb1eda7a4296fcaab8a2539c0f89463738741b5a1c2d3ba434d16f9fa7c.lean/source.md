# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteHorizonGram.Variant334e0fb1eda7a4296fcaab8a2539c0f89463738741b5a1c2d3ba434d16f9fa7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c11a64723f29c622aba724d00933ad9cb178ab2` · SHA-256 `334e0fb1eda7a4296fcaab8a2539c0f89463738741b5a1c2d3ba434d16f9fa7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure FiniteHorizonGramDescriptor where
  gramRef : String
  horizonRef : String
  compatibilityCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninFiniteHorizonGram

end Mathematics.SemiLocalDefect.Sonin
```

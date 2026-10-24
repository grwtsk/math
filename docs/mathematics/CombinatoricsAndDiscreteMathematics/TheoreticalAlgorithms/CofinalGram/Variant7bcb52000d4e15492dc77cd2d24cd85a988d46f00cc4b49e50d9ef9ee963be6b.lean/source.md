# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CofinalGram.Variant7bcb52000d4e15492dc77cd2d24cd85a988d46f00cc4b49e50d9ef9ee963be6b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b6ff6281a7e3658424025211a26419dee610ba4` · SHA-256 `7bcb52000d4e15492dc77cd2d24cd85a988d46f00cc4b49e50d9ef9ee963be6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure CofinalGramDescriptor where
  systemRef : String
  finiteStageRefs : List String
  stabilityCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninGramCofinalStability

end Mathematics.SemiLocalDefect.Sonin
```

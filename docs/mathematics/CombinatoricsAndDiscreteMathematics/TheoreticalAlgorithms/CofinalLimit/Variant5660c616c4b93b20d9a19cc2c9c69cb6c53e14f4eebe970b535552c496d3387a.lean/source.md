# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CofinalLimit.Variant5660c616c4b93b20d9a19cc2c9c69cb6c53e14f4eebe970b535552c496d3387a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57a8f891631a3ac97b797e770e346fe0dbba0f8f` · SHA-256 `5660c616c4b93b20d9a19cc2c9c69cb6c53e14f4eebe970b535552c496d3387a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Trace

structure CofinalLimitDescriptor where
  systemRef : String
  finiteStageRefs : List String
  compatibilityCertificateRefs : List String
  status : OpenBridgeStatus :=
    openBridgeStatus .traceCofinalLimit

end Mathematics.SemiLocalDefect.Trace
```

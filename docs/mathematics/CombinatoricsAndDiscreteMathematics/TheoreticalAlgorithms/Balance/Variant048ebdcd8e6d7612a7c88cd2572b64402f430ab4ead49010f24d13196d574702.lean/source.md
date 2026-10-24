# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Balance.Variant048ebdcd8e6d7612a7c88cd2572b64402f430ab4ead49010f24d13196d574702

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47ffc58a341dcf147e677d574e6bee5cd7e59e5a` · SHA-256 `048ebdcd8e6d7612a7c88cd2572b64402f430ab4ead49010f24d13196d574702`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure BalanceDescriptor where
  balanceRef : String
  totalSymbolRef : String
  factorRefs : List String
  status : OpenBridgeStatus :=
    openBridgeStatus .archimedeanBalanceNaturality

end Mathematics.SemiLocalDefect.Hardy
```

# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimeCutAccess.Variant4381dd33697c1163b2635635ae8d5ff9531ac52f0790aaf74828b8a18f3176d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56e6e8be0eee376bf4e6dfc2c400191130dfc824` · SHA-256 `4381dd33697c1163b2635635ae8d5ff9531ac52f0790aaf74828b8a18f3176d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Access

structure PrimeCutAccessDescriptor where
  requestRef : String
  finitePrimeUniverseRef : String
  residualFrontierRef : Option String
  authoritativeEffect : Bool := false
  status : OpenBridgeStatus :=
    openBridgeStatus .primeCutAccess

end Mathematics.SemiLocalDefect.Access
```

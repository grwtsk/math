# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OperatorBridge.Varianta1f20ce0ddaed90bb2e54bdeecde1ae5c7b88d15f1a2dacf6083a3c8a72813db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2ce7150aa7fede4fd3399e9250484161e040c23` · SHA-256 `a1f20ce0ddaed90bb2e54bdeecde1ae5c7b88d15f1a2dacf6083a3c8a72813db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Trace

structure OperatorBridgeDescriptor where
  bridgeRef : String
  capacityPacketEnergyRef : String
  arithmeticPairingRef : String
  exactCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .operatorBridge

end Mathematics.SemiLocalDefect.Trace
```

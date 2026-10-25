# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DouglasConnector.Variant6db55ed5e6fbe501853d756bb30c0af94f8c0386ce3ce04703ca11fd1749ec0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bca5d2d03b563c7ba295783b6a942311baf66d25` · SHA-256 `6db55ed5e6fbe501853d756bb30c0af94f8c0386ce3ce04703ca11fd1749ec0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure DouglasConnectorDescriptor where
  connectorRef : String
  sourceTransmissionRef : String
  targetTransmissionRef : String
  contractionCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .douglasConnector

end Mathematics.SemiLocalDefect.Hardy
```

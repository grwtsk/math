# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Connector.Variant2e7d31fd9a4d9aa4cd281156e09e848ae800e9468e6c2c494719e7f2dade29bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76a9929c04808b93582a26f0aac084d73ec4a43d` · SHA-256 `2e7d31fd9a4d9aa4cd281156e09e848ae800e9468e6c2c494719e7f2dade29bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure ConnectorDescriptor where
  connectorRef : String
  sourceSpaceRef : String
  targetSpaceRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninConnector

end Mathematics.SemiLocalDefect.Sonin
```

# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HardyComparison.Variant98e82c2e9906c6910bbddb051a02e693943beb9b26419ea027a53947719f6c02

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb2a8e0fdcd369475004787937e6a62ced0aac69` · SHA-256 `98e82c2e9906c6910bbddb051a02e693943beb9b26419ea027a53947719f6c02`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure HardyComparisonDescriptor where
  comparisonRef : String
  hardyDefectRef : String
  soninProjectionRef : String
  relationCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .hardySoninComparison

end Mathematics.SemiLocalDefect.Sonin
```

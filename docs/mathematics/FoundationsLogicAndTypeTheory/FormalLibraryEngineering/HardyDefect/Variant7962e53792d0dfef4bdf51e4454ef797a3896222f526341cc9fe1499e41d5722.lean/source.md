# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HardyDefect.Variant7962e53792d0dfef4bdf51e4454ef797a3896222f526341cc9fe1499e41d5722

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e6d9cb7cd9a1cc1bcd44e4fb22faee3b3ed4108` · SHA-256 `7962e53792d0dfef4bdf51e4454ef797a3896222f526341cc9fe1499e41d5722`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure DefectDescriptor where
  defectRef : String
  capacityRef : String
  relationCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .hardyCapacityRelation

end Mathematics.SemiLocalDefect.Hardy
```

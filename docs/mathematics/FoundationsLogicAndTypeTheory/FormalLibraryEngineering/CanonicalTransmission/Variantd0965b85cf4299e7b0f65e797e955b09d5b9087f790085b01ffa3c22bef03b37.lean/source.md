# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalTransmission.Variantd0965b85cf4299e7b0f65e797e955b09d5b9087f790085b01ffa3c22bef03b37

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12c8807475665446ad6747ff689bf156c065ec97` · SHA-256 `d0965b85cf4299e7b0f65e797e955b09d5b9087f790085b01ffa3c22bef03b37`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure CanonicalTransmissionDescriptor where
  transmissionRef : String
  capacityRef : String
  defectIdentityCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .canonicalTransmission

end Mathematics.SemiLocalDefect.Hardy
```

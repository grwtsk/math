# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReleaseProfile.Variantb461b02ed74c16d7238014c9437b1a8b88ed53b0f25fc3f591772a8a0c0d70ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13437a773a6b5af6b44f6cf9d19a55028ef65099` · SHA-256 `b461b02ed74c16d7238014c9437b1a8b88ed53b0f25fc3f591772a8a0c0d70ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Access

structure ReleaseProfileDescriptor where
  profileRef : String
  scoreUnitRef : String
  lowerBoundCertificateRef : Option String
  heuristicAdmissionAllowed : Bool := false
  status : OpenBridgeStatus :=
    openBridgeStatus .releaseProfile

end Mathematics.SemiLocalDefect.Access
```

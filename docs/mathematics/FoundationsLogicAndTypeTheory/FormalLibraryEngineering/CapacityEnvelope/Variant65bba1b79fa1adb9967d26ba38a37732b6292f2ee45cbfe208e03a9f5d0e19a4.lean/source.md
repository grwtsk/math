# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CapacityEnvelope.Variant65bba1b79fa1adb9967d26ba38a37732b6292f2ee45cbfe208e03a9f5d0e19a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d986268ed26a8efd44ebbf33e74ff86303faa364` · SHA-256 `65bba1b79fa1adb9967d26ba38a37732b6292f2ee45cbfe208e03a9f5d0e19a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect

structure CapacityEnvelopeDescriptor where
  envelopeRef : String
  feasibleRegionRef : String
  containmentCertificateRef : Option String
  inconsistencyRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .certifiedCapacityEnvelope

end Mathematics.SemiLocalDefect
```

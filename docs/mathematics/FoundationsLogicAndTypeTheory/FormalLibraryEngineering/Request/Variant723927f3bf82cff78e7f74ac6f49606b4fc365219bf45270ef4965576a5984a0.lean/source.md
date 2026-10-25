# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Request.Variant723927f3bf82cff78e7f74ac6f49606b4fc365219bf45270ef4965576a5984a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73044077c99d66b30e68d2a051ea0a8e1a827d37` · SHA-256 `723927f3bf82cff78e7f74ac6f49606b4fc365219bf45270ef4965576a5984a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Capability.Lease

/-! # Fully bound operation requests -/

namespace Mathematics.Capability

structure OperationRequest where
  requestId : RequestId
  principal : Principal
  device : DeviceId
  element : ElementId
  purpose : PurposeId
  snapshot : ObjectAddress
  effect : Effect

end Mathematics.Capability
```

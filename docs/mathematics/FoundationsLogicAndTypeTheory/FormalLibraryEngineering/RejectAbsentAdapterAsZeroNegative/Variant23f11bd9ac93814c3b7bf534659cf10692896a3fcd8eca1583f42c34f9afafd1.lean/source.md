# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectAbsentAdapterAsZeroNegative.Variant23f11bd9ac93814c3b7bf534659cf10692896a3fcd8eca1583f42c34f9afafd1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42ea391185723f2a1a01a67583cdcc8dbe9e12b4` · SHA-256 `23f11bd9ac93814c3b7bf534659cf10692896a3fcd8eca1583f42c34f9afafd1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore
open GRWTSK.Interfaces.OptionalAdapterGate
open Fixtures
example : applySelected emptyLedger none Key.boundary = some 0 :=
  absent_route_preserves_none emptyLedger (key := Key.boundary) rfl
```

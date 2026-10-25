# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectAbsentAdapterAsZeroCounterexample.Variant18580b6a4bff1477ffcd49faa1de1c700bc313d08529770dc28e142f7bd691f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06227261ae45f8d80afdf8e0398b9d0623b3cbb6` · SHA-256 `18580b6a4bff1477ffcd49faa1de1c700bc313d08529770dc28e142f7bd691f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore
open GRWTSK.Interfaces.OptionalAdapterGate
open Fixtures
example : applySelected emptyLedger none Key.boundary ≠ some 0 := by
  simp [applySelected, emptyLedger]
```

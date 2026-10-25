# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectCycleClassRetargetingPositive.Variant55d57c77c9d2c395d37818ef4700d6af1ea09cdb2d82293e18f515d2b6f35cec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8de05bcdba78cc8e7843c2a38c03fefa6433cfd` · SHA-256 `55d57c77c9d2c395d37818ef4700d6af1ea09cdb2d82293e18f515d2b6f35cec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge
open GRWTSK.Geometry.Hodge.RationalHodgeTransport
example : Examples.lineHodgeData.IsSurjective :=
  (Fixtures.lineEquiv.transportTheorem Examples.lineSourceTheorem).surjective
example (E : CycleClassEquiv Examples.lineHodgeData Examples.lineHodgeData) :
    Examples.lineHodgeData.IsSurjective ↔ Examples.lineHodgeData.IsSurjective :=
  E.surjective_iff
```

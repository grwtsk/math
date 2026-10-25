# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF02DesignatedConeCompatibility.Variant0bafda2bbb6826458e03c1dbf04eb0ae46e8b256b457858b127daba1f56542bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5284304b8c5342c10340ab31f8c51c67a8148bd4` · SHA-256 `0bafda2bbb6826458e03c1dbf04eb0ae46e8b256b457858b127daba1f56542bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/--
CF-02 research-rule projection for designated pullback-shaped-cone and
base-change compatibility.  No universal pullback property is represented.
-/
theorem cf02_designatedConeCompatibility
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF02Claim S M :=
  registry.cf02

end FCRS.ControlledPlane.Theorems
```

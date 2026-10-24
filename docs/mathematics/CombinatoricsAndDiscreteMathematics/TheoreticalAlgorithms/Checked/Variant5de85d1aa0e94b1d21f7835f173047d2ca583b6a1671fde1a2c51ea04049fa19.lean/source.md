# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Checked.Variant5de85d1aa0e94b1d21f7835f173047d2ca583b6a1671fde1a2c51ea04049fa19

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68169b7e1088b97c7e8fc987bcb110659b934785` · SHA-256 `5de85d1aa0e94b1d21f7835f173047d2ca583b6a1671fde1a2c51ea04049fa19`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Checked

/-!
Checked first-party surface.

Only the checked source band imported here may flow into `Formal.Kernel`.
-/

namespace Formal.Surface.Checked

def checkedModules : List String :=
  [ "Formal.Checked.Geometry"
  , "Formal.Checked.BoundaryMatriciant"
  , "Formal.Checked.Projection.Balance"
  , "Formal.Checked.Projection.Flatten"
  ]

theorem checkedModules_count : checkedModules.length = 4 := by
  rfl

end Formal.Surface.Checked
```

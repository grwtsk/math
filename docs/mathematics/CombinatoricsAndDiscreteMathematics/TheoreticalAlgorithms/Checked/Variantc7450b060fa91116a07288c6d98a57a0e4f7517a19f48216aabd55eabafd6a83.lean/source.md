# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Checked.Variantc7450b060fa91116a07288c6d98a57a0e4f7517a19f48216aabd55eabafd6a83

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc9957bee7d530ee9882d2fc64b6fecf777b90ee` · SHA-256 `c7450b060fa91116a07288c6d98a57a0e4f7517a19f48216aabd55eabafd6a83`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Checked.Geometry
import Formal.Checked.BoundaryMatriciant
import Formal.Checked.Projection.Balance
import Formal.Checked.Projection.Flatten

/-!
Checked source band.

This is the first-party checked band root. It is the only source band allowed
to flow into `Formal.Kernel` as theorem-bearing local authority.
-/

namespace Formal.Checked

def modules : List String :=
  [ "Formal.Checked.Geometry"
  , "Formal.Checked.BoundaryMatriciant"
  , "Formal.Checked.Projection.Balance"
  , "Formal.Checked.Projection.Flatten"
  ]

theorem modules_count : modules.length = 4 := by
  rfl

end Formal.Checked
```

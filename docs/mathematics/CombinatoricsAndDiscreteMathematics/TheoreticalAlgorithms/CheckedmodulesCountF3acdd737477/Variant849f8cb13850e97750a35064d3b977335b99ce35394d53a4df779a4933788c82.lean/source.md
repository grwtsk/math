# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CheckedmodulesCountF3acdd737477.Variant849f8cb13850e97750a35064d3b977335b99ce35394d53a4df779a4933788c82

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19d2d369a4b596da7c9ad7b1df862ff866ea8b90` · SHA-256 `849f8cb13850e97750a35064d3b977335b99ce35394d53a4df779a4933788c82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Ast.Surface.finite_bit_boundary.modules_count_b62c437365ca

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

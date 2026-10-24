# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CheckedrootsCount80ce23443926.Variantdd89e6dfb03d175ba82618fb1ee9cca129e80057c6d79106c8da7951d2ce6a33

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad09726abaec110d8a8071950d69e4c00debe608` · SHA-256 `dd89e6dfb03d175ba82618fb1ee9cca129e80057c6d79106c8da7951d2ce6a33`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Ast.Surface.finite_bit_boundary.checkedmodules_count_f3acdd737477

/-!
Checked Formal authority kernel.

This root is the only default authority surface for `src/formal`. It imports
the first-party, dependency-minimal theorem surfaces that currently typecheck
inside this Lake package. Analytic/PNT blueprints, local Mathlib patches,
experimental tactics, and archived scratch files are intentionally excluded and
recorded in `formal_organization_manifest.yml`.
-/

namespace Formal.Kernel

def checkedRoots : List String :=
  [ "Formal.Checked.Geometry"
  , "Formal.Checked.BoundaryMatriciant"
  , "Formal.Checked.Projection.Balance"
  , "Formal.Checked.Projection.Flatten"
  ]

theorem checkedRoots_count : checkedRoots.length = 4 := by
  rfl

end Formal.Kernel
```

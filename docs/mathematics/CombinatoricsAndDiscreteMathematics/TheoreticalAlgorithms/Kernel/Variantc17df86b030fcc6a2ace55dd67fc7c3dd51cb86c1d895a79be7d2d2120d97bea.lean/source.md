# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Kernel.Variantc17df86b030fcc6a2ace55dd67fc7c3dd51cb86c1d895a79be7d2d2120d97bea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07070104cd6db56e6569901bf2a9aadaf3c6178a` · SHA-256 `c17df86b030fcc6a2ace55dd67fc7c3dd51cb86c1d895a79be7d2d2120d97bea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Surface.Checked

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

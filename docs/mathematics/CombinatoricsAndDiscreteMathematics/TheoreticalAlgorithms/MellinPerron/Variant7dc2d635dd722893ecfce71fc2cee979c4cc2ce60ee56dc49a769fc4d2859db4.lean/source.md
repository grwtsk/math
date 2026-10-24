# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MellinPerron.Variant7dc2d635dd722893ecfce71fc2cee979c4cc2ce60ee56dc49a769fc4d2859db4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a8c86015af79c3afd1ed41b90c46094e5090125` · SHA-256 `7dc2d635dd722893ecfce71fc2cee979c4cc2ce60ee56dc49a769fc4d2859db4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
Mellin/Perron analytic blueprint boundary.

This marker groups Mellin calculus, Perron formula, and residue-calculus
blueprints while keeping them outside checked authority imports.
-/

namespace Formal.Blueprint.Analytic.MellinPerron

def files : List String :=
  [ "MellinCalculus"
  , "PerronFormula"
  , "ResidueCalcOnRectangles"
  ]

theorem files_count : files.length = 3 := by
  rfl

end Formal.Blueprint.Analytic.MellinPerron
```

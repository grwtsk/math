# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Foundation.Variant9b26d9f021b70857ca84b8ec73d66e51ef4010a92e6348a4912b9f8c9136cffe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13e1135c624e073907c1c266dce1117a31570a03` · SHA-256 `9b26d9f021b70857ca84b8ec73d66e51ef4010a92e6348a4912b9f8c9136cffe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
Analytic blueprint foundation boundary.

This marker names foundational analytic blueprint files. It does not import the
files in this directory, because those files may contain unresolved external
imports or theorem obligations.
-/

namespace Formal.Blueprint.Analytic.Foundation

def files : List String :=
  [ "Auxiliary"
  , "Defs"
  ]

theorem files_count : files.length = 2 := by
  rfl

end Formal.Blueprint.Analytic.Foundation
```

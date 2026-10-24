# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tactic.Variant1ebe5113b880356b2517b33f0dbd6978beb1e66b1e8842d3d1f489d1d966c92e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `867b03a8940fc50475f466211fd2f51ad01dd19a` · SHA-256 `1ebe5113b880356b2517b33f0dbd6978beb1e66b1e8842d3d1f489d1d966c92e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
Tactic blueprint boundary.

This marker surfaces experimental tactic material without importing examples,
axioms, or unsafe declarations into checked roots.
-/

namespace Formal.Blueprint.Tactic

def files : List String :=
  [ "AdditiveCombination"
  , "Simprocs"
  ]

theorem files_count : files.length = 2 := by
  rfl

end Formal.Blueprint.Tactic
```

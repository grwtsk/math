# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Mathlib.Variant252d9ef336cd0c392c02b5f9e796167b72c43a8a72976c26f2ab00757d26c437

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0cecfcff6e1aa3abd9657aeb598fcf017090ffa` · SHA-256 `252d9ef336cd0c392c02b5f9e796167b72c43a8a72976c26f2ab00757d26c437`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Patches.Mathlib.Algebra
import Formal.Patches.Mathlib.Analysis
import Formal.Patches.Mathlib.MeasureTheory
import Formal.Patches.Mathlib.NumberTheory
import Formal.Patches.Mathlib.Topology

/-!
Local Mathlib patch boundary root.

Files classified as local Mathlib patches require an upstream-status decision
before they can contribute theorem authority to the first-party kernel. This
root imports only conceptual patch markers, not the patch corpus.
-/

namespace Formal.Patches.Mathlib

inductive UpstreamStatus where
  | localOnly
  | upstreamPending
  | upstreamed
  deriving DecidableEq, Repr

def defaultStatus : UpstreamStatus := .localOnly

theorem defaultStatus_is_localOnly : defaultStatus = .localOnly := by
  rfl

def conceptualBoundaries : List String :=
  [ "Algebra"
  , "Analysis"
  , "MeasureTheory"
  , "NumberTheory"
  , "Topology"
  ]

theorem conceptualBoundaries_count : conceptualBoundaries.length = 5 := by
  rfl

end Formal.Patches.Mathlib
```

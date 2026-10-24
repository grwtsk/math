# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DefaultstatusIsLocalonly9fabe884afb2.Variantd7f20a106d528d6755e8e960835f6659c1beddd47943419f71375103e80eb9b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `501ad30c225771867e40d4d6b148f51f17fe9deb` · SHA-256 `d7f20a106d528d6755e8e960835f6659c1beddd47943419f71375103e80eb9b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Ast.Patch.control_surface.conceptualsubdirectories_count_f98a6dac9de1
import Formal.Ast.Patch.control_surface.conceptualsubdirectories_count_1451b957863f
import Formal.Ast.Patch.control_surface.conceptualsubdirectories_count_c42375aa4bd0
import Formal.Ast.Patch.control_surface.conceptualsubdirectories_count_1ffde8573bed
import Formal.Ast.Patch.control_surface.conceptualsubdirectories_count_42a702c299f7

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

# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Negative.EdgeTraceMissingJoin

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1c7ebde8628d74a151d604d1563ab34fef21e9c` · SHA-256 `11af8a68ac5263129573e9fec317dc041f2b09b008085a8baadaf103031658cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph.EdgeTrace

namespace GRWTSK.Combinatorics.DirectedGraph.EdgeTrace.Checks.Negative

local instance : Quiver Bool := ⟨fun _ _ => Bool⟩

def firstEdge : TotalEdge Bool := ⟨false, true, false⟩

def brokenEdge : TotalEdge Bool := ⟨false, false, true⟩

theorem valid_initial : ValidFrom false [firstEdge] := ⟨rfl, trivial⟩

theorem broken_join_rejected : ¬ ValidFrom false [firstEdge, brokenEdge] :=
  broken_join_not_valid false _ _ [] (by decide)

/- A valid initial edge does not prove the missing join for the full trace. -/
noncomputable example : PathStar false := decode false [firstEdge, brokenEdge] valid_initial

end GRWTSK.Combinatorics.DirectedGraph.EdgeTrace.Checks.Negative
```

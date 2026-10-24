# Complete source: GRWTSK.Topology.GeneralTopology.Basic.Variantc4c409e1edb346685b18b08565f901071dd7bae0f5de6cf2d66284f7cd8da762

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4edfcb5bd6b8cffd22930b9b83e61c6f57fa62a` · SHA-256 `c4c409e1edb346685b18b08565f901071dd7bae0f5de6cf2d66284f7cd8da762`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Analysis.Convex.Cone.Basic

variable {𝕜 E : Type*} [AddCommGroup E] [TopologicalSpace E]

namespace ConvexCone
variable [Semifield 𝕜] [LinearOrder 𝕜] [Module 𝕜 E] {s : Set E}

-- TODO: This result generalises to `G`-submodules in the sense of the Zulip thread linked below.

variable [IsStrictOrderedRing 𝕜] [IsTopologicalAddGroup E] in
/-- This is true essentially by `Submodule.span_eq_iUnion_nat`, except that `Submodule` currently
doesn't support that use case. See
https://leanprover.zulipchat.com/#narrow/channel/116395-maths/topic/G-submodules/with/514426583 -/
proof_wanted isOpen_hull (hs : IsOpen s) : IsOpen (hull 𝕜 s : Set E)

end ConvexCone
```

# Complete source: GRWTSK.Topology.GeneralTopology.Topology.Variant1413a3587f67df147be55d61db3b6d3455389ad8a042400aaa46f122048d052e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c65e15446242770c32604ab851edf5d51da8aed` · SHA-256 `1413a3587f67df147be55d61db3b6d3455389ad8a042400aaa46f122048d052e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Johannes Hölzl
-/
import Mathlib.Dynamics.FixedPoints.Basic
import Mathlib.Topology.Separation.Hausdorff

/-!
# Topological properties of fixed points

Currently this file contains two lemmas:

- `isFixedPt_of_tendsto_iterate`: if `f^n(x) → y` and `f` is continuous at `y`, then `f y = y`;
- `isClosed_fixedPoints`: the set of fixed points of a continuous map is a closed set.

## TODO

fixed points, iterates
-/


variable {α : Type*} [TopologicalSpace α] [T2Space α] {f : α → α}

open Function Filter

open Topology

/-- If the iterates `f^[n] x` converge to `y` and `f` is continuous at `y`,
then `y` is a fixed point for `f`. -/
theorem isFixedPt_of_tendsto_iterate {x y : α} (hy : Tendsto (fun n => f^[n] x) atTop (𝓝 y))
    (hf : ContinuousAt f y) : IsFixedPt f y := by
  refine tendsto_nhds_unique ((tendsto_add_atTop_iff_nat 1).1 ?_) hy
  simp only [iterate_succ' f]
  exact hf.tendsto.comp hy

/-- The set of fixed points of a continuous map is a closed set. -/
theorem isClosed_fixedPoints (hf : Continuous f) : IsClosed (fixedPoints f) :=
  isClosed_eq hf continuous_id
```

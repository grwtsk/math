# Complete source: GRWTSK.Geometry.Metrizable.Variant5f30ab4f7a3e1b50d8fa4ff55f2b5aab4f6ea6218e1a2caee00f7e7634cdf709

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2afd8a37cdb4278a008be58dd0526268fde835a6` · SHA-256 `5f30ab4f7a3e1b50d8fa4ff55f2b5aab4f6ea6218e1a2caee00f7e7634cdf709`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Geometry.Manifold.SmoothManifoldWithCorners
import Mathlib.Topology.Paracompact
import Mathlib.Topology.MetricSpace.Metrizable

#align_import geometry.manifold.metrizable from "leanprover-community/mathlib"@"d1bd9c5df2867c1cb463bc6364446d57bdd9f7f1"

/-!
# Metrizability of a σ-compact manifold

In this file we show that a σ-compact Hausdorff topological manifold over a finite dimensional real
vector space is metrizable.
-/


open TopologicalSpace

/-- A σ-compact Hausdorff topological manifold over a finite dimensional real vector space is
metrizable. -/
theorem ManifoldWithCorners.metrizableSpace {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [FiniteDimensional ℝ E] {H : Type*} [TopologicalSpace H] (I : ModelWithCorners ℝ E H)
    (M : Type*) [TopologicalSpace M] [ChartedSpace H M] [SigmaCompactSpace M] [T2Space M] :
    MetrizableSpace M := by
  haveI := I.locallyCompactSpace; haveI := ChartedSpace.locallyCompactSpace H M
  haveI : NormalSpace M := normal_of_paracompact_t2
  haveI := I.secondCountableTopology
  haveI := ChartedSpace.secondCountable_of_sigma_compact H M
  exact metrizableSpace_of_t3_second_countable M
#align manifold_with_corners.metrizable_space ManifoldWithCorners.metrizableSpace
```

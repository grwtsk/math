# Complete source: GRWTSK.Topology.GeneralTopology.Metrizable.Varianta2ea4cb8e09e91b6f12779e8c3b84377ca1d2f27c939e4f42a69f560ee49950e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dde6ae1d36522e7bd57d15aa1349da212b42f3a0` · SHA-256 `a2ea4cb8e09e91b6f12779e8c3b84377ca1d2f27c939e4f42a69f560ee49950e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.Normed.Module.FiniteDimension
import Mathlib.Geometry.Manifold.IsManifold.Basic
import Mathlib.Topology.Compactness.Paracompact
import Mathlib.Topology.Metrizable.Urysohn

/-!
# Metrizability of a σ-compact manifold

In this file we show that a σ-compact Hausdorff topological manifold over a finite dimensional real
vector space is metrizable.
-/


open TopologicalSpace

/-- A σ-compact Hausdorff topological manifold over a finite dimensional real vector space is
metrizable. -/
theorem Manifold.metrizableSpace {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [FiniteDimensional ℝ E] {H : Type*} [TopologicalSpace H] (I : ModelWithCorners ℝ E H)
    (M : Type*) [TopologicalSpace M] [ChartedSpace H M] [SigmaCompactSpace M] [T2Space M] :
    MetrizableSpace M := by
  haveI := I.locallyCompactSpace; haveI := ChartedSpace.locallyCompactSpace H M
  haveI := I.secondCountableTopology
  haveI := ChartedSpace.secondCountable_of_sigmaCompact H M
  exact metrizableSpace_of_t3_secondCountable M
@[deprecated (since := "2024-11-11")] alias ManifoldWithCorners.metrizableSpace :=
  Manifold.metrizableSpace
```

# Complete source: GRWTSK.Topology.GeneralTopology.ModuleTopology.Variante3a15d11f4b478311d579b918703d0b23d24475c603df05b5f65e5fbe660c471

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d8a05567b03d60cd959cd5000087eff8005ad5d` · SHA-256 `e3a15d11f4b478311d579b918703d0b23d24475c603df05b5f65e5fbe660c471`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Geometry.Convex.ConvexSpace.Module
public import Mathlib.Geometry.Convex.ConvexSpace.Topology

/-!
# Continuity of affine maps from the standard simplex to modules

-/

open Topology

namespace Convexity.StdSimplex

variable {R E ι : Type*} [Ring R] [PartialOrder R] [IsStrictOrderedRing R]
  [AddCommGroup E] [Module R E] [ConvexSpace R E]
  [TopologicalSpace E] [IsTopologicalAddGroup E] [TopologicalSpace R]
  [IsTopologicalRing R] [ContinuousSMul R E] [IsModuleConvexSpace R E]

@[fun_prop]
public lemma continuous_of_affineMap (f : ConvexSpace.AffineMap R (StdSimplex R ι) E) :
    Continuous f := by
  wlog hι : Finite ι generalizing ι
  · rw [StdSimplex.continuous_iff]
    intro ι' _ g
    exact this (f.comp (affineMap g)) inferInstance
  have := Fintype.ofFinite ι
  obtain ⟨f, rfl⟩ := StdSimplex.affineMapMk_surjective f
  rw [StdSimplex.coe_affineMapMk_of_fintype]
  fun_prop

public lemma continuous_of_isAffineMap (f : StdSimplex R ι → E) (hf : IsAffineMap R f) :
    Continuous f :=
  continuous_of_affineMap ⟨f, hf⟩

end Convexity.StdSimplex
```

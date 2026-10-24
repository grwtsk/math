# Complete source: GRWTSK.Topology.GeneralTopology.Equicontinuity.Variant395a0e3541694b30824ae9de80b14da1950cfdf4bf030c5c3cfbe637e1bc7a00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aaf958187cfbe7f69c5d1637a7b506528f6cae5b` · SHA-256 `395a0e3541694b30824ae9de80b14da1950cfdf4bf030c5c3cfbe637e1bc7a00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Anatole Dedecker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anatole Dedecker
-/
module

public import Mathlib.Topology.Algebra.UniformConvergence
public import Mathlib.Topology.UniformSpace.Equicontinuity

/-!
# Algebra-related equicontinuity criteria
-/

public section


open Function

open scoped UniformConvergence

@[to_additive]
theorem equicontinuous_of_equicontinuousAt_one {ι G M hom : Type*} [TopologicalSpace G]
    [UniformSpace M] [Group G] [Group M] [IsTopologicalGroup G] [IsUniformGroup M]
    [FunLike hom G M] [MonoidHomClass hom G M] (F : ι → hom)
    (hf : EquicontinuousAt ((↑) ∘ F) (1 : G)) :
    Equicontinuous ((↑) ∘ F) := by
  rw [equicontinuous_iff_continuous]
  rw [equicontinuousAt_iff_continuousAt] at hf
  let φ : G →* (ι →ᵤ M) :=
    { toFun := swap ((↑) ∘ F)
      map_one' := by dsimp [UniformFun]; ext; exact map_one _
      map_mul' := fun a b => by dsimp [UniformFun]; ext; exact map_mul _ _ _ }
  exact continuous_of_continuousAt_one φ hf

@[to_additive]
theorem uniformEquicontinuous_of_equicontinuousAt_one {ι G M hom : Type*} [UniformSpace G]
    [UniformSpace M] [Group G] [Group M] [IsUniformGroup G] [IsUniformGroup M]
    [FunLike hom G M] [MonoidHomClass hom G M]
    (F : ι → hom) (hf : EquicontinuousAt ((↑) ∘ F) (1 : G)) :
    UniformEquicontinuous ((↑) ∘ F) := by
  rw [uniformEquicontinuous_iff_uniformContinuous]
  rw [equicontinuousAt_iff_continuousAt] at hf
  let φ : G →* (ι →ᵤ M) :=
    { toFun := swap ((↑) ∘ F)
      map_one' := by dsimp [UniformFun]; ext; exact map_one _
      map_mul' := fun a b => by dsimp [UniformFun]; ext; exact map_mul _ _ _ }
  exact uniformContinuous_of_continuousAt_one φ hf
```

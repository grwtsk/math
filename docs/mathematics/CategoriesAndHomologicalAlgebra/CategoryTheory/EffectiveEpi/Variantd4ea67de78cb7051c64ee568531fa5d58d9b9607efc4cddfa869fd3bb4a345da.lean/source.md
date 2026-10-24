# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EffectiveEpi.Variantd4ea67de78cb7051c64ee568531fa5d58d9b9607efc4cddfa869fd3bb4a345da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36318f765cbb8e682f03e2ac13d2b43f0d9fa761` · SHA-256 `d4ea67de78cb7051c64ee568531fa5d58d9b9607efc4cddfa869fd3bb4a345da`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Jonas van der Schaaf. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jonas van der Schaaf, Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.Sites.RegularEpi
public import Mathlib.Condensed.Light.Epi

/-!

# The functor from light profinite sets to light condensed sets preserves effective epimorphisms
-/

public section

open CategoryTheory CompHausLike

universe u

instance : lightProfiniteToLightCondSet.PreservesEpimorphisms where
  preserves f hf := by
    rw [LightCondSet.epi_iff_locallySurjective_on_lightProfinite]
    intro S g
    refine ⟨pullback f g, pullback.snd _ _, fun y ↦ ?_, pullback.fst _ _, pullback.condition _ _⟩
    rw [LightProfinite.epi_iff_surjective] at hf
    obtain ⟨x, hx⟩ := hf (g.hom y)
    exact ⟨⟨⟨x, y⟩, hx⟩, rfl⟩

instance : IsRegularEpiCategory LightCondSet.{u} :=
  inferInstanceAs <| IsRegularEpiCategory (Sheaf _ _)

example : lightProfiniteToLightCondSet.PreservesEffectiveEpis := inferInstance
```

# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RegularEpi.Variantde7e07f540f0d49201ca679b94e8c766e9792cab32ea0718774fd500aa16da46

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9272c878d3ca1151f5678003ddee91377bd632c8` · SHA-256 `de7e07f540f0d49201ca679b94e8c766e9792cab32ea0718774fd500aa16da46`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Limits.Shapes.RegularMono
import Mathlib.CategoryTheory.EffectiveEpi.Basic
/-!

# The relationship between effective and regular epimorphisms.

This file proves that the notions of regular epi and effective epi are equivalent for morphisms with
kernel pairs, and that regular epi implies effective epi in general.
-/

namespace CategoryTheory

open Limits RegularEpi

variable {C : Type*} [Category C]

/-- The data of an `EffectiveEpi` structure on a `RegularEpi`. -/
def effectiveEpiStructOfRegularEpi {B X : C} (f : X ⟶ B) [RegularEpi f] :
    EffectiveEpiStruct f where
  desc _ h := Cofork.IsColimit.desc isColimit _ (h _ _ w)
  fac _ _ := Cofork.IsColimit.π_desc' isColimit _ _
  uniq _ _ _ hg := Cofork.IsColimit.hom_ext isColimit (hg.trans
    (Cofork.IsColimit.π_desc' _ _ _).symm)

instance {B X : C} (f : X ⟶ B) [RegularEpi f] : EffectiveEpi f :=
  ⟨⟨effectiveEpiStructOfRegularEpi f⟩⟩

/-- A morphism which is a coequalizer for its kernel pair is an effective epi. -/
theorem effectiveEpiOfKernelPair {B X : C} (f : X ⟶ B) [HasPullback f f]
    (hc : IsColimit (Cofork.ofπ f pullback.condition)) : EffectiveEpi f :=
  let _ := regularEpiOfKernelPair f hc
  inferInstance

/-- An effective epi which has a kernel pair is a regular epi. -/
noncomputable instance regularEpiOfEffectiveEpi {B X : C} (f : X ⟶ B) [HasPullback f f]
    [EffectiveEpi f] : RegularEpi f where
  W := pullback f f
  left := pullback.fst f f
  right := pullback.snd f f
  w := pullback.condition
  isColimit := {
    desc := fun s ↦ EffectiveEpi.desc f (s.ι.app WalkingParallelPair.one) fun g₁ g₂ hg ↦ (by
      simp only [Cofork.app_one_eq_π]
      rw [← pullback.lift_snd g₁ g₂ hg, Category.assoc, ← Cofork.app_zero_eq_comp_π_right]
      simp)
    fac := by
      intro s j
      have := EffectiveEpi.fac f (s.ι.app WalkingParallelPair.one) fun g₁ g₂ hg ↦ (by
          simp only [Cofork.app_one_eq_π]
          rw [← pullback.lift_snd g₁ g₂ hg, Category.assoc, ← Cofork.app_zero_eq_comp_π_right]
          simp)
      simp only [Functor.const_obj_obj, Cofork.app_one_eq_π] at this
      cases j with
      | zero => simp [this]
      | one => simp [this]
    uniq := fun _ _ h ↦ EffectiveEpi.uniq f _ _ _ (h WalkingParallelPair.one) }

end CategoryTheory
```

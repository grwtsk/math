# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Linear.Variant78d01f92fd0db6387ed2fadc5a575ea2d31947424cd2eb46f1ccf7fde7fdd7b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8be1ee04251aadbf0c3ea049a3a21da5ab9261cb` · SHA-256 `78d01f92fd0db6387ed2fadc5a575ea2d31947424cd2eb46f1ccf7fde7fdd7b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Localization.HasLocalization
public import Mathlib.CategoryTheory.Center.Localization
public import Mathlib.CategoryTheory.Center.Linear
public import Mathlib.CategoryTheory.Linear.LinearFunctor

/-!
# Localization of linear categories

If `L : C ⥤ D` is an additive localization functor between preadditive categories,
and `C` is `R`-linear, we show that `D` can also be equipped with an `R`-linear
structure such that `L` is an `R`-linear functor.

-/

@[expose] public section

universe w v₁ v₂ u₁ u₂

namespace CategoryTheory

namespace Localization

variable (R : Type w) [Ring R] {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]
  [Preadditive C] [Preadditive D]
  (L : C ⥤ D) (W : MorphismProperty C) [L.IsLocalization W]
  [L.Additive] [Linear R C]

/-- If `L : C ⥤ D` is a localization functor and `C` is `R`-linear, then `D` is
`R`-linear if we already know that `D` is preadditive and `L` is additive. -/
@[instance_reducible]
noncomputable def linear : Linear R D := Linear.ofRingMorphism
  ((CatCenter.localizationRingHom L W).comp (Linear.toCatCenter R C))

lemma functor_linear :
    letI := linear R L W
    Functor.Linear R L := by
  let := linear R L W
  constructor
  intro X Y f r
  change L.map (r • f) = ((Linear.toCatCenter R C r).localization L W).app (L.obj X) ≫ L.map f
  simp [← L.map_comp]

section

variable [Preadditive W.Localization] [W.Q.Additive]

noncomputable instance : Linear R W.Localization := Localization.linear R W.Q W

noncomputable instance : Functor.Linear R W.Q := Localization.functor_linear R W.Q W

end

section

variable [W.HasLocalization] [Preadditive W.Localization'] [W.Q'.Additive]

noncomputable instance : Linear R W.Localization' := Localization.linear R W.Q' W

noncomputable instance : Functor.Linear R W.Q' := Localization.functor_linear R W.Q' W

end

section

variable {E : Type*} [Category* E]
  (L : C ⥤ D) (W : MorphismProperty C) [L.IsLocalization W] [Preadditive E]
  (R : Type*) [Ring R]
  [Linear R C] [Linear R D] [Linear R E] [L.Linear R]

set_option backward.defeqAttrib.useBackward true in
lemma functor_linear_iff (F : C ⥤ E) (G : D ⥤ E) [Lifting L W F G] :
    F.Linear R ↔ G.Linear R := by
  constructor
  · intro
    have : (L ⋙ G).Linear R := Functor.linear_of_iso _ (Lifting.iso L W F G).symm
    have := Localization.essSurj L W
    rw [Functor.linear_iff]
    intro X r
    have e := L.objObjPreimageIso X
    have : r • 𝟙 X = e.inv ≫ (r • 𝟙 _) ≫ e.hom := by simp
    rw [this, G.map_comp, G.map_comp, ← L.map_id, ← L.map_smul, ← Functor.comp_map,
      (L ⋙ G).map_smul, Functor.map_id, Linear.smul_comp, Linear.comp_smul]
    dsimp
    rw [Category.id_comp, ← G.map_comp, e.inv_hom_id, G.map_id]
  · intro
    exact Functor.linear_of_iso _ (Lifting.iso L W F G)

end

end Localization

end CategoryTheory
```

# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Images.Variant4307e9c8aa76f1333041bff50f3767133ae2b2164530791753457973a2d06d0c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7853f65af0e0c531edc75fd67f66bb3cfff86294` · SHA-256 `4307e9c8aa76f1333041bff50f3767133ae2b2164530791753457973a2d06d0c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/
module

public import Mathlib.CategoryTheory.Limits.Shapes.Images
public import Mathlib.CategoryTheory.Limits.Constructions.EpiMono

/-!
# Preserving images

In this file, we show that if a functor preserves spans and cospans, then it preserves images.
-/

@[expose] public section


noncomputable section

namespace CategoryTheory

namespace PreservesImage

open CategoryTheory

open CategoryTheory.Limits

universe u₁ u₂ v₁ v₂

variable {A : Type u₁} {B : Type u₂} [Category.{v₁} A] [Category.{v₂} B]
variable [HasEqualizers A] [HasImages A]
variable [StrongEpiCategory B] [HasImages B]
variable (L : A ⥤ B)
variable [∀ {X Y Z : A} (f : X ⟶ Z) (g : Y ⟶ Z), PreservesLimit (cospan f g) L]
variable [∀ {X Y Z : A} (f : X ⟶ Y) (g : X ⟶ Z), PreservesColimit (span f g) L]

/-- If a functor preserves limit spans and colimit cospans, then it preserves images.
-/
@[simps!]
def iso {X Y : A} (f : X ⟶ Y) : image (L.map f) ≅ L.obj (image f) :=
  let aux1 : StrongEpiMonoFactorisation (L.map f) :=
    { I := L.obj (Limits.image f)
      m := L.map <| Limits.image.ι _
      m_mono := preserves_mono_of_preservesLimit _ _
      e := L.map <| factorThruImage _
      e_strong_epi := @strongEpi_of_epi B _ _ _ _ _ (preserves_epi_of_preservesColimit L _)
      fac := by rw [← L.map_comp, Limits.image.fac] }
  IsImage.isoExt (Image.isImage (L.map f)) aux1.toMonoIsImage

@[reassoc]
theorem factorThruImage_comp_hom {X Y : A} (f : X ⟶ Y) :
    factorThruImage (L.map f) ≫ (iso L f).hom = L.map (factorThruImage f) := by simp

@[reassoc]
theorem hom_comp_map_image_ι {X Y : A} (f : X ⟶ Y) :
    (iso L f).hom ≫ L.map (image.ι f) = image.ι (L.map f) := by rw [iso_hom, image.lift_fac]

@[reassoc]
theorem inv_comp_image_ι_map {X Y : A} (f : X ⟶ Y) :
    (iso L f).inv ≫ image.ι (L.map f) = L.map (image.ι f) := by simp

end PreservesImage

end CategoryTheory
```

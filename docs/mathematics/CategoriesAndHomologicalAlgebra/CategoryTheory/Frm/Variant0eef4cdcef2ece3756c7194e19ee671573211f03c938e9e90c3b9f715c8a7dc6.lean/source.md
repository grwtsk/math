# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Frm.Variant0eef4cdcef2ece3756c7194e19ee671573211f03c938e9e90c3b9f715c8a7dc6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf1c777ae0ce138c8e2f2423ded31aa561b71094` · SHA-256 `0bc7c4eab2eb143a2ad0433cb46bead5adccbf0b15868fa239030a6c406af89a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Frm.Variant372d07652a196f3b36c2106ea82aac41e8f86427c7ca65f7d915fea946495abd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"372d07652a196f3b36c2106ea82aac41e8f86427c7ca65f7d915fea946495abd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Frm.Variant372d07652a196f3b36c2106ea82aac41e8f86427c7ca65f7d915fea946495abd","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"372d07652a196f3b36c2106ea82aac41e8f86427c7ca65f7d915fea946495abd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Category/Frm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Order.Category.Lat
public import Mathlib.Order.Hom.CompleteLattice
public import Mathlib.CategoryTheory.ConcreteCategory.Bundled

/-!
# The category of frames

This file defines `Frm`, the category of frames.

## References

* [nLab, *Frm*](https://ncatlab.org/nlab/show/Frm)
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Frm.Variant372d07652a196f3b36c2106ea82aac41e8f86427c7ca65f7d915fea946495abd

@[expose] public section


universe u

open CategoryTheory Order

/-- The category of frames. -/
structure Frm where
  /-- Construct a bundled `Frm` from the underlying type and typeclass. -/
  of ::
  /-- The underlying frame. -/
  (carrier : Type*)
  [str : Frame carrier]

attribute [instance] Frm.str

initialize_simps_projections Frm (carrier → coe, -str)

namespace Frm

open Lean.PrettyPrinter.Delaborator in
/-- This prints `Frm.of X` as `↧X`. -/
@[app_delab Frm.of]
meta def delabOf : Delab := CategoryTheory.delabOf

instance : CoeSort Frm (Type _) :=
  ⟨Frm.carrier⟩

attribute [coe] Frm.carrier

/-- The type of morphisms in `Frm R`. -/
@[ext]
structure Hom (X Y : Frm.{u}) where
  _mkInternal ::
  /-- The underlying `FrameHom`. -/
  hom' : FrameHom X Y

instance : Category Frm.{u} where
  Hom X Y := Hom X Y
  id X := ⟨FrameHom.id X⟩
  comp f g := ⟨g.hom'.comp f.hom'⟩

instance : ConcreteCategory Frm (FrameHom · ·) where
  hom := Hom.hom'
  ofHom := Hom._mkInternal

/-- Turn a morphism in `Frm` back into a `FrameHom`. -/
abbrev Hom.hom {X Y : Frm.{u}} (f : Hom X Y) :=
  ConcreteCategory.hom (C := Frm) f

/-- Typecheck a `FrameHom` as a morphism in `Frm`. -/
abbrev ofHom {X Y : Type u} [Frame X] [Frame Y] (f : FrameHom X Y) : of X ⟶ of Y :=
  ConcreteCategory.ofHom (C := Frm) f

variable {R} in
/-- Use the `ConcreteCategory.hom` projection for `@[simps]` lemmas. -/
def Hom.Simps.hom (X Y : Frm.{u}) (f : Hom X Y) :=
  f.hom

initialize_simps_projections Hom (hom' → hom)

/-!
The results below duplicate the `ConcreteCategory` simp lemmas, but we can keep them for `dsimp`.
-/

@[simp]
lemma coe_id {X : Frm} : (𝟙 X : X → X) = id := rfl

@[simp]
lemma coe_comp {X Y Z : Frm} {f : X ⟶ Y} {g : Y ⟶ Z} : (f ≫ g : X → Z) = g ∘ f := rfl

@[simp]
lemma forget_map {X Y : Frm} (f : X ⟶ Y) :
    (forget Frm).map f = (f : _ → _) := rfl

@[ext]
lemma ext {X Y : Frm} {f g : X ⟶ Y} (w : ∀ x : X, f x = g x) : f = g :=
  ConcreteCategory.hom_ext _ _ w

-- This is not `simp` to avoid rewriting in types of terms.
theorem coe_of (X : Type u) [Frame X] : (Frm.of X : Type u) = X := rfl

@[simp]
lemma hom_id {X : Frm} : (𝟙 X : X ⟶ X).hom = FrameHom.id _ := rfl

/- Provided for rewriting. -/
lemma id_apply (X : Frm) (x : X) :
    (𝟙 X : X ⟶ X) x = x := by simp

@[simp]
lemma hom_comp {X Y Z : Frm} (f : X ⟶ Y) (g : Y ⟶ Z) :
    (f ≫ g).hom = g.hom.comp f.hom := rfl

/- Provided for rewriting. -/
lemma comp_apply {X Y Z : Frm} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) :
    (f ≫ g) x = g (f x) := by simp

@[ext]
lemma hom_ext {X Y : Frm} {f g : X ⟶ Y} (hf : f.hom = g.hom) : f = g :=
  Hom.ext hf

@[simp]
lemma hom_ofHom {X Y : Type u} [Frame X] [Frame Y] (f : FrameHom X Y) : (ofHom f).hom = f := rfl

@[simp]
lemma ofHom_hom {X Y : Frm} (f : X ⟶ Y) :
    ofHom (Hom.hom f) = f := rfl

@[simp]
lemma ofHom_id {X : Type u} [Frame X] : ofHom (FrameHom.id _) = 𝟙 (of X) := rfl

@[simp]
lemma ofHom_comp {X Y Z : Type u} [Frame X] [Frame Y] [Frame Z]
    (f : FrameHom X Y) (g : FrameHom Y Z) :
    ofHom (g.comp f) = ofHom f ≫ ofHom g :=
  rfl

lemma ofHom_apply {X Y : Type u} [Frame X] [Frame Y] (f : FrameHom X Y) (x : X) :
    (ofHom f) x = f x := rfl

lemma inv_hom_apply {X Y : Frm} (e : X ≅ Y) (x : X) : e.inv (e.hom x) = x := by
  simp

lemma hom_inv_apply {X Y : Frm} (e : X ≅ Y) (s : Y) : e.hom (e.inv s) = s := by
  simp

instance : Inhabited Frm :=
  ⟨of PUnit⟩

instance hasForgetToLat : HasForget₂ Frm Lat where
  forget₂.obj X := ↧X
  forget₂.map f := Lat.ofHom f.hom

/-- Constructs an isomorphism of frames from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : Frm.{u}} (e : α ≃o β) : α ≅ β where
  hom := ofHom e
  inv := ofHom e.symm

end Frm
```

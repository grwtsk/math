# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.HeytAlg.Variantee1257e4280dc8a6cb0c964905cb30fc422a548307e245d7338930bb4063f1c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e22da7d5f39e51ea1bfa93afd75d4e55af320ed` · SHA-256 `0975c5234e1bf7fa7f973aa4313f3f7ecce98defe53621961ad463b42e7dbc9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.HeytAlg.Variant99eac8397742a1f48688b6a73d3e6167de7c7b9fcc0079da3ebd0d6c96a6c588","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99eac8397742a1f48688b6a73d3e6167de7c7b9fcc0079da3ebd0d6c96a6c588","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.HeytAlg.Variant99eac8397742a1f48688b6a73d3e6167de7c7b9fcc0079da3ebd0d6c96a6c588","mathematical_subject":"Algebra.OrderTheory","original_sha256":"99eac8397742a1f48688b6a73d3e6167de7c7b9fcc0079da3ebd0d6c96a6c588","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Category/HeytAlg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Order.Category.BddDistLat
public import Mathlib.Order.Heyting.Hom

/-!
# The category of Heyting algebras

This file defines `HeytAlg`, the category of Heyting algebras.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.HeytAlg.Variant99eac8397742a1f48688b6a73d3e6167de7c7b9fcc0079da3ebd0d6c96a6c588

@[expose] public section


universe u

open CategoryTheory Order

/-- The category of Heyting algebras. -/
structure HeytAlg where
  /-- The underlying Heyting algebra. -/
  carrier : Type*
  [str : HeytingAlgebra carrier]

attribute [instance] HeytAlg.str

initialize_simps_projections HeytAlg (carrier → coe, -str)

namespace HeytAlg

instance : CoeSort HeytAlg (Type _) :=
  ⟨HeytAlg.carrier⟩

attribute [coe] HeytAlg.carrier

/-- Construct a bundled `HeytAlg` from the underlying type and typeclass. -/
abbrev of (X : Type*) [HeytingAlgebra X] : HeytAlg := ⟨X⟩

open Lean.PrettyPrinter.Delaborator in
/-- This prints `HeytAlg.of X` as `↧X`. -/
@[app_delab HeytAlg.of]
meta def delabOf : Delab := CategoryTheory.delabOf

/-- The type of morphisms in `HeytAlg R`. -/
@[ext]
structure Hom (X Y : HeytAlg.{u}) where
  _mkInternal ::
  /-- The underlying `HeytingHom`. -/
  hom' : HeytingHom X Y

instance : Category HeytAlg.{u} where
  Hom X Y := Hom X Y
  id X := ⟨HeytingHom.id X⟩
  comp f g := ⟨g.hom'.comp f.hom'⟩

instance : ConcreteCategory HeytAlg (HeytingHom · ·) where
  hom := Hom.hom'
  ofHom := Hom._mkInternal

/-- Turn a morphism in `HeytAlg` back into a `HeytingHom`. -/
abbrev Hom.hom {X Y : HeytAlg.{u}} (f : Hom X Y) :=
  ConcreteCategory.hom (C := HeytAlg) f

/-- Typecheck a `HeytingHom` as a morphism in `HeytAlg`. -/
abbrev ofHom {X Y : Type u} [HeytingAlgebra X] [HeytingAlgebra Y] (f : HeytingHom X Y) :
    of X ⟶ of Y :=
  ConcreteCategory.ofHom (C := HeytAlg) f

variable {R} in
/-- Use the `ConcreteCategory.hom` projection for `@[simps]` lemmas. -/
def Hom.Simps.hom (X Y : HeytAlg.{u}) (f : Hom X Y) :=
  f.hom

initialize_simps_projections Hom (hom' → hom)

/-!
The results below duplicate the `ConcreteCategory` simp lemmas, but we can keep them for `dsimp`.
-/

@[simp]
lemma coe_id {X : HeytAlg} : (𝟙 X : X → X) = id := rfl

@[simp]
lemma coe_comp {X Y Z : HeytAlg} {f : X ⟶ Y} {g : Y ⟶ Z} : (f ≫ g : X → Z) = g ∘ f := rfl

@[simp]
lemma forget_map {X Y : HeytAlg} (f : X ⟶ Y) :
    (forget HeytAlg).map f = (f : _ → _) := rfl

@[ext]
lemma ext {X Y : HeytAlg} {f g : X ⟶ Y} (w : ∀ x : X, f x = g x) : f = g :=
  ConcreteCategory.hom_ext _ _ w

-- This is not `simp` to avoid rewriting in types of terms.
theorem coe_of (X : Type u) [HeytingAlgebra X] : (HeytAlg.of X : Type u) = X := rfl

@[simp]
lemma hom_id {X : HeytAlg} : (𝟙 X : X ⟶ X).hom = HeytingHom.id _ := rfl

/- Provided for rewriting. -/
lemma id_apply (X : HeytAlg) (x : X) :
    (𝟙 X : X ⟶ X) x = x := by simp

@[simp]
lemma hom_comp {X Y Z : HeytAlg} (f : X ⟶ Y) (g : Y ⟶ Z) :
    (f ≫ g).hom = g.hom.comp f.hom := rfl

/- Provided for rewriting. -/
lemma comp_apply {X Y Z : HeytAlg} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) :
    (f ≫ g) x = g (f x) := by simp

@[ext]
lemma hom_ext {X Y : HeytAlg} {f g : X ⟶ Y} (hf : f.hom = g.hom) : f = g :=
  Hom.ext hf

@[simp]
lemma hom_ofHom {X Y : Type u} [HeytingAlgebra X] [HeytingAlgebra Y] (f : HeytingHom X Y) :
    (ofHom f).hom = f :=
  rfl

@[simp]
lemma ofHom_hom {X Y : HeytAlg} (f : X ⟶ Y) :
    ofHom (Hom.hom f) = f := rfl

@[simp]
lemma ofHom_id {X : Type u} [HeytingAlgebra X] : ofHom (HeytingHom.id _) = 𝟙 (of X) := rfl

@[simp]
lemma ofHom_comp {X Y Z : Type u} [HeytingAlgebra X] [HeytingAlgebra Y] [HeytingAlgebra Z]
    (f : HeytingHom X Y) (g : HeytingHom Y Z) :
    ofHom (g.comp f) = ofHom f ≫ ofHom g :=
  rfl

lemma ofHom_apply {X Y : Type u} [HeytingAlgebra X] [HeytingAlgebra Y]
    (f : HeytingHom X Y) (x : X) :
    (ofHom f) x = f x := rfl

lemma inv_hom_apply {X Y : HeytAlg} (e : X ≅ Y) (x : X) : e.inv (e.hom x) = x := by
  simp

lemma hom_inv_apply {X Y : HeytAlg} (e : X ≅ Y) (s : Y) : e.hom (e.inv s) = s := by
  simp

instance : Inhabited HeytAlg :=
  ⟨of PUnit⟩

@[simps]
instance hasForgetToLat : HasForget₂ HeytAlg BddDistLat where
  forget₂.obj X := ↧X
  forget₂.map f := BddDistLat.ofHom f.hom

/-- Constructs an isomorphism of Heyting algebras from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : HeytAlg.{u}} (e : α ≃o β) : α ≅ β where
  hom := ofHom e
  inv := ofHom e.symm
  hom_inv_id := by ext; exact e.symm_apply_apply _
  inv_hom_id := by ext; exact e.apply_symm_apply _

end HeytAlg
```

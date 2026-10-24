# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pointed.Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fee62cfe4b0fc0a07fc7e93548db5ddb6bf5112f` · SHA-256 `707a05e6e870e24b2bf27bacd2a5aa03a53583e6441a6bc4f5403616c1b5de09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pointed.Variant606f91fcdc6f14d0a8f9e199bfaf5baa5ef4e818521db5392bbe5ce664a41a7d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"606f91fcdc6f14d0a8f9e199bfaf5baa5ef4e818521db5392bbe5ce664a41a7d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Pointed.Variant606f91fcdc6f14d0a8f9e199bfaf5baa5ef4e818521db5392bbe5ce664a41a7d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"606f91fcdc6f14d0a8f9e199bfaf5baa5ef4e818521db5392bbe5ce664a41a7d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Category/Pointed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.CategoryTheory.ConcreteCategory.Forget
public import Mathlib.CategoryTheory.Adjunction.Basic

/-!
# The category of pointed types

This defines `Pointed`, the category of pointed types.

## TODO

* Monoidal structure
* Upgrade `typeToPointed` to an equivalence
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pointed.Variant606f91fcdc6f14d0a8f9e199bfaf5baa5ef4e818521db5392bbe5ce664a41a7d

@[expose] public section


open CategoryTheory

universe u

/-- The category of pointed types. -/
structure Pointed : Type (u + 1) where
  /-- the underlying type -/
  protected X : Type u
  /-- the distinguished element -/
  point : X

namespace Pointed

instance : CoeSort Pointed Type* :=
  ⟨Pointed.X⟩

/-- Turns a point into a pointed type. -/
abbrev of {X : Type*} (point : X) : Pointed :=
  ⟨X, point⟩

theorem coe_of {X : Type*} (point : X) : ↥(of point) = X :=
  rfl

alias _root_.Prod.Pointed := of

instance : Inhabited Pointed :=
  ⟨of ((), ())⟩

/-- Morphisms in `Pointed`. -/
@[ext]
protected structure Hom (X Y : Pointed.{u}) : Type u where
  /-- the underlying map -/
  toFun : X → Y
  /-- compatibility with the distinguished points -/
  map_point : toFun X.point = Y.point

namespace Hom

/-- The identity morphism of `X : Pointed`. -/
@[simps]
def id (X : Pointed) : Pointed.Hom X X :=
  ⟨_root_.id, rfl⟩

instance (X : Pointed) : Inhabited (Pointed.Hom X X) :=
  ⟨id X⟩

/-- Composition of morphisms of `Pointed`. -/
@[simps]
def comp {X Y Z : Pointed.{u}} (f : Pointed.Hom X Y) (g : Pointed.Hom Y Z) : Pointed.Hom X Z :=
  ⟨g.toFun ∘ f.toFun, by rw [Function.comp_apply, f.map_point, g.map_point]⟩

end Hom

instance largeCategory : LargeCategory Pointed where
  Hom := Pointed.Hom
  id := Hom.id
  comp := @Hom.comp

@[simp] lemma Hom.id_toFun' (X : Pointed.{u}) : (𝟙 X : X ⟶ X).toFun = _root_.id := rfl

@[simp] lemma Hom.comp_toFun' {X Y Z : Pointed.{u}} (f : X ⟶ Y) (g : Y ⟶ Z) :
    (f ≫ g).toFun = g.toFun ∘ f.toFun := rfl

@[macro_inline]
instance (X Y : Pointed) : FunLike { f : X → Y // f X.point = Y.point } X Y where
  coe f := f
  coe_injective _ _ := Subtype.ext

instance hasForget : ConcreteCategory Pointed fun X Y => { f : X → Y // f X.point = Y.point } where
  hom f := ⟨f.1, f.2⟩
  ofHom f := ⟨f.1, f.2⟩

/-- Constructs an isomorphism between pointed types from an equivalence that preserves the point
between them. -/
@[simps]
def Iso.mk {α β : Pointed} (e : α ≃ β) (he : e α.point = β.point) : α ≅ β where
  hom := ⟨e, he⟩
  inv := ⟨e.symm, e.symm_apply_eq.2 he.symm⟩
  hom_inv_id := Pointed.Hom.ext e.symm_comp_self
  inv_hom_id := Pointed.Hom.ext e.self_comp_symm

end Pointed

/-- `Option` as a functor from types to pointed types. This is the free functor. -/
@[simps]
def typeToPointed : Type u ⥤ Pointed.{u} where
  obj X := ⟨Option X, none⟩
  map f := ⟨Option.map f, rfl⟩
  map_id _ := Pointed.Hom.ext Option.map_id
  map_comp _ _ := Pointed.Hom.ext <| by simp; rfl

/-- `typeToPointed` is the free functor. -/
def typeToPointedForgetAdjunction : typeToPointed ⊣ forget Pointed :=
  Adjunction.mkOfHomEquiv {
    homEquiv := fun X Y =>
        { toFun := fun f => ↾(f.toFun ∘ Option.some)
          invFun := fun f => ⟨fun o => o.elim Y.point f, rfl⟩
          left_inv := fun f => by
            apply Pointed.Hom.ext
            funext x
            cases x
            · exact f.map_point.symm
            · rfl }
    homEquiv_naturality_left_symm := fun f g => by
      apply Pointed.Hom.ext
      funext x
      cases x <;> rfl }
```

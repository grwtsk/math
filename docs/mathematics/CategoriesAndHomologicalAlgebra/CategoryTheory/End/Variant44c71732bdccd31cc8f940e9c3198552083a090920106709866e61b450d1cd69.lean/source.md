# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.End.Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b862bbc21cdf96eae1411b7d9702a9b1c38a7de` · SHA-256 `0a602cf50cb5e1b5d1a7871c4a681f961a6b1bd2c4cb7c8f5c7f59b8286bd88f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoendRel.Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CoendRel.Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Types/End.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.Limits.Chosen.End

/-!
# Ends and coends in `Type`

This file constructs explicit ends and coends in `Type` and provides
`ChosenEnds` and `ChosenCoends` instances using these constructions.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoendRel.Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22

@[expose] public section

universe w v u

namespace CategoryTheory

open Opposite TypeCat

namespace Limits.Types

variable {J : Type u} [Category.{v} J] (F : Jᵒᵖ ⥤ J ⥤ Type max w u)

/-- The relation on the sigma type `(W : J) × (F.obj (op W)).obj W` used to construct explicit
coends in `Type`. Two terms `⟨j, x⟩` and `⟨j', x'⟩` are related if and only if there is a
morphism `f : j ⟶ j'` in `J` and an element `y : (F.obj (op j')).obj j` such that
`(F.map f.op).app j y = x` and `(F.obj _).map f y = x'`, see `coendRel_iff` below. -/
inductive coendRel : (j : J) × (F.obj (op j)).obj j → (j : J) × (F.obj (op j)).obj j → Prop where
  | mk {j j' : J} (f : j ⟶ j') (x : (F.obj (op j')).obj j) :
    coendRel ⟨j, TypeCat.Hom.hom ((F.map f.op).app _) x⟩
      ⟨j', TypeCat.Hom.hom ((F.obj _).map f) x⟩

lemma coendRel_iff (j j' : J) (x : (F.obj (op j)).obj j) (x' : (F.obj (op j')).obj j') :
    coendRel F ⟨j, x⟩ ⟨j', x'⟩ ↔
      ∃ (f : j ⟶ j') (y : (F.obj (op j')).obj j),
        (F.map f.op).app _ y = x ∧ (F.obj _).map f y = x' := by
  constructor
  · rintro ⟨f, x⟩
    exact ⟨f, x, by simp⟩
  · rintro ⟨f, y, rfl, rfl⟩
    exact coendRel.mk f y

/-- The coend of a bifunctor valued in `Type`, defined as a quotient. -/
abbrev coend : Type max w u := Quot (coendRel F)

/-- Given `F : Jᵒᵖ ⥤ J ⥤ Type*`, this is the inclusion `(F.obj (op j)).obj j ⟶ coend F`
for any `j : J`, which sends `x` to `Quot.mk _ ⟨j, x⟩` -/
def coend.ι (j : J) : (F.obj (op j)).obj j ⟶ coend F := ↾fun x ↦ Quot.mk _ ⟨j, x⟩

variable {F}

@[reassoc]
lemma coend.condition {j j' : J} (f : j ⟶ j') :
    (F.map f.op).app _ ≫ coend.ι F j = (F.obj _).map f ≫ coend.ι F j' := by
  ext
  apply Quot.sound
  apply coendRel.mk

variable (F)

/-- The cowedge corresponding to the explicit coend in `Type` -/
def cowedge : Cowedge F := Cowedge.mk (coend F) (coend.ι F) (by intros; apply coend.condition)

/-- The cowedge corresponding to the explicit coend in `Type` is colimiting. -/
def cowedgeIsColimit : IsColimit (cowedge F) where
  desc s := TypeCat.ofHom <| Quot.lift (fun x ↦ Multicofork.π s x.fst x.snd) fun _ _ h ↦ by
    cases h with | mk f x => exact ConcreteCategory.congr_hom (Cowedge.condition s f) _
  fac s := by rintro (_ | _) <;> cat_disch
  uniq s m h := by ext ⟨j⟩; exact ConcreteCategory.congr_hom (h (.right j.fst)) j.snd

end Types

/-- A `ChosenCoends` instance on `Type` given by the explicit quotient construction above. -/
instance : ChosenCoends.{v, u} (Type max w u) where
  cowedge := Types.cowedge
  isCoend := Types.cowedgeIsColimit

variable {J : Type u} [Category.{v} J] {F : Jᵒᵖ ⥤ J ⥤ Type max w u}

lemma Types.chosenCoend_def : chosenCoend F = Quot (coendRel F) := rfl

attribute [local simp] Types.chosenCoend_def

lemma chosenCoend.ι_apply (j : J) (x : (F.obj (op j)).obj j) :
    dsimp% chosenCoend.ι F j x = Quot.mk _ ⟨j, x⟩ :=
  rfl

lemma chosenCoend.desc_apply {X : Type max w u} (f : ∀ j, (F.obj (op j)).obj j ⟶ X)
    (hf : ∀ ⦃i j : J⦄ (g : i ⟶ j), (F.map g.op).app i ≫ f i = (F.obj (op j)).map g ≫ f j)
    (x : chosenCoend F) : dsimp% chosenCoend.desc f hf x =
      Quot.lift (fun j ↦ f j.fst j.snd) (fun _ _ h ↦ by
        cases h with | mk f x => exact ConcreteCategory.congr_hom (hf f) _) x :=
  rfl

lemma chosenCoend.map_apply {G : Jᵒᵖ ⥤ J ⥤ Type max w u} (f : F ⟶ G) (x : chosenCoend F) :
    dsimp% chosenCoend.map f x =
      Quot.lift (fun ⟨j, y⟩ ↦ Quot.mk _ ⟨j, (f.app _).app _ y⟩) (fun _ _ ↦ by
        rintro ⟨g, y⟩
        apply Quot.sound
        rw [Types.coendRel_iff]
        refine ⟨g, (f.app _).app _ y, ?_, ?_⟩
        · simp only [← NatTrans.comp_app_apply, f.naturality]
        · simp [← NatTrans.naturality_apply]) x :=
  rfl

namespace Types

variable {J : Type u} [Category.{v} J] (F : Jᵒᵖ ⥤ J ⥤ Type max w u)

/-- The end of a bifunctor valued in `Type`, defined as the subtype of compatible families. -/
abbrev end_ : Type max w u :=
  { x : ∀ j, (F.obj (op j)).obj j // ∀ ⦃i j : J⦄ (f : i ⟶ j),
      TypeCat.Hom.hom ((F.obj (op i)).map f) (x i) =
        TypeCat.Hom.hom ((F.map f.op).app j) (x j) }

/-- Given `F : Jᵒᵖ ⥤ J ⥤ Type*`, this is the projection `end_ F ⟶ (F.obj (op j)).obj j`
for any `j : J`, which sends `x` to `x.1 j`. -/
def end_.π (j : J) : end_ F ⟶ (F.obj (op j)).obj j := ↾fun x ↦ x.1 j

variable {F}

@[reassoc]
lemma end_.condition {i j : J} (f : i ⟶ j) :
    end_.π F i ≫ (F.obj (op i)).map f = end_.π F j ≫ (F.map f.op).app j := by
  ext x
  exact x.2 f

variable (F)

/-- The wedge corresponding to the explicit end in `Type`. -/
def wedge : Wedge F := Wedge.mk (end_ F) (end_.π F) (by intros; apply end_.condition)

/-- The wedge corresponding to the explicit end in `Type` is limiting. -/
def wedgeIsLimit : IsLimit (wedge F) where
  lift s := TypeCat.ofHom <| fun x ↦
    (⟨fun j : J ↦ Multifork.ι s j x, fun _ _ f ↦ by
      exact ConcreteCategory.congr_hom (Wedge.condition s f) x⟩ : end_ F)
  fac s := by rintro (_ | _) <;> cat_disch
  uniq s m h := by
    ext x
    apply Subtype.ext
    funext j
    exact ConcreteCategory.congr_hom (h (.left j)) x

end Types

/-- A `ChosenEnds` instance on `Type` given by the explicit subtype construction above. -/
instance : ChosenEnds.{v, u} (Type max w u) where
  wedge := Types.wedge
  isEnd := Types.wedgeIsLimit

variable {J : Type u} [Category.{v} J] {F : Jᵒᵖ ⥤ J ⥤ Type max w u}

lemma Types.chosenEnd_def : chosenEnd F = Types.end_ F := rfl

attribute [local simp] Types.chosenEnd_def

lemma chosenEnd.π_apply (j : J) (x : Types.end_ F) :
    dsimp% chosenEnd.π (C := Type max w u) F j x = x.1 j :=
  rfl

lemma chosenEnd.lift_apply {X : Type max w u} (f : ∀ j, X ⟶ (F.obj (op j)).obj j)
    (hf : ∀ ⦃i j : J⦄ (g : i ⟶ j), f i ≫ (F.obj (op i)).map g = f j ≫ (F.map g.op).app j)
    (x : X) : dsimp% chosenEnd.lift (C := Type max w u) (F := F) f hf x =
      (⟨fun j ↦ f j x, fun _ _ g ↦ ConcreteCategory.congr_hom (hf g) x⟩ : Types.end_ F) :=
  rfl

lemma chosenEnd.map_apply {G : Jᵒᵖ ⥤ J ⥤ Type max w u} (f : F ⟶ G)
    (x : Types.end_ F) :
    dsimp% chosenEnd.map (C := Type max w u) f x =
      ⟨fun j ↦ (f.app (op j)).app j (x.1 j), by
        intro i j g
        rw [← (f.app (op i)).naturality_apply]
        simp [x.2 g, ← comp_apply, -types_comp_apply]⟩ :=
  rfl

end CategoryTheory.Limits
```

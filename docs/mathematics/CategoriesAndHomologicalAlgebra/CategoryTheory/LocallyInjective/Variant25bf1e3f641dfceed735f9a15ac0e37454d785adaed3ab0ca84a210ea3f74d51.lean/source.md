# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallyInjective.Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e33120e0ab9ecd7f9fe21a4b69a1ff430a8cea13` · SHA-256 `4066189c918cf038e89da604eba041a968001dddf528431ba1463ccb0294b97f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsLocallyInjective.Variantcef3deebb285b45abae9be3a35a464cfd1ff6bbc3e974c9ea4bfcf306a4e0728","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cef3deebb285b45abae9be3a35a464cfd1ff6bbc3e974c9ea4bfcf306a4e0728","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsLocallyInjective.Variantcef3deebb285b45abae9be3a35a464cfd1ff6bbc3e974c9ea4bfcf306a4e0728","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"cef3deebb285b45abae9be3a35a464cfd1ff6bbc3e974c9ea4bfcf306a4e0728","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Sites/LocallyInjective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Sites.LeftExact
public import Mathlib.CategoryTheory.Sites.PreservesSheafification
public import Mathlib.CategoryTheory.Sites.Subsheaf
public import Mathlib.CategoryTheory.Sites.Whiskering

/-!
# Locally injective morphisms of (pre)sheaves

Let `C` be a category equipped with a Grothendieck topology `J`,
and let `D` be a concrete category. In this file, we introduce the typeclass
`Presheaf.IsLocallyInjective J φ` for a morphism `φ : F₁ ⟶ F₂` in the category
`Cᵒᵖ ⥤ D`. This means that `φ` is locally injective. More precisely,
if `x` and `y` are two elements of some `F₁.obj U` such
the images of `x` and `y` in `F₂.obj U` coincide, then
the equality `x = y` must hold locally, i.e. after restriction
by the maps of a covering sieve.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsLocallyInjective.Variantcef3deebb285b45abae9be3a35a464cfd1ff6bbc3e974c9ea4bfcf306a4e0728

@[expose] public section

universe w v' v u' u

namespace CategoryTheory

open Opposite

variable {C : Type u} [Category.{v} C]
  {D : Type u'} [Category.{v'} D] {FD : D → D → Type*} {CD : D → Type w}
  [∀ X Y, FunLike (FD X Y) (CD X) (CD Y)] [ConcreteCategory.{w} D FD]
  (J : GrothendieckTopology C)

namespace Presheaf

/-- If `F : Cᵒᵖ ⥤ D` is a presheaf with values in a concrete category, if `x` and `y` are
elements in `F.obj X`, this is the sieve of `X.unop` consisting of morphisms `f`
such that `F.map f.op x = F.map f.op y`. -/
@[simps]
def equalizerSieve {F : Cᵒᵖ ⥤ D} {X : Cᵒᵖ} (x y : ToType (F.obj X)) : Sieve X.unop where
  arrows _ f := F.map f.op x = F.map f.op y
  downward_closed {X Y} f hf g := by
    dsimp at hf ⊢
    simp [hf]

@[simp]
lemma equalizerSieve_self_eq_top {F : Cᵒᵖ ⥤ D} {X : Cᵒᵖ} (x : ToType (F.obj X)) :
    equalizerSieve x x = ⊤ := by aesop

@[simp]
lemma equalizerSieve_eq_top_iff {F : Cᵒᵖ ⥤ D} {X : Cᵒᵖ} (x y : ToType (F.obj X)) :
    equalizerSieve x y = ⊤ ↔ x = y := by
  constructor
  · intro h
    simpa using (show equalizerSieve x y (𝟙 _) by simp [h])
  · rintro rfl
    apply equalizerSieve_self_eq_top

variable {F₁ F₂ F₃ : Cᵒᵖ ⥤ D} (φ : F₁ ⟶ F₂) (ψ : F₂ ⟶ F₃)

/-- A morphism `φ : F₁ ⟶ F₂` of presheaves `Cᵒᵖ ⥤ D` (with `D` a concrete category)
is locally injective for a Grothendieck topology `J` on `C` if
whenever two sections of `F₁` are sent to the same section of `F₂`, then these two
sections coincide locally. -/
class IsLocallyInjective : Prop where
  equalizerSieve_mem {X : Cᵒᵖ} (x y : ToType (F₁.obj X)) (h : φ.app X x = φ.app X y) :
    equalizerSieve x y ∈ J X.unop

lemma equalizerSieve_mem [IsLocallyInjective J φ]
    {X : Cᵒᵖ} (x y : ToType (F₁.obj X)) (h : φ.app X x = φ.app X y) :
    equalizerSieve x y ∈ J X.unop :=
  IsLocallyInjective.equalizerSieve_mem x y h

lemma isLocallyInjective_of_injective (hφ : ∀ (X : Cᵒᵖ), Function.Injective (φ.app X)) :
    IsLocallyInjective J φ where
  equalizerSieve_mem {X} x y h := by
    convert! J.top_mem X.unop
    ext Y f
    simp only [equalizerSieve_apply, op_unop, Sieve.top_apply, iff_true]
    apply hφ
    simp [h]

instance [IsIso φ] : IsLocallyInjective J φ :=
  isLocallyInjective_of_injective J φ (fun X => Function.Bijective.injective (by
    rw [bijective_iff_isIso_ofHom]
    infer_instance))

instance isLocallyInjective_forget [IsLocallyInjective J φ] :
    IsLocallyInjective J (Functor.whiskerRight φ (forget D)) where
  equalizerSieve_mem x y h := equalizerSieve_mem J φ x y h

lemma isLocallyInjective_forget_iff :
    IsLocallyInjective J (Functor.whiskerRight φ (forget D)) ↔ IsLocallyInjective J φ := by
  constructor
  · intro
    exact ⟨fun x y h => equalizerSieve_mem J (Functor.whiskerRight φ (forget D)) x y h⟩
  · intro
    infer_instance

lemma isLocallyInjective_iff_equalizerSieve_mem_imp :
    IsLocallyInjective J φ ↔ ∀ ⦃X : Cᵒᵖ⦄ (x y : ToType (F₁.obj X)),
      equalizerSieve (φ.app _ x) (φ.app _ y) ∈ J X.unop → equalizerSieve x y ∈ J X.unop := by
  constructor
  · intro _ X x y h
    let S := equalizerSieve (φ.app _ x) (φ.app _ y)
    let T : ∀ ⦃Y : C⦄ ⦃f : Y ⟶ X.unop⦄ (_ : S f), Sieve Y := fun Y f _ =>
      equalizerSieve (F₁.map f.op x) ((F₁.map f.op y))
    refine J.superset_covering ?_ (J.transitive h (Sieve.bind S.1 T) ?_)
    · rintro Y f ⟨Z, a, g, hg, ha, rfl⟩
      simpa using! ha
    · intro Y f hf
      refine J.superset_covering (Sieve.le_pullback_bind S.1 T _ hf)
        (equalizerSieve_mem J φ _ _ ?_)
      rw [NatTrans.naturality_apply, NatTrans.naturality_apply]
      exact hf
  · intro hφ
    exact ⟨fun {X} x y h => hφ x y (by simp [h])⟩

lemma equalizerSieve_mem_of_equalizerSieve_app_mem
    {X : Cᵒᵖ} (x y : ToType (F₁.obj X)) (h : equalizerSieve (φ.app _ x) (φ.app _ y) ∈ J X.unop)
    [IsLocallyInjective J φ] :
    equalizerSieve x y ∈ J X.unop :=
  (isLocallyInjective_iff_equalizerSieve_mem_imp J φ).1 inferInstance x y h

instance isLocallyInjective_comp [IsLocallyInjective J φ] [IsLocallyInjective J ψ] :
    IsLocallyInjective J (φ ≫ ψ) where
  equalizerSieve_mem {X} x y h := by
    apply equalizerSieve_mem_of_equalizerSieve_app_mem J φ
    exact equalizerSieve_mem J ψ _ _ (by simpa using h)

lemma isLocallyInjective_of_isLocallyInjective [IsLocallyInjective J (φ ≫ ψ)] :
    IsLocallyInjective J φ where
  equalizerSieve_mem {X} x y h := equalizerSieve_mem J (φ ≫ ψ) x y (by simp [h])

variable {φ ψ}

lemma isLocallyInjective_of_isLocallyInjective_fac {φψ : F₁ ⟶ F₃} (fac : φ ≫ ψ = φψ)
    [IsLocallyInjective J φψ] : IsLocallyInjective J φ := by
  subst fac
  exact isLocallyInjective_of_isLocallyInjective J φ ψ

lemma isLocallyInjective_iff_of_fac {φψ : F₁ ⟶ F₃} (fac : φ ≫ ψ = φψ) [IsLocallyInjective J ψ] :
    IsLocallyInjective J φψ ↔ IsLocallyInjective J φ := by
  constructor
  · intro
    exact isLocallyInjective_of_isLocallyInjective_fac J fac
  · intro
    rw [← fac]
    infer_instance

variable (φ ψ)

lemma isLocallyInjective_comp_iff [IsLocallyInjective J ψ] :
    IsLocallyInjective J (φ ≫ ψ) ↔ IsLocallyInjective J φ :=
  isLocallyInjective_iff_of_fac J rfl

lemma isLocallyInjective_iff_injective_of_separated
    (hsep : Presieve.IsSeparated J (F₁ ⋙ forget D)) :
    IsLocallyInjective J φ ↔ ∀ (X : Cᵒᵖ), Function.Injective (φ.app X) := by
  constructor
  · intro _ X x y h
    exact (hsep _ (equalizerSieve_mem J φ x y h)).ext (fun _ _ hf => hf)
  · apply isLocallyInjective_of_injective

instance (F : Cᵒᵖ ⥤ Type w) (G : Subfunctor F) :
    IsLocallyInjective J G.ι :=
  isLocallyInjective_of_injective _ _ (fun X => by
    intro ⟨x, _⟩ ⟨y, _⟩ h
    exact Subtype.ext h)

section

open GrothendieckTopology.Plus

instance isLocallyInjective_toPlus (P : Cᵒᵖ ⥤ Type (max u v)) :
    IsLocallyInjective J (J.toPlus P) where
  equalizerSieve_mem {X} x y h := by
    rw [toPlus_eq_mk, toPlus_eq_mk, eq_mk_iff_exists] at h
    obtain ⟨W, h₁, h₂, eq⟩ := h
    exact J.superset_covering (fun Y f hf => congr_fun (congr_arg Subtype.val eq) ⟨Y, f, hf⟩) W.2

set_option backward.isDefEq.respectTransparency false in
instance isLocallyInjective_toSheafify (P : Cᵒᵖ ⥤ Type (max u v)) :
    IsLocallyInjective J (J.toSheafify P) := by
  dsimp [GrothendieckTopology.toSheafify]
  rw [GrothendieckTopology.plusMap_toPlus]
  infer_instance

instance isLocallyInjective_toSheafify' {CD : D → Type (max u v)}
    [∀ X Y, FunLike (FD X Y) (CD X) (CD Y)] [ConcreteCategory.{max u v} D FD]
    (P : Cᵒᵖ ⥤ D) [HasWeakSheafify J D] [J.HasSheafCompose (forget D)]
    [J.PreservesSheafification (forget D)] :
    IsLocallyInjective J (toSheafify J P) := by
  rw [← isLocallyInjective_forget_iff, ← sheafComposeIso_hom_fac,
    ← toSheafify_plusPlusIsoSheafify_hom]
  infer_instance

end

end Presheaf

namespace Sheaf

variable {J}
variable {F₁ F₂ : Sheaf J D} (φ : F₁ ⟶ F₂)

/-- If `φ : F₁ ⟶ F₂` is a morphism of sheaves, this is an abbreviation for
`Presheaf.IsLocallyInjective J φ.val`. Under suitable assumptions, it
is equivalent to the injectivity of all maps `φ.val.app X`,
see `isLocallyInjective_iff_injective`. -/
abbrev IsLocallyInjective := Presheaf.IsLocallyInjective J φ.hom

lemma isLocallyInjective_sheafToPresheaf_map_iff :
    Presheaf.IsLocallyInjective J ((sheafToPresheaf J D).map φ) ↔ IsLocallyInjective φ := by rfl

instance isLocallyInjective_of_iso [IsIso φ] : IsLocallyInjective φ := by
  change Presheaf.IsLocallyInjective J ((sheafToPresheaf _ _).map φ)
  infer_instance

lemma mono_of_injective
    (hφ : ∀ (X : Cᵒᵖ), Function.Injective (φ.hom.app X)) : Mono φ :=
  have : ∀ X, Mono (φ.hom.app X) := fun X ↦ ConcreteCategory.mono_of_injective _ (hφ X)
  (sheafToPresheaf _ _).mono_of_mono_map (NatTrans.mono_of_mono_app φ.1)

variable [J.HasSheafCompose (forget D)]

instance isLocallyInjective_forget [IsLocallyInjective φ] :
    IsLocallyInjective ((sheafCompose J (forget D)).map φ) :=
  Presheaf.isLocallyInjective_forget J φ.1

lemma isLocallyInjective_iff_injective :
    IsLocallyInjective φ ↔ ∀ (X : Cᵒᵖ), Function.Injective (φ.hom.app X) :=
  Presheaf.isLocallyInjective_iff_injective_of_separated _ _ (by
    apply Presieve.IsSheaf.isSeparated
    rw [← isSheaf_iff_isSheaf_of_type]
    exact ((sheafCompose J (forget D)).obj F₁).2)

lemma mono_of_isLocallyInjective [IsLocallyInjective φ] : Mono φ := by
  apply mono_of_injective
  rw [← isLocallyInjective_iff_injective]
  infer_instance

set_option backward.isDefEq.respectTransparency false in
instance {F G : Sheaf J (Type w)} (f : F ⟶ G) :
    IsLocallyInjective (Sheaf.imageι f) := by
  dsimp [Sheaf.imageι]
  infer_instance

end Sheaf

end CategoryTheory
```

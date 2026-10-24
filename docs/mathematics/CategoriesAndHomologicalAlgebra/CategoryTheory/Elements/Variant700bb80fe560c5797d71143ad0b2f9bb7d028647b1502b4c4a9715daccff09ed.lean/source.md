# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elements.Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ecaa6180251ebf3c0e2fcabdd9d8d3fe4924c5e1` · SHA-256 `75feaf3bcd0059edf2d556c281c17378a35f5724cd99ddd79aecc96538a64d3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorElements.Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorElements.Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Elements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.CategoryTheory.StructuredArrow
import Mathlib.CategoryTheory.Groupoid
import Mathlib.CategoryTheory.PUnit


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorElements.Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d

#align_import category_theory.elements from "leanprover-community/mathlib"@"8a318021995877a44630c898d0b2bc376fceef3b"

/-!
# The category of elements

This file defines the category of elements, also known as (a special case of) the Grothendieck
construction.

Given a functor `F : C ⥤ Type`, an object of `F.Elements` is a pair `(X : C, x : F.obj X)`.
A morphism `(X, x) ⟶ (Y, y)` is a morphism `f : X ⟶ Y` in `C`, so `F.map f` takes `x` to `y`.

## Implementation notes

This construction is equivalent to a special case of a comma construction, so this is mostly just a
more convenient API. We prove the equivalence in
`CategoryTheory.CategoryOfElements.structuredArrowEquivalence`.

## References
* [Emily Riehl, *Category Theory in Context*, Section 2.4][riehl2017]
* <https://en.wikipedia.org/wiki/Category_of_elements>
* <https://ncatlab.org/nlab/show/category+of+elements>

## Tags
category of elements, Grothendieck construction, comma category
-/


namespace CategoryTheory

universe w v u

variable {C : Type u} [Category.{v} C]

/-- The type of objects for the category of elements of a functor `F : C ⥤ Type`
is a pair `(X : C, x : F.obj X)`.
-/
def Functor.Elements (F : C ⥤ Type w) :=
  Σc : C, F.obj c
#align category_theory.functor.elements CategoryTheory.Functor.Elements

-- porting note: added because Sigma.ext would be triggered automatically
lemma Functor.Elements.ext {F : C ⥤ Type w} (x y : F.Elements) (h₁ : x.fst = y.fst)
    (h₂ : F.map (eqToHom h₁) x.snd = y.snd) : x = y := by
  cases x
  cases y
  cases h₁
  simp only [eqToHom_refl, FunctorToTypes.map_id_apply] at h₂
  simp [h₂]

/-- The category structure on `F.Elements`, for `F : C ⥤ Type`.
    A morphism `(X, x) ⟶ (Y, y)` is a morphism `f : X ⟶ Y` in `C`, so `F.map f` takes `x` to `y`.
 -/
instance categoryOfElements (F : C ⥤ Type w) : Category.{v} F.Elements where
  Hom p q := { f : p.1 ⟶ q.1 // (F.map f) p.2 = q.2 }
  id p := ⟨𝟙 p.1, by aesop_cat⟩
  comp {X Y Z} f g := ⟨f.val ≫ g.val, by simp [f.2, g.2]⟩
#align category_theory.category_of_elements CategoryTheory.categoryOfElements

namespace CategoryOfElements

@[ext]
theorem ext (F : C ⥤ Type w) {x y : F.Elements} (f g : x ⟶ y) (w : f.val = g.val) : f = g :=
  Subtype.ext_val w
#align category_theory.category_of_elements.ext CategoryTheory.CategoryOfElements.ext

@[simp]
theorem comp_val {F : C ⥤ Type w} {p q r : F.Elements} {f : p ⟶ q} {g : q ⟶ r} :
    (f ≫ g).val = f.val ≫ g.val :=
  rfl
#align category_theory.category_of_elements.comp_val CategoryTheory.CategoryOfElements.comp_val

@[simp]
theorem id_val {F : C ⥤ Type w} {p : F.Elements} : (𝟙 p : p ⟶ p).val = 𝟙 p.1 :=
  rfl
#align category_theory.category_of_elements.id_val CategoryTheory.CategoryOfElements.id_val

end CategoryOfElements

noncomputable instance groupoidOfElements {G : Type u} [Groupoid.{v} G] (F : G ⥤ Type w) :
    Groupoid F.Elements
    where
  inv {p q} f :=
    ⟨inv f.val,
      calc
        F.map (inv f.val) q.2 = F.map (inv f.val) (F.map f.val p.2) := by rw [f.2]
        _ = (F.map f.val ≫ F.map (inv f.val)) p.2 := rfl
        _ = p.2 := by
          rw [← F.map_comp]
          simp
        ⟩
  inv_comp _ := by
    ext
    simp
  comp_inv _ := by
    ext
    simp
#align category_theory.groupoid_of_elements CategoryTheory.groupoidOfElements

namespace CategoryOfElements

variable (F : C ⥤ Type w)

/-- The functor out of the category of elements which forgets the element. -/
@[simps]
def π : F.Elements ⥤ C where
  obj X := X.1
  map f := f.val
#align category_theory.category_of_elements.π CategoryTheory.CategoryOfElements.π

/-- A natural transformation between functors induces a functor between the categories of elements.
-/
@[simps]
def map {F₁ F₂ : C ⥤ Type w} (α : F₁ ⟶ F₂) : F₁.Elements ⥤ F₂.Elements
    where
  obj t := ⟨t.1, α.app t.1 t.2⟩
  map {t₁ t₂} k := ⟨k.1, by simpa [← k.2] using (FunctorToTypes.naturality _ _ α k.1 t₁.2).symm⟩
#align category_theory.category_of_elements.map CategoryTheory.CategoryOfElements.map

@[simp]
theorem map_π {F₁ F₂ : C ⥤ Type w} (α : F₁ ⟶ F₂) : map α ⋙ π F₂ = π F₁ :=
  rfl
#align category_theory.category_of_elements.map_π CategoryTheory.CategoryOfElements.map_π

/-- The forward direction of the equivalence `F.Elements ≅ (*, F)`. -/
def toStructuredArrow : F.Elements ⥤ StructuredArrow PUnit F where
  obj X := StructuredArrow.mk fun _ => X.2
  map {X Y} f := StructuredArrow.homMk f.val (by funext; simp [f.2])
#align category_theory.category_of_elements.to_structured_arrow CategoryTheory.CategoryOfElements.toStructuredArrow

@[simp]
theorem toStructuredArrow_obj (X) :
    (toStructuredArrow F).obj X =
      { left := ⟨⟨⟩⟩
        right := X.1
        hom := fun _ => X.2 } :=
  rfl
#align category_theory.category_of_elements.to_structured_arrow_obj CategoryTheory.CategoryOfElements.toStructuredArrow_obj

@[simp]
theorem to_comma_map_right {X Y} (f : X ⟶ Y) : ((toStructuredArrow F).map f).right = f.val :=
  rfl
#align category_theory.category_of_elements.to_comma_map_right CategoryTheory.CategoryOfElements.to_comma_map_right

/-- The reverse direction of the equivalence `F.Elements ≅ (*, F)`. -/
def fromStructuredArrow : StructuredArrow PUnit F ⥤ F.Elements where
  obj X := ⟨X.right, X.hom PUnit.unit⟩
  map f := ⟨f.right, congr_fun f.w.symm PUnit.unit⟩
#align category_theory.category_of_elements.from_structured_arrow CategoryTheory.CategoryOfElements.fromStructuredArrow

@[simp]
theorem fromStructuredArrow_obj (X) : (fromStructuredArrow F).obj X = ⟨X.right, X.hom PUnit.unit⟩ :=
  rfl
#align category_theory.category_of_elements.from_structured_arrow_obj CategoryTheory.CategoryOfElements.fromStructuredArrow_obj

@[simp]
theorem fromStructuredArrow_map {X Y} (f : X ⟶ Y) :
    (fromStructuredArrow F).map f = ⟨f.right, congr_fun f.w.symm PUnit.unit⟩ :=
  rfl
#align category_theory.category_of_elements.from_structured_arrow_map CategoryTheory.CategoryOfElements.fromStructuredArrow_map

/-- The equivalence between the category of elements `F.Elements`
    and the comma category `(*, F)`. -/
@[simps! functor_obj functor_map inverse_obj inverse_map unitIso_hom
  unitIso_inv counitIso_hom counitIso_inv]
def structuredArrowEquivalence : F.Elements ≌ StructuredArrow PUnit F :=
  Equivalence.mk (toStructuredArrow F) (fromStructuredArrow F)
    (NatIso.ofComponents fun X => eqToIso (by aesop_cat))
    (NatIso.ofComponents fun X => StructuredArrow.isoMk (Iso.refl _))
#align category_theory.category_of_elements.structured_arrow_equivalence CategoryTheory.CategoryOfElements.structuredArrowEquivalence

open Opposite

/-- The forward direction of the equivalence `F.Elementsᵒᵖ ≅ (yoneda, F)`,
given by `CategoryTheory.yonedaSections`.
-/
@[simps]
def toCostructuredArrow (F : Cᵒᵖ ⥤ Type v) : F.Elementsᵒᵖ ⥤ CostructuredArrow yoneda F
    where
  obj X := CostructuredArrow.mk ((yonedaSections (unop (unop X).fst) F).inv (ULift.up (unop X).2))
  map f := by
    fapply CostructuredArrow.homMk
    · exact f.unop.val.unop
    · ext Z y
      dsimp
      simp only [FunctorToTypes.map_comp_apply, ← f.unop.2]
#align category_theory.category_of_elements.to_costructured_arrow CategoryTheory.CategoryOfElements.toCostructuredArrow

/-- The reverse direction of the equivalence `F.Elementsᵒᵖ ≅ (yoneda, F)`,
given by `CategoryTheory.yonedaEquiv`.
-/
@[simps]
def fromCostructuredArrow (F : Cᵒᵖ ⥤ Type v) : (CostructuredArrow yoneda F)ᵒᵖ ⥤ F.Elements where
  obj X := ⟨op (unop X).1, yonedaEquiv.1 (unop X).3⟩
  map {X Y} f :=
    ⟨f.unop.1.op, by
      convert (congr_fun ((unop X).hom.naturality f.unop.left.op) (𝟙 _)).symm
      simp only [Equiv.toFun_as_coe, Quiver.Hom.unop_op, yonedaEquiv_apply, types_comp_apply,
        Category.comp_id, yoneda_obj_map]
      have : yoneda.map f.unop.left ≫ (unop X).hom = (unop Y).hom := by
        convert f.unop.3
      erw [← this]
      simp only [yoneda_map_app, FunctorToTypes.comp]
      erw [Category.id_comp]⟩
#align category_theory.category_of_elements.from_costructured_arrow CategoryTheory.CategoryOfElements.fromCostructuredArrow

@[simp]
theorem fromCostructuredArrow_obj_mk (F : Cᵒᵖ ⥤ Type v) {X : C} (f : yoneda.obj X ⟶ F) :
    (fromCostructuredArrow F).obj (op (CostructuredArrow.mk f)) = ⟨op X, yonedaEquiv.1 f⟩ :=
  rfl
#align category_theory.category_of_elements.from_costructured_arrow_obj_mk CategoryTheory.CategoryOfElements.fromCostructuredArrow_obj_mk

/-- The unit of the equivalence `F.Elementsᵒᵖ ≅ (yoneda, F)` is indeed iso. -/
theorem from_toCostructuredArrow_eq (F : Cᵒᵖ ⥤ Type v) :
    (toCostructuredArrow F).rightOp ⋙ fromCostructuredArrow F = 𝟭 _ := by
  refine' Functor.ext _ _
  · intro X
    exact Functor.Elements.ext _ _ rfl (by simp [yonedaEquiv])
  · intro X Y f
    have : ∀ {a b : F.Elements} (H : a = b),
        (eqToHom H).1 = eqToHom (show a.fst = b.fst by cases H; rfl) := by
      rintro _ _ rfl
      simp
    ext
    simp [this]
#align category_theory.category_of_elements.from_to_costructured_arrow_eq CategoryTheory.CategoryOfElements.from_toCostructuredArrow_eq

/-- The counit of the equivalence `F.Elementsᵒᵖ ≅ (yoneda, F)` is indeed iso. -/
theorem to_fromCostructuredArrow_eq (F : Cᵒᵖ ⥤ Type v) :
    (fromCostructuredArrow F).rightOp ⋙ toCostructuredArrow F = 𝟭 _ := by
  refine' Functor.ext _ _
  · intro X
    cases' X with X_left X_right X_hom
    cases X_right
    simp only [Functor.id_obj, Functor.rightOp_obj, toCostructuredArrow_obj, Functor.comp_obj,
      CostructuredArrow.mk]
    congr
    ext x f
    convert congr_fun (X_hom.naturality f.op).symm (𝟙 X_left)
    simp
  · intro X Y f
    ext
    simp [CostructuredArrow.eqToHom_left]
#align category_theory.category_of_elements.to_from_costructured_arrow_eq CategoryTheory.CategoryOfElements.to_fromCostructuredArrow_eq

/-- The equivalence `F.Elementsᵒᵖ ≅ (yoneda, F)` given by yoneda lemma. -/
@[simps! functor_obj functor_map inverse_obj inverse_map unitIso_inv counitIso_hom counitIso_inv]
def costructuredArrowYonedaEquivalence (F : Cᵒᵖ ⥤ Type v) :
    F.Elementsᵒᵖ ≌ CostructuredArrow yoneda F :=
  Equivalence.mk (toCostructuredArrow F) (fromCostructuredArrow F).rightOp
    (NatIso.op (eqToIso (from_toCostructuredArrow_eq F))) (eqToIso <| to_fromCostructuredArrow_eq F)
#align category_theory.category_of_elements.costructured_arrow_yoneda_equivalence CategoryTheory.CategoryOfElements.costructuredArrowYonedaEquivalence

-- Porting note:
-- Running `@[simps! unitIso_hom]` is mysteriously slow.
-- We separate it out to avoid needing to increase the maxHeartbeats.
attribute [simps! unitIso_hom] costructuredArrowYonedaEquivalence

/-- The equivalence `(-.Elements)ᵒᵖ ≅ (yoneda, -)` of is actually a natural isomorphism of functors.
-/
theorem costructuredArrow_yoneda_equivalence_naturality {F₁ F₂ : Cᵒᵖ ⥤ Type v} (α : F₁ ⟶ F₂) :
    (map α).op ⋙ toCostructuredArrow F₂ = toCostructuredArrow F₁ ⋙ CostructuredArrow.map α := by
  fapply Functor.ext
  · intro X
    simp only [CostructuredArrow.map_mk, toCostructuredArrow_obj, Functor.op_obj,
      Functor.comp_obj]
    congr
    ext _ f
    simpa using congr_fun (α.naturality f.op).symm (unop X).snd
  · intro X Y f
    ext
    simp [CostructuredArrow.eqToHom_left]
#align category_theory.category_of_elements.costructured_arrow_yoneda_equivalence_naturality CategoryTheory.CategoryOfElements.costructuredArrow_yoneda_equivalence_naturality

end CategoryOfElements

end CategoryTheory
```

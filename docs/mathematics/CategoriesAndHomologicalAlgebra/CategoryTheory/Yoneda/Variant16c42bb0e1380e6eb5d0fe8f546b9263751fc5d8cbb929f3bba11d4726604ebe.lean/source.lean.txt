-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Representable.Variant7ee0be19aad2b7aa072a247691df508cbea4fe2954aca6ce73e2678ff0c0f498","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ee0be19aad2b7aa072a247691df508cbea4fe2954aca6ce73e2678ff0c0f498","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Representable.Variant7ee0be19aad2b7aa072a247691df508cbea4fe2954aca6ce73e2678ff0c0f498","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"7ee0be19aad2b7aa072a247691df508cbea4fe2954aca6ce73e2678ff0c0f498","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Yoneda.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.CategoryTheory.Functor.Hom
import Mathlib.CategoryTheory.Functor.Currying
import Mathlib.CategoryTheory.Products.Basic


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Representable.Variant7ee0be19aad2b7aa072a247691df508cbea4fe2954aca6ce73e2678ff0c0f498

#align_import category_theory.yoneda from "leanprover-community/mathlib"@"369525b73f229ccd76a6ec0e0e0bf2be57599768"

/-!
# The Yoneda embedding

The Yoneda embedding as a functor `yoneda : C ⥤ (Cᵒᵖ ⥤ Type v₁)`,
along with an instance that it is `FullyFaithful`.

Also the Yoneda lemma, `yonedaLemma : (yoneda_pairing C) ≅ (yoneda_evaluation C)`.

## References
* [Stacks: Opposite Categories and the Yoneda Lemma](https://stacks.math.columbia.edu/tag/001L)
-/

set_option autoImplicit true


namespace CategoryTheory

open Opposite

universe v₁ u₁ u₂

-- morphism levels before object levels. See note [CategoryTheory universes].
variable {C : Type u₁} [Category.{v₁} C]

/-- The Yoneda embedding, as a functor from `C` into presheaves on `C`.

See <https://stacks.math.columbia.edu/tag/001O>.
-/
@[simps]
def yoneda : C ⥤ Cᵒᵖ ⥤ Type v₁ where
  obj X :=
    { obj := fun Y => unop Y ⟶ X
      map := fun f g => f.unop ≫ g }
  map f :=
    { app := fun Y g => g ≫ f }
#align category_theory.yoneda CategoryTheory.yoneda

/-- The co-Yoneda embedding, as a functor from `Cᵒᵖ` into co-presheaves on `C`.
-/
@[simps]
def coyoneda : Cᵒᵖ ⥤ C ⥤ Type v₁ where
  obj X :=
    { obj := fun Y => unop X ⟶ Y
      map := fun f g => g ≫ f }
  map f :=
    { app := fun Y g => f.unop ≫ g }
#align category_theory.coyoneda CategoryTheory.coyoneda

namespace Yoneda

theorem obj_map_id {X Y : C} (f : op X ⟶ op Y) :
    (yoneda.obj X).map f (𝟙 X) = (yoneda.map f.unop).app (op Y) (𝟙 Y) := by
  dsimp
  simp
#align category_theory.yoneda.obj_map_id CategoryTheory.Yoneda.obj_map_id

@[simp]
theorem naturality {X Y : C} (α : yoneda.obj X ⟶ yoneda.obj Y) {Z Z' : C} (f : Z ⟶ Z')
    (h : Z' ⟶ X) : f ≫ α.app (op Z') h = α.app (op Z) (f ≫ h) :=
  (FunctorToTypes.naturality _ _ α f.op h).symm
#align category_theory.yoneda.naturality CategoryTheory.Yoneda.naturality

/-- The Yoneda embedding is full.

See <https://stacks.math.columbia.edu/tag/001P>.
-/
instance yonedaFull : Full (yoneda : C ⥤ Cᵒᵖ ⥤ Type v₁) where
  preimage {X} {Y} f := f.app (op X) (𝟙 X)
#align category_theory.yoneda.yoneda_full CategoryTheory.Yoneda.yonedaFull

/-- The Yoneda embedding is faithful.

See <https://stacks.math.columbia.edu/tag/001P>.
-/
instance yoneda_faithful : Faithful (yoneda : C ⥤ Cᵒᵖ ⥤ Type v₁) where
  map_injective {X} {Y} f g p := by
    convert congr_fun (congr_app p (op X)) (𝟙 X) using 1 <;> dsimp <;> simp
#align category_theory.yoneda.yoneda_faithful CategoryTheory.Yoneda.yoneda_faithful

/-- Extensionality via Yoneda. The typical usage would be
```
-- Goal is `X ≅ Y`
apply yoneda.ext,
-- Goals are now functions `(Z ⟶ X) → (Z ⟶ Y)`, `(Z ⟶ Y) → (Z ⟶ X)`, and the fact that these
-- functions are inverses and natural in `Z`.
```
-/
def ext (X Y : C) (p : ∀ {Z : C}, (Z ⟶ X) → (Z ⟶ Y)) (q : ∀ {Z : C}, (Z ⟶ Y) → (Z ⟶ X))
    (h₁ : ∀ {Z : C} (f : Z ⟶ X), q (p f) = f) (h₂ : ∀ {Z : C} (f : Z ⟶ Y), p (q f) = f)
    (n : ∀ {Z Z' : C} (f : Z' ⟶ Z) (g : Z ⟶ X), p (f ≫ g) = f ≫ p g) : X ≅ Y :=
  yoneda.preimageIso
    (NatIso.ofComponents fun Z =>
      { hom := p
        inv := q })
#align category_theory.yoneda.ext CategoryTheory.Yoneda.ext

/-- If `yoneda.map f` is an isomorphism, so was `f`.
-/
theorem isIso {X Y : C} (f : X ⟶ Y) [IsIso (yoneda.map f)] : IsIso f :=
  isIso_of_fully_faithful yoneda f
#align category_theory.yoneda.is_iso CategoryTheory.Yoneda.isIso

end Yoneda

namespace Coyoneda

@[simp]
theorem naturality {X Y : Cᵒᵖ} (α : coyoneda.obj X ⟶ coyoneda.obj Y) {Z Z' : C} (f : Z' ⟶ Z)
    (h : unop X ⟶ Z') : α.app Z' h ≫ f = α.app Z (h ≫ f) :=
  (FunctorToTypes.naturality _ _ α f h).symm
#align category_theory.coyoneda.naturality CategoryTheory.Coyoneda.naturality

instance coyonedaFull : Full (coyoneda : Cᵒᵖ ⥤ C ⥤ Type v₁) where
  preimage {X} _ f := (f.app _ (𝟙 X.unop)).op
  witness {X} {Y} f := by simp only [coyoneda]; aesop_cat
#align category_theory.coyoneda.coyoneda_full CategoryTheory.Coyoneda.coyonedaFull

instance coyoneda_faithful : Faithful (coyoneda : Cᵒᵖ ⥤ C ⥤ Type v₁) where
  map_injective {X} _ _ _ p := by
    have t := congr_fun (congr_app p X.unop) (𝟙 _)
    simpa using congr_arg Quiver.Hom.op t
#align category_theory.coyoneda.coyoneda_faithful CategoryTheory.Coyoneda.coyoneda_faithful

/-- If `coyoneda.map f` is an isomorphism, so was `f`.
-/
theorem isIso {X Y : Cᵒᵖ} (f : X ⟶ Y) [IsIso (coyoneda.map f)] : IsIso f :=
  isIso_of_fully_faithful coyoneda f
#align category_theory.coyoneda.is_iso CategoryTheory.Coyoneda.isIso

/-- The identity functor on `Type` is isomorphic to the coyoneda functor coming from `punit`. -/
def punitIso : coyoneda.obj (Opposite.op PUnit) ≅ 𝟭 (Type v₁) :=
  NatIso.ofComponents fun X =>
    { hom := fun f => f ⟨⟩
      inv := fun x _ => x }
#align category_theory.coyoneda.punit_iso CategoryTheory.Coyoneda.punitIso

/-- Taking the `unop` of morphisms is a natural isomorphism. -/
@[simps!]
def objOpOp (X : C) : coyoneda.obj (op (op X)) ≅ yoneda.obj X :=
  NatIso.ofComponents fun _ => (opEquiv _ _).toIso
#align category_theory.coyoneda.obj_op_op CategoryTheory.Coyoneda.objOpOp

end Coyoneda

namespace Functor

/-- A functor `F : Cᵒᵖ ⥤ Type v₁` is representable if there is object `X` so `F ≅ yoneda.obj X`.

See <https://stacks.math.columbia.edu/tag/001Q>.
-/
class Representable (F : Cᵒᵖ ⥤ Type v₁) : Prop where
  /-- `Hom(-,X) ≅ F` via `f` -/
  has_representation : ∃ (X : _) (f : yoneda.obj X ⟶ F), IsIso f
#align category_theory.functor.representable CategoryTheory.Functor.Representable

instance {X : C} : Representable (yoneda.obj X) where has_representation := ⟨X, 𝟙 _, inferInstance⟩

/-- A functor `F : C ⥤ Type v₁` is corepresentable if there is object `X` so `F ≅ coyoneda.obj X`.

See <https://stacks.math.columbia.edu/tag/001Q>.
-/
class Corepresentable (F : C ⥤ Type v₁) : Prop where
  /-- `Hom(X,-) ≅ F` via `f` -/
  has_corepresentation : ∃ (X : _) (f : coyoneda.obj X ⟶ F), IsIso f
#align category_theory.functor.corepresentable CategoryTheory.Functor.Corepresentable

instance {X : Cᵒᵖ} : Corepresentable (coyoneda.obj X) where
  has_corepresentation := ⟨X, 𝟙 _, inferInstance⟩

-- instance : corepresentable (𝟭 (Type v₁)) :=
-- corepresentable_of_nat_iso (op punit) coyoneda.punit_iso
section Representable

variable (F : Cᵒᵖ ⥤ Type v₁)

variable [F.Representable]

/-- The representing object for the representable functor `F`. -/
noncomputable def reprX : C :=
  (Representable.has_representation : ∃ (_ : _) (_ : _ ⟶ F), _).choose
set_option linter.uppercaseLean3 false
#align category_theory.functor.repr_X CategoryTheory.Functor.reprX

/-- The (forward direction of the) isomorphism witnessing `F` is representable. -/
noncomputable def reprF : yoneda.obj F.reprX ⟶ F :=
  Representable.has_representation.choose_spec.choose
#align category_theory.functor.repr_f CategoryTheory.Functor.reprF

/-- The representing element for the representable functor `F`, sometimes called the universal
element of the functor.
-/
noncomputable def reprx : F.obj (op F.reprX) :=
  F.reprF.app (op F.reprX) (𝟙 F.reprX)
#align category_theory.functor.repr_x CategoryTheory.Functor.reprx

instance : IsIso F.reprF :=
  Representable.has_representation.choose_spec.choose_spec

/-- An isomorphism between `F` and a functor of the form `C(-, F.repr_X)`.  Note the components
`F.repr_w.app X` definitionally have type `(X.unop ⟶ F.repr_X) ≅ F.obj X`.
-/
noncomputable def reprW : yoneda.obj F.reprX ≅ F :=
  asIso F.reprF
#align category_theory.functor.repr_w CategoryTheory.Functor.reprW

@[simp]
theorem reprW_hom : F.reprW.hom = F.reprF :=
  rfl
#align category_theory.functor.repr_w_hom CategoryTheory.Functor.reprW_hom

theorem reprW_app_hom (X : Cᵒᵖ) (f : unop X ⟶ F.reprX) :
    (F.reprW.app X).hom f = F.map f.op F.reprx := by
  change F.reprF.app X f = (F.reprF.app (op F.reprX) ≫ F.map f.op) (𝟙 F.reprX)
  rw [← F.reprF.naturality]
  dsimp
  simp
#align category_theory.functor.repr_w_app_hom CategoryTheory.Functor.reprW_app_hom

end Representable

section Corepresentable

variable (F : C ⥤ Type v₁)

variable [F.Corepresentable]

/-- The representing object for the corepresentable functor `F`. -/
noncomputable def coreprX : C :=
  (Corepresentable.has_corepresentation : ∃ (_ : _) (_ : _ ⟶ F), _).choose.unop
set_option linter.uppercaseLean3 false
#align category_theory.functor.corepr_X CategoryTheory.Functor.coreprX

/-- The (forward direction of the) isomorphism witnessing `F` is corepresentable. -/
noncomputable def coreprF : coyoneda.obj (op F.coreprX) ⟶ F :=
  Corepresentable.has_corepresentation.choose_spec.choose
#align category_theory.functor.corepr_f CategoryTheory.Functor.coreprF

/-- The representing element for the corepresentable functor `F`, sometimes called the universal
element of the functor.
-/
noncomputable def coreprx : F.obj F.coreprX :=
  F.coreprF.app F.coreprX (𝟙 F.coreprX)
#align category_theory.functor.corepr_x CategoryTheory.Functor.coreprx

instance : IsIso F.coreprF :=
  Corepresentable.has_corepresentation.choose_spec.choose_spec

/-- An isomorphism between `F` and a functor of the form `C(F.corepr X, -)`. Note the components
`F.corepr_w.app X` definitionally have type `F.corepr_X ⟶ X ≅ F.obj X`.
-/
noncomputable def coreprW : coyoneda.obj (op F.coreprX) ≅ F :=
  asIso F.coreprF
#align category_theory.functor.corepr_w CategoryTheory.Functor.coreprW

theorem coreprW_app_hom (X : C) (f : F.coreprX ⟶ X) :
    (F.coreprW.app X).hom f = F.map f F.coreprx := by
  change F.coreprF.app X f = (F.coreprF.app F.coreprX ≫ F.map f) (𝟙 F.coreprX)
  rw [← F.coreprF.naturality]
  dsimp
  simp
#align category_theory.functor.corepr_w_app_hom CategoryTheory.Functor.coreprW_app_hom

end Corepresentable

end Functor

theorem representable_of_nat_iso (F : Cᵒᵖ ⥤ Type v₁) {G} (i : F ≅ G) [F.Representable] :
    G.Representable :=
  { has_representation := ⟨F.reprX, F.reprF ≫ i.hom, inferInstance⟩ }
#align category_theory.representable_of_nat_iso CategoryTheory.representable_of_nat_iso

theorem corepresentable_of_nat_iso (F : C ⥤ Type v₁) {G} (i : F ≅ G) [F.Corepresentable] :
    G.Corepresentable :=
  { has_corepresentation := ⟨op F.coreprX, F.coreprF ≫ i.hom, inferInstance⟩ }
#align category_theory.corepresentable_of_nat_iso CategoryTheory.corepresentable_of_nat_iso

instance : Functor.Corepresentable (𝟭 (Type v₁)) :=
  corepresentable_of_nat_iso (coyoneda.obj (op PUnit)) Coyoneda.punitIso

open Opposite

variable (C)

-- We need to help typeclass inference with some awkward universe levels here.
instance prodCategoryInstance1 : Category ((Cᵒᵖ ⥤ Type v₁) × Cᵒᵖ) :=
  CategoryTheory.prod.{max u₁ v₁, v₁} (Cᵒᵖ ⥤ Type v₁) Cᵒᵖ
#align category_theory.prod_category_instance_1 CategoryTheory.prodCategoryInstance1

instance prodCategoryInstance2 : Category (Cᵒᵖ × (Cᵒᵖ ⥤ Type v₁)) :=
  CategoryTheory.prod.{v₁, max u₁ v₁} Cᵒᵖ (Cᵒᵖ ⥤ Type v₁)
#align category_theory.prod_category_instance_2 CategoryTheory.prodCategoryInstance2

open Yoneda

/-- The "Yoneda evaluation" functor, which sends `X : Cᵒᵖ` and `F : Cᵒᵖ ⥤ Type`
to `F.obj X`, functorially in both `X` and `F`.
-/
def yonedaEvaluation : Cᵒᵖ × (Cᵒᵖ ⥤ Type v₁) ⥤ Type max u₁ v₁ :=
  evaluationUncurried Cᵒᵖ (Type v₁) ⋙ uliftFunctor.{u₁}
#align category_theory.yoneda_evaluation CategoryTheory.yonedaEvaluation

@[simp]
theorem yonedaEvaluation_map_down (P Q : Cᵒᵖ × (Cᵒᵖ ⥤ Type v₁)) (α : P ⟶ Q)
    (x : (yonedaEvaluation C).obj P) :
    ((yonedaEvaluation C).map α x).down = α.2.app Q.1 (P.2.map α.1 x.down) :=
  rfl
#align category_theory.yoneda_evaluation_map_down CategoryTheory.yonedaEvaluation_map_down

/-- The "Yoneda pairing" functor, which sends `X : Cᵒᵖ` and `F : Cᵒᵖ ⥤ Type`
to `yoneda.op.obj X ⟶ F`, functorially in both `X` and `F`.
-/
def yonedaPairing : Cᵒᵖ × (Cᵒᵖ ⥤ Type v₁) ⥤ Type max u₁ v₁ :=
  Functor.prod yoneda.op (𝟭 (Cᵒᵖ ⥤ Type v₁)) ⋙ Functor.hom (Cᵒᵖ ⥤ Type v₁)
#align category_theory.yoneda_pairing CategoryTheory.yonedaPairing

-- Porting note: we need to provide this `@[ext]` lemma separately,
-- as `ext` will not look through the definition.
-- See https://github.com/leanprover-community/mathlib4/issues/5229
@[ext]
lemma yonedaPairingExt {x y : (yonedaPairing C).obj X} (w : ∀ Y, x.app Y = y.app Y) : x = y :=
  NatTrans.ext _ _ (funext w)

@[simp]
theorem yonedaPairing_map (P Q : Cᵒᵖ × (Cᵒᵖ ⥤ Type v₁)) (α : P ⟶ Q) (β : (yonedaPairing C).obj P) :
    (yonedaPairing C).map α β = yoneda.map α.1.unop ≫ β ≫ α.2 :=
  rfl
#align category_theory.yoneda_pairing_map CategoryTheory.yonedaPairing_map

/-- The Yoneda lemma asserts that the Yoneda pairing
`(X : Cᵒᵖ, F : Cᵒᵖ ⥤ Type) ↦ (yoneda.obj (unop X) ⟶ F)`
is naturally isomorphic to the evaluation `(X, F) ↦ F.obj X`.

See <https://stacks.math.columbia.edu/tag/001P>.
-/
def yonedaLemma : yonedaPairing C ≅ yonedaEvaluation C where
  hom :=
    { app := fun F x => ULift.up ((x.app F.1) (𝟙 (unop F.1)))
      naturality := by
        intro X Y f
        simp only [yonedaEvaluation]
        ext
        dsimp
        erw [Category.id_comp, ←FunctorToTypes.naturality]
        simp only [Category.comp_id, yoneda_obj_map] }
  inv :=
    { app := fun F x =>
        { app := fun X a => (F.2.map a.op) x.down
          naturality := by
            intro X Y f
            ext
            dsimp
            rw [FunctorToTypes.map_comp_apply] }
      naturality := by
        intro X Y f
        simp only [yoneda]
        ext
        dsimp
        rw [←FunctorToTypes.naturality X.snd Y.snd f.snd, FunctorToTypes.map_comp_apply] }
  hom_inv_id := by
    ext
    dsimp
    erw [← FunctorToTypes.naturality, obj_map_id]
    simp only [yoneda_map_app, Quiver.Hom.unop_op]
    erw [Category.id_comp]
  inv_hom_id := by
    ext
    dsimp
    rw [FunctorToTypes.map_id_apply, ULift.up_down]
#align category_theory.yoneda_lemma CategoryTheory.yonedaLemma

variable {C}

/-- The isomorphism between `yoneda.obj X ⟶ F` and `F.obj (op X)`
(we need to insert a `ulift` to get the universes right!)
given by the Yoneda lemma.
-/
@[simps!]
def yonedaSections (X : C) (F : Cᵒᵖ ⥤ Type v₁) : (yoneda.obj X ⟶ F) ≅ ULift.{u₁} (F.obj (op X)) :=
  (yonedaLemma C).app (op X, F)
#align category_theory.yoneda_sections CategoryTheory.yonedaSections

/-- We have a type-level equivalence between natural transformations from the yoneda embedding
and elements of `F.obj X`, without any universe switching.
-/
def yonedaEquiv {X : C} {F : Cᵒᵖ ⥤ Type v₁} : (yoneda.obj X ⟶ F) ≃ F.obj (op X) :=
  (yonedaSections X F).toEquiv.trans Equiv.ulift
#align category_theory.yoneda_equiv CategoryTheory.yonedaEquiv

@[simp]
theorem yonedaEquiv_apply {X : C} {F : Cᵒᵖ ⥤ Type v₁} (f : yoneda.obj X ⟶ F) :
    yonedaEquiv f = f.app (op X) (𝟙 X) :=
  rfl
#align category_theory.yoneda_equiv_apply CategoryTheory.yonedaEquiv_apply

@[simp]
theorem yonedaEquiv_symm_app_apply {X : C} {F : Cᵒᵖ ⥤ Type v₁} (x : F.obj (op X)) (Y : Cᵒᵖ)
    (f : Y.unop ⟶ X) : (yonedaEquiv.symm x).app Y f = F.map f.op x :=
  rfl
#align category_theory.yoneda_equiv_symm_app_apply CategoryTheory.yonedaEquiv_symm_app_apply

theorem yonedaEquiv_naturality {X Y : C} {F : Cᵒᵖ ⥤ Type v₁} (f : yoneda.obj X ⟶ F) (g : Y ⟶ X) :
    F.map g.op (yonedaEquiv f) = yonedaEquiv (yoneda.map g ≫ f) := by
  change (f.app (op X) ≫ F.map g.op) (𝟙 X) = f.app (op Y) (𝟙 Y ≫ g)
  rw [← f.naturality]
  dsimp
  simp
#align category_theory.yoneda_equiv_naturality CategoryTheory.yonedaEquiv_naturality

lemma yonedaEquiv_naturality' {X Y : Cᵒᵖ} {F : Cᵒᵖ ⥤ Type v₁} (f : yoneda.obj (unop X) ⟶ F)
    (g : X ⟶ Y) : F.map g (yonedaEquiv f) = yonedaEquiv (yoneda.map g.unop ≫ f) :=
  yonedaEquiv_naturality _ _

lemma yonedaEquiv_comp {X : C} {F G : Cᵒᵖ ⥤ Type v₁} (α : yoneda.obj X ⟶ F) (β : F ⟶ G)  :
    yonedaEquiv (α ≫ β) = β.app _ (yonedaEquiv α) :=
  rfl

lemma yonedaEquiv_comp' {X : Cᵒᵖ} {F G : Cᵒᵖ ⥤ Type v₁} (α : yoneda.obj (unop X) ⟶ F) (β : F ⟶ G)  :
    yonedaEquiv (α ≫ β) = β.app X (yonedaEquiv α) :=
  rfl

@[simp]
lemma yonedaEquiv_yoneda_map {X Y : C} (f : X ⟶ Y) : yonedaEquiv (yoneda.map f) = f := by
  rw [yonedaEquiv_apply]
  simp

lemma yonedaEquiv_symm_map {X Y : Cᵒᵖ} (f : X ⟶ Y) {F : Cᵒᵖ ⥤ Type v₁} (t : F.obj X) :
    yonedaEquiv.symm (F.map f t) = yoneda.map f.unop ≫ yonedaEquiv.symm t := by
  obtain ⟨u, rfl⟩ := yonedaEquiv.surjective t
  rw [yonedaEquiv_naturality', Equiv.symm_apply_apply, Equiv.symm_apply_apply]

/-- When `C` is a small category, we can restate the isomorphism from `yoneda_sections`
without having to change universes.
-/
def yonedaSectionsSmall {C : Type u₁} [SmallCategory C] (X : C) (F : Cᵒᵖ ⥤ Type u₁) :
    (yoneda.obj X ⟶ F) ≅ F.obj (op X) :=
  yonedaSections X F ≪≫ uliftTrivial _
#align category_theory.yoneda_sections_small CategoryTheory.yonedaSectionsSmall

@[simp]
theorem yonedaSectionsSmall_hom {C : Type u₁} [SmallCategory C] (X : C) (F : Cᵒᵖ ⥤ Type u₁)
    (f : yoneda.obj X ⟶ F) : (yonedaSectionsSmall X F).hom f = f.app _ (𝟙 _) :=
  rfl
#align category_theory.yoneda_sections_small_hom CategoryTheory.yonedaSectionsSmall_hom

@[simp]
theorem yonedaSectionsSmall_inv_app_apply {C : Type u₁} [SmallCategory C] (X : C)
    (F : Cᵒᵖ ⥤ Type u₁) (t : F.obj (op X)) (Y : Cᵒᵖ) (f : Y.unop ⟶ X) :
    ((yonedaSectionsSmall X F).inv t).app Y f = F.map f.op t :=
  rfl
#align category_theory.yoneda_sections_small_inv_app_apply CategoryTheory.yonedaSectionsSmall_inv_app_apply

attribute [local ext] Functor.ext

/- Porting note: this used to be two calls to `tidy` -/
/-- The curried version of yoneda lemma when `C` is small. -/
def curriedYonedaLemma {C : Type u₁} [SmallCategory C] :
    (yoneda.op ⋙ coyoneda : Cᵒᵖ ⥤ (Cᵒᵖ ⥤ Type u₁) ⥤ Type u₁) ≅ evaluation Cᵒᵖ (Type u₁) := by
  refine eqToIso ?_ ≪≫ curry.mapIso
    (yonedaLemma C ≪≫ isoWhiskerLeft (evaluationUncurried Cᵒᵖ (Type u₁)) uliftFunctorTrivial) ≪≫
    eqToIso ?_
  · apply Functor.ext
    · intro X Y f
      ext
      simp
    · aesop_cat
  · apply Functor.ext
    · intro X Y f
      ext
      simp
    · intro X
      simp only [curry, yoneda, coyoneda, curryObj, yonedaPairing]
      aesop_cat
#align category_theory.curried_yoneda_lemma CategoryTheory.curriedYonedaLemma

/-- The curried version of yoneda lemma when `C` is small. -/
def curriedYonedaLemma' {C : Type u₁} [SmallCategory C] :
    yoneda ⋙ (whiskeringLeft Cᵒᵖ (Cᵒᵖ ⥤ Type u₁)ᵒᵖ (Type u₁)).obj yoneda.op ≅ 𝟭 (Cᵒᵖ ⥤ Type u₁)
    := by
  refine eqToIso ?_ ≪≫ curry.mapIso (isoWhiskerLeft (Prod.swap _ _)
    (yonedaLemma C ≪≫ isoWhiskerLeft (evaluationUncurried Cᵒᵖ (Type u₁)) uliftFunctorTrivial :_))
    ≪≫ eqToIso ?_
  · apply Functor.ext
    · intro X Y f
      aesop_cat
  · apply Functor.ext
    · aesop_cat
#align category_theory.curried_yoneda_lemma' CategoryTheory.curriedYonedaLemma'

end CategoryTheory

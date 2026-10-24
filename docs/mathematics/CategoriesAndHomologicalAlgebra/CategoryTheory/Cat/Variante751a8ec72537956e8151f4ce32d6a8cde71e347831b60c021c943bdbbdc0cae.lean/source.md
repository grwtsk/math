# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cat.Variante751a8ec72537956e8151f4ce32d6a8cde71e347831b60c021c943bdbbdc0cae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce6ed52775d4124047a6ae8c602ca7107913ea8e` · SHA-256 `8a4f8f29b3575c7374bf8ea465d6990fb7e3d3a7f9a912b301d92c1a360306bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ChosenTerminal.Variant67c2e10a081b5bdf1735e56ce38ad131df9fb7317b0e22d89cb5037831fc1321","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"67c2e10a081b5bdf1735e56ce38ad131df9fb7317b0e22d89cb5037831fc1321","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ChosenTerminal.Variant67c2e10a081b5bdf1735e56ce38ad131df9fb7317b0e22d89cb5037831fc1321","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"67c2e10a081b5bdf1735e56ce38ad131df9fb7317b0e22d89cb5037831fc1321","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/Cartesian/Cat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Nicolas Rolland. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nicolas Rolland
-/
module

public import Mathlib.CategoryTheory.Monoidal.Cartesian.Basic
/-!
# Chosen finite products in `Cat`

This file proves that the Cartesian product of a pair of categories agrees with the
product in `Cat`, and provides the associated `CartesianMonoidalCategory` instance.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ChosenTerminal.Variant67c2e10a081b5bdf1735e56ce38ad131df9fb7317b0e22d89cb5037831fc1321

@[expose] public section

universe v u

namespace CategoryTheory

namespace Cat

open Limits

attribute [local instance] uliftCategory in
/-- The chosen terminal object in `Cat`. -/
abbrev chosenTerminal : Cat.{v, u} := ↧(ULift (ULiftHom (Discrete Unit)))

attribute [local instance] uliftCategory in
/-- The chosen terminal object in `Cat` is terminal. -/
def chosenTerminalIsTerminal : IsTerminal chosenTerminal.{v, u} :=
  IsTerminal.ofUniqueHom (fun C ↦ ((Functor.const C).obj ⟨⟨⟨⟩⟩⟩).toCatHom) fun _ _ ↦ rfl

/-- The type of functors out of the chosen terminal category is equivalent to the type of objects
in the target category. TODO: upgrade to an equivalence of categories. -/
def fromChosenTerminalEquiv {C : Type u} [Category.{v} C] : Cat.chosenTerminal ⥤ C ≃ C where
  toFun F := F.obj ⟨⟨()⟩⟩
  invFun := (Functor.const _).obj
  left_inv _ := by
    apply Functor.ext
    · rintro ⟨⟨⟨⟩⟩⟩ ⟨⟨⟨⟩⟩⟩ ⟨⟨⟨⟨⟩⟩⟩⟩
      simp only [eqToHom_refl, Category.comp_id, Category.id_comp]
      exact (Functor.map_id _ _).symm
    · intro; rfl
  right_inv _ := rfl

/-- The chosen product of categories `C × D` yields a product cone in `Cat`. -/
def prodCone (C D : Cat.{v, u}) : BinaryFan C D :=
  .mk (P := ↧(C × D)) (Prod.fst _ _).toCatHom (Prod.snd _ _).toCatHom

/-- The product cone in `Cat` is indeed a product. -/
def isLimitProdCone (X Y : Cat) : IsLimit (prodCone X Y) := BinaryFan.isLimitMk
  (fun S => (S.fst.toFunctor.prod' S.snd.toFunctor).toCatHom) (fun _ => rfl)
    (fun _ => rfl) (fun _ _ h1 h2 => Cat.Hom.ext <| Functor.hext
      (fun _ ↦ Prod.ext (by simp [← h1]) (by simp [← h2]))
      (fun _ _ _ ↦ by dsimp; rw [← h1, ← h2]; rfl))

instance : CartesianMonoidalCategory Cat :=
  .ofChosenFiniteProducts ⟨_, chosenTerminalIsTerminal⟩ fun X Y ↦
    { cone := X.prodCone Y, isLimit := isLimitProdCone X Y }

instance : BraidedCategory Cat := .ofCartesianMonoidalCategory

/-- A monoidal instance for `Cat` is provided from the `CartesianMonoidalCategory` instance. -/
example : MonoidalCategory Cat := by infer_instance

/-- A symmetric monoidal instance for `Cat` is provided through
`CartesianMonoidalCategory.toSymmetricCategory`. -/
example : SymmetricCategory Cat := by infer_instance

end Cat

namespace Monoidal

open MonoidalCategory

lemma tensorObj (C : Cat) (D : Cat) : C ⊗ D = Cat.of (C × D) := rfl

lemma whiskerLeft (X : Cat) {A : Cat} {B : Cat} (F : A ⟶ B) :
    X ◁ F = ((𝟭 X).prod F.toFunctor).toCatHom := rfl

lemma whiskerLeft_fst (X : Cat) {A : Cat} {B : Cat} (f : A ⟶ B) :
    (X ◁ f).toFunctor ⋙ Prod.fst _ _ = Prod.fst _ _ := rfl

lemma whiskerLeft_snd (X : Cat) {A : Cat} {B : Cat} (f : A ⟶ B) :
    (X ◁ f).toFunctor ⋙ Prod.snd _ _ = Prod.snd _ _ ⋙ f.toFunctor := rfl

lemma whiskerRight {A : Cat} {B : Cat} (f : A ⟶ B) (X : Cat) :
    f ▷ X = (f.toFunctor.prod (𝟭 X)).toCatHom := rfl

lemma whiskerRight_fst {A : Cat} {B : Cat} (f : A ⟶ B) (X : Cat) :
    (f ▷ X).toFunctor ⋙ Prod.fst _ _ = Prod.fst _ _ ⋙ f.toFunctor := rfl

lemma whiskerRight_snd {A : Cat} {B : Cat} (f : A ⟶ B) (X : Cat) :
    (f ▷ X).toFunctor ⋙ Prod.snd _ _ = Prod.snd _ _ := rfl

lemma tensorHom {A : Cat} {B : Cat} (f : A ⟶ B) {X : Cat} {Y : Cat} (g : X ⟶ Y) :
    f ⊗ₘ g = (f.toFunctor.prod g.toFunctor).toCatHom := rfl

lemma tensorUnit : 𝟙_ Cat = Cat.chosenTerminal := rfl

lemma associator_hom (X : Cat) (Y : Cat) (Z : Cat) :
    (associator X Y Z).hom = (Functor.prod' (Prod.fst (X × Y) Z ⋙ Prod.fst X Y)
      ((Functor.prod' ((Prod.fst (X × Y) Z ⋙ Prod.snd X Y))
      (Prod.snd (X × Y) Z : (X × Y) × Z ⥤ Z)))).toCatHom := rfl

lemma associator_inv (X : Cat) (Y : Cat) (Z : Cat) :
    (associator X Y Z).inv = (Functor.prod' (Functor.prod' (Prod.fst X (Y × Z) : X × (Y × Z) ⥤ X)
      (Prod.snd X (Y × Z) ⋙ Prod.fst Y Z)) (Prod.snd X (Y × Z) ⋙ Prod.snd Y Z)).toCatHom := rfl

lemma leftUnitor_hom (C : Cat.{v, u}) : (λ_ C).hom = (Prod.snd _ _).toCatHom := rfl

lemma leftUnitor_inv (C : Cat.{v, u}) : (λ_ C).inv = (Prod.sectR ⟨⟨⟨⟩⟩⟩ _).toCatHom := rfl

lemma rightUnitor_hom (C : Cat.{v, u}) : (ρ_ C).hom = (Prod.fst _ _).toCatHom := rfl

lemma rightUnitor_inv (C : Cat.{v, u}) : (ρ_ C).inv = (Prod.sectL _ ⟨⟨⟨⟩⟩⟩).toCatHom := rfl

end CategoryTheory.Monoidal
```

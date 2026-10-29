-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ChosenTerminal.Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ChosenTerminal.Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monoidal/Cartesian/Cat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Nicolas Rolland. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nicolas Rolland
-/
import Mathlib.CategoryTheory.Monoidal.Cartesian.Basic
/-!
# Chosen finite products in `Cat`

This file proves that the cartesian product of a pair of categories agrees with the
product in `Cat`, and provides the associated `CartesianMonoidalCategory` instance.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ChosenTerminal.Variant698f5b287a34306851bda1a1bdc90859410811b4ab12d106be1aa1379ccf164b

universe v u

namespace CategoryTheory

namespace Cat

open Limits

/-- The chosen terminal object in `Cat`. -/
abbrev chosenTerminal : Cat := Cat.of (ULift (ULiftHom (Discrete Unit)))

/-- The chosen terminal object in `Cat` is terminal. -/
def chosenTerminalIsTerminal : IsTerminal chosenTerminal :=
  IsTerminal.ofUniqueHom (fun _ ↦ (Functor.const _).obj ⟨⟨⟨⟩⟩⟩) fun _ _ ↦ rfl

/-- The chosen product of categories `C × D` yields a product cone in `Cat`. -/
def prodCone (C D : Cat.{v, u}) : BinaryFan C D :=
  .mk (P := .of (C × D)) (Prod.fst _ _) (Prod.snd _ _)

/-- The product cone in `Cat` is indeed a product. -/
def isLimitProdCone (X Y : Cat) : IsLimit (prodCone X Y) := BinaryFan.isLimitMk
  (fun S => S.fst.prod' S.snd) (fun _ => rfl) (fun _ => rfl) (fun _ _ h1 h2 =>
    Functor.hext
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

lemma whiskerLeft (X : Cat) {A : Cat} {B : Cat} (f : A ⟶ B) :
    X ◁ f = (𝟭 X).prod f := rfl

lemma whiskerLeft_fst (X : Cat) {A : Cat} {B : Cat} (f : A ⟶ B) :
    (X ◁ f) ⋙ Prod.fst _ _ = Prod.fst _ _ := rfl

lemma whiskerLeft_snd (X : Cat) {A : Cat} {B : Cat} (f : A ⟶ B) :
    (X ◁ f) ⋙ Prod.snd _ _ = Prod.snd _ _ ⋙ f := rfl

lemma whiskerRight {A : Cat} {B : Cat} (f : A ⟶ B) (X : Cat) :
    f ▷  X  = f.prod (𝟭 X) := rfl

lemma whiskerRight_fst {A : Cat} {B : Cat} (f : A ⟶ B) (X : Cat) :
    (f ▷ X) ⋙ Prod.fst _ _  = Prod.fst _ _ ⋙ f := rfl

lemma whiskerRight_snd {A : Cat} {B : Cat} (f : A ⟶ B) (X : Cat) :
    (f ▷ X) ⋙ Prod.snd _ _  = Prod.snd _ _ := rfl

lemma tensorHom {A : Cat} {B : Cat} (f : A ⟶ B) {X : Cat} {Y : Cat} (g : X ⟶ Y) :
    f ⊗ g = f.prod g := rfl

lemma tensorUnit : 𝟙_ Cat = Cat.chosenTerminal := rfl

lemma associator_hom (X : Cat) (Y : Cat) (Z : Cat) :
    (associator X Y Z).hom = Functor.prod' (Prod.fst (X × Y) Z ⋙ Prod.fst X Y)
      ((Functor.prod' ((Prod.fst (X × Y) Z ⋙ Prod.snd X Y))
      (Prod.snd (X × Y) Z : (X × Y) × Z ⥤ Z))) := rfl

lemma associator_inv (X : Cat) (Y : Cat) (Z : Cat) :
    (associator X Y Z).inv = Functor.prod' (Functor.prod' (Prod.fst X (Y × Z) : X × (Y × Z) ⥤ X)
      (Prod.snd X (Y × Z) ⋙ Prod.fst Y Z)) (Prod.snd X (Y × Z) ⋙ Prod.snd Y Z) := rfl

lemma leftUnitor_hom (C : Cat) : (λ_ C).hom = Prod.snd _ _ := rfl

lemma leftUnitor_inv (C : Cat) : (λ_ C).inv = Prod.sectR ⟨⟨⟨⟩⟩⟩ _ := rfl

lemma rightUnitor_hom (C : Cat) : (ρ_ C).hom = Prod.fst _ _ := rfl

lemma rightUnitor_inv (C : Cat) : (ρ_ C).inv = Prod.sectL _ ⟨⟨⟨⟩⟩⟩ := rfl

end CategoryTheory.Monoidal

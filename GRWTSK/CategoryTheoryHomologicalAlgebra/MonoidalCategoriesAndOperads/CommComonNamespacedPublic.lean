-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommComon.Variant24bf7e36ff7b998c9de6ebe55d11be0d35f88960f34634a6191dabf9e919ca35","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"24bf7e36ff7b998c9de6ebe55d11be0d35f88960f34634a6191dabf9e919ca35","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CommComon.Variant24bf7e36ff7b998c9de6ebe55d11be0d35f88960f34634a6191dabf9e919ca35","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"24bf7e36ff7b998c9de6ebe55d11be0d35f88960f34634a6191dabf9e919ca35","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/CommComon_.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jacob Reinhold. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jacob Reinhold
-/
module

public import Mathlib.CategoryTheory.Monoidal.Comon_
public import Mathlib.CategoryTheory.Monoidal.Braided.Basic
public import Mathlib.CategoryTheory.Monoidal.CoherenceLemmas

/-!
# The category of commutative comonoids in a braided monoidal category.

We define the category of commutative comonoid objects in a braided monoidal category `C`.

## Main definitions

* `CommComon C` - The bundled structure of commutative comonoid objects

## Tags

comonoid, commutative, braided
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommComon.Variant24bf7e36ff7b998c9de6ebe55d11be0d35f88960f34634a6191dabf9e919ca35

@[expose] public section

universe v₁ v₂ v₃ u₁ u₂ u₃ u

namespace CategoryTheory

open MonoidalCategory ComonObj

variable {C : Type u₁} [Category.{v₁} C] [MonoidalCategory.{v₁} C] [BraidedCategory.{v₁} C]

variable (C) in
/-- A commutative comonoid object internal to a monoidal category. -/
structure CommComon where
  /-- The underlying object in the ambient monoidal category -/
  X : C
  [comon : ComonObj X]
  [comm : IsCommComonObj X]

attribute [instance] CommComon.comon CommComon.comm

namespace CommComon

/-- A commutative comonoid object is a comonoid object. -/
@[simps X]
def toComon (A : CommComon C) : Comon C := ⟨A.X⟩

section

attribute [local instance] ComonObj.instTensorUnit in
/-- The trivial comonoid on the unit object is commutative. -/
instance instCommComonObjUnit : IsCommComonObj (𝟙_ C) where
  comul_comm := by simp [← unitors_equal]

end

attribute [local instance] ComonObj.instTensorUnit in
variable (C) in
/-- The trivial commutative comonoid object. We later show this is initial in `CommComon C`. -/
@[simps!]
def trivial : CommComon C := mk (𝟙_ C)

instance : Inhabited (CommComon C) :=
  ⟨trivial C⟩

instance : Category (CommComon C) :=
  inferInstanceAs (Category (InducedCategory _ CommComon.toComon))

@[simp]
theorem id_hom (A : CommComon C) : Comon.Hom.hom (InducedCategory.Hom.hom (𝟙 A)) = 𝟙 A.X :=
  rfl

@[simp]
theorem comp_hom {R S T : CommComon C} (f : R ⟶ S) (g : S ⟶ T) :
    Comon.Hom.hom (f ≫ g).hom = f.hom.hom ≫ g.hom.hom :=
  rfl

@[ext]
lemma hom_ext {A B : CommComon C} (f g : A ⟶ B) (h : f.hom.hom = g.hom.hom) : f = g :=
  InducedCategory.hom_ext (Comon.Hom.ext h)

section

variable (C)

/-- The forgetful functor from commutative comonoid objects to comonoid objects. -/
@[simps!]
def forget₂Comon : CommComon C ⥤ Comon C :=
  inducedFunctor _

end

end CommComon

instance {C : Type*} [Category* C] [MonoidalCategory C] [SymmetricCategory C]
    (A B : C) [ComonObj A] [ComonObj B]
    [IsCommComonObj A] [IsCommComonObj B] : IsCommComonObj (A ⊗ B) where
  comul_comm := by
    rw [Comon.tensorObj_comul, Category.assoc, SymmetricCategory.tensorμ_braid_swap]
    simp

end CategoryTheory

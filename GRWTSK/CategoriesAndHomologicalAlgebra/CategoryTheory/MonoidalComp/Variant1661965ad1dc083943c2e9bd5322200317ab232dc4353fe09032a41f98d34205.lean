-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoidalComp.Variant40910716f62b17cb895a933a7b6d66a072c8dd01403db3d75dd5a6913662585b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"40910716f62b17cb895a933a7b6d66a072c8dd01403db3d75dd5a6913662585b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.MonoidalComp.Variant40910716f62b17cb895a933a7b6d66a072c8dd01403db3d75dd5a6913662585b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"40910716f62b17cb895a933a7b6d66a072c8dd01403db3d75dd5a6913662585b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CategoryTheory/MonoidalComp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.CategoryTheory.MonoidalComp


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoidalComp.Variant40910716f62b17cb895a933a7b6d66a072c8dd01403db3d75dd5a6913662585b

universe v u

noncomputable section

namespace CategoryTheory

open scoped MonoidalCategory

variable {C : Type u} [Category.{v} C] [MonoidalCategory C]

example (X : C) : X ≅ (X ⊗ (𝟙_ C ⊗ 𝟙_ C)) := monoidalIso _ _

example (X1 X2 X3 X4 X5 X6 X7 X8 X9 : C) :
    (𝟙_ C ⊗ (X1 ⊗ X2 ⊗ ((X3 ⊗ X4) ⊗ X5)) ⊗ X6 ⊗ (X7 ⊗ X8 ⊗ X9)) ≅
    (X1 ⊗ (X2 ⊗ X3) ⊗ X4 ⊗ (X5 ⊗ (𝟙_ C ⊗ X6) ⊗ X7) ⊗ X8 ⊗ X9) :=
  monoidalIso _ _

example {U V W X Y : C} (f : U ⟶ V ⊗ (W ⊗ X)) (g : (V ⊗ W) ⊗ X ⟶ Y) : U ⟶ Y := f ⊗≫ g

-- To automatically insert unitors/associators at the beginning or end,
-- you can use `f ⊗≫ 𝟙 _`
example {W X Y Z : C} (f : W ⟶ (X ⊗ Y) ⊗ Z) : W ⟶ X ⊗ (Y ⊗ Z) := f ⊗≫ 𝟙 _

example {U V W X Y : C} (f : U ⟶ V ⊗ (W ⊗ X)) (g : (V ⊗ W) ⊗ X ⟶ Y) :
    f ⊗≫ g = f ≫ (α_ _ _ _).inv ≫ g := by
  simp [MonoidalCategory.tensorHom_def, monoidalComp]

end CategoryTheory

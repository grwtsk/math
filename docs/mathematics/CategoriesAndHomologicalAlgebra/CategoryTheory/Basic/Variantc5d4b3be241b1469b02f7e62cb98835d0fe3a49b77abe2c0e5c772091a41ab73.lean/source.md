# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantc5d4b3be241b1469b02f7e62cb98835d0fe3a49b77abe2c0e5c772091a41ab73

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91ecbb386c6e8d5ade00c96e402018144b600d7a` · SHA-256 `b2727851166c944cdd0d1dfe2109e4b71f50545e41820c540f794b1f644af2f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variant82215e181368f90e6beee2ec7320f6266c4da61a3dbb24353aab294dcd53d228","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82215e181368f90e6beee2ec7320f6266c4da61a3dbb24353aab294dcd53d228","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Monoidal.Variant82215e181368f90e6beee2ec7320f6266c4da61a3dbb24353aab294dcd53d228","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"82215e181368f90e6beee2ec7320f6266c4da61a3dbb24353aab294dcd53d228","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CategoryTheory/Monoidal/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.CategoryTheory.Monoidal.Basic


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variant82215e181368f90e6beee2ec7320f6266c4da61a3dbb24353aab294dcd53d228

open CategoryTheory Mathlib.Tactic BicategoryLike
open MonoidalCategory

universe v u

variable {C : Type u} [Category.{v} C] [MonoidalCategory C]
variable {X Y Z W : C} (f : X ⟶ Y) (g : Y ⟶ Z)

example (f : U ⟶ V ⊗ (W ⊗ X)) (g : (V ⊗ W) ⊗ X ⟶ Y) :
    f ⊗≫ g = f ≫ (α_ _ _ _).inv ≫ g := by
  monoidal

example (f : Z ⟶ W) : (X ⊗ Y) ◁ f = (α_ _ _ _).hom ≫ X ◁ Y ◁ f ≫ (α_ _ _ _).inv := by
  monoidal

example : f ≫ g = f ≫ g := by
  monoidal

example : (f ⊗ g) ▷ X = (α_ _ _ _).hom ≫ (f ⊗ g ▷ X) ≫ (α_ _ _ _).inv := by
  monoidal

example {V₁ V₂ V₃ : C} (R : ∀ V₁ V₂ : C, V₁ ⊗ V₂ ⟶ V₂ ⊗ V₁) :
    R V₁ V₂ ▷ V₃ ⊗≫ V₂ ◁ R V₁ V₃ =
      R V₁ V₂ ▷ V₃ ≫ (α_ _ _ _).hom ⊗≫ 𝟙 _ ≫ V₂ ◁ R V₁ V₃ := by
  monoidal
```

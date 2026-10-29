-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.MonCat.Variantccd36c5d9aeb65ee9c1863204d6ad2b998f7a8a3c8c17024f4ea57fc4005532e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ccd36c5d9aeb65ee9c1863204d6ad2b998f7a8a3c8c17024f4ea57fc4005532e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.MonCat.Variantccd36c5d9aeb65ee9c1863204d6ad2b998f7a8a3c8c17024f4ea57fc4005532e","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"ccd36c5d9aeb65ee9c1863204d6ad2b998f7a8a3c8c17024f4ea57fc4005532e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CategoryTheory/ConcreteCategory/MonCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Category.MonCat.Basic


namespace GRWTSK.Algebra.UniversalAlgebra.MonCat.Variantccd36c5d9aeb65ee9c1863204d6ad2b998f7a8a3c8c17024f4ea57fc4005532e

universe v u

open CategoryTheory MonCat

set_option maxHeartbeats 10000
set_option synthInstance.maxHeartbeats 2000

/- We test if all the coercions and `map_mul` lemmas trigger correctly. -/

example (X : Type u) [Monoid X] : ⇑(𝟙 (of X)) = id := by simp

example {X Y : Type u} [Monoid X] [Monoid Y] (f : X →* Y) :
    ⇑(ofHom f) = ⇑f := by simp

example {X Y : Type u} [Monoid X] [Monoid Y] (f : X →* Y)
    (x : X) : (ofHom f) x = f x := by simp

example {X Y Z : MonCat} (f : X ⟶ Y) (g : Y ⟶ Z) : ⇑(f ≫ g) = ⇑g ∘ ⇑f := by simp

example {X Y Z : Type u} [Monoid X] [Monoid Y] [Monoid Z]
    (f : X →* Y) (g : Y →* Z) :
    ⇑(ofHom f ≫ ofHom g) = g ∘ f := by simp

example {X Y : Type u} [Monoid X] [Monoid Y] {Z : MonCat}
    (f : X →* Y) (g : of Y ⟶ Z) :
    ⇑(ofHom f ≫ g) = g ∘ f := by simp

example {X Y : MonCat} {Z : Type u} [Monoid Z] (f : X ⟶ Y) (g : Y ⟶ of Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {Y Z : MonCat} {X : Type u} [Monoid X] (f : of X ⟶ Y) (g : Y ⟶ Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {X Y Z : MonCat} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) : (f ≫ g) x = g (f x) := by simp

example {X Y : MonCat} (e : X ≅ Y) (x : X) : e.inv (e.hom x) = x := by simp

example {X Y : MonCat} (e : X ≅ Y) (y : Y) : e.hom (e.inv y) = y := by simp

example (X : MonCat) : ⇑(𝟙 X) = id := by simp

example {X : Type*} [Monoid X] : ⇑(MonoidHom.id X) = id := by simp

example {M N : MonCat} (f : M ⟶ N) (x y : M) : f (x * y) = f x * f y := by
  simp

example {M N : MonCat} (f : M ⟶ N) : f 1 = 1 := by
  simp

-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ModuleCat.Variantf325841235f2837ebc277b7c76f33a21193767a9d80fbcc28f6f460c70aaef9a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f325841235f2837ebc277b7c76f33a21193767a9d80fbcc28f6f460c70aaef9a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ModuleCat.Variantf325841235f2837ebc277b7c76f33a21193767a9d80fbcc28f6f460c70aaef9a","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"f325841235f2837ebc277b7c76f33a21193767a9d80fbcc28f6f460c70aaef9a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CategoryTheory/ConcreteCategory/ModuleCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Category.ModuleCat.Basic


namespace GRWTSK.Algebra.ModuleCat.Variantf325841235f2837ebc277b7c76f33a21193767a9d80fbcc28f6f460c70aaef9a

universe v u

open CategoryTheory ModuleCat

set_option maxHeartbeats 10000
set_option synthInstance.maxHeartbeats 2000

variable (R : Type u) [CommRing R]

/- We test if all the coercions and `map_add` lemmas trigger correctly. -/

example (X : Type v) [AddCommGroup X] [Module R X] : ⇑(𝟙 (of R X)) = id := by simp

example {X Y : Type v} [AddCommGroup X] [Module R X] [AddCommGroup Y] [Module R Y] (f : X →ₗ[R] Y) :
    ⇑(ModuleCat.ofHom f) = ⇑f := by simp

example {X Y : Type v} [AddCommGroup X] [Module R X] [AddCommGroup Y] [Module R Y] (f : X →ₗ[R] Y)
    (x : X) : (ModuleCat.ofHom f) x = f x := by simp

example {X Y Z : ModuleCat R} (f : X ⟶ Y) (g : Y ⟶ Z) : ⇑(f ≫ g) = ⇑g ∘ ⇑f := by simp

example {X Y Z : Type v} [AddCommGroup X] [Module R X] [AddCommGroup Y] [Module R Y] [Ring Z]
    [Algebra R Z] (f : X →ₗ[R] Y) (g : Y →ₗ[R] Z) :
    ⇑(ModuleCat.ofHom f ≫ ModuleCat.ofHom g) = g ∘ f := by simp

example {X Y : Type v} [AddCommGroup X] [Module R X] [AddCommGroup Y] [Module R Y] {Z : ModuleCat R}
    (f : X →ₗ[R] Y) (g : of R Y ⟶ Z) :
    ⇑(ModuleCat.ofHom f ≫ g) = g ∘ f := by simp

example {X Y : ModuleCat R} {Z : Type v} [Ring Z] [Algebra R Z] (f : X ⟶ Y) (g : Y ⟶ of R Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {Y Z : ModuleCat R} {X : Type v} [AddCommGroup X] [Module R X] (f : of R X ⟶ Y) (g : Y ⟶ Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {X Y Z : ModuleCat R} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) : (f ≫ g) x = g (f x) := by simp

example {X Y : ModuleCat R} (e : X ≅ Y) (x : X) : e.inv (e.hom x) = x := by simp

example {X Y : ModuleCat R} (e : X ≅ Y) (y : Y) : e.hom (e.inv y) = y := by simp

example (X : ModuleCat R) : ⇑(𝟙 X) = id := by simp

example {M N : ModuleCat.{v} R} (f : M ⟶ N) (x y : M) : f (x + y) = f x + f y := by
  simp

example {M N : ModuleCat.{v} R} (f : M ⟶ N) : f 0 = 0 := by
  simp

example {M N : ModuleCat.{v} R} (f : M ⟶ N) (r : R) (m : M) : f (r • m) = r • f m := by
  simp

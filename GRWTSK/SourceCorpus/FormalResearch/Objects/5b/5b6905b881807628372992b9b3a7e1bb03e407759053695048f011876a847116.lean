-- corpus-organization-transform:v1
-- Mathematical subject: Computation.LeanMetaprogramming
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Bicategory.Variant3142a657caa5dc038f66293f390e93c703562351475f2c155705037a17833fd1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3142a657caa5dc038f66293f390e93c703562351475f2c155705037a17833fd1","provenance":{"attribution":"Organization assisted by OpenAI Codex under R.A. Jacob Martone direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Bicategory.Variant3142a657caa5dc038f66293f390e93c703562351475f2c155705037a17833fd1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3142a657caa5dc038f66293f390e93c703562351475f2c155705037a17833fd1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/think/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - Robert\u2019s MacBook Pro/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CategoryTheory/Bicategory/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.CategoryTheory.Bicategory.Basic


namespace FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Bicategory.Variant3142a657caa5dc038f66293f390e93c703562351475f2c155705037a17833fd1

open CategoryTheory Mathlib.Tactic BicategoryLike
open Bicategory

universe w v u

variable {B : Type u} [Bicategory.{w, v} B]
variable {a b c d : B}

example {f j : a ⟶ d} {g : a ⟶ b} {h : b ⟶ c} {i : c ⟶ d}
    (η : f ⟶ g ≫ (h ≫ i)) (θ : (g ≫ h) ≫ i ⟶ j) :
    η ⊗≫ θ = η ≫ (α_ _ _ _).inv ≫ θ := by
  bicategory

example {f : a ⟶ b} {g : b ⟶ c} {h i : c ⟶ d} (η : h ⟶ i) :
    (f ≫ g) ◁ η = (α_ _ _ _).hom ≫ f ◁ g ◁ η ≫ (α_ _ _ _).inv := by
  bicategory

example {f g h : a ⟶ b} {η : f ⟶ g} {θ : g ⟶ h} : η ≫ θ = η ≫ θ := by
  bicategory

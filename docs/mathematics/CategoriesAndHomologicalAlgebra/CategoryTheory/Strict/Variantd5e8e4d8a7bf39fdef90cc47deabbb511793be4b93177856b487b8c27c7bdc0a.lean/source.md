# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Strict.Variantd5e8e4d8a7bf39fdef90cc47deabbb511793be4b93177856b487b8c27c7bdc0a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a978a8a9c00479d6d6b88cc01aa252f3a033176` · SHA-256 `b1e1f53294b412eacc80b975c6f044c64bfb89bfc66ebdb2e4bda06adb17c913`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BicategoryStrict.Variant27cb6e08c200776cd27950fff81163b7ffab42e92347c1fadfbab1fa405b59f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"27cb6e08c200776cd27950fff81163b7ffab42e92347c1fadfbab1fa405b59f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.BicategoryStrict.Variant27cb6e08c200776cd27950fff81163b7ffab42e92347c1fadfbab1fa405b59f5","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"27cb6e08c200776cd27950fff81163b7ffab42e92347c1fadfbab1fa405b59f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Bicategory/Strict.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yuma Mizuno. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yuma Mizuno
-/
import Mathlib.CategoryTheory.EqToHom
import Mathlib.CategoryTheory.Bicategory.Basic

/-!
# Strict bicategories

A bicategory is called `Strict` if the left unitors, the right unitors, and the associators are
isomorphisms given by equalities.

## Implementation notes

In the literature of category theory, a strict bicategory (usually called a strict 2-category) is
often defined as a bicategory whose left unitors, right unitors, and associators are identities.
We cannot use this definition directly here since the types of 2-morphisms depend on 1-morphisms.
For this reason, we use `eqToIso`, which gives isomorphisms from equalities, instead of
identities.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BicategoryStrict.Variant27cb6e08c200776cd27950fff81163b7ffab42e92347c1fadfbab1fa405b59f5

namespace CategoryTheory

open Bicategory

universe w v u

variable (B : Type u) [Bicategory.{w, v} B]

/-- A bicategory is called `Strict` if the left unitors, the right unitors, and the associators are
isomorphisms given by equalities.
-/
class Bicategory.Strict : Prop where
  /-- Identity morphisms are left identities for composition. -/
  id_comp : ∀ {a b : B} (f : a ⟶ b), 𝟙 a ≫ f = f := by aesop_cat
  /-- Identity morphisms are right identities for composition. -/
  comp_id : ∀ {a b : B} (f : a ⟶ b), f ≫ 𝟙 b = f := by aesop_cat
  /-- Composition in a bicategory is associative. -/
  assoc : ∀ {a b c d : B} (f : a ⟶ b) (g : b ⟶ c) (h : c ⟶ d), (f ≫ g) ≫ h = f ≫ g ≫ h := by
    aesop_cat
  /-- The left unitors are given by equalities -/
  leftUnitor_eqToIso : ∀ {a b : B} (f : a ⟶ b), λ_ f = eqToIso (id_comp f) := by aesop_cat
  /-- The right unitors are given by equalities -/
  rightUnitor_eqToIso : ∀ {a b : B} (f : a ⟶ b), ρ_ f = eqToIso (comp_id f) := by aesop_cat
  /-- The associators are given by equalities -/
  associator_eqToIso :
    ∀ {a b c d : B} (f : a ⟶ b) (g : b ⟶ c) (h : c ⟶ d), α_ f g h = eqToIso (assoc f g h) := by
    aesop_cat

-- see Note [lower instance priority]
/-- Category structure on a strict bicategory -/
instance (priority := 100) StrictBicategory.category [Bicategory.Strict B] : Category B where
  id_comp := Bicategory.Strict.id_comp
  comp_id := Bicategory.Strict.comp_id
  assoc := Bicategory.Strict.assoc

namespace Bicategory

variable {B}

@[simp]
theorem whiskerLeft_eqToHom {a b c : B} (f : a ⟶ b) {g h : b ⟶ c} (η : g = h) :
    f ◁ eqToHom η = eqToHom (congr_arg₂ (· ≫ ·) rfl η) := by
  cases η
  simp only [whiskerLeft_id, eqToHom_refl]

@[simp]
theorem eqToHom_whiskerRight {a b c : B} {f g : a ⟶ b} (η : f = g) (h : b ⟶ c) :
    eqToHom η ▷ h = eqToHom (congr_arg₂ (· ≫ ·) η rfl) := by
  cases η
  simp only [id_whiskerRight, eqToHom_refl]

end Bicategory

end CategoryTheory
```

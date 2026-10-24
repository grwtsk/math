# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Balanced.Variantab7a0d12ab51787542ed4761a4ff00c116fd5616ad7ba0b929428859c1e8b393

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b97ec41c0b14b5a784eb144a7e3aa314c86ba68e` · SHA-256 `5e43c823e8daeeac0f97cca7f84900080d7ee53316b2d589e2336b5299b2ec64`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Balanced.Variantdbaa6983128ea8c764b6970ab8ecc20519a3e3b9139e91f56b5f9b3181175ddd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dbaa6983128ea8c764b6970ab8ecc20519a3e3b9139e91f56b5f9b3181175ddd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Balanced.Variantdbaa6983128ea8c764b6970ab8ecc20519a3e3b9139e91f56b5f9b3181175ddd","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"dbaa6983128ea8c764b6970ab8ecc20519a3e3b9139e91f56b5f9b3181175ddd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Balanced.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.EpiMono

/-!
# Balanced categories

A category is called balanced if any morphism that is both monic and epic is an isomorphism.

Balanced categories arise frequently. For example, categories in which every monomorphism
(or epimorphism) is strong are balanced. Examples of this are abelian categories and toposes, such
as the category of types.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Balanced.Variantdbaa6983128ea8c764b6970ab8ecc20519a3e3b9139e91f56b5f9b3181175ddd

universe v u

namespace CategoryTheory

variable {C : Type u} [Category.{v} C]

section

variable (C)

/-- A category is called balanced if any morphism that is both monic and epic is an isomorphism. -/
class Balanced : Prop where
  isIso_of_mono_of_epi : ∀ {X Y : C} (f : X ⟶ Y) [Mono f] [Epi f], IsIso f

end

theorem isIso_of_mono_of_epi [Balanced C] {X Y : C} (f : X ⟶ Y) [Mono f] [Epi f] : IsIso f :=
  Balanced.isIso_of_mono_of_epi _

theorem isIso_iff_mono_and_epi [Balanced C] {X Y : C} (f : X ⟶ Y) : IsIso f ↔ Mono f ∧ Epi f :=
  ⟨fun _ => ⟨inferInstance, inferInstance⟩, fun ⟨_, _⟩ => isIso_of_mono_of_epi _⟩

section

attribute [local instance] isIso_of_mono_of_epi

instance balanced_opposite [Balanced C] : Balanced Cᵒᵖ :=
  { isIso_of_mono_of_epi := fun f fmono fepi => by
      rw [← Quiver.Hom.op_unop f]
      exact isIso_of_op _ }

end

end CategoryTheory
```

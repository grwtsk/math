# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coyoneda.Variantd018b132150184213ac2bc490a2a25cd96df79c5e733f8b346fcf7fc29451511

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f28785aa1d4fb3156e1714c7d8cee5ba4b459143` · SHA-256 `717e881cbc1bdeeb2febbd8cf97ddb448c536b476b5dc071bf8d83767e61d5a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Varianta6059f47527efe24df57497909e9a03a25c18de51345d37840bbc15e7d5a92ad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a6059f47527efe24df57497909e9a03a25c18de51345d37840bbc15e7d5a92ad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Types.Varianta6059f47527efe24df57497909e9a03a25c18de51345d37840bbc15e7d5a92ad","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a6059f47527efe24df57497909e9a03a25c18de51345d37840bbc15e7d5a92ad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monoidal/Types/Coyoneda.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Michael Jendrusch. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Jendrusch, Kim Morrison
-/
import Mathlib.CategoryTheory.Monoidal.Types.Basic
import Mathlib.CategoryTheory.Monoidal.CoherenceLemmas

/-!
# `(𝟙_ C ⟶ -)` is a lax monoidal functor to `Type`
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Varianta6059f47527efe24df57497909e9a03a25c18de51345d37840bbc15e7d5a92ad

universe v u

namespace CategoryTheory

open Opposite MonoidalCategory

instance (C : Type u) [Category.{v} C] [MonoidalCategory C] :
    (coyoneda.obj (op (𝟙_ C))).LaxMonoidal :=
  Functor.LaxMonoidal.ofTensorHom
    (ε' := fun _ => 𝟙 _)
    (μ' := fun X Y p ↦ (λ_ (𝟙_ C)).inv ≫ (p.1 ⊗ p.2))
    (μ'_natural := by aesop_cat)
    (associativity' := fun X Y Z => by
      ext ⟨⟨f, g⟩, h⟩; dsimp at f g h
      dsimp; simp only [Iso.cancel_iso_inv_left, Category.assoc]
      conv_lhs =>
        rw [← Category.id_comp h, tensor_comp, Category.assoc, associator_naturality,
          ← Category.assoc, unitors_inv_equal, tensorHom_id, triangle_assoc_comp_right_inv]
      conv_rhs => rw [← Category.id_comp f, tensor_comp]
      simp)
    (left_unitality' := by
      intros
      ext ⟨⟨⟩, f⟩; dsimp at f
      dsimp
      simp)
    (right_unitality' := fun X => by
      ext ⟨f, ⟨⟩⟩; dsimp at f
      dsimp
      simp [unitors_inv_equal])

end CategoryTheory
```

-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Sub.Variantbec04e0b77743a8db6ca3cd096dc29ee6bc066133ef6428452b6e91f61efe399","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bec04e0b77743a8db6ca3cd096dc29ee6bc066133ef6428452b6e91f61efe399","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Sub.Variantbec04e0b77743a8db6ca3cd096dc29ee6bc066133ef6428452b6e91f61efe399","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"bec04e0b77743a8db6ca3cd096dc29ee6bc066133ef6428452b6e91f61efe399","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Sub/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Order.Sub.Defs
import Mathlib.Algebra.Notation.Pi
import Mathlib.Algebra.Notation.Prod

/-!
# Products of `OrderedSub` types.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Sub.Variantbec04e0b77743a8db6ca3cd096dc29ee6bc066133ef6428452b6e91f61efe399

assert_not_exists MonoidWithZero

variable {α β : Type*}

instance Prod.orderedSub
    [Preorder α] [Add α] [Sub α] [OrderedSub α] [Sub β] [Preorder β] [Add β] [OrderedSub β] :
    OrderedSub (α × β) where
  tsub_le_iff_right _ _ _ :=
  ⟨fun w ↦ ⟨tsub_le_iff_right.mp w.1, tsub_le_iff_right.mp w.2⟩,
   fun w ↦ ⟨tsub_le_iff_right.mpr w.1, tsub_le_iff_right.mpr w.2⟩⟩

instance Pi.orderedSub {ι : Type*} {α : ι → Type*}
    [∀ i, Preorder (α i)] [∀ i, Add (α i)] [∀ i, Sub (α i)] [∀ i, OrderedSub (α i)] :
    OrderedSub ((i : ι) → α i) where
  tsub_le_iff_right _ _ _ :=
  ⟨fun w i ↦ tsub_le_iff_right.mp (w i), fun w i ↦ tsub_le_iff_right.mpr (w i)⟩

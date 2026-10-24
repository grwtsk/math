-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.EmbeddingLikePairwiseComp.Variant0bd13c4c2101b7166bd965cceba81a82cf0565be93285ea4af8fd6807217f817","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0bd13c4c2101b7166bd965cceba81a82cf0565be93285ea4af8fd6807217f817","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.EmbeddingLikePairwiseComp.Variant0bd13c4c2101b7166bd965cceba81a82cf0565be93285ea4af8fd6807217f817","mathematical_subject":"Logic.Foundations","original_sha256":"0bd13c4c2101b7166bd965cceba81a82cf0565be93285ea4af8fd6807217f817","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Logic/Equiv/Pairwise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joseph Myers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joseph Myers
-/
import Mathlib.Data.FunLike.Equiv
import Mathlib.Logic.Pairwise

/-!
# Interaction of equivalences with `Pairwise`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.EmbeddingLikePairwiseComp.Variant0bd13c4c2101b7166bd965cceba81a82cf0565be93285ea4af8fd6807217f817

open scoped Function -- required for scoped `on` notation

lemma EmbeddingLike.pairwise_comp {X : Type*} {Y : Type*} {F} [FunLike F Y X] [EmbeddingLike F Y X]
    (f : F) {p : X → X → Prop} (h : Pairwise p) : Pairwise (p on f) :=
  h.comp_of_injective <| EmbeddingLike.injective f

lemma EquivLike.pairwise_comp_iff {X : Type*} {Y : Type*} {F} [EquivLike F Y X]
    (f : F) (p : X → X → Prop) : Pairwise (p on f) ↔ Pairwise p :=
  (EquivLike.bijective f).pairwise_comp_iff

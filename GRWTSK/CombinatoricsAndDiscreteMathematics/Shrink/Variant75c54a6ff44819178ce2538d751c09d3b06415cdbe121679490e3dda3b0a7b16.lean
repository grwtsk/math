-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Small.Variantb3f28002c943643c83377660dfe926e6d914e725fbf6cdf0af7f4812ee050731","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3f28002c943643c83377660dfe926e6d914e725fbf6cdf0af7f4812ee050731","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Small.Variantb3f28002c943643c83377660dfe926e6d914e725fbf6cdf0af7f4812ee050731","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"b3f28002c943643c83377660dfe926e6d914e725fbf6cdf0af7f4812ee050731","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Fintype/Shrink.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Basic.Countable.Small
public import Mathlib.Data.Fintype.EquivFin

/-!
# Fintype instance for `Shrink`
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Small.Variantb3f28002c943643c83377660dfe926e6d914e725fbf6cdf0af7f4812ee050731

public section

universe u v
variable {α : Type u} [Fintype α]

noncomputable instance Shrink.instFintype : Fintype (Shrink.{v} α) := .ofEquiv _ (equivShrink _)

instance Shrink.instFinite {α : Type u} [Finite α] : Finite (Shrink.{v} α) :=
  .of_equiv _ (equivShrink _)

@[simp] lemma Fintype.card_shrink [Fintype (Shrink.{v} α)] : card (Shrink.{v} α) = card α :=
  card_congr (equivShrink _).symm

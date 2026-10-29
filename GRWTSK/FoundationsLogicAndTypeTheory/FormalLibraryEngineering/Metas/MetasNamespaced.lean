-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant7926ed6fc8712154633f913948e9e1252f0d2da6f5c75e6236b0e0ad1a327cd6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7926ed6fc8712154633f913948e9e1252f0d2da6f5c75e6236b0e0ad1a327cd6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant7926ed6fc8712154633f913948e9e1252f0d2da6f5c75e6236b0e0ad1a327cd6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7926ed6fc8712154633f913948e9e1252f0d2da6f5c75e6236b0e0ad1a327cd6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Metas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant7926ed6fc8712154633f913948e9e1252f0d2da6f5c75e6236b0e0ad1a327cd6

set_option aesop.check.all true

example (P : α → Prop) (a : α) (h : P a) : ∃ a, P a := by
  aesop

example (P : α → β → Prop) (a : α) (b : β) (h : P a b) : ∃ a b, P a b := by
  aesop

example (P : α → Type) (a : α) (h : P a) : Σ a, P a := by
  aesop

example (P : α → β → Type) (a : α) (b : β) (h : P a b) : Σ a b, P a b := by
  aesop

example (P Q : α → Prop) (hPQ : ∀ a, P a → Q a) (a : α) (h : P a) : ∃ a, Q a := by
  aesop

example (P Q Dead R : α → Prop)
    (hPQ : ∀ a, P a → Q a)
    (hDeadR : ∀ a, Dead a → R a)
    (hQR : ∀ a, Q a → R a)
    (a : α) (h : P a) :
    ∃ a, R a := by
  aesop

example (R : α → α → Prop) (R_trans : ∀ x y z, R x y → R y z → R x z) (a b c d)
    (hab : R a b) (hbc : R b c) (hcd : R c d) : R a d := by
  aesop

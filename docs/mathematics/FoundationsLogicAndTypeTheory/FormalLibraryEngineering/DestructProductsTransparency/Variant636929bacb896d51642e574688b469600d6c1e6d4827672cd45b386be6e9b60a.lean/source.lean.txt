-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sig.Variant659ac2d62c9b0a04ac7bba1d00a650abf6ae4e95845842b0ad4f4740ccad21b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"659ac2d62c9b0a04ac7bba1d00a650abf6ae4e95845842b0ad4f4740ccad21b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Sig.Variant659ac2d62c9b0a04ac7bba1d00a650abf6ae4e95845842b0ad4f4740ccad21b5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"659ac2d62c9b0a04ac7bba1d00a650abf6ae4e95845842b0ad4f4740ccad21b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/DestructProductsTransparency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sig.Variant659ac2d62c9b0a04ac7bba1d00a650abf6ae4e95845842b0ad4f4740ccad21b5

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

@[aesop safe constructors]
structure Sig (α : Sort u) (β : α → Sort v) : Sort _ where
  fst : α
  snd : β fst

def T α β := α ∧ β

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : T α β) : Sig α (λ _ => β) := by
  aesop (config := { terminal := true })

example (h : T α β) : Sig α (λ _ => β) := by
  aesop (config := { destructProductsTransparency := .default })

def U := T

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : U α β) : Sig α (λ _ => β) := by
  aesop (config := { terminal := true })

example (h : U α β) : Sig α (λ _ => β) := by
  aesop (config := { destructProductsTransparency := .default })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : U α β ∧ U γ δ) : Sig α (λ _ => γ) := by
  aesop (config := { terminal := true })

example (h : U α β ∧ U γ δ) : Sig α (λ _ => γ) := by
  aesop (config := { destructProductsTransparency := .default })

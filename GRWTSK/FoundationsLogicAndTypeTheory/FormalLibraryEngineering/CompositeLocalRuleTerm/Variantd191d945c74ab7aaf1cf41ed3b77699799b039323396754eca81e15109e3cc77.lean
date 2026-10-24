-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.A.Variant0a7b06e6f465a8dd4410ad8f5cd12d437d6030881854ee921cefbd7293e66982","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a7b06e6f465a8dd4410ad8f5cd12d437d6030881854ee921cefbd7293e66982","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.A.Variant0a7b06e6f465a8dd4410ad8f5cd12d437d6030881854ee921cefbd7293e66982","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0a7b06e6f465a8dd4410ad8f5cd12d437d6030881854ee921cefbd7293e66982","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/CompositeLocalRuleTerm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.A.Variant0a7b06e6f465a8dd4410ad8f5cd12d437d6030881854ee921cefbd7293e66982

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

-- Composite terms are supported by the `apply` and `forward` builders...

structure A where

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example (h : A → β → γ) (b : β) : γ := by
  aesop

example (h : A → β → γ) (b : β) : γ := by
  aesop (add safe apply (h {}))

example (h : A → β → γ) (b : β) : γ := by
  aesop (add safe forward (h {}))

-- ... and also by the `simp` builder.

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example {P : α → Prop} (h : A → x = y) (p : P x) : P y := by
  aesop

example {P : α → Prop} (h : A → x = y) (p : P x) : P y := by
  aesop (add simp (h {}))

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example {P : α → Prop} (h₁ : A → x = y) (h₂ : A → y = z) (p : P x) : P z := by
  aesop

example {P : α → Prop} (h₁ : A → x = y) (h₂ : A → y = z) (p : P x) : P z := by
  aesop (add simp [(h₁ {}), (h₂ {})])

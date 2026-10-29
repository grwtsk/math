-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variant8c87e686542e738a64bbaa3bede92f30410c5781172df8f8fbb312f114283891","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c87e686542e738a64bbaa3bede92f30410c5781172df8f8fbb312f114283891","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.T.Variant8c87e686542e738a64bbaa3bede92f30410c5781172df8f8fbb312f114283891","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8c87e686542e738a64bbaa3bede92f30410c5781172df8f8fbb312f114283891","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/NormSimp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variant8c87e686542e738a64bbaa3bede92f30410c5781172df8f8fbb312f114283891

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

-- A basic test for local simp rules.
example {α : Prop} (h : α) : α := by
  aesop (rule_sets := [-builtin,-default]) (add h norm simp)

-- This test checks that we don't 'self-simplify' hypotheses: `h` should not
-- be used to simplify itself.
example (h : (α ∧ β) ∨ γ) : α ∨ γ := by
  aesop (add h norm simp)

-- Ditto, but we can omit the 'norm'.
example (h : (α ∧ β) ∨ γ) : α ∨ γ := by
  aesop (add h simp)

-- This test checks that the norm simp config is passed around properly.

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example {α β : Prop} (ha : α) (h : α → β) : β := by
  aesop (rule_sets := [-builtin,-default])
    (simp_config := { maxDischargeDepth := 0 })
    (config := { terminal := true, useDefaultSimpSet := false })

example {α β : Prop} (ha : α) (h : α → β) : β := by
  aesop (rule_sets := [-builtin,-default])

-- Ditto.

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : true && false = false := by
  aesop (rule_sets := [-default,-builtin])
    (simp_config := { decide := false })
    (config := { terminal := true, useDefaultSimpSet := false })

example : true && false = false := by
  aesop (rule_sets := [-default,-builtin]) (simp_config := { decide := true })

-- We can use the `useSimpAll` config option to switch between `simp_all` and
-- `simp at *`.

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example {α : Prop} (ha : α) : α := by
  aesop (rule_sets := [-builtin,-default])
    (config := { useSimpAll := false, terminal := true })

example {α : Prop} (ha : α) : α := by
  aesop (rule_sets := [-builtin,-default])

-- We can give priorities to `simp` rules, corresponding to the priorities of
-- `simp` lemmas.

opaque T : Prop

@[aesop simp 1]
axiom TF : T ↔ False

@[aesop simp 2]
axiom TT : T ↔ True

example : T := by aesop

attribute [-aesop] TF
attribute [aesop simp 3] TF

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : T := by
  aesop (config := { terminal := true })

example : T := by
  rw [TT]; trivial

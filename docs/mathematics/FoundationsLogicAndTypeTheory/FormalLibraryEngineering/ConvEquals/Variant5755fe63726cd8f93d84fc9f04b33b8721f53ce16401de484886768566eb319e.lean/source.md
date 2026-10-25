# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConvEquals.Variant5755fe63726cd8f93d84fc9f04b33b8721f53ce16401de484886768566eb319e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95ab441ce4a2f31c6563968d64622901a36fa772` · SHA-256 `14a85ae71a2a60f79e9c002bb1cd43f19c1b33b6e3c0572860fe1243e7d1dab6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantec994b26604f6628ea2142b7b1af47f58a6258d3c6a3cecf4288984234ef96a1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ec994b26604f6628ea2142b7b1af47f58a6258d3c6a3cecf4288984234ef96a1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Tactic.Variantec994b26604f6628ea2142b7b1af47f58a6258d3c6a3cecf4288984234ef96a1","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ec994b26604f6628ea2142b7b1af47f58a6258d3c6a3cecf4288984234ef96a1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/conv_equals.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Joachim Breitner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

import Batteries.Tactic.Basic

-- The example from the doc string, for quick comparision
-- and keeping the doc up-to-date
-- (only `guard_target` added)


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantec994b26604f6628ea2142b7b1af47f58a6258d3c6a3cecf4288984234ef96a1

/-- warning: declaration uses `sorry` -/
#guard_msgs in
example (P : (Nat → Nat) → Prop) : P (fun n => n - n) := by
  conv in (_ - _) => equals 0 =>
    -- current goal: ⊢ n - n = 0
    guard_target =ₛ n - n = 0
    apply Nat.sub_self
  guard_target =ₛ P (fun n => 0)
  -- current goal: P (fun n => 0)
  sorry

-- This tests that the goal created by equals must be closed

-- Using #guard_msgs below triggers this linter
set_option linter.unreachableTactic false

/--
error: unsolved goals
P : (Nat → Nat) → Prop
n : Nat
⊢ n - n = 0
---
error: No goals to be solved
-/
#guard_msgs in
example (P : (Nat → Nat) → Prop) : P (fun n => n - n) := by
  conv in (_ - _) =>
    equals 0 => skip -- this should complain
    -- and at this point, there should be no goal left
    tactic => sorry
  sorry

/-- warning: declaration uses `sorry` -/
#guard_msgs in
example (P : Nat → Prop) : P 12 := by
  conv =>
    enter [1]
    equals (12 : Fin 37) =>
      guard_target =ₛ (12 : Nat) = (12 : Fin 37)
      rfl
  guard_target =ₛ P (12 : Fin 37)
  sorry

/--
error: Type mismatch
  12
has type
  Nat
but is expected to have type
  Fin 37
---
error: unsolved goals
P : Fin 37 → Prop
⊢ 12 = sorry
-/
#guard_msgs in
example (P : Fin 37 → Prop) : P 12 := by
  conv =>
    enter [1]
    equals (12 : Nat) => skip
  sorry
```

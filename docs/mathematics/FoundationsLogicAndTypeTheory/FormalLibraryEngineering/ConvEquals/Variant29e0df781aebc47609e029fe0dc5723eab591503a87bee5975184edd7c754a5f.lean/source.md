# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConvEquals.Variant29e0df781aebc47609e029fe0dc5723eab591503a87bee5975184edd7c754a5f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e35e6fb66447eea3d287f146939d66489a288127` · SHA-256 `3a1ec5c16983b370899aa4c0abc8f8d1525b163f5723bf77278be7d4f08cbbb7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantd4c31da5ec91fb5565338b023e8580772afba843ad3ade33a80e99e35eb2b4c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d4c31da5ec91fb5565338b023e8580772afba843ad3ade33a80e99e35eb2b4c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Tactic.Variantd4c31da5ec91fb5565338b023e8580772afba843ad3ade33a80e99e35eb2b4c1","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d4c31da5ec91fb5565338b023e8580772afba843ad3ade33a80e99e35eb2b4c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/conv_equals.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Joachim Breitner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

import Std.Tactic.Basic
import Std.Tactic.GuardMsgs
import Std.Tactic.GuardExpr

-- The example from the doc string, for quick comparision
-- and keeping the doc up-to-date
-- (only `guard_target` added)


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantd4c31da5ec91fb5565338b023e8580772afba843ad3ade33a80e99e35eb2b4c1

/-- warning: declaration uses 'sorry' -/
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
error: no goals to be solved
-/
#guard_msgs in
example (P : (Nat → Nat) → Prop) : P (fun n => n - n) := by
  conv in (_ - _) =>
    equals 0 => skip -- this should complain
    -- and at this point, there should be no goal left
    tactic => sorry
  sorry
```

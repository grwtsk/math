# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleSets1.Variant693f8286c3baf7f14ab66fea91c208d895bc1aa84b632ca43a339a5a1c74bd0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca231d07b97e8876ba0601e3091265f14691aedf` · SHA-256 `bc3ae65393a7f8e7c96f2442685a92df462fed623ba163c07fe6fe18ce2a7971`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.A.Variantb1b1c92963121eb88499af12127486a21edd6fad4faba5e21279d6ce4c32f7c5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1b1c92963121eb88499af12127486a21edd6fad4faba5e21279d6ce4c32f7c5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.A.Variantb1b1c92963121eb88499af12127486a21edd6fad4faba5e21279d6ce4c32f7c5","mathematical_subject":"Foundations.Unclassified","original_sha256":"b1b1c92963121eb88499af12127486a21edd6fad4faba5e21279d6ce4c32f7c5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/RuleSets1.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022-2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import AesopTest.RuleSets0


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.A.Variantb1b1c92963121eb88499af12127486a21edd6fad4faba5e21279d6ce4c32f7c5

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

@[aesop safe (rule_sets := [test_A])]
inductive A : Prop where
| intro

@[aesop safe (rule_sets := [test_B])]
inductive B : Prop where
| intro

@[aesop safe]
inductive C : Prop where
| intro

inductive D : Prop where
| intro

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : A := by
  aesop (config := { terminal := true })

example : A := by
  aesop (rule_sets := [test_A])

example : B := by
  aesop (rule_sets := [test_A, test_B])

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : C := by
  aesop (rule_sets := [-default]) (config := { terminal := true })

example : C := by
  aesop

attribute [aesop safe (rule_sets := [test_C])] C

-- Removing the attribute removes all rules associated with C from all rule
-- sets.
attribute [-aesop] C

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : C := by
  aesop (rule_sets := [test_C]) (config := { terminal := true })

example : C := by
  aesop (add safe C)

@[aesop norm simp]
theorem ad : D ↔ A :=
  ⟨λ _ => A.intro, λ _ => D.intro⟩

example : D := by
  aesop (rule_sets := [test_A])

attribute [-aesop] ad

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : D := by
  aesop (rule_sets := [test_A]) (config := { terminal := true })

example : D := by
  aesop (add norm ad) (rule_sets := [test_A])

-- Rules can also be local.

inductive E : Prop where
  | intro

section

attribute [local aesop safe] E

example : E := by
  aesop

end

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : E := by
  aesop (config := { terminal := true })

example : E := by
  constructor

-- Rules can also be scoped.

namespace EScope

attribute [scoped aesop safe] E

example : E := by
  aesop

end EScope

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : E := by
  aesop (config := { terminal := true })

example : E := by
  open EScope in aesop
```

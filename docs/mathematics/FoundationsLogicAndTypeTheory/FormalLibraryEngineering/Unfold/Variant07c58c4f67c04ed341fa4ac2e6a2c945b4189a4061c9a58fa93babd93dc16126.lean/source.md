# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unfold.Variant07c58c4f67c04ed341fa4ac2e6a2c945b4189a4061c9a58fa93babd93dc16126

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23d6b9483dbada3a534cfbf239046941be443539` · SHA-256 `edd251bfcde7a295e3b72eec0570f5c6b525ad99ff30fe9231eb8c2c769c589e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WalkingPair.Variantc8f23c2ed40001b999f719e7ce9f84b78c8769b7e97d40558bc0abd363e3ddd4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c8f23c2ed40001b999f719e7ce9f84b78c8769b7e97d40558bc0abd363e3ddd4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.WalkingPair.Variantc8f23c2ed40001b999f719e7ce9f84b78c8769b7e97d40558bc0abd363e3ddd4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c8f23c2ed40001b999f719e7ce9f84b78c8769b7e97d40558bc0abd363e3ddd4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Unfold.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

-- Inspired by this Zulip discussion:
-- https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/Goal.20state.20not.20updating.2C.20bugs.2C.20etc.2E/near/338356062

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WalkingPair.Variantc8f23c2ed40001b999f719e7ce9f84b78c8769b7e97d40558bc0abd363e3ddd4

set_option aesop.check.all true

structure WalkingPair

def WidePullbackShape A B := Sum A B

abbrev WalkingCospan : Type := WidePullbackShape Empty Empty

@[aesop norm destruct]
def WalkingCospan_elim : WalkingCospan → Sum Empty Empty := id

/--
info: Try this:

  [apply]     unfold WalkingCospan at h
    unfold WidePullbackShape at h
    cases h with
    | inl val =>
      have fwd : False := Aesop.BuiltinRules.empty_false val
      simp_all only
    | inr val_1 =>
      have fwd : False := Aesop.BuiltinRules.empty_false val_1
      simp_all only
-/
#guard_msgs in
example (h : WalkingCospan) : α := by
  aesop? (add norm unfold [WidePullbackShape, WalkingCospan])

example (h : WalkingCospan) : α := by
  aesop (add norm simp [WidePullbackShape, WalkingCospan])

@[aesop norm unfold]
def Foo := True

@[aesop norm unfold]
def Bar := False

/--
info: Try this:

  [apply]     unfold Bar Foo
    unfold Foo at h₁
    unfold Foo Bar at h₂
    simp_all only
    cases h₂ with
    | inl val =>
      simp_all only
      apply PSum.inr
      simp_all only
    | inr val_1 => simp_all only
-/
#guard_msgs in
example (h₁ : Foo) (h₂ : PSum Foo Bar) : PSum Bar Foo := by
  aesop?
```

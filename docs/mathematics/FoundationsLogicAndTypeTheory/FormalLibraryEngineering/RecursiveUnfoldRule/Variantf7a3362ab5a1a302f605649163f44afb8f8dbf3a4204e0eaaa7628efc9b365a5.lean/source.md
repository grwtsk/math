# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecursiveUnfoldRule.Variantf7a3362ab5a1a302f605649163f44afb8f8dbf3a4204e0eaaa7628efc9b365a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e99dc7d8d0e837c6665e744a7b9972383b9b1678` · SHA-256 `8412c70063e2b1e94f737d0cae4811a86d152b3f9d6fe80d177f46e0a9bbb947`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.F.Variantf0fa3f3d1f57f980634218af1074c043732aabc8e11f0e6464a6eadf63c5bb3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f0fa3f3d1f57f980634218af1074c043732aabc8e11f0e6464a6eadf63c5bb3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.F.Variantf0fa3f3d1f57f980634218af1074c043732aabc8e11f0e6464a6eadf63c5bb3b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f0fa3f3d1f57f980634218af1074c043732aabc8e11f0e6464a6eadf63c5bb3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/RecursiveUnfoldRule.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.F.Variantf0fa3f3d1f57f980634218af1074c043732aabc8e11f0e6464a6eadf63c5bb3b

set_option aesop.check.all true

-- We forbid `unfold` rules for recursive functions since they would lead to
-- infinite unfolding.

@[aesop norm unfold]
def f₁ : Nat → Nat :=
  λ _ => 0

/--
error: Recursive definition 'f₂' cannot be used as an unfold rule (it would be unfolded infinitely often). Try adding a simp rule for it.
-/
#guard_msgs in
@[aesop norm unfold]
def f₂ : Nat → Nat
  | 0 => 0
  | n + 1 => f₂ n

/--
error: Recursive definition 'f₃' cannot be used as an unfold rule (it would be unfolded infinitely often). Try adding a simp rule for it.
-/
#guard_msgs in
@[aesop norm unfold]
def f₃ : Nat → Nat :=
  λ n =>
    match n with
    | 0 => 0
    | n + 1 => f₃ n


/--
error: Recursive definition 'f₄' cannot be used as an unfold rule (it would be unfolded infinitely often). Try adding a simp rule for it.
-/
#guard_msgs in
@[aesop norm unfold]
def f₄ : Nat → Nat
  | 0 => 0
  | n + 1 => f₄ n

-- A limitation of our approach to checking for recursive `unfold` rules:
-- mutually recursive rules are not detected. But that's probably fine in
-- practice.

mutual
  @[aesop norm unfold]
  def f₅ : Nat → Nat
    | 0 => 0
    | n + 1 => f₆ n

  @[aesop norm unfold]
  def f₆ : Nat → Nat
    | 0 => 0
    | n + 1 => f₅ n
end

-- We also forbid `unfold` rules for declarations that don't unfold.

/--
error: Declaration 'test' cannot be unfolded.
-/
#guard_msgs in
@[aesop norm unfold]
axiom test : Nat
```

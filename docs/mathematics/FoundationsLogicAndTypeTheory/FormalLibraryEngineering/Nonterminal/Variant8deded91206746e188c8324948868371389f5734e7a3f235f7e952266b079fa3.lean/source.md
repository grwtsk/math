# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nonterminal.Variant8deded91206746e188c8324948868371389f5734e7a3f235f7e952266b079fa3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3395c2cf7b3d0e7a87f5cdb26039afb14a6bca83` · SHA-256 `7a31478d79bb2739339589f9e57935b1a71ae3a7ffdd11dd33af57f03a58c2c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyTrue.Varianteab0e6fd14391bcec65de4abf2ef58dc96ec8d3c070037992050d0f5e51f7b81","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eab0e6fd14391bcec65de4abf2ef58dc96ec8d3c070037992050d0f5e51f7b81","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MyTrue.Varianteab0e6fd14391bcec65de4abf2ef58dc96ec8d3c070037992050d0f5e51f7b81","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"eab0e6fd14391bcec65de4abf2ef58dc96ec8d3c070037992050d0f5e51f7b81","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Nonterminal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyTrue.Varianteab0e6fd14391bcec65de4abf2ef58dc96ec8d3c070037992050d0f5e51f7b81

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

structure MyTrue₁
structure MyTrue₂

@[aesop safe]
structure MyTrue₃ where
  tt : MyTrue₁

/--
warning: aesop: failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : MyTrue₃ := by
  aesop
  apply MyTrue₁.mk

@[aesop safe]
structure MyFalse where
  falso : False

/--
warning: aesop: failed to prove the goal after exhaustive search.
---
error: unsolved goals
⊢ False
-/
#guard_msgs in
example : MyFalse := by
  aesop

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : MyFalse := by
  aesop (config := { terminal := true })

/--
error: unsolved goals
⊢ False
-/
#guard_msgs in
example : MyFalse := by
  aesop (config := { warnOnNonterminal := false })

@[aesop safe]
structure MyFalse₂ where
  falso : False
  tt : MyTrue₃

/--
warning: aesop: failed to prove the goal after exhaustive search.
---
error: unsolved goals
case falso
⊢ False

case tt
⊢ MyTrue₁
-/
#guard_msgs in
example : MyFalse₂ := by
  aesop

/--
error: unsolved goals
⊢ False
-/
#guard_msgs in
set_option aesop.warn.nonterminal false in
example : MyFalse := by
  aesop

/--
error: unsolved goals
⊢ False
-/
#guard_msgs in
set_option aesop.warn.nonterminal true in
example : MyFalse := by
  aesop (config := { warnOnNonterminal := false })
```

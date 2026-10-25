# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SafePrefixExpansionRappLimit.Varianta521744a327043ef0f56a70550217acdc806057bd7a5aee957a9bffd2f1e44b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71f3137cf46b18a38707dffc18a18b26d28b95b9` · SHA-256 `04080485743e6a59be62ed01cc996527cd312dabecae4b6383b7fc4bb3060721`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Loopy.Varianta8c0b8f6430bae8fb8649e69cc9b3c6de3b9e4ff9f5b30db56fe190c04fa1a00","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a8c0b8f6430bae8fb8649e69cc9b3c6de3b9e4ff9f5b30db56fe190c04fa1a00","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Loopy.Varianta8c0b8f6430bae8fb8649e69cc9b3c6de3b9e4ff9f5b30db56fe190c04fa1a00","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a8c0b8f6430bae8fb8649e69cc9b3c6de3b9e4ff9f5b30db56fe190c04fa1a00","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/SafePrefixExpansionRappLimit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Loopy.Varianta8c0b8f6430bae8fb8649e69cc9b3c6de3b9e4ff9f5b30db56fe190c04fa1a00

@[aesop safe]
axiom loopy {α : Prop} : α ∨ α → α

/--
warning: aesop: failed to prove the goal. Some goals were not explored because the maximum rule application depth (30) was reached. Set option 'maxRuleApplicationDepth' to increase the limit.
---
warning: aesop: safe prefix was not fully expanded because the maximum number of rule applications (50) was reached.
---
error: unsolved goals
⊢ False
-/
#guard_msgs in
example : False := by
  aesop

/--
error: Tactic `aesop` failed, failed to prove the goal. Some goals were not explored because the maximum rule application depth (30) was reached. Set option 'maxRuleApplicationDepth' to increase the limit.
Initial goal:
  ⊢ False
Remaining goals after safe rules:
  ⊢ False
The safe prefix was not fully expanded because the maximum number of rule applications (50) was reached.
-/
#guard_msgs in
example : False := by
  aesop (config := { terminal := true })
```

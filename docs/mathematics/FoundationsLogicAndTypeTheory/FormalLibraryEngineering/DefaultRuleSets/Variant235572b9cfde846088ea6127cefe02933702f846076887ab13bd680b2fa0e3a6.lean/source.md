# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DefaultRuleSets.Variant235572b9cfde846088ea6127cefe02933702f846076887ab13bd680b2fa0e3a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc8236158e406ce3417f0502f31ba5fa6ab4e8e8` · SHA-256 `42cb13d2520b4f75f1ed023eeec3b5eb68f2c95e087f0b77f5843e62cc1e7f4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variantb077a15a74046b7157f7a9c200b42b6cd0da8f92a10dca375443097d722183f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b077a15a74046b7157f7a9c200b42b6cd0da8f92a10dca375443097d722183f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.T.Variantb077a15a74046b7157f7a9c200b42b6cd0da8f92a10dca375443097d722183f0","mathematical_subject":"Foundations.Unclassified","original_sha256":"b077a15a74046b7157f7a9c200b42b6cd0da8f92a10dca375443097d722183f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/DefaultRuleSets.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import AesopTest.DefaultRuleSetsInit


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variantb077a15a74046b7157f7a9c200b42b6cd0da8f92a10dca375443097d722183f0

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

@[aesop norm unfold (rule_sets := [regular₁])]
def T := True

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : T := by
  aesop (config := { terminal := true })

example : T := by
  aesop (rule_sets := [regular₁])

@[aesop norm unfold (rule_sets := [regular₂, dflt₁])]
def U := True

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : U := by
  aesop (rule_sets := [-dflt₁]) (config := { terminal := true })

example : U := by
  aesop
```

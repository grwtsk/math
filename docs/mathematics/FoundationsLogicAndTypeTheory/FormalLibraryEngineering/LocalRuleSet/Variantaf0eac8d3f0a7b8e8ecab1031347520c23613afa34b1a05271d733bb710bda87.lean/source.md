# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LocalRuleSet.Variantaf0eac8d3f0a7b8e8ecab1031347520c23613afa34b1a05271d733bb710bda87

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e71397e76a386c16f4ddae316cb8f317638b1f2a` · SHA-256 `8d33c38b01418f389ae277bf879c96bfa429e533311620201f6dcb8b11d9bad3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant7e17b95d49ee7d56119c50434e1592cc640e94daec37ffbe5f454200ed7ca4a7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7e17b95d49ee7d56119c50434e1592cc640e94daec37ffbe5f454200ed7ca4a7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant7e17b95d49ee7d56119c50434e1592cc640e94daec37ffbe5f454200ed7ca4a7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7e17b95d49ee7d56119c50434e1592cc640e94daec37ffbe5f454200ed7ca4a7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/LocalRuleSet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant7e17b95d49ee7d56119c50434e1592cc640e94daec37ffbe5f454200ed7ca4a7

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

-- We used to add local rules to the `default` rule set, but this doesn't work
-- well when the default rule set is disabled.

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : Unit := by
  aesop (rule_sets := [-default, -builtin]) (config := { terminal := true })

example : Unit := by
  aesop (add safe PUnit.unit) (rule_sets := [-default, -builtin])
```

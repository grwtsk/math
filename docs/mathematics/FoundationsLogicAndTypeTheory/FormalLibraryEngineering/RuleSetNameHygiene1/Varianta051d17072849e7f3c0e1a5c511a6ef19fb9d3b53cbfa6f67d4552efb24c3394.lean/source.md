# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleSetNameHygiene1.Varianta051d17072849e7f3c0e1a5c511a6ef19fb9d3b53cbfa6f67d4552efb24c3394

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cda33bbe1ded172261b8b39d39ad079340d2fe1b` · SHA-256 `0a567cc090a59072c8f233892984d41646fb2f97d5f75c5065d30d2cd8b59784`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TT.Variantc9b2dc92c9fdf9ed256eaa7327a4428314388921caac5ef21635f786a5b54a06","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9b2dc92c9fdf9ed256eaa7327a4428314388921caac5ef21635f786a5b54a06","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TT.Variantc9b2dc92c9fdf9ed256eaa7327a4428314388921caac5ef21635f786a5b54a06","mathematical_subject":"Foundations.Unclassified","original_sha256":"c9b2dc92c9fdf9ed256eaa7327a4428314388921caac5ef21635f786a5b54a06","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/RuleSetNameHygiene1.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import AesopTest.RuleSetNameHygiene0


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TT.Variantc9b2dc92c9fdf9ed256eaa7327a4428314388921caac5ef21635f786a5b54a06

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

macro "aesop_test" : tactic => `(tactic| aesop (rule_sets := [test]))

@[aesop safe (rule_sets := [test])]
structure TT where

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : TT := by
  aesop (config := { terminal := true })

example : TT := by
  aesop_test
```

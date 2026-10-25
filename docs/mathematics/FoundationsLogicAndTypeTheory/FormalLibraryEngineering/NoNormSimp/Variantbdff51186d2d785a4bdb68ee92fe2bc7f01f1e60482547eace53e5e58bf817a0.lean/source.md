# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoNormSimp.Variantbdff51186d2d785a4bdb68ee92fe2bc7f01f1e60482547eace53e5e58bf817a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ede49b4607da7b9ff967d8709113fde007f3752` · SHA-256 `73a2519d44c5f573067c21daa4af893a8188255504c7d010fe967f8e1d09360e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant22a925f9d44adde7dab2cd399c68219b5f1393d516efa1292be988e506106f10","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"22a925f9d44adde7dab2cd399c68219b5f1393d516efa1292be988e506106f10","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant22a925f9d44adde7dab2cd399c68219b5f1393d516efa1292be988e506106f10","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"22a925f9d44adde7dab2cd399c68219b5f1393d516efa1292be988e506106f10","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/NoNormSimp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant22a925f9d44adde7dab2cd399c68219b5f1393d516efa1292be988e506106f10

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : 1 = 2 → False := by
  aesop (config := { enableSimp := false, terminal := true })

example : 1 = 2 → False := by
  aesop
```

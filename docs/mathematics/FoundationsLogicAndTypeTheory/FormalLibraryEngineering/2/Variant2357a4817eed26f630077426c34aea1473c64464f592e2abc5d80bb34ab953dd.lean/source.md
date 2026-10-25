# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.2.Variant2357a4817eed26f630077426c34aea1473c64464f592e2abc5d80bb34ab953dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a1acb910afd6146e067d607526799a1c6f6c949` · SHA-256 `6e71483ec786fc9d19f60980c1ace73a89f7e3a18c7b25ac4f1aefff10caf809`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Even.Variant0d78bb8a85662c23232b554c50d5f42aca787af13b85e07b17ded203ea311050","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d78bb8a85662c23232b554c50d5f42aca787af13b85e07b17ded203ea311050","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Even.Variant0d78bb8a85662c23232b554c50d5f42aca787af13b85e07b17ded203ea311050","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0d78bb8a85662c23232b554c50d5f42aca787af13b85e07b17ded203ea311050","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

-- This option would make Aesop time out.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Even.Variant0d78bb8a85662c23232b554c50d5f42aca787af13b85e07b17ded203ea311050

set_option aesop.check.all false

inductive Even : Nat → Prop
| zero : Even Nat.zero
| plus_two {n} : Even n → Even (n + 2)

attribute [aesop safe] Even.zero Even.plus_two

example : Even 500 := by
  aesop (config := { maxRuleApplications := 0, maxRuleApplicationDepth := 0 })
```

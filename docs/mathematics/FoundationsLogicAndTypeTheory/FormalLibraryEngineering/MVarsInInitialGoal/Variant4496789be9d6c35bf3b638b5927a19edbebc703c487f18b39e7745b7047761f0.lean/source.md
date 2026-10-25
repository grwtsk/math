# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MVarsInInitialGoal.Variant4496789be9d6c35bf3b638b5927a19edbebc703c487f18b39e7745b7047761f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26396351216e0431be465026483ca4c1cafae727` · SHA-256 `9d4f4e4708ae30e527ca7deea55a248f03ad2ce92965875675f64f0b5d91da34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant08b4ef020e27bebf732fe030213650bdc9e98d678f5fee01cb4ed0183e8708c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"08b4ef020e27bebf732fe030213650bdc9e98d678f5fee01cb4ed0183e8708c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant08b4ef020e27bebf732fe030213650bdc9e98d678f5fee01cb4ed0183e8708c9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"08b4ef020e27bebf732fe030213650bdc9e98d678f5fee01cb4ed0183e8708c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/MVarsInInitialGoal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant08b4ef020e27bebf732fe030213650bdc9e98d678f5fee01cb4ed0183e8708c9

set_option aesop.check.all true

example {n m k : Nat} (h : n < m) (h₂ : m < k) : n < k := by
  apply Nat.lt_trans <;> aesop
```

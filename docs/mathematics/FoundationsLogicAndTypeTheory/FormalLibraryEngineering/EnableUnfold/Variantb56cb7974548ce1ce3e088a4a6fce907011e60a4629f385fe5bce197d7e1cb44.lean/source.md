# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EnableUnfold.Variantb56cb7974548ce1ce3e088a4a6fce907011e60a4629f385fe5bce197d7e1cb44

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d65da8284e98cb72c31a3a089858b0bbeb966e8` · SHA-256 `158ec237c49e8af59cfa2bdbd3d066c91828591bb858ea4d3aa8a16315189003`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variant710c443b7b421ecb5c4cdcc1e47e55f37b81d0f4090632f1c966cd1d9913ea4a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"710c443b7b421ecb5c4cdcc1e47e55f37b81d0f4090632f1c966cd1d9913ea4a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.T.Variant710c443b7b421ecb5c4cdcc1e47e55f37b81d0f4090632f1c966cd1d9913ea4a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"710c443b7b421ecb5c4cdcc1e47e55f37b81d0f4090632f1c966cd1d9913ea4a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/EnableUnfold.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variant710c443b7b421ecb5c4cdcc1e47e55f37b81d0f4090632f1c966cd1d9913ea4a

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

@[aesop norm unfold]
def T := True

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : T := by
  aesop (config := { enableUnfold := false, terminal := true })

example : T := by
  aesop
```

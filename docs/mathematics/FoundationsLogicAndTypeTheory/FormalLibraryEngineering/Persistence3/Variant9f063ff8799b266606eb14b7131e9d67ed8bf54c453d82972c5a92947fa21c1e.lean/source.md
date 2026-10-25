# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Persistence3.Variant9f063ff8799b266606eb14b7131e9d67ed8bf54c453d82972c5a92947fa21c1e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f4881458036cabe78cbecd3dd5e8eb39a3e424b` · SHA-256 `727bcec1c2bb943d7f3ea1591a56b03bfdd8933e4f52a121a0a6e0ba94332aba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Test.Variant967855bbe5d05ccb2cd84248fef1298bf8f5f080031a46521f17c09039fc1c85","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"967855bbe5d05ccb2cd84248fef1298bf8f5f080031a46521f17c09039fc1c85","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Test.Variant967855bbe5d05ccb2cd84248fef1298bf8f5f080031a46521f17c09039fc1c85","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"967855bbe5d05ccb2cd84248fef1298bf8f5f080031a46521f17c09039fc1c85","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Persistence3.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import AesopTest.Persistence1
import AesopTest.Persistence2


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Test.Variant967855bbe5d05ccb2cd84248fef1298bf8f5f080031a46521f17c09039fc1c85

set_option aesop.check.all true

namespace Aesop

@[aesop 50% (rule_sets := [test_persistence2])]
def test (b : Bool) : NatOrBool := by
  aesop (rule_sets := [test_persistence1])

end Aesop
```

# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Persistence1.Variant6374edc0e40b2dee28be6476feb03e9f2aa9e38b4b0aa240ccd8ad84ab58e4d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a511b3f16cd151742cf68e62b7b0f516d8dfc2b` · SHA-256 `4860ec6ed809fa8bb63f7618b0d8c8421f1e444f7eda19c3737f5150644a11ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatOrBool.Variantd053ad83b3acd53fc3387a0656cc71196fab31ed15a41d55f2eb53592499efcb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d053ad83b3acd53fc3387a0656cc71196fab31ed15a41d55f2eb53592499efcb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NatOrBool.Variantd053ad83b3acd53fc3387a0656cc71196fab31ed15a41d55f2eb53592499efcb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d053ad83b3acd53fc3387a0656cc71196fab31ed15a41d55f2eb53592499efcb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Persistence1.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import AesopTest.Persistence0


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatOrBool.Variantd053ad83b3acd53fc3387a0656cc71196fab31ed15a41d55f2eb53592499efcb

set_option aesop.check.all true

namespace Aesop

@[aesop 50% constructors (rule_sets := [test_persistence1])]
inductive NatOrBool where
  | ofNat (n : Nat)
  | ofBool (b : Bool)

example (b : Bool) : NatOrBool := by
  aesop (rule_sets := [test_persistence1])

end Aesop
```

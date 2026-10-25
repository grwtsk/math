# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArbitraryFueled.Variant15bc0ea4982ff4451e1280b9b15f009fa739fef88344a8931e213deab7704244

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3650fe67dafbc5eede708c8580be0ca770e7bb9e` · SHA-256 `4f052e881c6da6869519ced584992e74a34d4177135b581a8960dc277040acee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArbitraryFueled.Variant0cdd927b6cfd31c4a6d37c56d49ea4d168cc4c47a1365af08afcf8bd409b3a41","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0cdd927b6cfd31c4a6d37c56d49ea4d168cc4c47a1365af08afcf8bd409b3a41","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ArbitraryFueled.Variant0cdd927b6cfd31c4a6d37c56d49ea4d168cc4c47a1365af08afcf8bd409b3a41","mathematical_subject":"Foundations.Unclassified","original_sha256":"0cdd927b6cfd31c4a6d37c56d49ea4d168cc4c47a1365af08afcf8bd409b3a41","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/plausible/Plausible/ArbitraryFueled.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 AWS. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: AWS
-/
module

public import Plausible.Arbitrary


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArbitraryFueled.Variant0cdd927b6cfd31c4a6d37c56d49ea4d168cc4c47a1365af08afcf8bd409b3a41

public section

namespace Plausible

open Gen

/-- A typeclass for *fueled* random generation, i.e. a variant of
    the `Arbitrary` typeclass where the fuel for the generator is made explicit.
    - This typeclass is equivalent to Rocq QuickChick's `arbitrarySized` typeclass
      (QuickChick uses the `Nat` parameter as both fuel and the generator size,
       here we use it just for fuel, as Plausible's `Gen` type constructor
       already internalizes the size parameter.) -/
class ArbitraryFueled (α : Type) where
  /-- Takes a `Nat` and produces a random generator dependent on the `Nat` parameter
      (which indicates the amount of fuel to be used before failing). -/
  arbitraryFueled : Nat → Gen α

/-- Every `ArbitraryFueled` instance gives rise to an `Arbitrary` instance -/
instance [ArbitraryFueled α] : Arbitrary α where
  arbitrary := Gen.sized ArbitraryFueled.arbitraryFueled

end Plausible
```

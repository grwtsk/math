# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecidableEquiv.Variant20d5775659b0855146bfc03402b080653b2a199cb7947381a0cd77c838d7d2a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8bede1d1821ea373d1e85e4b6b9eab38983deaef` · SHA-256 `8ea5ba73a66d18bcd24809d40e7b784c6eb5dd3a790e467ddc3c3589e30dd5f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RawLemmas.Variant1d605b94d0bdc8489910698c501002a2859f07604597f2b9ef8af87a06d44318","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d605b94d0bdc8489910698c501002a2859f07604597f2b9ef8af87a06d44318","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.RawLemmas.Variant1d605b94d0bdc8489910698c501002a2859f07604597f2b9ef8af87a06d44318","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1d605b94d0bdc8489910698c501002a2859f07604597f2b9ef8af87a06d44318","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/DHashMap/DecidableEquiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.DHashMap.Internal.RawLemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RawLemmas.Variant1d605b94d0bdc8489910698c501002a2859f07604597f2b9ef8af87a06d44318

public section

/-!
# Decidable equivalence for `DHashMap`
-/

open Std.DHashMap.Internal

namespace Std.DHashMap

instance {α : Type u} {β : α → Type v} [BEq α] [LawfulBEq α] [Hashable α] [∀ k, BEq (β k)] [∀ k, LawfulBEq (β k)] (m₁ m₂ : DHashMap α β) : Decidable (m₁ ~m m₂) :=
  let : Decidable (m₁.1.Equiv m₂.1) := Raw₀.decidableEquiv ⟨m₁.1, m₁.2.size_buckets_pos⟩ ⟨m₂.1, m₂.2.size_buckets_pos⟩ m₁.2 m₂.2;
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.DHashMap
```

# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DecidableEquiv.Variant05d437cb1ff5c097903d204abc7c9a5d9a4b9ad991a8f4c242ffce0f7cfbf921

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d52a9c7ae3969190a895dad33c1dc65e38d7a9b9` · SHA-256 `5e3a3bf5f45190702522f71499bbbcb73d22c792030b2629e7ab7028250a6100`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DecidableEquiv.Variant6428169429b1dde6f73ce85e302f41f86221d96c46c12876dd129c3f52e1a772","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6428169429b1dde6f73ce85e302f41f86221d96c46c12876dd129c3f52e1a772","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DecidableEquiv.Variant6428169429b1dde6f73ce85e302f41f86221d96c46c12876dd129c3f52e1a772","mathematical_subject":"Computation.DataStructures","original_sha256":"6428169429b1dde6f73ce85e302f41f86221d96c46c12876dd129c3f52e1a772","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/HashSet/DecidableEquiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.HashMap.DecidableEquiv
public import Std.Data.HashSet.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DecidableEquiv.Variant6428169429b1dde6f73ce85e302f41f86221d96c46c12876dd129c3f52e1a772

public section

/-!
# Decidable equivalence for `HashSet`
-/

namespace Std.HashSet

instance {α : Type u} [BEq α] [LawfulBEq α] [Hashable α] (m₁ m₂ : HashSet α) : Decidable (m₁ ~m m₂) :=
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.HashSet
```

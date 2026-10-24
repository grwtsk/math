# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hashable.Variant932041f8b857539a0cee42cc3b52cc075a4c2d9639345d851b42a1fe85bdfde6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f11ad301aa0e48ccdc99170bf44c5aba0b80772` · SHA-256 `f62d2c144334123d305e2e4194a0dc39ca33b0572a39e80d1231b5e247f2954a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hashable.Variant7e50bfa6ebbe2b14f27206c42498d39635a58f205f6e292f0bee648ff7418ff4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7e50bfa6ebbe2b14f27206c42498d39635a58f205f6e292f0bee648ff7418ff4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Hashable.Variant7e50bfa6ebbe2b14f27206c42498d39635a58f205f6e292f0bee648ff7418ff4","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"7e50bfa6ebbe2b14f27206c42498d39635a58f205f6e292f0bee648ff7418ff4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/String/Hashable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Markus Himmel
-/
module

prelude
public import Init.Data.Hashable
public import Init.Data.String.Defs


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hashable.Variant7e50bfa6ebbe2b14f27206c42498d39635a58f205f6e292f0bee648ff7418ff4

public section

namespace String

deriving instance Hashable for String.Pos.Raw
deriving instance Hashable for String.Pos
deriving instance Hashable for String.Slice.Pos

end String
```

# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variantcf1f458fb4f552d57fcd22ecdadfc8115b8e80ceb5b4988827f42c514a3b2bd1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8bd4a394ea70f28c99a66a85ad31e497f49a8b86` · SHA-256 `34022f6ec0eaddbbb64503c8e4c367303d406a4710230eb491aa6207342f9b58`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IterToStringList.Variant12fccaf9e2db9037fe7c01c7afd418302b8c3f249c89aade11bcd9278d6abfbd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"12fccaf9e2db9037fe7c01c7afd418302b8c3f249c89aade11bcd9278d6abfbd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterToStringList.Variant12fccaf9e2db9037fe7c01c7afd418302b8c3f249c89aade11bcd9278d6abfbd","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"12fccaf9e2db9037fe7c01c7afd418302b8c3f249c89aade11bcd9278d6abfbd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/String/Iter/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.Iterators.Combinators.FilterMap
public import Init.Data.Iterators.Consumers.Collect


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IterToStringList.Variant12fccaf9e2db9037fe7c01c7afd418302b8c3f249c89aade11bcd9278d6abfbd

set_option doc.verso true

namespace Std

/--
Convenience function for turning an iterator into a list of strings, provided the output of the
iterator implements {name}`ToString`.
-/
@[inline]
public abbrev Iter.toStringList {α β : Type} [Iterator α Id β] [ToString β]
    (it : Iter (α := α) β) : List String :=
  it.map toString |>.toList

/--
Convenience function for turning an iterator into an array of strings, provided the output of the
iterator implements {name}`ToString`.
-/
@[inline]
public abbrev Iter.toStringArray {α β : Type} [Iterator α Id β] [ToString β]
    (it : Iter (α := α) β) : Array String :=
  it.map toString |>.toArray

end Std
```

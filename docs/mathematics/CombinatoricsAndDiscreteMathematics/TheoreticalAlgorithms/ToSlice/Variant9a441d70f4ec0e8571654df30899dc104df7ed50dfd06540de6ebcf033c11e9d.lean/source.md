# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToSlice.Variant9a441d70f4ec0e8571654df30899dc104df7ed50dfd06540de6ebcf033c11e9d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62c69751a5dafa9e803a58cc914a73746ddbca47` · SHA-256 `56b3000c18ea37725c812b588355a3e88cb2210cd0fbcec524105e576fea9987`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToSlice.Variant8f8a3a7a815619ca472f81e31517b27e7ea8d0ddb66efaecbd82f3ac1657132e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8f8a3a7a815619ca472f81e31517b27e7ea8d0ddb66efaecbd82f3ac1657132e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ToSlice.Variant8f8a3a7a815619ca472f81e31517b27e7ea8d0ddb66efaecbd82f3ac1657132e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"8f8a3a7a815619ca472f81e31517b27e7ea8d0ddb66efaecbd82f3ac1657132e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/String/ToSlice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.String.Defs

/-!
# The `ToSlice` typeclass
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToSlice.Variant8f8a3a7a815619ca472f81e31517b27e7ea8d0ddb66efaecbd82f3ac1657132e

public section

namespace String

/--
Typeclass for types that have a conversion function to `String.Slice`. This typeclass is used to
make some `String`/`String.Slice` functions polymorphic. As such, for now it is not intended that
there instances of this beyond `ToSlice String` and `ToSlice String.Slice`.

To convert arbitrary data into a string representation, see `ToString` and `Repr`.
-/
class ToSlice (α : Type u) where
  toSlice : α → String.Slice

@[inline]
instance : ToSlice String.Slice where
  toSlice := id

@[inline]
instance : ToSlice String where
  toSlice := toSlice

end String
```

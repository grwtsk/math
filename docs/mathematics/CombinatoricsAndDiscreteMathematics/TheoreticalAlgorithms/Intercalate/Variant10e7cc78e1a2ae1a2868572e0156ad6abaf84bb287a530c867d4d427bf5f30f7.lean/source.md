# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Intercalate.Variant10e7cc78e1a2ae1a2868572e0156ad6abaf84bb287a530c867d4d427bf5f30f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57619f2ed656f914774433530a3c3e7283fda5fa` · SHA-256 `5d78615faca94f0dd9862fd9c9f4ec6b8f4a4c5a7bb8a2921b0a3662100081ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IterJoinString.Variante50a720ca2f7f89d9f7cb3124c38aec85790805a1305e0ae115e8abda935c5d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e50a720ca2f7f89d9f7cb3124c38aec85790805a1305e0ae115e8abda935c5d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterJoinString.Variante50a720ca2f7f89d9f7cb3124c38aec85790805a1305e0ae115e8abda935c5d3","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"e50a720ca2f7f89d9f7cb3124c38aec85790805a1305e0ae115e8abda935c5d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/String/Iter/Intercalate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia Markus Himmel
-/
module

prelude
public import Init.Data.Iterators.Combinators.Monadic.FilterMap
public import Init.Data.String.Basic
import Init.Data.String.Slice


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IterJoinString.Variante50a720ca2f7f89d9f7cb3124c38aec85790805a1305e0ae115e8abda935c5d3

set_option doc.verso true

namespace Std

/--
Appends all the elements in the iterator, in order.
-/
@[inline]
public def Iter.joinString {α β : Type} [Iterator α Id β] [ToString β]
    (it : Std.Iter (α := α) β) : String :=
  (it.map toString).fold (init := "") (· ++ ·)

/--
Appends the elements of the iterator into a string, placing the separator {name}`s` between them.
-/
@[inline]
public def Iter.intercalateString {α β : Type} [Iterator α Id β] [ToString β]
    (s : String.Slice) (it : Std.Iter (α := α) β) : String :=
  it.map toString
    |>.fold (init := none) (fun
      | none, sl => some sl
      | some str, sl => some (str ++ s ++ sl))
    |>.getD ""

end Std
```

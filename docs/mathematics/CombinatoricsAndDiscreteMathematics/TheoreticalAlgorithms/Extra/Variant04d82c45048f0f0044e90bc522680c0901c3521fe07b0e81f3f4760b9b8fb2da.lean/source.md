# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Extra.Variant04d82c45048f0f0044e90bc522680c0901c3521fe07b0e81f3f4760b9b8fb2da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9cb4482bc8e3574151ea933672cce4d78b0f420` · SHA-256 `e24ecd71f479147ff2329e09faae896c95302e1a1ecca86badb0d87110658768`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListToString.Variant70f458aca2de950fa066c5ed2a2e9569ffb94236577d3b9617f0c2a53bb9c364","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"70f458aca2de950fa066c5ed2a2e9569ffb94236577d3b9617f0c2a53bb9c364","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ListToString.Variant70f458aca2de950fa066c5ed2a2e9569ffb94236577d3b9617f0c2a53bb9c364","mathematical_subject":"Computation.DataStructures","original_sha256":"70f458aca2de950fa066c5ed2a2e9569ffb94236577d3b9617f0c2a53bb9c364","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/ToString/Extra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
public import Init.Data.String.Defs
public import Init.Data.Int.Repr


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListToString.Variant70f458aca2de950fa066c5ed2a2e9569ffb94236577d3b9617f0c2a53bb9c364

public section

/--
Converts a list into a string, using `ToString.toString` to convert its elements.

The resulting string resembles list literal syntax, with the elements separated by `", "` and
enclosed in square brackets.

The resulting string may not be valid Lean syntax, because there's no such expectation for
`ToString` instances.

Examples:
* `[1, 2, 3].toString = "[1, 2, 3]"`
* `["cat", "dog"].toString = "[cat, dog]"`
* `["cat", "dog", ""].toString = "[cat, dog, ]"`
-/
protected def List.toString [ToString α] : List α → String
  | [] => "[]"
  | [x] => "[" ++ toString x ++ "]"
  | x::xs => String.push (xs.foldl (fun l r => l ++ ", " ++ toString r) ("[" ++ (toString x))) ']'

instance {α : Type u} [ToString α] : ToString (List α) :=
  ⟨List.toString⟩

instance [ToString α] : ToString (Array α) where
  toString xs := "#" ++ (toString xs.toList)

instance : ToString ByteArray := ⟨fun bs => bs.toList.toString⟩

instance : ToString Int where
  toString := Int.repr
```

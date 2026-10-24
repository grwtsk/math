# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Bootstrap.Variant251e5d5a4e40c4408dfda39d71675a8768d9a37abc39424e3e90c19772505bd5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `adebae93f8ae28b95f985467acae5441a349981f` · SHA-256 `020a31438d6ba0d9062421df81439c52f22b72cb27b325f93b481ca0798b29a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DataPush.Variantdbc7950787715eab81b3c7c35c1d62f267a3496bc860ddc082594265ca8eecf0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dbc7950787715eab81b3c7c35c1d62f267a3496bc860ddc082594265ca8eecf0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DataPush.Variantdbc7950787715eab81b3c7c35c1d62f267a3496bc860ddc082594265ca8eecf0","mathematical_subject":"Computation.DataStructures","original_sha256":"dbc7950787715eab81b3c7c35c1d62f267a3496bc860ddc082594265ca8eecf0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/ByteArray/Bootstrap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Markus Himmel
-/
module

prelude
public import Init.Data.List.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DataPush.Variantdbc7950787715eab81b3c7c35c1d62f267a3496bc860ddc082594265ca8eecf0

public section
set_option doc.verso true

namespace ByteArray

@[simp]
theorem data_push {a : ByteArray} {b : UInt8} : (a.push b).data = a.data.push b := rfl

/--
Appends two byte arrays.

In compiled code, calls to {name}`ByteArray.append` are replaced with the much more efficient
{name (scope:="Init.Data.ByteArray.Basic")}`ByteArray.fastAppend`.
-/
@[expose, implicit_reducible]
protected def append (a b : ByteArray) : ByteArray :=
  ⟨⟨a.data.toList ++ b.data.toList⟩⟩

@[simp]
theorem toList_data_append' {a b : ByteArray} :
    (a.append b).data.toList = a.data.toList ++ b.data.toList := by
  have ⟨⟨a⟩⟩ := a
  have ⟨⟨b⟩⟩ := b
  rfl

theorem ext : {x y : ByteArray} → x.data = y.data → x = y
  | ⟨_⟩, ⟨_⟩, rfl => rfl

end ByteArray

@[simp]
theorem List.toList_data_toByteArray {l : List UInt8} :
    l.toByteArray.data.toList = l := by
  rw [List.toByteArray]
  suffices ∀ a b, (List.toByteArray.loop a b).data.toList = b.data.toList ++ a by
    simpa using! this l ByteArray.empty
  intro a b
  fun_induction List.toByteArray.loop a b with simp_all [toList_push]
where
  toList_push {xs : Array UInt8} {x : UInt8} : (xs.push x).toList = xs.toList ++ [x] := by
    have ⟨xs⟩ := xs
    simp [Array.push, List.concat_eq_append]

theorem List.toByteArray_append' {l l' : List UInt8} :
    (l ++ l').toByteArray = l.toByteArray.append l'.toByteArray :=
  ByteArray.ext (ext (by simp))
where
  ext : {x y : Array UInt8} → x.toList = y.toList → x = y
  | ⟨_⟩, ⟨_⟩, rfl => rfl
```

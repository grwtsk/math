# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant41f5586ccc9968f02a4a1798d84618ec79f4e40ff280877f77cbdd6bfaf49fce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19fad91e8df73871462b0b062d76ff00bb7ef05f` · SHA-256 `6ffd5a6860d6f2d127285e22bea75a56e9f51b17035dd67f94484b42f7a45559`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Count.Variant898295b7b10efa2cae27cb2a7a1215a9df1f4990d5cd3ea1a82954fdd175437e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"898295b7b10efa2cae27cb2a7a1215a9df1f4990d5cd3ea1a82954fdd175437e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Count.Variant898295b7b10efa2cae27cb2a7a1215a9df1f4990d5cd3ea1a82954fdd175437e","mathematical_subject":"Computation.DataStructures","original_sha256":"898295b7b10efa2cae27cb2a7a1215a9df1f4990d5cd3ea1a82954fdd175437e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/String/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg, James Gallicchio, F. G. Dorais
-/
module


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Count.Variant898295b7b10efa2cae27cb2a7a1215a9df1f4990d5cd3ea1a82954fdd175437e

@[expose] public section

instance : Coe String Substring.Raw := ⟨String.toRawSubstring⟩

namespace String

/-- Count the occurrences of a character in a string. -/
def count (s : String) (c : Char) : Nat :=
  s.foldl (fun n d => if d = c then n + 1 else n) 0

/--
Convert a string of assumed-ASCII characters into a byte array.
(If any characters are non-ASCII they will be reduced modulo 256.)

Note: if you just need the underlying `ByteArray` of a non-ASCII string,
use `String.toUTF8`.
-/
def toAsciiByteArray (s : String) : ByteArray :=
  let rec
  /--
  Internal implementation of `toAsciiByteArray`.
  `loop p out = out ++ toAsciiByteArray ({ s with startPos := p } : Substring)`
  -/
  loop (p : Pos.Raw) (out : ByteArray) : ByteArray :=
    if h : p.atEnd s then out else
    let c := p.get s
    have : utf8ByteSize s - (Pos.Raw.next s p).byteIdx < utf8ByteSize s - p.byteIdx :=
      Nat.sub_lt_sub_left (Nat.lt_of_not_le <| mt decide_eq_true h)
        (Nat.lt_add_of_pos_right (Char.utf8Size_pos _))
    loop (p.next s) (out.push c.toUInt8)
    termination_by utf8ByteSize s - p.byteIdx
  loop 0 ByteArray.empty
```

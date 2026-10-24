# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FindPos.Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2872c97293a7f4fa30ce753ead9fdbb95e6ff63a` · SHA-256 `35fccf70c7f59b922a4a4b781fd2da17278a343d0609cce3a5308ff43e79f61f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SlicePosGE.Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SlicePosGE.Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/String/FindPos.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.String.Basic
import Init.Omega
import Init.Data.String.OrderInstances
import Init.Data.String.Lemmas.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SlicePosGE.Variant167bca5327ddc22b94140cda1d755947941291f161c0d33500ea8a9a97a5e393

set_option doc.verso true

/-!
# Finding positions in a string relative to a given raw position
-/

public section

namespace String

/--
Obtains the smallest valid position that is greater than or equal to the given byte position.
-/
def Slice.posGE (s : Slice) (offset : String.Pos.Raw) (h : offset ≤ s.rawEndPos) : s.Pos :=
  if h' : offset.IsValidForSlice s then
    s.pos offset h'
  else
    have : offset < s.rawEndPos := Std.not_le.1 (fun h₁ => h' (Std.le_antisymm h h₁ ▸ Pos.Raw.isValidForSlice_rawEndPos))
    s.posGE offset.inc (by simpa)
termination_by s.utf8ByteSize - offset.byteIdx
decreasing_by
  simp only [Pos.Raw.lt_iff, byteIdx_rawEndPos, Pos.Raw.byteIdx_inc] at this ⊢
  omega

/--
Obtains the smallest valid position that is strictly greater than the given byte position.
-/
@[inline]
def Slice.posGT (s : Slice) (offset : String.Pos.Raw)  (h : offset < s.rawEndPos) : s.Pos :=
  s.posGE offset.inc (by simpa)

@[deprecated Slice.posGT (since := "2026-02-03")]
def Slice.findNextPos (offset : String.Pos.Raw) (s : Slice) (h : offset < s.rawEndPos) : s.Pos :=
  s.posGT offset h

/--
Obtains the smallest valid position that is greater than or equal to the given byte position.
-/
@[inline]
def posGE (s : String) (offset : String.Pos.Raw) (h : offset ≤ s.rawEndPos) : s.Pos :=
  Pos.ofToSlice (s.toSlice.posGE offset (by simpa))

/--
Obtains the smallest valid position that is strictly greater than the given byte position.
-/
@[inline]
def posGT (s : String) (offset : String.Pos.Raw) (h : offset < s.rawEndPos) : s.Pos :=
  Pos.ofToSlice (s.toSlice.posGT offset (by simpa))

/--
Obtains the largest valid position that is less than or equal to the given byte position.
-/
@[expose]
def Slice.posLE (s : Slice) (offset : String.Pos.Raw) : s.Pos :=
  if h' : offset.IsValidForSlice s then
    s.pos offset h'
  else
    have : offset ≠ 0 := by rintro rfl; simp at h'
    s.posLE offset.dec
termination_by offset.byteIdx
decreasing_by simp only [ne_eq, Pos.Raw.eq_zero_iff, Pos.Raw.byteIdx_dec] at ⊢ this; omega

/--
Obtains the largest valid position that is strictly less than the given byte position.
-/
@[inline, expose]
def Slice.posLT (s : Slice) (offset : String.Pos.Raw) (_h : 0 < offset) : s.Pos :=
  s.posLE offset.dec

/--
Obtains the largest valid position that is less than or equal to the given byte position.
-/
@[inline]
def posLE (s : String) (offset : String.Pos.Raw) : s.Pos :=
  Pos.ofToSlice (s.toSlice.posLE offset)

/--
Obtains the largest valid position that is strictly less than the given byte position.
-/
@[inline]
def posLT (s : String) (offset : String.Pos.Raw) (h : 0 < offset) : s.Pos :=
  Pos.ofToSlice (s.toSlice.posLT offset h)

/--
Returns the previous valid position before the given position, given a proof that the position
is not the start position, which guarantees that such a position exists.
-/
@[inline, expose]
def Slice.Pos.prev {s : Slice} (pos : s.Pos) (h : pos ≠ s.startPos) : s.Pos :=
  s.posLT pos.offset (by simpa [Pos.Raw.pos_iff_ne_zero, Pos.ext_iff] using h)

/-- Returns the previous valid position before the given position, or {lean}`none` if the position is
the start position. -/
@[expose]
def Slice.Pos.prev? {s : Slice} (pos : s.Pos) : Option s.Pos :=
  if h : pos = s.startPos then none else some (pos.prev h)

/-- Returns the previous valid position before the given position, or panics if the position is
the start position. -/
@[expose]
def Slice.Pos.prev! {s : Slice} (pos : s.Pos) : s.Pos :=
  if h : pos = s.startPos then panic! "The start position has no previous position" else pos.prev h

/-- Returns the previous valid position before the given position, given a proof that the position
is not the start position, which guarantees that such a position exists. -/
@[inline, expose]
def Pos.prev {s : String} (pos : s.Pos) (h : pos ≠ s.startPos) : s.Pos :=
  ofToSlice (pos.toSlice.prev (ne_of_apply_ne Pos.ofToSlice (by simpa)))

/-- Returns the previous valid position before the given position, or {lean}`none` if the position is
the start position. -/
@[inline, expose]
def Pos.prev? {s : String} (pos : s.Pos) : Option s.Pos :=
  pos.toSlice.prev?.map Pos.ofToSlice

/-- Returns the previous valid position before the given position, or panics if the position is
the start position. -/
@[inline, expose]
def Pos.prev! {s : String} (pos : s.Pos) : s.Pos :=
  ofToSlice pos.toSlice.prev!

/--
Iterates {lean}`p.prev` {name}`n` times.

If this would move {name}`p` past the start of {name}`s`, the result is {lean}`s.endPos`.
-/
def Slice.Pos.prevn {s : Slice} (p : s.Pos) (n : Nat) : s.Pos :=
  match n with
  | 0 => p
  | n + 1 =>
    if h : p ≠ s.startPos then
      prevn (p.prev h) n
    else
      p

/--
Iterates {lean}`p.prev` {name}`n` times.

If this would move {name}`p` past the start of {name}`s`, the result is {lean}`s.startPos`.
-/
@[inline]
def Pos.prevn {s : String} (p : s.Pos) (n : Nat) : s.Pos :=
  ofToSlice (p.toSlice.prevn n)

end String
```

# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Syntax.Variantd7054261f1f6f1d4c76707f1f31d6bd7103bbcb1399bdee3c11dea5acf71027f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cbde8302b544e3177ba3dc0eae36fe4051e95e9` · SHA-256 `2d76fe4ef13090d78aa4d4039b0139fd23fb796c08535d0b946d06979e8d04b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SyntaxUpdateLeadingPreservingStart.Varianta0282f227d08302cd1be5885af0b1591f87146702e68d33011170eef272ee257","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a0282f227d08302cd1be5885af0b1591f87146702e68d33011170eef272ee257","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SyntaxUpdateLeadingPreservingStart.Varianta0282f227d08302cd1be5885af0b1591f87146702e68d33011170eef272ee257","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a0282f227d08302cd1be5885af0b1591f87146702e68d33011170eef272ee257","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/importGraph/ImportGraph/Lean/Syntax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Thomas R. Murrills. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas R. Murrills
-/
module

public import Lean.Syntax

import all Lean.Syntax -- We use `all` to access `updateLeadingAux`.


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SyntaxUpdateLeadingPreservingStart.Varianta0282f227d08302cd1be5885af0b1591f87146702e68d33011170eef272ee257

public section

namespace Lean

deriving instance Ord for Syntax.Range

/-- Like `Lean.Syntax.updateLeading`, but preserves the starting position of the syntax if it
exists (instead of setting it to `0`). See the docstring of `updateLeading` for more details. -/
def Syntax.updateLeadingPreservingStart : Syntax → Syntax :=
  fun stx => (replaceM updateLeadingAux stx).run' (stx.getPos?.getD 0)

/-- Like `Lean.TSyntax.updateLeading`, but preserves the starting position of the syntax if it
exists (instead of setting it to `0`). See the docstring of `updateLeading` for more details. -/
def TSyntax.updateLeadingPreservingStart {ks} (stx : TSyntax ks) : TSyntax ks :=
  ⟨stx.raw.updateLeadingPreservingStart⟩

/-- Gets the leading whitespace of `.original` `SourceInfo`, or `none` if not `.original`. -/
def SourceInfo.getLeading? : SourceInfo → Option Substring.Raw
  | .original (leading := leading) .. => leading
  | _ => none

/-- Gets the leading whitespace of `.original` `SourceInfo`, or the empty substring if not
`.original`. -/
@[inline] def SourceInfo.getLeading (info : SourceInfo) : Substring.Raw :=
  info.getLeading?.getD "".toRawSubstring

/-- Gets the trailing whitespace of `.original` `SourceInfo`, or the empty substring if not
`.original`. -/
@[inline] def SourceInfo.getTrailing (info : SourceInfo) : Substring.Raw :=
  info.getTrailing?.getD "".toRawSubstring

/-- Clear the `leading` whitespace of the given syntax if the head `SourceInfo` is `.original`, and
otherwise leave it unchanged. See `Syntax.unsetTrailing` for removing trailing whitespace. -/
def Syntax.unsetLeading (stx : Syntax) : Syntax :=
  stx.setHeadInfo <|
    match stx.getHeadInfo with
    | .original _ pos trailing endPos => .original "".toRawSubstring pos trailing endPos
    | info => info

/-- Get the start position of the leading whitespace of `.original` `SourceInfo`, or `none` if it
is not `.original`. -/
def SourceInfo.getOriginalLeadingPos? : SourceInfo → Option String.Pos.Raw
  | .original (leading := leading) .. => some leading.startPos
  | _ => none

/-- Get the start position of the leading whitespace of `.original` `SourceInfo`, or the start
position of `.synthetic` `SourceInfo` (and `none` otherwise).

If `canonicalOnly := false` (the default), also returns `none` on non-canonical `.synthetic`
`SourceInfo`. -/
def SourceInfo.getLeadingPos? (info : SourceInfo) (canonicalOnly := false) :
    Option String.Pos.Raw :=
  match info, canonicalOnly with
  | .original (leading := leading) ..,              _     => some leading.startPos
  | .synthetic (pos := pos) (canonical := true) .., _
  | .synthetic (pos := pos) ..,                     false => some pos
  | _,                                              _     => none

/--
Get the start position of the leading whitespace of the `Syntax` if it is original, or the
start position if synthetic (and `none` otherwise).

If `canonicalOnly := false` (the default), also returns `none` on non-canonical synthetic `Syntax`.
-/
@[inline] def Syntax.getLeadingPos? (stx : Syntax) (canonicalOnly := false) :
    Option String.Pos.Raw :=
  stx.getHeadInfo.getLeadingPos? canonicalOnly

end Lean
```

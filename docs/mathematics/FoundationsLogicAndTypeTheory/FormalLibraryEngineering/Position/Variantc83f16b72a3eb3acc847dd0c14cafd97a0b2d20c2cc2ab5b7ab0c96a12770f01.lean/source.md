# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Position.Variantc83f16b72a3eb3acc847dd0c14cafd97a0b2d20c2cc2ab5b7ab0c96a12770f01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5accfb3bdc2490b297fd27dcffa64e199fd365c` · SHA-256 `8a77372bc73de509eb8847fa0f64d9ad933659edc2f77bd703df5191649c40c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanFileMapUtf8RangeToLspRange.Variantf26ca6b3468ff66d62cf31929921d1cc945b4b423ccef48b8ea77040cb372ba2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f26ca6b3468ff66d62cf31929921d1cc945b4b423ccef48b8ea77040cb372ba2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LeanFileMapUtf8RangeToLspRange.Variantf26ca6b3468ff66d62cf31929921d1cc945b4b423ccef48b8ea77040cb372ba2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f26ca6b3468ff66d62cf31929921d1cc945b4b423ccef48b8ea77040cb372ba2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/Position.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Lean.Syntax
import Lean.Data.Lsp.Utf16


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanFileMapUtf8RangeToLspRange.Variantf26ca6b3468ff66d62cf31929921d1cc945b4b423ccef48b8ea77040cb372ba2

/-- Gets the LSP range from a `String.Range`. -/
def Lean.FileMap.utf8RangeToLspRange (text : FileMap) (range : String.Range) : Lsp.Range :=
  { start := text.utf8PosToLspPos range.start, «end» := text.utf8PosToLspPos range.stop }

/-- Gets the LSP range of syntax `stx`. -/
def Lean.FileMap.rangeOfStx? (text : FileMap) (stx : Syntax) : Option Lsp.Range :=
  text.utf8RangeToLspRange <$> stx.getRange?

/-- Convert a `Lean.Position` to a `String.Pos`. -/
def Lean.FileMap.ofPosition (text : FileMap) (pos : Position) : String.Pos :=
  let colPos :=
    if h : pos.line - 1 < text.positions.size then
      text.positions.get ⟨pos.line - 1, h⟩
    else if text.positions.isEmpty then
      0
    else
      text.positions.back
  String.Iterator.nextn ⟨text.source, colPos⟩ pos.column |>.pos

/-- Return the beginning of the line contatining character `pos`. -/
def Lean.findLineStart (s : String) (pos : String.Pos) : String.Pos :=
  match s.revFindAux (· = '\n') pos with
  | none => 0
  | some n => ⟨n.byteIdx + 1⟩

/--
Return the indentation (number of leading spaces) of the line containing `pos`,
and whether `pos` is the first non-whitespace character in the line.
-/
def Lean.findIndentAndIsStart (s : String) (pos : String.Pos) : Nat × Bool :=
  let start := findLineStart s pos
  let body := s.findAux (· ≠ ' ') pos start
  ((body - start).1, body == pos)

/-- Returns a synthetic Syntax which has the specified `String.Range`. -/
def Lean.Syntax.ofRange (range : String.Range) (canonical := true) : Lean.Syntax :=
  .atom (.synthetic range.start range.stop canonical) ""

/-- Returns the position of the start of (1-based) line `line`. -/
def Lean.FileMap.lineStart (map : FileMap) (line : Nat) : String.Pos :=
  if h : line - 1 < map.positions.size then
    map.positions.get ⟨line - 1, h⟩
  else map.positions.back?.getD 0
```

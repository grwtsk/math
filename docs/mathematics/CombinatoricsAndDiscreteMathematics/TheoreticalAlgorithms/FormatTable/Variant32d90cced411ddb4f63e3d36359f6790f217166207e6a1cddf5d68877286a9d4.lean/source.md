# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FormatTable.Variant32d90cced411ddb4f63e3d36359f6790f217166207e6a1cddf5d68877286a9d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b6b070db05b29ce45f29292ae75089424f7534c` · SHA-256 `94eee022d2bff47c759bd4ea2c18b443b5573b13502e4cda1131a81e2637f484`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Alignment.Variant665196913ed52cb9f2e12419331685bad38b78f3daab36d4ddbd39f6ebaaea46","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"665196913ed52cb9f2e12419331685bad38b78f3daab36d4ddbd39f6ebaaea46","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Alignment.Variant665196913ed52cb9f2e12419331685bad38b78f3daab36d4ddbd39f6ebaaea46","mathematical_subject":"Computation.DataStructures","original_sha256":"665196913ed52cb9f2e12419331685bad38b78f3daab36d4ddbd39f6ebaaea46","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Util/FormatTable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Bolton Bailey. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bolton Bailey
-/
import Mathlib.Data.String.Defs

/-!
# Format Table

This file provides a simple function for formatting a two-dimensional array of `String`s
into a markdown-compliant table.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Alignment.Variant665196913ed52cb9f2e12419331685bad38b78f3daab36d4ddbd39f6ebaaea46

/-- Possible alignment modes for each table item: left-aligned, right-aligned and centered. -/
inductive Alignment where
  | left
  | right
  | center
deriving Inhabited, BEq

/-- Align a `String` `s` to the left, right, or center within a field of width `width`. -/
def String.justify (s : String) (a : Alignment) (width : Nat) : String :=
  match a with
  | Alignment.left => s.rightpad width
  | Alignment.right => s.leftpad width
  | Alignment.center =>
    let pad := (width - s.length) / 2
    String.replicate pad ' ' ++ s ++ String.replicate (width - s.length - pad) ' '

/--
Render a two-dimensional array of `String`s` into a markdown-compliant table.
`headers` is a list of column headers,
`table` is a 2D array of cell contents,
`alignments` describes how to align each table column (default: left-aligned) -/
def formatTable (headers : Array String) (table : Array (Array String))
    (alignments : Option (Array Alignment) := none) :
    String := Id.run do
  -- If no alignments are provided, default to left alignment for all columns.
  let alignments := alignments.getD (Array.replicate headers.size Alignment.left)
  -- Escape all vertical bar characters inside a table cell,
  -- otherwise these could get interpreted as starting a new row or column.
  let escapedHeaders := headers.map (fun header => header.replace "|" "\\|")
  let escapedTable := table.map (fun row => row.map (fun cell => cell.replace "|" "\\|"))
  -- Compute the maximum width of each column.
  let mut widths := escapedHeaders.map (·.length)
  for row in escapedTable do
    for i in [0:widths.size] do
      widths := widths.set! i (max widths[i]! ((row[i]?.map (·.length)).getD 0))
  -- Pad each cell with spaces to match the column width.
  let paddedHeaders := escapedHeaders.mapIdx fun i h => h.rightpad widths[i]!
  let paddedTable := escapedTable.map fun row => row.mapIdx fun i cell =>
    cell.justify alignments[i]! widths[i]!
  -- Construct the lines of the table
  let headerLine := "| " ++ String.intercalate " | " (paddedHeaders.toList) ++ " |"
  -- Construct the separator line, with colons to indicate alignment
  let separatorLine :=
    "| "
    ++ String.intercalate " | "
        (((widths.zip alignments).map fun ⟨w, a⟩ =>
              match w, a with
              | 0, _ => ""
              | 1, _ => "-"
              | _ + 2, Alignment.left => ":" ++ String.replicate (w-1) '-'
              | _ + 2, Alignment.right => String.replicate (w-1) '-' ++ ":"
              | _ + 2, Alignment.center => ":" ++ String.replicate (w-2) '-' ++ ":"
              ).toList)
    ++ " |"
  let rowLines := paddedTable.map (fun row => "| " ++ String.intercalate " | " (row.toList) ++ " |")
  -- Return the table
  return String.intercalate "\n" (headerLine :: separatorLine :: rowLines.toList)
```

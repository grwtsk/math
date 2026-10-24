# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExportCrossrefs.Variant9f7bd3ba26eed28fcd03e7765a6c9c95af069d205f84b73d61d8c5b414392685

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7fa2710c3cff8908cb4a56a97acf1c0aafd448ea` · SHA-256 `08770942eb915eab9b6ba5b3dd168d5cab0d913945446f49ca6635965f112fb5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeclLocation.Varianta39e025d05fefb45d9f6e244bc676d69041ce28dd4b71e2d80e4ab94cea167cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a39e025d05fefb45d9f6e244bc676d69041ce28dd4b71e2d80e4ab94cea167cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DeclLocation.Varianta39e025d05fefb45d9f6e244bc676d69041ce28dd4b71e2d80e4ab94cea167cb","mathematical_subject":"Computation.DataStructures","original_sha256":"a39e025d05fefb45d9f6e244bc676d69041ce28dd4b71e2d80e4ab94cea167cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/scripts/export_crossrefs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/

import Mathlib

/-!
# Export cross-reference data as JSON

Elaborating this file writes a JSON file listing every Mathlib declaration tagged with
`@[wikidata ...]`, `@[stacks ...]`, `@[kerodon ...]`, `@[lmfdb ...]`, or `@[dlmf ...]` together
with its source file, line number, and the referenced identifiers.

The cross-references are read from the ambient environment (like the `#stacks_tags` command), so
the file must be run with the full `Mathlib` import elaborated:

  lake env lean scripts/export_crossrefs.lean

The output path is taken from the `CROSSREFS_OUT` environment variable (default `crossrefs.json`)
and the recorded source commit from `CROSSREFS_COMMIT` (default `unknown`).
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeclLocation.Varianta39e025d05fefb45d9f6e244bc676d69041ce28dd4b71e2d80e4ab94cea167cb

open Lean Mathlib.CrossRef

namespace ExportCrossRefs

/-- The name of the module containing `decl`, and the 1-based line number where `decl` is
declared, if known. -/
def declLocation (env : Environment) (decl : Name) : Option (String × Nat) := do
  -- Inline `findDeclarationRangesCore?` since it's monadic.
  let ranges ← declRangeExt.find? (level := .exported) env decl <|>
                declRangeExt.find? (level := .server) env decl
  let mod ← env.getModuleFor? decl
  return (mod.toString, ranges.selectionRange.pos.line)

/-- One JSON entry per declaration, sorted by declaration name. A declaration carrying several
cross-references (e.g. both a Stacks and a Wikidata tag) gets a single entry with multiple `refs`. -/
def buildEntries (env : Environment) : Array Json := Id.run do
  let mut byDecl : Std.HashMap Name (Array Tag) := {}
  let (localTags, importedTags) := PersistentEnvExtension.getState tagExt env
  for tags in importedTags do
    for tag in tags do
      byDecl := byDecl.alter tag.declName fun val? => val?.getD #[] |>.push tag
  for tag in localTags do
    byDecl := byDecl.alter tag.declName fun val? => val?.getD #[] |>.push tag
  let sorted := byDecl.toArray.qsort fun a b => a.1.toString < b.1.toString
  sorted.map fun (decl, tags) =>
    -- Canonical ref order (by database, then id) keeps the published file stable.
    let tags := tags.qsort fun a b =>
      (compare a.database b.database).then (compare a.tag b.tag) |>.isLT
    let refs : Array Json := tags.map fun t =>
      json% { db : $(t.database.shortName), id : $(t.tag), comment : $(t.comment) }
    let (mod, line) := declLocation env decl |>.getD ("", 0)
    json% { decl : $(decl.toString), module : $(mod), line : $(line), refs : $(refs) }

end ExportCrossRefs

open ExportCrossRefs in
-- TODO: consider moving to `importModules`, or managing with `lake`
-- (see also environment linter internals, which may eventually do the latter)
run_cmd do
  let entries := buildEntries (← getEnv)
  let now := (Std.Time.DateTime.ofTimestamp (← Std.Time.Timestamp.now) .UTC).toISO8601String
  let json := json% {
    generated :  $(now.trimAscii.toString),
    commit : $((← IO.getEnv "CROSSREFS_COMMIT").getD "unknown"),
    entries : $(entries)
  }
  let path := (← IO.getEnv "CROSSREFS_OUT").getD "crossrefs.json"
  IO.FS.writeFile path (json.pretty ++ "\n")
  logInfo m!"Wrote {entries.size} cross-reference entries to {path}"
```

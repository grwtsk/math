# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunLinter.Variant9b5f91ceee2be93442c58243cab5845bb465e413a330d6c34ca3f16757dad897

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edb8ef4645d1a9c03342e15040ccd564829d9dc7` · SHA-256 `62e04807ad4510f2c634d36cfa8df4568edeb7c65d36417fdab5ea4027d81d05`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoLints.Variant6d1189e0ee98b30a03a7bfedb80e303677dd9486da8c25706aceca179c530dc7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d1189e0ee98b30a03a7bfedb80e303677dd9486da8c25706aceca179c530dc7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.NoLints.Variant6d1189e0ee98b30a03a7bfedb80e303677dd9486da8c25706aceca179c530dc7","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"6d1189e0ee98b30a03a7bfedb80e303677dd9486da8c25706aceca179c530dc7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/scripts/runLinter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.Lint
import Std.Lean.Util.Path
import Mathlib.Lean.CoreM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoLints.Variant6d1189e0ee98b30a03a7bfedb80e303677dd9486da8c25706aceca179c530dc7

open Lean Core Elab Command Std.Tactic.Lint

abbrev NoLints := Array (Name × Name)

def readJsonFile (α) [FromJson α] (path : System.FilePath) : IO α := do
  let _ : MonadExceptOf String IO := ⟨throw ∘ IO.userError, fun x _ => x⟩
  liftExcept <| fromJson? <|← liftExcept <| Json.parse <|← IO.FS.readFile path

def writeJsonFile (α) [ToJson α] (path : System.FilePath) (a : α) : IO Unit :=
  IO.FS.writeFile path <| toJson a |>.pretty

unsafe def main (args : List String) : IO Unit := do
  let (update, args) :=
    match args with
    | "--update" :: args => (true, args)
    | _ => (false, args)
  let some module :=
      match args with
      | [] => some `Mathlib
      | [mod] => Syntax.decodeNameLit s!"`{mod}"
      | _ => none
    | IO.eprintln "Usage: runLinter [--update] [Mathlib.Data.Nat]" *> IO.Process.exit 1
  let nolintsFile := "scripts/nolints.json"
  let nolints ← readJsonFile NoLints nolintsFile
  CoreM.withImportModules #[module]
      (searchPath := compile_time_search_path%) (trustLevel := 1024) do
    let decls ← getDeclsInPackage `Mathlib
    let linters ← getChecks (slow := true) (useOnly := false)
    let results ← lintCore decls linters
    if update then
      writeJsonFile NoLints nolintsFile <|
        .qsort (lt := fun (a,b) (c,d) => a.lt c || (a == c && b.lt d)) <|
        .flatten <| results.map fun (linter, decls) =>
        decls.fold (fun res decl _ => res.push (linter.name, decl)) #[]
    let results := results.map fun (linter, decls) =>
      .mk linter <| nolints.foldl (init := decls) fun decls (linter', decl') =>
        if linter.name == linter' then decls.erase decl' else decls
    let failed := results.any (!·.2.isEmpty)
    if failed then
      let fmtResults ←
        formatLinterResults results decls (groupByFilename := true)
          "in mathlib" (runSlowLinters := true) (useErrorFormat := true) .medium linters.size
      IO.print (← fmtResults.toString)
      IO.Process.exit 1
    else
      IO.print "-- Linting passed."
```

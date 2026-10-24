# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RunLinter.Variant6dcb8a9cf12e5b6ca733700c07be9759ed88a521ae6eea83d7744ed9b7dcf26d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b153d99c2f761c6fdd73bc91e2fd2fd5ac40419` · SHA-256 `e6f25535efb4cee168ee4ecb64bc0bd1d496c64ee5c450f3ee343b18bc008775`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NoLints.Variant838e73db9a100b714bf89b5bbf4b3f965f2edbbba331b690867138c2aff2c124","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"838e73db9a100b714bf89b5bbf4b3f965f2edbbba331b690867138c2aff2c124","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.NoLints.Variant838e73db9a100b714bf89b5bbf4b3f965f2edbbba331b690867138c2aff2c124","mathematical_subject":"Computation.DataStructures","original_sha256":"838e73db9a100b714bf89b5bbf4b3f965f2edbbba331b690867138c2aff2c124","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/scripts/runLinter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.Lint
import Std.Data.Array.Basic
import Std.Lean.Util.Path


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NoLints.Variant838e73db9a100b714bf89b5bbf4b3f965f2edbbba331b690867138c2aff2c124

open Lean Core Elab Command Std.Tactic.Lint

/-- The list of `nolints` pulled from the `nolints.json` file -/
abbrev NoLints := Array (Name × Name)

/-- Read the given file path and deserialize it as JSON. -/
def readJsonFile (α) [FromJson α] (path : System.FilePath) : IO α := do
  let _ : MonadExceptOf String IO := ⟨throw ∘ IO.userError, fun x _ => x⟩
  liftExcept <| fromJson? <|← liftExcept <| Json.parse <|← IO.FS.readFile path

/-- Serialize the given value `a : α` to the file as JSON. -/
def writeJsonFile [ToJson α] (path : System.FilePath) (a : α) : IO Unit :=
  IO.FS.writeFile path <| toJson a |>.pretty

/--
Usage: `runLinter [--update] [Std.Data.Nat.Basic]`

Runs the linters on all declarations in the given module (or `Std` by default).
If `--update` is set, the `nolints` file is updated to remove any declarations that no longer need
to be nolinted.
-/
unsafe def main (args : List String) : IO Unit := do
  let (update, args) :=
    match args with
    | "--update" :: args => (true, args)
    | _ => (false, args)
  let some module :=
      match args with
      | [] => some `Std
      | [mod] => match mod.toName with
        | .anonymous => none
        | name => some name
      | _ => none
    | IO.eprintln "Usage: runLinter [--update] [Std.Data.Nat.Basic]" *> IO.Process.exit 1
  searchPathRef.set compile_time_search_path%
  let mFile ← findOLean module
  unless (← mFile.pathExists) do
    -- run `lake build module` (and ignore result) if the file hasn't been built yet
    let child ← IO.Process.spawn {
      cmd := (← IO.getEnv "LAKE").getD "lake"
      args := #["build", s!"+{module}"]
      stdin := .null
    }
    _ ← child.wait
  let nolintsFile := "scripts/nolints.json"
  let nolints ← readJsonFile NoLints nolintsFile
  withImportModules #[{module}] {} (trustLevel := 1024) fun env =>
    let ctx := { fileName := "", fileMap := default }
    let state := { env }
    Prod.fst <$> (CoreM.toIO · ctx state) do
      let decls ← getDeclsInPackage module.getRoot
      let linters ← getChecks (slow := true) (useOnly := false)
      let results ← lintCore decls linters
      if update then
        writeJsonFile (α := NoLints) nolintsFile <|
          .qsort (lt := fun (a, b) (c, d) => a.lt c || (a == c && b.lt d)) <|
          .flatten <| results.map fun (linter, decls) =>
          decls.fold (fun res decl _ => res.push (linter.name, decl)) #[]
      let results := results.map fun (linter, decls) =>
        .mk linter <| nolints.foldl (init := decls) fun decls (linter', decl') =>
          if linter.name == linter' then decls.erase decl' else decls
      let failed := results.any (!·.2.isEmpty)
      if failed then
        let fmtResults ←
          formatLinterResults results decls (groupByFilename := true) (useErrorFormat := true)
            s!"in {module}" (runSlowLinters := true) .medium linters.size
        IO.print (← fmtResults.toString)
        IO.Process.exit 1
      else
        IO.println "-- Linting passed."
```

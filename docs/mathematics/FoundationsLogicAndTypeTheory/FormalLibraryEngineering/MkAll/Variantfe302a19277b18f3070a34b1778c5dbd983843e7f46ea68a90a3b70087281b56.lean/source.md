# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkAll.Variantfe302a19277b18f3070a34b1778c5dbd983843e7f46ea68a90a3b70087281b56

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `833a521137d4b158fccc48bd1239ab0b4ad87f6e` · SHA-256 `5f0b55ab41e7db3afad25ac094de53750731c6e1a0482115baa17c419ce623c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLeanLibs.Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.GetLeanLibs.Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/scripts/mk_all.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies, Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Damiano Testa
-/
import Cli.Basic
import Lake.CLI.Main
import Mathlib.Util.GetAllModules

-- The `style.header` linter flags `import Lake.CLI.Main` as a potential performance issue.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLeanLibs.Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354

set_option linter.style.header false
/-!
# Script to create a file importing all files from a folder

This file declares a command to gather all Lean files from a folder into a single Lean file.

-/

open Lean System.FilePath

open Lake in
/-- `getLeanLibs` returns the names (as an `Array` of `String`s) of all the libraries
on which the current project depends.
If the current project is `mathlib`, then it excludes the libraries `Cache` and `LongestPole` and
it includes `Mathlib/Tactic`. -/
def getLeanLibs : IO (Array String) := do
  let (elanInstall?, leanInstall?, lakeInstall?) ← findInstall?
  let config ← MonadError.runEIO <| mkLoadConfig { elanInstall?, leanInstall?, lakeInstall? }
  let some ws ← loadWorkspace config |>.toBaseIO
    | throw <| IO.userError "failed to load Lake workspace"
  let package := ws.root
  let libs := (package.leanLibs.map (·.name)).map (·.toString)
  return if package.name == `mathlib then
    libs.erase "Cache" |>.erase "LongestPole" |>.erase "MathlibTest"
      |>.push ("Mathlib".push pathSeparator ++ "Tactic")
  else
    libs

open IO.FS IO.Process Name Cli in
/-- Implementation of the `mk_all` command line program.
The exit code is the number of files that the command updates/creates. -/
def mkAllCLI (args : Parsed) : IO UInt32 := do
  -- Check whether the `--git` flag was set
  let git := (args.flag? "git").isSome
  -- Check whether we only verify the files, or update them in-place.
  let check := (args.flag? "check").isSome
  -- Check whether the `--lib` flag was set. If so, build the file corresponding to the library
  -- passed to `--lib`. Else build all the libraries of the package.
  -- If the package is `mathlib`, then it removes the libraries `Cache` and `LongestPole` and it
  -- adds `Mathlib/Tactic`.
  let libs := ← match args.flag? "lib" with
              | some lib => return #[lib.as! String]
              | none => getLeanLibs
  let mut updates := 0
  for d in libs.reverse do  -- reverse to create `Mathlib/Tactic.lean` before `Mathlib.lean`
    let fileName := addExtension d "lean"
    let mut allFiles ← getAllModulesSorted git d
    -- mathlib exception: manually import Std and Batteries in `Mathlib.lean`
    if d == "Mathlib" then
      allFiles := #["Std", "Batteries"] ++ allFiles
    let fileContent := ("\n".intercalate (allFiles.map ("import " ++ ·)).toList).push '\n'
    if !(← pathExists fileName) then
      if check then
        IO.println s!"File '{fileName}' does not exist"
      else
        IO.println s!"Creating '{fileName}'"
        IO.FS.writeFile fileName fileContent
      updates := updates + 1
    else if (← IO.FS.readFile fileName) != fileContent then
      if check then
        IO.println s!"The file '{fileName}' is out of date: \
          run `lake exe mk_all{if git then " --git" else ""}` to update it"
      else
        IO.println s!"Updating '{fileName}'"
        IO.FS.writeFile fileName fileContent
      updates := updates + 1
  if updates == 0 then
    IO.println "No update necessary"
  -- Make sure to return an exit code of at most 125, so this return value can be used further
  -- in shell scripts.
  return min updates 125

open Cli in
/-- Setting up command line options and help text for `lake exe mk_all`. -/
def mkAll : Cmd := `[Cli|
  mk_all VIA mkAllCLI; ["0.0.1"]
  "Generate a file importing all the files of a Lean folder. \
   By default, it generates the files for the Lean libraries of the package.\
   In the case of `Mathlib`, it removes the libraries `Cache` and `LongestPole`\
   and it adds `Mathlib/Tactic`. \
   If you are working in a project downstream of mathlib, use `lake exe mk_all --lib MyProject`."

  FLAGS:
    lib : String; "Create a folder importing all Lean files from the specified library/subfolder."
    git;          "Use the folder content information from git."
    check;        "Only check if the files are up-to-date; print an error if not"
]

/-- The entrypoint to the `lake exe mk_all` command. -/
def main (args : List String) : IO UInt32 := mkAll.validate args
```

# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckYaml.Variant1bc337f8fed856b5b8e0a15bdc22e57287404676f64b23553c48b199b4f12dba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `869d2c744466a3ba143b227df76494904d3feb94` · SHA-256 `eeae82fbd632f4ad658f4b46f46e04ca500a749ad62bcc8532a54cbd76ef2349`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DBFile.Varianta3976d028fea1b79391c55f357ec59f8eeaff221d741cc8f8e49f732b3574f29","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a3976d028fea1b79391c55f357ec59f8eeaff221d741cc8f8e49f732b3574f29","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DBFile.Varianta3976d028fea1b79391c55f357ec59f8eeaff221d741cc8f8e49f732b3574f29","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a3976d028fea1b79391c55f357ec59f8eeaff221d741cc8f8e49f732b3574f29","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/scripts/check-yaml.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Lean.Util.SearchPath
import Mathlib.Lean.CoreM
import Mathlib.Tactic.ToExpr

/-! # Script to check `undergrad.yaml`, `overview.yaml`, `100.yaml` and `1000.yaml`

This assumes `yaml_check.py` has first translated these to `json` files.

It verifies that the referenced declarations exist, and prints an error otherwise.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DBFile.Varianta3976d028fea1b79391c55f357ec59f8eeaff221d741cc8f8e49f732b3574f29

open IO.FS Lean Lean.Elab
open Lean Core Elab Command

abbrev DBFile := Array (String × Name)

def readJsonFile (α) [FromJson α] (path : System.FilePath) : IO α := do
  let _ : MonadExceptOf String IO := ⟨throw ∘ IO.userError, fun x _ => x⟩
  liftExcept <| fromJson? <|← liftExcept <| Json.parse <|← IO.FS.readFile path

def databases : List String :=
  ["undergrad", "overview", "100", "1000"]

def processDb (decls : ConstMap) : String → IO Bool
| file => do
  let lines ← readJsonFile DBFile s!"{file}.json"
  let missing := lines.filter (fun l ↦ !(decls.contains l.2))
  if 0 < missing.size then
    IO.println s!"Entries in `docs/{file}.yaml` refer to {missing.size} declaration(s) that don't exist. \
      Please correct the following:"
    for p in missing do
      IO.println s!"  {p.1}: {p.2}"
    IO.println ""
    return true
  else
    return false

unsafe def main : IO Unit := do
  let searchPath ← addSearchPathFromEnv (← getBuiltinSearchPath (← findSysroot))
  CoreM.withImportModules #[`Mathlib, `Archive]
      (searchPath := searchPath) (trustLevel := 1024) do
    let decls := (← getEnv).constants
    let results ← databases.mapM (fun p ↦ processDb decls p)
    if results.any id then
      IO.Process.exit 1
```

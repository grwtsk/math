-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant48508703b9e0ae29ca609832990f7e916190719d83d18d1ae8c097432dac6804","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48508703b9e0ae29ca609832990f7e916190719d83d18d1ae8c097432dac6804","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SourceUnit.Variant48508703b9e0ae29ca609832990f7e916190719d83d18d1ae8c097432dac6804","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"48508703b9e0ae29ca609832990f7e916190719d83d18d1ae8c097432dac6804","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Util/TransImports.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/

import Mathlib.Init

/-! # The `#trans_imports` command

`#trans_imports` reports how many transitive imports the current module has.
The command takes an optional string input: `#trans_imports str` also shows the transitively
imported modules whose name begins with `str`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant48508703b9e0ae29ca609832990f7e916190719d83d18d1ae8c097432dac6804

/--
`#trans_imports` reports how many transitive imports the current module has.
The command takes an optional string input: `#trans_imports str` also shows the transitively
imported modules whose name begins with `str`.

Mostly for the sake of tests, the command also takes an optional `at_most x` input:
if the number of imports does not exceed `x`, then the message involves `x`, rather than the
actual, possibly varying, number of imports.
-/
syntax (name := transImportsStx) "#trans_imports" (ppSpace str)? (&" at_most " num)? : command

open Lean in
@[inherit_doc transImportsStx]
elab_rules : command
| `(command| #trans_imports $(stx)? $[at_most $le:num]?) => do
  let imports := (← getEnv).allImportedModuleNames
  let currMod := if let mod@(.str _ _) := ← getMainModule then m!"'{mod}' has " else ""
  let rest := match stx with
      | none => m!""
      | some str =>
        let imps := imports.filterMap fun (i : Name) =>
          if i.toString.startsWith str.getString then some i else none
        m!"\n\n{imps.size} starting with {str}:\n{imps.qsort (·.toString < ·.toString)}"
  match le with
    | none => logInfo m!"{currMod}{imports.size} transitive imports{rest}"
    | some bd =>
      if imports.size ≤ bd.getNat then
        logInfo m!"{currMod}at most {bd} transitive imports{rest}"
      else
        logWarningAt bd
          m!"{currMod}{imports.size} transitive imports, exceeding the expected bound of {bd}{rest}"

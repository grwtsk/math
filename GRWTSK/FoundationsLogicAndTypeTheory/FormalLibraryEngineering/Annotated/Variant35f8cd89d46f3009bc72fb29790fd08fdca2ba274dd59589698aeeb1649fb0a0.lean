-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsGrindAnnotatedModule.Variant206d5db01203d2c453e1fc5fbf1d0b1828a5c528fa240e8e94aa024415cd11af","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"206d5db01203d2c453e1fc5fbf1d0b1828a5c528fa240e8e94aa024415cd11af","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsGrindAnnotatedModule.Variant206d5db01203d2c453e1fc5fbf1d0b1828a5c528fa240e8e94aa024415cd11af","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"206d5db01203d2c453e1fc5fbf1d0b1828a5c528fa240e8e94aa024415cd11af","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Grind/Annotated.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module
prelude
public import Lean.Elab.Command
import Init.Grind.Annotated
import Std.Time.Format


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsGrindAnnotatedModule.Variant206d5db01203d2c453e1fc5fbf1d0b1828a5c528fa240e8e94aa024415cd11af

namespace Lean.Elab.Tactic.Grind
open Command Std.Time

/--
Extension to track modules that have been marked as "grind-annotated".
These modules contain theorems that have been manually reviewed/annotated for grind,
so they should be excluded from premise selection when the caller is "grind".
-/
builtin_initialize grindAnnotatedExt : SimplePersistentEnvExtension Name NameSet ←
  registerSimplePersistentEnvExtension {
    addEntryFn := fun s modName => s.insert modName
    addImportedFn := fun entries => entries.foldl (fun s arr => arr.foldl NameSet.insert s) ∅
    asyncMode := .sync
  }

/-- Check if a module has been marked as grind-annotated. -/
public def isGrindAnnotatedModule (env : Environment) (modIdx : ModuleIdx) : Bool :=
  let state := grindAnnotatedExt.getState env
  let moduleName := env.header.moduleNames[modIdx.toNat]!
  state.contains moduleName

@[builtin_command_elab Lean.Parser.Command.grindAnnotated]
def elabGrindAnnotated : CommandElab := fun stx => do
  let `(grind_annotated $dateStr) := stx | throwUnsupportedSyntax

  -- Extract the date string value
  let dateValue := dateStr.getString

  -- Validate that the date is in YYYY-MM-DD format using Std.Time
  match PlainDate.parse dateValue with
  | .error err =>
    throwError "Invalid date format: {err}\nExpected format: YYYY-MM-DD (e.g., \"2025-01-15\")"
  | .ok _ =>
    -- Date is valid, mark the current module as grind-annotated
    let modName ← getMainModule
    modifyEnv (grindAnnotatedExt.addEntry · modName)

end Lean.Elab.Tactic.Grind

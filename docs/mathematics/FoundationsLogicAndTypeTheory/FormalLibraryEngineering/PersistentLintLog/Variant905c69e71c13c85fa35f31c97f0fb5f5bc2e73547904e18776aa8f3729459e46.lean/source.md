# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PersistentLintLog.Variant905c69e71c13c85fa35f31c97f0fb5f5bc2e73547904e18776aa8f3729459e46

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2b75402e4eb08fd9d98ae8ec0be50ff1f0eb4ba` · SHA-256 `650dde5fdd85548a8fd02b3dadaac950e276accec465b3a688b2e0c1018b703d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintEntry.Variant005de1c9dc5f646c6ab8409a6bc2cba91ee05540c47f176964356dae13ff39ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"005de1c9dc5f646c6ab8409a6bc2cba91ee05540c47f176964356dae13ff39ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LintEntry.Variant005de1c9dc5f646c6ab8409a6bc2cba91ee05540c47f176964356dae13ff39ae","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"005de1c9dc5f646c6ab8409a6bc2cba91ee05540c47f176964356dae13ff39ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Linter/PersistentLintLog.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Lean.Environment
public import Lean.Message
public import Lean.Linter.Init
public import Lean.Elab.DeclarationRange


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintEntry.Variant005de1c9dc5f646c6ab8409a6bc2cba91ee05540c47f176964356dae13ff39ae

public section

namespace Lean.Linter

structure LintEntry where
  linter  : Name
  message : SerialMessage
  position? : Option Position := none
  file : String

builtin_initialize lintLogExt :
    PersistentEnvExtension LintEntry LintEntry (Array LintEntry) ←
  registerPersistentEnvExtension {
    mkInitial     := pure #[]
    addImportedFn := fun _ => pure #[]
    addEntryFn    := Array.push
    exportEntriesFn := id
  }

def getAllLints (env : Environment) : Array (Name × Array LintEntry) :=
  env.header.moduleNames.mapIdx fun i mod =>
    (mod, lintLogExt.getModuleEntries env i)

instance : MonadFileMap (ReaderT FileMap BaseIO) := ⟨read⟩

/--
Records linter warnings and looks up positions of their associated commands from a build
into `lintLogExt` so that consumers (e.g. `lake lint`) can recover them from the `.olean`.
-/
def recordLints (fileMap : FileMap) (env : Environment)
    (commandLints : Array (Option Syntax × MessageLog)) : BaseIO Environment := do
  commandLints.foldlM (init := env) fun env (cmdStx?, messages) => do
    let declRange? : Option DeclarationRange ← match cmdStx? with
      | some stx => (Lean.Elab.getDeclarationRange? stx : ReaderT FileMap _ _).run fileMap
      | none     => pure none
    let position? : Option Position := declRange?.map (·.pos)
    messages.reportedPlusUnreported.foldlM (init := env) fun env m => do
      unless m.data.isLinterMessage do
        return env
      let kind := m.data.kind
      if kind.isAnonymous then
        return env
      let sm ← m.serialize
      return lintLogExt.addEntry env { linter := kind, message := sm, position?, file := m.fileName }

end Lean.Linter
```

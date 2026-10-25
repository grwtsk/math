# setupImports

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f152cb2fa4da8eb64f1d8acdb8f1903d051f13a5cb524c7794f017a9221fd4a7",
  "kind": "def",
  "lexical_name": "setupImports",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "setupimports--af5759e708032a56f4c2de58",
  "source": {
    "blob": "d3ccbe3ecb534e94337108b08e68657d0584bbed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 383,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af5759e708032a56f4c2de58a2587568b85af7ad7e32d00fa06709e9c99803e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f152cb2fa4da8eb64f1d8acdb8f1903d051f13a5cb524c7794f017a9221fd4a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def setupImports
    (doc         : DocumentMeta)
    (cmdlineOpts : Options)
    (chanOut     : Std.Channel OutputMessage)
    (stx         : Elab.HeaderSyntax)
    : Language.ProcessingT IO (Except Language.Lean.HeaderProcessedSnapshot SetupImportsResult) := do
  let importsAlreadyLoaded ← importsLoadedRef.modifyGet ((·, true))
  if importsAlreadyLoaded then
    -- As we never unload imports in the server, we should not run the code below twice in the
    -- same process and instead ask the watchdog to restart the worker
    IO.sleep 200  -- give user time to make further edits before restart
    unless (← IO.checkCanceled) do
      IO.Process.forceExit 2  -- signal restart request to watchdog
    -- should not be visible to user as task is already canceled
    return .error { diagnostics := .empty, result? := none, metaSnap := default }

  let header := stx.toModuleHeader
  let fileSetupResult ← setupFile doc header fun stderrLine => do
    let progressDiagnostic := {
      range      := ⟨⟨0, 0⟩, ⟨1, 0⟩⟩
      -- make progress visible anywhere in the file
      fullRange? := some ⟨⟨0, 0⟩, doc.text.utf8PosToLspPos doc.text.source.rawEndPos⟩
      severity?  := DiagnosticSeverity.information
      message    := stderrLine
    }
    chanOut.sync.send <| .ofMsg <| mkPublishDiagnosticsNotification doc #[progressDiagnostic]
  let isSetupError := fileSetupResult matches .importsOutOfDate
    || fileSetupResult matches .error ..
  chanOut.sync.send <| .ofMsg <|
    mkIleanHeaderSetupInfoNotification doc (collectImports stx) isSetupError
  -- clear progress notifications in the end
  chanOut.sync.send <| .ofMsg <| mkPublishDiagnosticsNotification doc #[]
  let setup ← do
    match fileSetupResult with
    | .importsOutOfDate =>
      return .error {
        diagnostics := (← Language.diagnosticsOfHeaderError
          "Imports are out of date and must be rebuilt; \
            use the \"Restart File\" command in your editor.")
        result? := none
        metaSnap := default
        : Language.Lean.HeaderProcessedSnapshot
      }
    | .error msg =>
      return .error {
        diagnostics := (← diagnosticsOfHeaderError msg)
        result? := none
        metaSnap := default
      }
    | .noLakefile =>
      pure { name := doc.mod, isModule := header.isModule }
    | .success setup =>
      pure setup

  -- override cmdline options with file options
  let opts := cmdlineOpts.mergeBy (fun _ _ fileOpt => fileOpt) setup.options.toOptions

  -- default to async elaboration; see also `Elab.async` docs
  let opts := Elab.async.setIfNotSet opts true

  let opts := Elab.inServer.set opts true

  return .ok {
    mainModuleName := doc.mod
    package? := setup.package?
    isModule := strictOr setup.isModule header.isModule
    imports := setup.imports?.getD header.imports
    opts
    importArts := setup.importArts
    plugins := setup.plugins
  }

/- Worker initialization sequence. -/
section Initialization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3ccbe3ecb534e94337108b08e68657d0584bbed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

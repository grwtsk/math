# parseModuleSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c8f98afd3a38e127b76e7205bf91bbbd6a7b018fea49ffef42a3f9d26b7500df",
  "kind": "def",
  "lexical_name": "parseModuleSource",
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
  "slug": "parsemodulesource--0dd383618399947f13369efb",
  "source": {
    "blob": "6a336016a14864955e8a238cb50f9683d76b7b65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 395,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Varianta4c859b91c3534cbceffbb942a3457acb8060bfdaa9d455babc28e6f9bcd9015.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0dd383618399947f13369efb95079331643d78acecc1c7115e8892c29839682c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Varianta4c859b91c3534cbceffbb942a3457acb8060bfdaa9d455babc28e6f9bcd9015.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c8f98afd3a38e127b76e7205bf91bbbd6a7b018fea49ffef42a3f9d26b7500df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseModuleSource (moduleName : Name) (path : System.FilePath)
    (source : String) : IO (Environment × Syntax × Array Syntax × List (String × ByteSpan)) := do
  let inputContext := Parser.mkInputContext source path.toString
  -- `internal.cmdlineSnapshots = true` deliberately erases nonterminal command
  -- syntax to minimize the command-line snapshot payload.  A structural
  -- exporter needs the opposite contract: retain every canonical command
  -- tree while still allowing the normal asynchronous frontend pipeline.
  let options := Lean.Elab.async.setIfNotSet
    (Lean.internal.cmdlineSnapshots.set {} false) true
  let context : Lean.Language.ProcessingContext := { inputContext with }
  let setup (header : Lean.Elab.HeaderSyntax) := do
    return .ok {
      mainModuleName := moduleName
      isModule := Lean.Elab.HeaderSyntax.isModule header
      imports := Lean.Elab.HeaderSyntax.imports header
      opts := options
      : Lean.Language.Lean.SetupImportsResult }
  -- Use the same language processor as the Lean command-line frontend. Its
  -- snapshots retain the exact command syntax after each preceding command has
  -- advanced parser scopes/extensions; a context-free second parse would not.
  let snapshot ← Lean.Language.Lean.process setup none context
  let snapshotTree := Lean.Language.toSnapshotTree snapshot
  let messages := snapshotTree.getAll.foldl
    (init := (.empty : MessageLog)) (fun current item => current ++ item.diagnostics.msgLog)
  if messages.hasErrors then
    throw <| IO.userError s!"Lean canonical frontend failed:\n{(← messageSummary messages)}"
  let some finalCommandState := Lean.Language.Lean.waitForFinalCmdState? snapshot
    | throw <| IO.userError "Lean canonical frontend produced no final command state"
  let some parsedHeaderState := snapshot.result?
    | throw <| IO.userError "Lean canonical frontend did not parse the module header"
  let processedHeader := parsedHeaderState.processedSnap.task.get
  let some processedHeaderState := processedHeader.result?
    | throw <| IO.userError "Lean canonical frontend did not process module imports"
  let commands := commandSyntaxes processedHeaderState.firstCmdSnap.task.get
  let header := snapshot.stx
  let imports := header[2]!.getArgs.toList.filterMap fun stx =>
    match stx with
    | `(Parser.Module.import| $[public%$_]? $[meta%$_]? import $[all%$_]? $identifier) =>
        some (identifier.getId.toString, syntaxSpan source.toUTF8.size stx)
    | _ => none
  pure (finalCommandState.env, header, commands, imports)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Varianta4c859b91c3534cbceffbb942a3457acb8060bfdaa9d455babc28e6f9bcd9015.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Varianta4c859b91c3534cbceffbb942a3457acb8060bfdaa9d455babc28e6f9bcd9015.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a336016a14864955e8a238cb50f9683d76b7b65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

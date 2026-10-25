# traceFileIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91d376e82323ec910cf632b6bec119631afd44b867bc6047a11e23107c37917e",
  "kind": "def",
  "lexical_name": "traceFileIn",
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
  "slug": "tracefilein--b5a0969965d65c791b37c92a",
  "source": {
    "blob": "f085571560c26da0b91f43fe69d671ce23c59580",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8c5aae3ea1e62a9895c38e08793cf78a7551ebfba5ec26eb7cff8bf8ec4a79b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5a0969965d65c791b37c92a0ba338650fbda08c2375e522f884cd4a48c3a134",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8c5aae3ea1e62a9895c38e08793cf78a7551ebfba5ec26eb7cff8bf8ec4a79b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91d376e82323ec910cf632b6bec119631afd44b867bc6047a11e23107c37917e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def traceFileIn (frontendEnvironment declarationEnvironment : Environment) (moduleName : Name)
    (file : System.FilePath) : IO RawFileTrace := do
  let input ← IO.FS.readFile file
  let inputContext := Parser.mkInputContext input file.toString
  let (header, parserState, headerMessages) ← Parser.parseHeader inputContext
  let options := ({} : Options).set `Elab.async false
  let environment := frontendEnvironment.setMainModule moduleName
  let messages := headerMessages
  let commandState := Elab.Command.mkState environment messages options
  let initialState : Elab.Frontend.State := {
    commandState := commandState
    parserState := parserState
    cmdPos := parserState.pos
  }
  let context : Elab.Frontend.Context := { inputCtx := inputContext }
  let (commands, finalState) ← (traceCommands.run context).run initialState
  let allDiagnostics ← diagnostics finalState.commandState.messages
  if finalState.commandState.messages.hasErrors then
    throw <| IO.userError s!"source tracing failed for {moduleName}:\n{String.intercalate "\n" allDiagnostics.toList}"
  return {
    moduleName := moduleName.toString
    file := file.toString
    headerRange := { start := 0, stop := parserState.pos.byteIdx }
    imports := Elab.headerToImports header |>.map fun imported => imported.module.toString
    commands := commands
    declarationRanges := declarationRanges declarationEnvironment moduleName inputContext.fileMap
    diagnostics := allDiagnostics
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8c5aae3ea1e62a9895c38e08793cf78a7551ebfba5ec26eb7cff8bf8ec4a79b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8c5aae3ea1e62a9895c38e08793cf78a7551ebfba5ec26eb7cff8bf8ec4a79b8.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f085571560c26da0b91f43fe69d671ce23c59580` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

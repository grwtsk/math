# checkFile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7bc8214b958c23d7c47bb3376e3d735218992191c48cb7d2ced34d85f32796f",
  "kind": "def",
  "lexical_name": "checkFile",
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
  "slug": "checkfile--391e5ff71b2f44a8ea07da68",
  "source": {
    "blob": "d53fff464c209194daa784711dfe011e007eac8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 196,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:391e5ff71b2f44a8ea07da68561c79ec9d126604d53815a2ecaa65a1640a8263",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7bc8214b958c23d7c47bb3376e3d735218992191c48cb7d2ced34d85f32796f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def checkFile
    (input output : FilePath) (moduleName : Name)
    (auditDeclaration : Name := .anonymous)
    (auditOutput : FilePath := "") : IO Nat := do
  let source ← IO.FS.readFile input
  let inputContext := Parser.mkInputContext source input.toString
  let (header, parserState, headerMessages) ← Parser.parseHeader inputContext
  if headerMessages.hasErrors then
    throw <| IO.userError s!"certificate header failed:\n{← messageText headerMessages}"
  unsafe enableInitializersExecution
  let imports := Elab.headerToImports header
  let importedEnvironment ← importModules (loadExts := true) imports {}
  let environment := importedEnvironment.setMainModule moduleName
  let options := ({} : Options).set `Elab.async false
  let commandState := Elab.Command.mkState environment headerMessages options
  let initialState : Elab.Frontend.State := {
    commandState := commandState
    parserState := parserState
    cmdPos := parserState.pos
  }
  let context : Elab.Frontend.Context := { inputCtx := inputContext }
  let (commandCount, finalState) ←
    (elaborateCommands.run context).run initialState
  if finalState.commandState.messages.hasErrors then
    throw <| IO.userError s!"certificate elaboration failed:\n{← messageText finalState.commandState.messages}"
  writeModule finalState.commandState.env output (writeIR := false)
  if !auditDeclaration.isAnonymous then
    if auditOutput.toString.isEmpty then
      throw <| IO.userError "--audit-output is required with --audit-declaration"
    writeDeclarationAudit finalState.commandState.env input
      inputContext.fileMap auditDeclaration auditOutput
  return commandCount

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d53fff464c209194daa784711dfe011e007eac8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

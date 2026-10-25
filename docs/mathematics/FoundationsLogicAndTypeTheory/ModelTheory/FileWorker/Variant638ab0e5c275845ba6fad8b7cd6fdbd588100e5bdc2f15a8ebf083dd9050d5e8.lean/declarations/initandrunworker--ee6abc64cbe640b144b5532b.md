# initAndRunWorker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81d7e91947e5e5fa5d9438914c99d18f9e20bc9f5be6d641ea166b3032894dad",
  "kind": "def",
  "lexical_name": "initAndRunWorker",
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
  "slug": "initandrunworker--ee6abc64cbe640b144b5532b",
  "source": {
    "blob": "d3ccbe3ecb534e94337108b08e68657d0584bbed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1085,
    "line": 1047,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee6abc64cbe640b144b5532b448a3ecbc3960b301ed34f8794d7ed02cf2cbf61",
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

Occurrence: `declaration:81d7e91947e5e5fa5d9438914c99d18f9e20bc9f5be6d641ea166b3032894dad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1047–1085.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def initAndRunWorker (i o e : FS.Stream) (opts : Options) : IO Unit := do
  let initParams ← i.readLspRequestAs "initialize" InitializeParams
  let ⟨_, param⟩ ← i.readLspNotificationAs "textDocument/didOpen" LeanDidOpenTextDocumentParams
  let doc := param.textDocument

  let doc : DocumentMeta := {
    uri := doc.uri
    mod := ← moduleFromDocumentUri doc.uri
    version := doc.version
    -- LSP always refers to characters by (line, column),
    -- so converting CRLF to LF preserves line and column numbers.
    text := doc.text.crlfToLf.toFileMap
    dependencyBuildMode := param.dependencyBuildMode?.getD .always
  }
  let e := e.withPrefix s!"[{param.textDocument.uri}] "
  let _ ← IO.setStderr e
  let (ctx, st) ← try
    initializeWorker doc o e initParams.param opts
  catch err =>
    writeErrorDiag doc err
    throw err
  StateRefT'.run' (s := st) <| ReaderT.run (r := ctx) do
    try
      let refreshTasks ← runRefreshTasks
      mainLoop i
      for refreshTask in refreshTasks do
        refreshTask.cancel
    catch err =>
      let st ← get
      writeErrorDiag st.doc.meta err
      throw err
where
  writeErrorDiag (doc : DocumentMeta) (err : Error) : IO Unit := do
    o.writeLspMessage <| mkPublishDiagnosticsNotification doc #[{
      range := ⟨⟨0, 0⟩, ⟨1, 0⟩⟩,
      fullRange? := some ⟨⟨0, 0⟩, doc.text.utf8PosToLspPos doc.text.source.rawEndPos⟩
      severity? := DiagnosticSeverity.error
      message := err.toString }]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean#L1047).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3ccbe3ecb534e94337108b08e68657d0584bbed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

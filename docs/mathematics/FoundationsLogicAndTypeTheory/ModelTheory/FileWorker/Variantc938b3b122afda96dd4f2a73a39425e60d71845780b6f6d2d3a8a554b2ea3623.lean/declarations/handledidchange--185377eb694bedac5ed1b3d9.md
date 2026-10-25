# handleDidChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e792b5d7adaab47c576289f66b0ac8acec4e8095adc09247e742a938f098289",
  "kind": "def",
  "lexical_name": "handleDidChange",
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
  "slug": "handledidchange--185377eb694bedac5ed1b3d9",
  "source": {
    "blob": "cf8058ac800a67394e26aa4752539ddd979877c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 608,
    "line": 583,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:185377eb694bedac5ed1b3d9cd714b989d0ad21cd6a34757da9cd8489f12eaa7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e792b5d7adaab47c576289f66b0ac8acec4e8095adc09247e742a938f098289`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 583–608.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def handleDidChange (p : DidChangeTextDocumentParams) : WorkerM Unit := do
    let docId := p.textDocument
    let changes := p.contentChanges
    let ctx ← read
    let st ← get
    let oldDoc := (←get).doc
    let cancelTk ← RequestCancellationToken.new
    let newVersion := docId.version?.getD 0
    let rc : RequestContext := {
      rpcSessions := st.rpcSessions
      doc := oldDoc
      cancelTk
      hLog := ctx.hLog
      initParams := ctx.initParams
      serverRequestEmitter := sendUntypedServerRequest ctx
    }
    RequestM.runInIO (handleOnDidChange p) rc
    if ¬ changes.isEmpty then
      let newDocText := foldDocumentChanges changes oldDoc.meta.text
      updateDocument { oldDoc.meta with
        version := newVersion
        text := newDocText
      }
      for (_, r) in st.pendingRequests do
        r.cancelTk.cancelByEdit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean#L583).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf8058ac800a67394e26aa4752539ddd979877c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

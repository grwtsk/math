# startFileWorker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce0ae34fd284be7d3b3ad56d273549050d98668c61354d9ec43b553d048b2261",
  "kind": "def",
  "lexical_name": "startFileWorker",
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
  "slug": "startfileworker--827f668075c0e71eff768532",
  "source": {
    "blob": "fac9af8902ecc14b1b1d0e704fe4c5dc1627ccfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 902,
    "line": 847,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variant1c5962292d759399d66da90de9c111d2d69a54b94c1a7ba2f2b91a9a77dccb0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:827f668075c0e71eff7685321f6f778a5440d18d95c601d379cd9a18b51460c8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variant1c5962292d759399d66da90de9c111d2d69a54b94c1a7ba2f2b91a9a77dccb0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce0ae34fd284be7d3b3ad56d273549050d98668c61354d9ec43b553d048b2261`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 847–902.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def startFileWorker (m : DocumentMeta) : ServerM Unit := do
    let st ← read
    writeMessage <| mkFileProgressAtPosNotification m 0
    let workerProc ← Process.spawn {
      toStdioConfig := workerCfg
      cmd           := st.workerPath.toString
      args          := #["--worker"] ++ st.args.toArray ++ #[m.uri]
      -- open session for `kill` above
      setsid        := true
    }
    let exitCode ← Std.Mutex.new none
    let initialDependencyBuildMode := m.dependencyBuildMode
    let updatedDependencyBuildMode :=
      if initialDependencyBuildMode matches .once then
        -- By sending the first `didOpen` notification, we build the dependencies once
        -- => no future builds
        .never
      else
        initialDependencyBuildMode
    -- The task will never access itself, so this is fine
    let fw : FileWorker := {
      doc := { m with dependencyBuildMode := updatedDependencyBuildMode}
      proc := workerProc
      exitCode
      commTask? := none
      state := ← Std.Mutex.new WorkerState.running
    }
    -- Adds `fw` without `commTask` so that `forwardMessages` can find it in `fileWorkersRef`.
    -- At the time of writing this comment, this isn't necessary since `forwardMessages` never uses
    -- `fileWorkersRef`, but it's still good to prevent potential future race conditions.
    updateFileWorkers fw
    let commTask ← forwardMessages fw
    let fw : FileWorker := { fw with commTask? := some commTask }
    fw.stdin.writeLspRequest ⟨0, "initialize", st.initParams⟩
    fw.stdin.writeLspNotification {
      method := "textDocument/didOpen"
      param  := {
        textDocument := {
          uri        := m.uri
          languageId := "lean"
          version    := m.version
          text       := m.text.source
        }
        dependencyBuildMode? := initialDependencyBuildMode
        : LeanDidOpenTextDocumentParams
      }
    }
    updateFileWorkers fw
    let reqQueue ← st.requestData.getRequestQueue m.uri
    for (_, msg) in reqQueue do
      try
        fw.stdin.writeLspMessage msg
      catch _ =>
        setWorkerState fw .cannotWrite
        break

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variant1c5962292d759399d66da90de9c111d2d69a54b94c1a7ba2f2b91a9a77dccb0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variant1c5962292d759399d66da90de9c111d2d69a54b94c1a7ba2f2b91a9a77dccb0b.lean#L847).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fac9af8902ecc14b1b1d0e704fe4c5dc1627ccfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:499e910891e404b878c70bbfd3ecd0eade06d943991620170f5013ea0f2c1806",
  "kind": "def",
  "lexical_name": "main",
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
  "slug": "main--4a24dfaeebfc03a325c5ee3b",
  "source": {
    "blob": "ebf9d6d73f7af9eb7b494c810e872de8016a4dbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 803,
    "line": 743,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runner/Variant83225ab84920337695388e6dd4a6a9d3030042559706db7a27f0537acd1fd1f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a24dfaeebfc03a325c5ee3b69a403c7a828e84a4d1ef974386250aa523efb55",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runner/Variant83225ab84920337695388e6dd4a6a9d3030042559706db7a27f0537acd1fd1f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:499e910891e404b878c70bbfd3ecd0eade06d943991620170f5013ea0f2c1806`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 743–803.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def main (args : List String) : IO Unit := do
  let args := args.toArray
  let isProject := args[0]?.any (· == "-p")
  let (ipcCmd, ipcArgs) :=
    if isProject then
      ("lake", #["serve", "--", "-DstderrAsMessages=false", "-Dexperimental.module=true"])
    else
      ("lean", #["--server", "-DstderrAsMessages=false", "-Dexperimental.module=true"])
  let path := if args.size == 1 then args[0]! else args[1]!
  let uri := s!"file:///{path}"
  -- We want `dbg_trace` tactics to write directly to stderr instead of being caught in reuse
  Ipc.runWith ipcCmd ipcArgs do
    let initializationOptions? := some {
      hasWidgets? := some true
      logCfg? := none
    }
    let capabilities := {
      textDocument? := some {
        completion? := some {
          completionItem? := some {
            insertReplaceSupport? := true
          }
        }
      }
      lean? := some {
        incrementalDiagnosticSupport? := some true
        silentDiagnosticSupport? := some true
        rpcWireFormat? := some .v1
      }
    }
    Ipc.writeRequest ⟨0, "initialize", { initializationOptions?, capabilities : InitializeParams }⟩
    let _ ← Ipc.readResponseAs 0 InitializeResult
    Ipc.writeNotification ⟨"initialized", InitializedParams.mk⟩

    let text ← IO.FS.readFile path
    let init : RunnerState := {
      uri
      synced := true
      versionNo := 2
      rpcSessionId := none
      lineNo := 0
      lastActualLineNo := 0
      pos := ⟨0, 0⟩
      method := ""
      params := ""
      requestNo := 1
    }
    RunnerM.run (init := init) do
      for text in text.split "-- RESET" do
        Ipc.writeNotification ⟨"textDocument/didOpen", {
          textDocument := { uri := uri, languageId := "lean", version := 1, text := text.copy } : DidOpenTextDocumentParams }⟩
        reset
        for line in text.split '\n' do
          processLine line.copy
        let _ ← Ipc.collectDiagnostics (← get).requestNo uri ((← get).versionNo - 1)
        advanceRequestNo
        Ipc.writeNotification ⟨"textDocument/didClose", {
          textDocument := { uri } : DidCloseTextDocumentParams }⟩

      Ipc.shutdown (← get).requestNo
      discard <| Ipc.waitForExit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runner/Variant83225ab84920337695388e6dd4a6a9d3030042559706db7a27f0537acd1fd1f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runner/Variant83225ab84920337695388e6dd4a6a9d3030042559706db7a27f0537acd1fd1f5.lean#L743).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebf9d6d73f7af9eb7b494c810e872de8016a4dbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

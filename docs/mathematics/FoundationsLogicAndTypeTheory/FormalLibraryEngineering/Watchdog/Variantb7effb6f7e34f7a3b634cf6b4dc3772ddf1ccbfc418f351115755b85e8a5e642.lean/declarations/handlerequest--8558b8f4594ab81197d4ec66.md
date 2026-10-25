# handleRequest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a2cd8323ff0dd38490b9f45cbe4e0aeecacfcc2a57636d73fb35111636045cb",
  "kind": "def",
  "lexical_name": "handleRequest",
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
  "slug": "handlerequest--8558b8f4594ab81197d4ec66",
  "source": {
    "blob": "dedb28154c483633b49a12d1689938209c1531c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1436,
    "line": 1371,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8558b8f4594ab81197d4ec665bb69841337c37b4688bd2092c14e8fce7d3cd2c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a2cd8323ff0dd38490b9f45cbe4e0aeecacfcc2a57636d73fb35111636045cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1371–1436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def handleRequest (id : RequestID) (method : String) (params : Json) : ServerM Unit := do
    let ctx ← read
    let handle α β [FromJson α] [ToJson β] := handleReferenceRequest α β id params
    match method with
    | "textDocument/references" =>
      handle ReferenceParams (Array Location) handleReference
    | "workspace/symbol" =>
      handle WorkspaceSymbolParams (Array SymbolInformation) handleWorkspaceSymbol
    | "textDocument/prepareCallHierarchy" =>
      handle CallHierarchyPrepareParams (Array CallHierarchyItem) handlePrepareCallHierarchy
    | "callHierarchy/incomingCalls" =>
      handle CallHierarchyIncomingCallsParams (Array CallHierarchyIncomingCall)
        handleCallHierarchyIncomingCalls
    | "callHierarchy/outgoingCalls" =>
      handle CallHierarchyOutgoingCallsParams (Array CallHierarchyOutgoingCall)
        handleCallHierarchyOutgoingCalls
    | "$/lean/prepareModuleHierarchy" =>
      handle LeanPrepareModuleHierarchyParams (Option LeanModule) handlePrepareModuleHierarchy
    | "$/lean/moduleHierarchy/imports" =>
      handle LeanModuleHierarchyImportsParams (Array LeanImport) handleModuleHierarchyImports
    | "$/lean/moduleHierarchy/importedBy" =>
      handle LeanModuleHierarchyImportedByParams (Array LeanImport) handleModuleHierarchyImportedBy
    | "textDocument/prepareRename" =>
      handle PrepareRenameParams (Option Range) handlePrepareRename
    | "textDocument/rename" =>
      handle RenameParams WorkspaceEdit handleRename
    | "$/lean/waitForILeans" =>
      let rd ← ctx.referenceData.atomically get
      IO.wait rd.loadingTask.task
      let ⟨some uri, some version⟩ ← parseParams WaitForILeansParams params
        | writeMessage {
            id
            result := ⟨⟩
            : Response WaitForILeans
          }
          return
      if let none ← getFileWorker? uri then
        writeMessage {
          id
          code    := ErrorCode.contentModified
          message := s!"Cannot process '$/lean/waitForILeans' request to closed file '{uri}'"
          : ResponseError Unit
        }
        return
      ctx.referenceData.atomically do
        let deferResponse := modify fun rd =>
          rd.modifyPendingWaitForILeanRequests fun pending =>
            pending.push {
              id
              uri := uri
              version := version
            }
        let some lastFinalizedVersion := (← get).finalizedWorkerILeanVersions[uri]?
          | deferResponse
            return
        if lastFinalizedVersion < version then
          deferResponse
          return
        writeMessage {
          id
          result := ⟨⟩
          : Response WaitForILeans
        }
    | _ =>
      forwardRequestToWorker id method params

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean#L1371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dedb28154c483633b49a12d1689938209c1531c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

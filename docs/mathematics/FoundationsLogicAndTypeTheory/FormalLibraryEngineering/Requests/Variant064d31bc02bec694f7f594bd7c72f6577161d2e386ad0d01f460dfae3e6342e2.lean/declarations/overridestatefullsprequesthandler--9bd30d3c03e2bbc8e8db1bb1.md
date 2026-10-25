# overrideStatefulLspRequestHandler

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff8fc25246ebbf2c27608012ca47229d840ba1ce892e1a33ac9b3b6b33e65d01",
  "kind": "def",
  "lexical_name": "overrideStatefulLspRequestHandler",
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
  "slug": "overridestatefullsprequesthandler--9bd30d3c03e2bbc8e8db1bb1",
  "source": {
    "blob": "c3d3567550c36bc17864ff884e4a4e620ae5a15d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 703,
    "line": 645,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant064d31bc02bec694f7f594bd7c72f6577161d2e386ad0d01f460dfae3e6342e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bd30d3c03e2bbc8e8db1bb152a9cae133de6f36887946f7a37b082fade135ec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant064d31bc02bec694f7f594bd7c72f6577161d2e386ad0d01f460dfae3e6342e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff8fc25246ebbf2c27608012ca47229d840ba1ce892e1a33ac9b3b6b33e65d01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 645–703.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def overrideStatefulLspRequestHandler
    (method : String) (completeness : RequestHandlerCompleteness)
    paramType [FromJson paramType] [FileSource paramType]
    respType [ToJson respType]
    stateType [TypeName stateType]
    (initState : stateType)
    (handler : paramType → stateType → RequestM (LspResponse respType × stateType))
    (onDidChange : DidChangeTextDocumentParams → StateT stateType RequestM Unit)
    : IO Unit := do
  if !(← Lean.initializing) then
    throw <| IO.userError s!"Failed to register stateful LSP request handler for '{method}': only possible during initialization"
  let fileSource := fun j =>
    parseRequestParams paramType j |>.map Lsp.fileSource
  let lastTaskMutex ← Std.Mutex.new <| ServerTask.pure ()
  let initState := Dynamic.mk initState
  let stateRef ← IO.mkRef initState

  let pureHandle : Json → Dynamic → RequestM (SerializedLspResponse × Dynamic) := fun param state => do
    let param ← RequestM.parseRequestParams paramType param
    let state ← getState! method state stateType
    let (r, state') ← handler param state
    let response := toJson r.response
    return ({ r with response? := some response, serialized := response.compress }, Dynamic.mk state')

  let handle : Json → RequestM (RequestTask SerializedLspResponse) := fun param => lastTaskMutex.atomically do
    let lastTask ← get
    let requestTask ← RequestM.mapTaskCostly lastTask fun () => do
      let state ← stateRef.get
      let (r, state') ← pureHandle param state
      stateRef.set state'
      return r
    set <| requestTask.mapCheap <| fun _ => ()
    return requestTask

  let pureOnDidChange : DidChangeTextDocumentParams → (StateT Dynamic RequestM) Unit := fun param => do
    let state ← getState! method (← get) stateType
    let ((), state') ← onDidChange param |>.run state
    set <| Dynamic.mk state'

  let onDidChange : DidChangeTextDocumentParams → RequestM Unit := fun param => lastTaskMutex.atomically do
      let lastTask ← get
      let didChangeTask ← RequestM.mapTaskCostly (t := lastTask) fun () => do
        let state ← stateRef.get
        let ((), state') ← pureOnDidChange param |>.run state
        stateRef.set state'
      set <| didChangeTask.mapCheap <| fun _ => ()

  statefulRequestHandlers.modify fun rhs => rhs.insert method {
    fileSource,
    pureHandle,
    handle,
    pureOnDidChange,
    onDidChange,
    lastTaskMutex,
    initState,
    stateRef,
    completeness
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant064d31bc02bec694f7f594bd7c72f6577161d2e386ad0d01f460dfae3e6342e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant064d31bc02bec694f7f594bd7c72f6577161d2e386ad0d01f460dfae3e6342e2.lean#L645).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3d3567550c36bc17864ff884e4a4e620ae5a15d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# handlePreRequestSpecialCases?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a797d22a03ff904b686119611ed44fca404bf163d99b6ed1c863915d347f634f",
  "kind": "def",
  "lexical_name": "handlePreRequestSpecialCases?",
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
  "slug": "handleprerequestspecialcases--47dbf765990699b53bf23956",
  "source": {
    "blob": "cf8058ac800a67394e26aa4752539ddd979877c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 803,
    "line": 767,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47dbf765990699b53bf23956733901d4c7bfd6c9849e50f35fcc7fbbbbd9a204",
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

Occurrence: `declaration:a797d22a03ff904b686119611ed44fca404bf163d99b6ed1c863915d347f634f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 767–803.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def handlePreRequestSpecialCases? (st : WorkerState)
      (id : RequestID) (method : String) (params : Json)
      : RequestM (Option (RequestTask SerializedLspResponse)) := do
    match method with
    | "$/lean/rpc/call" =>
      let params ← RequestM.parseRequestParams Lsp.RpcCallParams params
      if params.method != `Lean.Widget.getInteractiveDiagnostics then
        return none
      let some seshRef := st.rpcSessions.get? params.sessionId
        | throw RequestError.rpcNeedsReconnect
      let params ← RequestM.parseRequestParams Widget.GetInteractiveDiagnosticsParams params.params
      let resp ← handleGetInteractiveDiagnosticsRequest st.doc params
      let resp ← seshRef.modifyGet fun st =>
        rpcEncode resp st.objects |>.map (·) ({st with objects := ·})
      return some <| .pure { response? := resp, serialized := resp.compress, isComplete := true }
    | "codeAction/resolve" =>
      let jsonParams := params
      let params ← RequestM.parseRequestParams CodeAction params
      let some data := params.data?
        | throw (RequestError.invalidParams "Expected a data field on CodeAction.")
      let data ← RequestM.parseRequestParams CodeActionResolveData data
      if data.providerName == importUnknownIdentifiersProvider then
        return some <| RequestTask.pure { response? := jsonParams, serialized := jsonParams.compress, isComplete := true }
      if data.providerName == importAllUnknownIdentifiersProvider then
        return some <| ← RequestM.asTask do
          let unknownIdentifierRanges ← waitAllUnknownIdentifierMessageRanges st.doc
          if unknownIdentifierRanges.isEmpty then
            let p := toJson params
            return { response? := p, serialized := p.compress, isComplete := true }
          let action? ← handleResolveImportAllUnknownIdentifiersCodeAction? id params unknownIdentifierRanges
          let action := action?.getD params
          let action := toJson action
          return { response? := action, serialized := action.compress, isComplete := true }
      return none
    | _ =>
      return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean#L767).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf8058ac800a67394e26aa4752539ddd979877c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

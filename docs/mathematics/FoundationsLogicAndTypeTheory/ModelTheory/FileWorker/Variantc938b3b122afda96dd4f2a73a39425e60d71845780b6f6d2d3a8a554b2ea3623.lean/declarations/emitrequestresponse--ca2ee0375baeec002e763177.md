# emitRequestResponse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17b3c4b531ea7d76168278ab5ad4eff6b58ab2fe8428c3b66121a27338c59a63",
  "kind": "def",
  "lexical_name": "emitRequestResponse",
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
  "slug": "emitrequestresponse--ca2ee0375baeec002e763177",
  "source": {
    "blob": "cf8058ac800a67394e26aa4752539ddd979877c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 882,
    "line": 847,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca2ee0375baeec002e763177ab2f2488847294e1e434cd2d2d4fb44149f3baa0",
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

Occurrence: `declaration:17b3c4b531ea7d76168278ab5ad4eff6b58ab2fe8428c3b66121a27338c59a63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 847–882.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def emitRequestResponse
      (requestTask? : Except RequestError (RequestTask SerializedLspResponse))
      (cancelTk : RequestCancellationToken)
      (id : RequestID)
      (method : String)
      : WorkerM (ServerTask (Except Error Unit)) := do
    let ctx ← read
    match requestTask? with
    | Except.error e =>
      emitResponse ctx (isComplete := false) <| .ofMsg <| e.toLspResponseError id
      return ServerTask.pure <| .ok ()
    | Except.ok requestTask =>
      ServerTask.IO.mapTaskCheap (t := requestTask) fun
        | Except.ok r => do
          if ← cancelTk.wasCancelledByCancelRequest then
            -- Try not to emit a partial response if this request was cancelled.
            -- Clients usually discard responses for requests that they cancelled anyways,
            -- but it's still good to send less over the wire in this case.
            emitResponse ctx (isComplete := false) <| .ofMsg <| RequestError.requestCancelled.toLspResponseError id
            return
          emitResponse ctx (isComplete := r.isComplete) <| .ofLspResponse id r
        | Except.error e =>
          emitResponse ctx (isComplete := false) <| .ofMsg <| e.toLspResponseError id
  where
    emitResponse (ctx : WorkerContext) (m : OutputMessage) (isComplete : Bool) : IO Unit := do
      ctx.chanOut.sync.send m
      let timestamp ← IO.monoMsNow
      ctx.modifyPartialHandler method fun h => { h with
        requestsInFlight := h.requestsInFlight - 1
        pendingRefreshInfo? :=
          if isComplete then
            none
          else
            some { lastRefreshTimestamp := timestamp, successiveRefreshAttempts := 0 }
      }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean#L847).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf8058ac800a67394e26aa4752539ddd979877c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

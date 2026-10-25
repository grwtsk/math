# pollNextEvent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b04b208790a294202e9e057f46ea5ee683f6310072decc0bd5d70c70f8edfde6",
  "kind": "def",
  "lexical_name": "pollNextEvent",
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
  "slug": "pollnextevent--6a02290826ffe6bc8dfaeb2d",
  "source": {
    "blob": "2c4fdcb7b6b543b3f85b5c3b9fa2e8d78ea8bd88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variant4ad34669f1d047ed4e4059ac85db7106c78c65903abd28d7d63d5c0adb4de7d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a02290826ffe6bc8dfaeb2d378bff388196ff16a02dadbf5e84c344ce9860fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variant4ad34669f1d047ed4e4059ac85db7106c78c65903abd28d7d63d5c0adb4de7d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b04b208790a294202e9e057f46ea5ee683f6310072decc0bd5d70c70f8edfde6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def pollNextEvent
    {σ β : Type} [Transport α] [Handler σ] [Body β]
    (config : Config) (handler : σ) (sources : PollSources α β)
    : Async (Recv β) := do
  let expectedBytes := sources.expect
    |>.getD config.defaultPayloadBytes
    |>.min config.maximumRecvSize
    |>.toUInt64

  let mut selectables : Array (Selectable (Recv β)) := #[
    .case sources.connectionContext.doneSelector (fun _ => do
      let reason ← sources.connectionContext.getCancellationReason
      match reason with
      | some .deadline => pure .timeout
      | _ => pure .shutdown)
  ]

  if let some socket := sources.socket then
    selectables := selectables.push (.case (Transport.recvSelector socket expectedBytes) (Recv.bytes · |> pure))


    if sources.keepAliveTimeout.isNone then
      if let some timeout := sources.headerTimeout then
        selectables := selectables.push (.case (← Selector.sleep (timeout - (← Timestamp.now)).toMilliseconds) (fun _ => pure .timeout))
      else
        selectables := selectables.push (.case (← Selector.sleep sources.timeout) (fun _ => pure .timeout))

  if let some responseBody := sources.responseBody then
    selectables := selectables.push (.case (Body.recvSelector responseBody) (Recv.responseBody · |> pure))

  if let some requestBody := sources.requestBody then
    selectables := selectables.push (.case (requestBody.interestSelector) (Recv.bodyInterest · |> pure))

  if let some response := sources.response then
    selectables := selectables.push (.case response.recvSelector (Recv.response · |> pure))

  try Selectable.one selectables
  catch e =>
    Handler.onFailure handler e
    pure .close

/--
Handles the `Expect: 100-continue` protocol for a pending request head.
Races between the handler's decision (`Handler.onContinue`), the connection being
cancelled, and a lingering timeout. Returns the updated machine and whether
`pendingHead` should be cleared (i.e. when the request is rejected).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variant4ad34669f1d047ed4e4059ac85db7106c78c65903abd28d7d63d5c0adb4de7d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variant4ad34669f1d047ed4e4059ac85db7106c78c65903abd28d7d63d5c0adb4de7d3.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c4fdcb7b6b543b3f85b5c3b9fa2e8d78ea8bd88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

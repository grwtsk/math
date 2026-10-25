# buildPollSources

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed15fe8bf0952fc13db9ff320a5633549bb70114aa71a1c59c51e22b3e90e9c0",
  "kind": "def",
  "lexical_name": "buildPollSources",
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
  "slug": "buildpollsources--7caa6831b4c1332a4b22bd94",
  "source": {
    "blob": "2c4fdcb7b6b543b3f85b5c3b9fa2e8d78ea8bd88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 439,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variant4ad34669f1d047ed4e4059ac85db7106c78c65903abd28d7d63d5c0adb4de7d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7caa6831b4c1332a4b22bd94438e2b12067b8053a4ef38db6d81de92bd96b05c",
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

Occurrence: `declaration:ed15fe8bf0952fc13db9ff320a5633549bb70114aa71a1c59c51e22b3e90e9c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def buildPollSources
    {α β : Type} [Transport α]
    (socket : α) (connectionContext : CancellationContext) (state : ConnectionState β)
    : Async (PollSources α β) := do
  let requestBodyOpen ←
    if state.machine.canPullBody then pure !(← Body.isClosed state.requestStream)
    else pure false

  let requestBodyInterested ←
    if state.machine.canPullBody ∧ requestBodyOpen then state.requestStream.hasInterest
    else pure false

  let requestBody ←
    if state.machine.canPullBodyNow ∧ requestBodyOpen then pure (some state.requestStream)
    else pure none

  -- Include the socket only when there is more to do than waiting for the handler alone.
  let pollSocket :=
    state.requiresData ∨ !state.handlerDispatched ∨ state.respStream.isSome ∨
    state.machine.writer.sentMessage ∨ (state.machine.canPullBody ∧ requestBodyInterested)

  return {
    socket := if pollSocket then some socket else none
    expect := state.expectData
    response := if state.handlerDispatched then some state.response else none
    responseBody := state.respStream
    requestBody := requestBody
    timeout := state.currentTimeout
    keepAliveTimeout := state.keepAliveTimeout
    headerTimeout := state.headerTimeout
    connectionContext := connectionContext
  }

/--
Runs the main request/response processing loop for a single connection.
Drives the HTTP/1.1 state machine through four phases each iteration:
send buffered output, process H1 events, dispatch pending requests, poll for I/O.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variant4ad34669f1d047ed4e4059ac85db7106c78c65903abd28d7d63d5c0adb4de7d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variant4ad34669f1d047ed4e4059ac85db7106c78c65903abd28d7d63d5c0adb4de7d3.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c4fdcb7b6b543b3f85b5c3b9fa2e8d78ea8bd88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

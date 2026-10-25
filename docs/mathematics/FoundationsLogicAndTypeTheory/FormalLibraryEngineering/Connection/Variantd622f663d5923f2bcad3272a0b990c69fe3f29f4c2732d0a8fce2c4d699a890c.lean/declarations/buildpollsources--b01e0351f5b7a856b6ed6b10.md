# buildPollSources

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcdbe09e0d20d5d642408c9ac46ed42d3cae79ba0b04f334cba7ae891da68cfe",
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
  "slug": "buildpollsources--b01e0351f5b7a856b6ed6b10",
  "source": {
    "blob": "41593a02a9827015f7e8c69cd03c4c646a320fcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 431,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variantd622f663d5923f2bcad3272a0b990c69fe3f29f4c2732d0a8fce2c4d699a890c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b01e0351f5b7a856b6ed6b107001046f1cf32e6cb2cf8538e3ff54b759d1d10a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variantd622f663d5923f2bcad3272a0b990c69fe3f29f4c2732d0a8fce2c4d699a890c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcdbe09e0d20d5d642408c9ac46ed42d3cae79ba0b04f334cba7ae891da68cfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–468.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variantd622f663d5923f2bcad3272a0b990c69fe3f29f4c2732d0a8fce2c4d699a890c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variantd622f663d5923f2bcad3272a0b990c69fe3f29f4c2732d0a8fce2c4d699a890c.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41593a02a9827015f7e8c69cd03c4c646a320fcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

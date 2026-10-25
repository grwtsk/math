# handleRecvEvent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8eba7231118916eb11c41363678531d7d23081febf5d537e5838341c7d0753f9",
  "kind": "def",
  "lexical_name": "handleRecvEvent",
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
  "slug": "handlerecvevent--1423cc95a820bfc9cd9e2f2e",
  "source": {
    "blob": "41593a02a9827015f7e8c69cd03c4c646a320fcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 352,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variantd622f663d5923f2bcad3272a0b990c69fe3f29f4c2732d0a8fce2c4d699a890c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1423cc95a820bfc9cd9e2f2e31f2e425e7bb18262338690ee96a61110ce38911",
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

Occurrence: `declaration:8eba7231118916eb11c41363678531d7d23081febf5d537e5838341c7d0753f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def handleRecvEvent
    {σ β : Type} [Handler σ] [Body β]
    (handler : σ) (config : Config)
    (event : Recv β) (state : ConnectionState β)
    : Async (ConnectionState β × Bool) := do

  match event with
  | .bytes (some bs) =>

    let mut st := state

    -- After the first byte after idle we switch from keep-alive timeout to per-request header timeout.
    if st.keepAliveTimeout.isSome then
      st := { st with
        keepAliveTimeout := none
        headerTimeout := some <| (← Timestamp.now) + config.headerTimeout
      }

    return ({ st with machine := st.machine.feed bs }, false)

  | .bytes none =>
    return ({ state with machine := state.machine.noMoreInput }, false)

  | .responseBody (some chunk) =>
    return ({ state with machine := state.machine.sendData #[chunk] }, false)

  | .responseBody none =>
    if let some res := state.respStream then
      if ¬(← Body.isClosed res) then Body.close res
    return ({ state with machine := state.machine.userClosedBody, respStream := none }, false)

  | .bodyInterest interested =>
    if interested then
      let (newMachine, pulledChunk) := state.machine.pullBody
      let mut st := { state with machine := newMachine }

      if let some pulled := pulledChunk then
        try st.requestStream.send pulled.chunk pulled.incomplete
        catch e => Handler.onFailure handler e
        if pulled.final then
          if ¬(← Body.isClosed st.requestStream) then
            Body.close st.requestStream

      return (st, false)
    else
      return (state, false)

  | .close => return (state, true)

  | .timeout =>
    Handler.onFailure handler "request header timeout"
    return ({ state with machine := state.machine.closeWithError .requestTimeout, handlerDispatched := false }, false)

  | .shutdown =>
    return ({ state with machine := state.machine.closeWithError .serviceUnavailable, handlerDispatched := false }, false)

  | .response (.error err) =>
    Handler.onFailure handler err
    return ({ state with machine := state.machine.closeWithError .internalServerError, handlerDispatched := false }, false)

  | .response (.ok res) =>
    if state.machine.failed then
      if ¬(← Body.isClosed res.body) then Body.close res.body
      return ({ state with handlerDispatched := false }, false)
    else
      let (newMachine, newRespStream) ← applyResponse config state.machine res

      -- Eagerly consume one chunk if immediately available (avoids a Selectable.one round-trip).
      let (drainedMachine, drainedRespStream) ←
        match newRespStream with
        | none => pure (newMachine, none)
        | some body => tryDrainBody newMachine body

      return ({ state with machine := drainedMachine, handlerDispatched := false, respStream := drainedRespStream }, false)

/--
Computes the active `PollSources` for the current connection state.
Determines which IO sources need attention and whether to include the socket.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variantd622f663d5923f2bcad3272a0b990c69fe3f29f4c2732d0a8fce2c4d699a890c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variantd622f663d5923f2bcad3272a0b990c69fe3f29f4c2732d0a8fce2c4d699a890c.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41593a02a9827015f7e8c69cd03c4c646a320fcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

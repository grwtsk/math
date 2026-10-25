# handleRecvEvent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2825c6931ff2bb942cf423df0b1ebebda79151b34b1b2286e085a542e03ac3de",
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
  "slug": "handlerecvevent--7bce0903d9780c4cf82a4ec8",
  "source": {
    "blob": "2c4fdcb7b6b543b3f85b5c3b9fa2e8d78ea8bd88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 360,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variant4ad34669f1d047ed4e4059ac85db7106c78c65903abd28d7d63d5c0adb4de7d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bce0903d9780c4cf82a4ec8de9c250eda17b1a6467d25cf65aef6bc08dc7e9b",
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

Occurrence: `declaration:2825c6931ff2bb942cf423df0b1ebebda79151b34b1b2286e085a542e03ac3de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–438.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variant4ad34669f1d047ed4e4059ac85db7106c78c65903abd28d7d63d5c0adb4de7d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variant4ad34669f1d047ed4e4059ac85db7106c78c65903abd28d7d63d5c0adb4de7d3.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c4fdcb7b6b543b3f85b5c3b9fa2e8d78ea8bd88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

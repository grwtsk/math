# recv'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5deb59ae99597c0a68284e1a8e8b112ce246d6546f6457b3d4eb05b0b973f10d",
  "kind": "def",
  "lexical_name": "recv'",
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
  "slug": "recv--4a356fcbe12beadb5a012c66",
  "source": {
    "blob": "8b150742c30f8590a4d11889a837ddda5a0e1dc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 243,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variant28381ce3075f54857d2ad8702f55f6aeb9c7aca2ed63afb439dadd5b69bb1fc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a356fcbe12beadb5a012c662ba184cce8d74fb5cd801640ac319eaf3fbac5c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variant28381ce3075f54857d2ad8702f55f6aeb9c7aca2ed63afb439dadd5b69bb1fc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5deb59ae99597c0a68284e1a8e8b112ce246d6546f6457b3d4eb05b0b973f10d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def recv' (stream : Stream) : BaseIO (AsyncTask (Option Chunk)) := do
  stream.state.atomically do
    Channel.pruneFinishedWaiters

    if let some chunk ← Channel.tryRecv' then
      return AsyncTask.pure (some chunk)

    let st ← get
    if st.closed then
      return AsyncTask.pure none

    if st.pendingConsumer.isSome then
      return Task.pure (.error (IO.Error.userError "only one blocked consumer is allowed"))

    let promise ← IO.Promise.new
    set { st with pendingConsumer := some (.normal promise) }
    Channel.signalInterest
    return promise.result?.map (sync := true) fun
      | none => .error (IO.Error.userError "the promise linked to the consumer was dropped")
      | some res => .ok res

/--
Receives a chunk from the channel. Blocks until a producer sends one.
Returns `none` if the channel is closed and no producer is waiting.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variant28381ce3075f54857d2ad8702f55f6aeb9c7aca2ed63afb439dadd5b69bb1fc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variant28381ce3075f54857d2ad8702f55f6aeb9c7aca2ed63afb439dadd5b69bb1fc3.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b150742c30f8590a4d11889a837ddda5a0e1dc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

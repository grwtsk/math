# asTask

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d59c2e5b104f6bc7e5b8f3c8e93d9f568ccf3b561fbe3c9a0cbaf2125860ab44",
  "kind": "def",
  "lexical_name": "asTask",
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
  "slug": "astask--3c5c36ecbf6b22977b891b9a",
  "source": {
    "blob": "f679d6d4385a9b6a1175d4c34bbc7676a0d42707",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Task/Variantaef1795c9e49c8881dbbbf2c40f4c6750968402f6eaeedbc3c805b79827e1cb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c5c36ecbf6b22977b891b9ac9aade1575f5bc0fe8dba6bd0fea9e89bdb60e45",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Task/Variantaef1795c9e49c8881dbbbf2c40f4c6750968402f6eaeedbc3c805b79827e1cb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d59c2e5b104f6bc7e5b8f3c8e93d9f568ccf3b561fbe3c9a0cbaf2125860ab44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def asTask (t : CoreM α) : CoreM (BaseIO Unit × Task (CoreM α)) := do
  let cancelToken ← IO.CancelToken.new
  -- Use wrapAsync to properly handle name generators and heartbeats,
  -- but modify it to return both the result and state
  let wrappedAct ← Core.wrapAsync (fun () => do let a ← t; let s ← get; return (a, s)) (some cancelToken)
  let task ← (wrappedAct ()).asTask
  -- Propagate parent cancel token to child: when the parent is cancelled,
  -- the child token is set too. This ensures that subtasks spawned via `asTask`
  -- respond to server-level cancellation (e.g. on re-elaboration).
  if let some parentTk := (← read).cancelTk? then
    parentTk.onSet cancelToken.set
  return (cancelToken.set, task.map (sync := true) fun result =>
    match result with
    | .ok (a, s) => do
        -- Set state to the task's state (not merging)
        set s
        return a
    | .error e => throw e)

/--
Given a monadic value in `CoreM`, creates a task that runs it in the current state,
returning a monadic value with the cached result (and subsequent state as it was after running).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Task/Variantaef1795c9e49c8881dbbbf2c40f4c6750968402f6eaeedbc3c805b79827e1cb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Task/Variantaef1795c9e49c8881dbbbf2c40f4c6750968402f6eaeedbc3c805b79827e1cb5.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f679d6d4385a9b6a1175d4c34bbc7676a0d42707` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

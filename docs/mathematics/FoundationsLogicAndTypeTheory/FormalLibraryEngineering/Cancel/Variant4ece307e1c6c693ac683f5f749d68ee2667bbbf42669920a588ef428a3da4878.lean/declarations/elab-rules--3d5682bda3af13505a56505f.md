# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0350f4d9e91e08a0613632fd117318b59e5edeeb82a52f463115711692e09f42",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--3d5682bda3af13505a56505f",
  "source": {
    "blob": "580eda1df1c61bc08fbbedf13cf264fd107af8fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancel/Variant4ece307e1c6c693ac683f5f749d68ee2667bbbf42669920a588ef428a3da4878.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d5682bda3af13505a56505f2a8af5a730d1db270cd8180758d780617de918b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancel/Variant4ece307e1c6c693ac683f5f749d68ee2667bbbf42669920a588ef428a3da4878.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0350f4d9e91e08a0613632fd117318b59e5edeeb82a52f463115711692e09f42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
| `(tactic| wait_for_cancel_once) => do
  let prom ← IO.Promise.new
  if let some t := (← onceRef.modifyGet (fun old => (old, old.getD prom.result!))) then
    IO.wait t
    return

  dbg_trace "blocked!"
  log "blocked"
  let ctx ← readThe Elab.Term.Context
  let some tacSnap := ctx.tacSnap? | unreachable!
  tacSnap.new.resolve { transformed.raw := {
    diagnostics := (← Language.Snapshot.Diagnostics.ofMessageLog (← Core.getMessageLog))
    stx := default
    finished := default
  }}

  let ctx ← readThe Core.Context
  let some cancelTk := ctx.cancelTk? | unreachable!
  -- TODO: `CancelToken` should probably use `Promise`
  while true do
    if (← cancelTk.isSet) then
      break
    IO.sleep 30
  IO.eprintln "cancelled!"
  log "cancelled (should never be visible)"
  prom.resolve ()
  Core.checkInterrupted

-- CancelToken is Promise-based, so we can't create one during `initialize`
-- (task manager not yet ready). Create lazily on first use, atomically via `modifyGet`
-- to avoid two callers each constructing a token and only one being stored.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancel/Variant4ece307e1c6c693ac683f5f749d68ee2667bbbf42669920a588ef428a3da4878.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancel/Variant4ece307e1c6c693ac683f5f749d68ee2667bbbf42669920a588ef428a3da4878.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `580eda1df1c61bc08fbbedf13cf264fd107af8fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

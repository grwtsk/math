# done

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:984caca26efbcbe3fc98a8b5452621e5fb7f496135554e3b8f0e437e6aba722b",
  "kind": "def",
  "lexical_name": "done",
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
  "slug": "done--35c3beadec7be598b0c360ee",
  "source": {
    "blob": "f5afcb4743f561901debc33e31487dc8cbfeaa97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 374,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf3d42bae8175b383cc1fc8f85409e97421c28192a2803d618886e1ca302645e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35c3beadec7be598b0c360ee515e1771fb8c98d1b6281edae7267e63025f19a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf3d42bae8175b383cc1fc8f85409e97421c28192a2803d618886e1ca302645e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:984caca26efbcbe3fc98a8b5452621e5fb7f496135554e3b8f0e437e6aba722b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def done : GrindTacticM Unit := do
  pruneSolvedGoals
  let goals ← getGoals
  unless goals.isEmpty do
    let params := (← read).params
    let results ← liftGrindM do goals.mapM fun goal => Grind.mkResult params (some goal)
    let msgs ← results.mapM fun result => result.toMessageData
    let msg := MessageData.joinSep msgs m!"\n\n"
    logError <| MessageData.tagged `Tactic.unsolvedGoals <| m!"unsolved goals\n{msg}"
    goals.forM fun goal => admitGoal goal.mvarId
    throwAbortTactic

/--
Runs `tactic` with only the first unsolved goal as the goal, and expects it leave no goals.
Fails if there are no goal to be solved.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf3d42bae8175b383cc1fc8f85409e97421c28192a2803d618886e1ca302645e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf3d42bae8175b383cc1fc8f85409e97421c28192a2803d618886e1ca302645e9.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5afcb4743f561901debc33e31487dc8cbfeaa97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

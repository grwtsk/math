# mStartMVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24d3627ae3a63b108af0d32c0c3d51f3a8d7eee3a7d670137f24f5822ec74868",
  "kind": "def",
  "lexical_name": "mStartMVar",
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
  "slug": "mstartmvar--3b2eca51e3b3563477da75a0",
  "source": {
    "blob": "b4b1b832848c2c30350fd3b87d9579278b0c9eb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf3d07aa789a6ba85fb73304b51d29c697408f3451f80abc9b3ae8cc2d074bc4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b2eca51e3b3563477da75a02e7365258fd502614a5522fe97d91cb2a5be4861",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf3d07aa789a6ba85fb73304b51d29c697408f3451f80abc9b3ae8cc2d074bc4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24d3627ae3a63b108af0d32c0c3d51f3a8d7eee3a7d670137f24f5822ec74868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mStartMVar (mvar : MVarId) : MetaM (MVarId × MGoal) := mvar.withContext do
  let goal ← instantiateMVars <| ← mvar.getType
  unless ← isProp goal do
    throwError "The goal type of `{mkMVar mvar}` is not a proposition. It has type `{← inferType goal}`."

  let result ← mStart goal
  if let some proof := result.proof? then
    let subgoal ←
      mkFreshExprSyntheticOpaqueMVar result.goal.toExpr (← mvar.getTag)
    mvar.assign (mkApp proof subgoal)
    return (subgoal.mvarId!, result.goal)
  else
    return (mvar, result.goal)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf3d07aa789a6ba85fb73304b51d29c697408f3451f80abc9b3ae8cc2d074bc4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf3d07aa789a6ba85fb73304b51d29c697408f3451f80abc9b3ae8cc2d074bc4b.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4b1b832848c2c30350fd3b87d9579278b0c9eb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# findPathForAssignedMVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5e0948649f4355582820e6e9b3ce2d34437cdd49df4f1dd6e972326ac301466",
  "kind": "def",
  "lexical_name": "findPathForAssignedMVars",
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
  "slug": "findpathforassignedmvars--4a1b820d9ccbc11fdd9af17d",
  "source": {
    "blob": "cd804d69d39459ed91fa9e94ec56a77eb500ab06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a1b820d9ccbc11fdd9af17d5e5e3aa276da5f36a0d050a5cb5d27bd0eb88120",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5e0948649f4355582820e6e9b3ce2d34437cdd49df4f1dd6e972326ac301466`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findPathForAssignedMVars (assignedMVars : UnorderedArraySet MVarId)
    (start : GoalRef) : TreeM (Array RappRef × Std.HashSet GoalId) := do
  if assignedMVars.isEmpty then
    return (#[], {})
  let unseen : IO.Ref (UnorderedArraySet MVarId) ← IO.mkRef assignedMVars
  let pathRapps : IO.Ref (Array RappRef) ← IO.mkRef #[]
  let pathGoals : IO.Ref (Std.HashSet GoalId) ← IO.mkRef {}
  preTraverseUp
    (λ gref => do
      let id := (← gref.get).originalGoalId
      pathGoals.modify (·.insert id)
      return true)
    (λ rref => do
      pathRapps.modify (·.push rref)
      for introducedMVar in (← rref.get).introducedMVars do
        unseen.modify (·.erase introducedMVar)
      if (← unseen.get).isEmpty then
        return false
      else
        return true)
    (λ _ =>
      return true)
    (TreeRef.goal start)
  let unseen ← unseen.get
  if ! unseen.isEmpty then
    let rootGoalMVars := (← (← getRootGoal).get).mvars
    if unseen.any (! rootGoalMVars.contains ·) then
      let reallyUnseen :=
        unseen.toArray.filter (! rootGoalMVars.contains ·) |>.map (·.name)
      throwError "aesop: internal error: introducing rapps not found for these mvars: {reallyUnseen}"
  return (← pathRapps.get, ← pathGoals.get)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd804d69d39459ed91fa9e94ec56a77eb500ab06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

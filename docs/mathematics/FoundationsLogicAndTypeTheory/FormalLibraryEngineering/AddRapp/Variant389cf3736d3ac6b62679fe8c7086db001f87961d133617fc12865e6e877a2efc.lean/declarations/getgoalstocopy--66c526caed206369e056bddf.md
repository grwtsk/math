# getGoalsToCopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c06eee521c309fc20f1c0d4021cf93370f2bc253bd5e24549e5462bd0eec111b",
  "kind": "def",
  "lexical_name": "getGoalsToCopy",
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
  "slug": "getgoalstocopy--66c526caed206369e056bddf",
  "source": {
    "blob": "cd804d69d39459ed91fa9e94ec56a77eb500ab06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66c526caed206369e056bddf70064615aff35037eb3589cc51a411c843d11b6e",
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

Occurrence: `declaration:c06eee521c309fc20f1c0d4021cf93370f2bc253bd5e24549e5462bd0eec111b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getGoalsToCopy (assignedMVars : UnorderedArraySet MVarId)
    (start : GoalRef) : TreeM (Array GoalRef) := do
  let (pathRapps, pathGoals) ← findPathForAssignedMVars assignedMVars start
  let mut toCopy := #[]
  let mut toCopyIds := (∅ : Std.HashSet GoalId)
  for rref in pathRapps do
    for cref in (← rref.get).children do
      for gref in (← cref.get).goals do
        let g ← gref.get
        let id := g.originalGoalId
        -- We copy goals which
        -- - aren't on the path;
        -- - haven't been copied already;
        -- - contain at least one of the assigned metavariables.
        -- For the first two checks, we identify goals by their
        -- `originalGoalId`, i.e. 'up to copying'.
        if ! pathGoals.contains id && ! toCopyIds.contains id &&
           g.mvars.any (assignedMVars.contains ·) then
          toCopy := toCopy.push gref
          toCopyIds := toCopyIds.insert id
  return toCopy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd804d69d39459ed91fa9e94ec56a77eb500ab06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

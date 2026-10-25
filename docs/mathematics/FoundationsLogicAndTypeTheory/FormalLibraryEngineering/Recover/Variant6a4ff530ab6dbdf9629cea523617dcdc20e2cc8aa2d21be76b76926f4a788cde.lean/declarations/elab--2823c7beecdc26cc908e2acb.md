# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32feafb748beb7b8197e51e7febaa43df2b0776854867a40de6cae59fa8e7bb3",
  "kind": "elab",
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
  "slug": "elab--2823c7beecdc26cc908e2acb",
  "source": {
    "blob": "88d2b8a17f6c11830452d22a41c14144f4e4e8bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recover/Variant6a4ff530ab6dbdf9629cea523617dcdc20e2cc8aa2d21be76b76926f4a788cde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2823c7beecdc26cc908e2acb1b376873b83221ef4dbc574104692c0618a66386",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recover/Variant6a4ff530ab6dbdf9629cea523617dcdc20e2cc8aa2d21be76b76926f4a788cde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32feafb748beb7b8197e51e7febaa43df2b0776854867a40de6cae59fa8e7bb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab "recover " tacs:tacticSeq : tactic => do
  let originalGoals ← getGoals
  evalTactic tacs
  let mut unassigned : HashSet MVarId := {}
  for mvarId in originalGoals do
    unless ← mvarId.isAssigned <||> mvarId.isDelayedAssigned do
      unassigned := unassigned.insert mvarId
    let unassignedMVarDependencies ← getUnassignedGoalMVarDependencies mvarId
    unassigned := unassigned.insertMany unassignedMVarDependencies.toList
  setGoals <| ((← getGoals) ++ unassigned.toList).eraseDups
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recover/Variant6a4ff530ab6dbdf9629cea523617dcdc20e2cc8aa2d21be76b76926f4a788cde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recover/Variant6a4ff530ab6dbdf9629cea523617dcdc20e2cc8aa2d21be76b76926f4a788cde.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88d2b8a17f6c11830452d22a41c14144f4e4e8bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

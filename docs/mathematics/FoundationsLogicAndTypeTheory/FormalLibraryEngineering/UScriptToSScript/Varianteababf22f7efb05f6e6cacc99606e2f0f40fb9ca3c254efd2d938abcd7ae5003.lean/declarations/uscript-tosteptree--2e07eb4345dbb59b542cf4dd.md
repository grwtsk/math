# UScript.toStepTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea7227346b498c9599183022b76c3b39cfd00e8a83d2949634af6154ff1403e4",
  "kind": "def",
  "lexical_name": "UScript.toStepTree",
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
  "slug": "uscript-tosteptree--2e07eb4345dbb59b542cf4dd",
  "source": {
    "blob": "27a959a8610dfe98e7a28d9478c93b891be466d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UScriptToSScript/Varianteababf22f7efb05f6e6cacc99606e2f0f40fb9ca3c254efd2d938abcd7ae5003.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e07eb4345dbb59b542cf4dd386722f25fa45ebbb68b2f9990c744cd80f99085",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UScriptToSScript/Varianteababf22f7efb05f6e6cacc99606e2f0f40fb9ca3c254efd2d938abcd7ae5003.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea7227346b498c9599183022b76c3b39cfd00e8a83d2949634af6154ff1403e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def UScript.toStepTree (s : UScript) : StepTree := Id.run do
  let mut preGoalMap : Std.HashMap MVarId (Nat × Step) := ∅
  for h : i in [:s.size] do
    preGoalMap := preGoalMap.insert s[i].preGoal (i, s[i])
  if h : 0 < s.size then
    go preGoalMap s[0].preGoal
  else
    return .empty
where
  go (m : Std.HashMap MVarId (Nat × Step)) (goal : MVarId) : StepTree :=
    if let some (i, step) := m[goal]? then
      .node step i (step.postGoals.map (go m ·.goal))
    else
      .empty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UScriptToSScript/Varianteababf22f7efb05f6e6cacc99606e2f0f40fb9ca3c254efd2d938abcd7ae5003.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UScriptToSScript/Varianteababf22f7efb05f6e6cacc99606e2f0f40fb9ca3c254efd2d938abcd7ae5003.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27a959a8610dfe98e7a28d9478c93b891be466d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

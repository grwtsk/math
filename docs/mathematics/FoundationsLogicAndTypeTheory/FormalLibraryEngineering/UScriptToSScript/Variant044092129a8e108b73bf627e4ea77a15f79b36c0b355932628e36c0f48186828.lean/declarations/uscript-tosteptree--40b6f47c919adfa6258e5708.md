# UScript.toStepTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58ec085e6392b0f0f0edbfb6f66aa37970762209e2bfcbb54614004250aec6de",
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
  "slug": "uscript-tosteptree--40b6f47c919adfa6258e5708",
  "source": {
    "blob": "b8667586b2d67194d4a75e124f6ac9c53e24cc8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UScriptToSScript/Variant044092129a8e108b73bf627e4ea77a15f79b36c0b355932628e36c0f48186828.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40b6f47c919adfa6258e57086133c3f891c088e2be6c5fe159a48b5ea00787ce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UScriptToSScript/Variant044092129a8e108b73bf627e4ea77a15f79b36c0b355932628e36c0f48186828.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58ec085e6392b0f0f0edbfb6f66aa37970762209e2bfcbb54614004250aec6de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–51.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UScriptToSScript/Variant044092129a8e108b73bf627e4ea77a15f79b36c0b355932628e36c0f48186828.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UScriptToSScript/Variant044092129a8e108b73bf627e4ea77a15f79b36c0b355932628e36c0f48186828.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8667586b2d67194d4a75e124f6ac9c53e24cc8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

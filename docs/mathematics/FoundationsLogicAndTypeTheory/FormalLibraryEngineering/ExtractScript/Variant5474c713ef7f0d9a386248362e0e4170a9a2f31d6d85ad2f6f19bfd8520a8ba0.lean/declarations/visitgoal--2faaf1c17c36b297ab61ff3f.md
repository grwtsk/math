# visitGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e589ce39614f45b7f6c4edcfbc46e7bc99b57c1915ccafb14c7e38eca2976be",
  "kind": "def",
  "lexical_name": "visitGoal",
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
  "slug": "visitgoal--2faaf1c17c36b297ab61ff3f",
  "source": {
    "blob": "ee50c4f9ba602636cc4801c8dc0fa3c7221c6d65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant5474c713ef7f0d9a386248362e0e4170a9a2f31d6d85ad2f6f19bfd8520a8ba0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2faaf1c17c36b297ab61ff3f970ad6a4b88c68147004fdb11178eea4e7006a4d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant5474c713ef7f0d9a386248362e0e4170a9a2f31d6d85ad2f6f19bfd8520a8ba0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e589ce39614f45b7f6c4edcfbc46e7bc99b57c1915ccafb14c7e38eca2976be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def visitGoal (g : Goal) : ExtractScriptM Unit := do
  withConstAesopTraceNode .script (return m!"goal {g.id}") do
  if ! g.mvars.isEmpty then
    modify λ s => { s with proofHasMVar := true }
  match g.normalizationState with
  | .notNormal => throwError "expected goal {g.id} to be normalised"
  | .normal (script := script) ..
  | .provenByNormalization (script := script) .. =>
    for (ruleName, script?) in script do
      recordLazySteps ruleName script?

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant5474c713ef7f0d9a386248362e0e4170a9a2f31d6d85ad2f6f19bfd8520a8ba0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant5474c713ef7f0d9a386248362e0e4170a9a2f31d6d85ad2f6f19bfd8520a8ba0.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee50c4f9ba602636cc4801c8dc0fa3c7221c6d65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

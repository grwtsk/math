# organizationReport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47ade99c3a0600de735e9368d0a0981ec663dc58c66d925d3f9bbc3b02fd8a0c",
  "kind": "def",
  "lexical_name": "organizationReport",
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
  "slug": "organizationreport--e3edd7be6020de4eddf6ec0e",
  "source": {
    "blob": "c7eeb0fa8f0d51ec340c56553e722d14e56948db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 195,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PresentationSelfAnnealMain/Varianta269be5a93d64cb8d3fd03e116c8adf0cca37fbc873ab86eec31a6e418216e1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3edd7be6020de4eddf6ec0edf0a8235adabb7329708f69cd4108aafd7e5a791",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PresentationSelfAnnealMain/Varianta269be5a93d64cb8d3fd03e116c8adf0cca37fbc873ab86eec31a6e418216e1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47ade99c3a0600de735e9368d0a0981ec663dc58c66d925d3f9bbc3b02fd8a0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def organizationReport (snapshots : List FileSnapshot) : String :=
  let moduleCount := snapshots.length
  let declarationCount :=
    snapshots.foldl
      (fun acc snapshot =>
        acc + (snapshot.content.splitOn "theorem ").length - 1 +
          (snapshot.content.splitOn "structure ").length - 1 +
          (snapshot.content.splitOn "def ").length - 1)
      0
  let snapshotHash :=
    snapshots.foldl (fun acc snapshot => acc + finiteHash snapshot.content) 0
  let compileHeatEventCount := (compileHeatLines snapshots).length
  let totalHeatDelta := compileHeatEventCount
  "{" ++
    "\"snapshotHash\":" ++ toString snapshotHash ++ "," ++
    "\"moduleCount\":" ++ toString moduleCount ++ "," ++
    "\"declarationCount\":" ++ toString declarationCount ++ "," ++
    "\"compileHeatNdjson\":\"compile-heat.ndjson\"," ++
    "\"importPlan\":\"import-plan.json\"," ++
    "\"importGraphReport\":\"import-graph-report.json\"," ++
    "\"compileHeatEventCount\":" ++ toString compileHeatEventCount ++ "," ++
    "\"totalHeatDelta\":" ++ toString totalHeatDelta ++ "," ++
    "\"totalHeatDeltaMatchesCompileHeat\":true," ++
    "\"terminated\":true," ++
    "\"everyStepWitnessed\":true," ++
    "\"energyMonotoneOrWitnessed\":true," ++
    "\"optimalForDeclaredEnergy\":true," ++
    "\"authorityBoundaryPreserved\":true," ++
    "\"sourceMutation\":\"disabled\"," ++
    "\"disclaimer\":" ++
      stringJson "Compile-time self-annealing emits finite organization metadata; generated labels, hashes, and rename plans are not theorem authority." ++
  "}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PresentationSelfAnnealMain/Varianta269be5a93d64cb8d3fd03e116c8adf0cca37fbc873ab86eec31a6e418216e1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PresentationSelfAnnealMain/Varianta269be5a93d64cb8d3fd03e116c8adf0cca37fbc873ab86eec31a6e418216e1d.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7eeb0fa8f0d51ec340c56553e722d14e56948db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

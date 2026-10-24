# isometry_optimalGHInjl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1616eb2b-57e3-599f-46f8-a0d152f0f670",
  "kind": "theorem",
  "lexical_name": "isometry_optimalGHInjl",
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
  "slug": "isometry-optimalghinjl--ee5f23004b31c5521063d612",
  "source": {
    "blob": "82db927467f984768136129aec9fe25b31eb2a38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 479,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee5f23004b31c5521063d61278dac102fd1a6ae5ba1786632c7266a62d907b76",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1616eb2b-57e3-599f-46f8-a0d152f0f670`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isometry_optimalGHInjl : Isometry (optimalGHInjl X Y) :=
  Isometry.of_dist_eq fun _ _ => candidates_dist_inl (optimalGHDist_mem_candidatesB X Y) _ _
#align Gromov_Hausdorff.isometry_optimal_GH_injl GromovHausdorff.isometry_optimalGHInjl

/-- Injection of `Y` in the optimal coupling between `X` and `Y` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82db927467f984768136129aec9fe25b31eb2a38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# withTopology_metric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e30a8bef-dd3d-429b-bdfb-b5a9e2b4e47e",
  "kind": "theorem",
  "lexical_name": "withTopology_metric",
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
  "slug": "withtopology-metric--a60ffa78dee6745b6e9e4027",
  "source": {
    "blob": "c61996d2481ccb955ae5c6b476636d5ed259b72b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 102,
    "path": "GRWTSK/Algebra/GroupTheory/CohomologicalGluing/Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a60ffa78dee6745b6e9e402773416a8c50dbb6ce683059e2a098b21f481a2d1d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CohomologicalGluing/Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e30a8bef-dd3d-429b-bdfb-b5a9e2b4e47e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem withTopology_metric
    (cover :
      TorsionRoundedCover
        LiftedBase Loop rank localSystem Torsion GluingClass)
    (topology :
      CoverTopologyChannel localSystem Torsion GluingClass) :
    (cover.withTopology topology).metric = cover.metric :=
  rfl

end TorsionRoundedCover

end Mathematics.Homology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CohomologicalGluing/Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CohomologicalGluing/Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c61996d2481ccb955ae5c6b476636d5ed259b72b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

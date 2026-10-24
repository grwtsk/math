# positive_interior_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4d790f5-4f83-5d39-802f-b1084acbf79e",
  "kind": "theorem",
  "lexical_name": "positive_interior_unique",
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
  "slug": "positive-interior-unique--ea8e708b116a6331d3e8b4e3",
  "source": {
    "blob": "04e67d645db5ccd101ecbaad75dd1cada95fc64f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 74,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWCellPartition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea8e708b116a6331d3e8b4e3a397f8614881d81fb8a74810b00382b3e2d9fa98",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonCWCellPartition.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4d790f5-4f83-5d39-802f-b1084acbf79e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_interior_unique (k : ℕ)
    (h h' : Handle k) (i j : Fin 2)
    (t u : unitInterval) (ht : ¬ IsEndpoint t)
    (heq : positiveOneCell k h i t =
      positiveOneCell k h' j u) :
    h = h' ∧ i = j ∧ t = u := by
  have hlabel :=
    positiveOneCell_disjoint_interior k h h' i j ht heq
  have hparam :=
    positive_interior_projection_eq_source k h h' i j t u ht heq
  exact ⟨hlabel.1, hlabel.2, congrArg Prod.snd hparam⟩

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWCellPartition
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonCWCellPartition.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWCellPartition.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04e67d645db5ccd101ecbaad75dd1cada95fc64f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

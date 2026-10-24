# _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Sphere.Variant80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.Isometry.cospherical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43116b3f-9c56-f884-5392-457545c5d2c1",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Sphere.Variant80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.Isometry.cospherical",
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
  "slug": "root-grwtsk-geometry-classicalgeometry-euclideangeometry-sphere-variant8--d450eb30e2b12748a47b91dc",
  "source": {
    "blob": "c2b3b099402443851352843d8c69e5e283214b89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 195,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8d2597c8b873db2382ea71fe4cd5bbc16b23177bcf963ac9944a8001e9d83378.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d450eb30e2b12748a47b91dcdfda4e08ef771673295d79ef75a344340670d612",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8d2597c8b873db2382ea71fe4cd5bbc16b23177bcf963ac9944a8001e9d83378.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43116b3f-9c56-f884-5392-457545c5d2c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Sphere.Variant80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.Isometry.cospherical {E F : Type*} [MetricSpace E] [MetricSpace F] {f : E → F}
    (hf : Isometry f) {ps : Set E} (hps : Cospherical ps) : Cospherical (f '' ps) := by
  rcases hps with ⟨c, r, hc⟩
  refine ⟨f c, r, ?_⟩
  rintro _ ⟨p, hp, rfl⟩
  rw [hf.dist_eq, hc p hp]

end MetricSpace

section NormedSpace

variable [NormedAddCommGroup V] [NormedSpace ℝ V] [MetricSpace P] [NormedAddTorsor V P]

/-- If a set of points is cospherical, then its image under the inclusion of any affine subspace
containing it is cospherical. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8d2597c8b873db2382ea71fe4cd5bbc16b23177bcf963ac9944a8001e9d83378.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8d2597c8b873db2382ea71fe4cd5bbc16b23177bcf963ac9944a8001e9d83378.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2b3b099402443851352843d8c69e5e283214b89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

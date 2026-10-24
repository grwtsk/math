# _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SimilarOfAngleAngle.Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.Similar.angle_eq_all

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef91d78a-4c17-0294-b8eb-345b9b62a0ae",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SimilarOfAngleAngle.Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.Similar.angle_eq_all",
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
  "slug": "root-grwtsk-geometry-classicalgeometry-euclideangeometry-similarofanglea--b2ada92d6234ea46667822db",
  "source": {
    "blob": "36b7ef05b8ed02fc77683eacaf24954997a1e36e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 148,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2ada92d6234ea46667822db5c37589a551326d72bb64a4499f0e15ac08a28c0",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef91d78a-4c17-0294-b8eb-345b9b62a0ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SimilarOfAngleAngle.Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.Similar.angle_eq_all (h : ![a, b, c] ∼ ![a', b', c']) :
    ∠ a b c = ∠ a' b' c' ∧ ∠ b c a = ∠ b' c' a' ∧ ∠ c a b = ∠ c' a' b' :=
  ⟨h.angle_eq, h.comm_left.comm_right.angle_eq, h.comm_right.comm_left.angle_eq⟩

end EuclideanGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36b7ef05b8ed02fc77683eacaf24954997a1e36e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

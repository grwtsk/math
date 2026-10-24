# eq_rotation_self_iff_angle_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:048e0426-92d3-cb08-956a-fd7c343b35f3",
  "kind": "theorem",
  "lexical_name": "eq_rotation_self_iff_angle_eq_zero",
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
  "slug": "eq-rotation-self-iff-angle-eq-zero--a183ff45389b09a1ea687031",
  "source": {
    "blob": "691884811efe9b7c63aa4d4db1790fd9502c7fb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 266,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Rotation/Variantcead4091a2480946d2b441b3624a9a7b5b73ea80b54779f9fd094ade31b35d0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a183ff45389b09a1ea6870310b91e8d1d3f6b2bd89e81a168e2b9b1431626068",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Rotation/Variantcead4091a2480946d2b441b3624a9a7b5b73ea80b54779f9fd094ade31b35d0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:048e0426-92d3-cb08-956a-fd7c343b35f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_rotation_self_iff_angle_eq_zero {x : V} (hx : x ≠ 0) (θ : Real.Angle) :
    x = o.rotation θ x ↔ θ = 0 := by rw [← o.rotation_eq_self_iff_angle_eq_zero hx, eq_comm]

/-- A rotation of a vector equals that vector if and only if the vector or the angle is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Rotation/Variantcead4091a2480946d2b441b3624a9a7b5b73ea80b54779f9fd094ade31b35d0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Rotation/Variantcead4091a2480946d2b441b3624a9a7b5b73ea80b54779f9fd094ade31b35d0f.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `691884811efe9b7c63aa4d4db1790fd9502c7fb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# angle_incenter_touchpoint_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a3ebe95-f698-9481-9e30-d84dab429fce",
  "kind": "lemma",
  "lexical_name": "angle_incenter_touchpoint_eq",
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
  "slug": "angle-incenter-touchpoint-eq--7c55bc337a514743716fca1e",
  "source": {
    "blob": "107ec32e2e0b69e072284ff08f4886d9128a9537",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 55,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant99138d7455941e567534fb4227722015fc45a85e21b64ca2134029722dfec2de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c55bc337a514743716fca1e989fe7c61a2d6e01c87a702ce59f35a05126fe6b",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant99138d7455941e567534fb4227722015fc45a85e21b64ca2134029722dfec2de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a3ebe95-f698-9481-9e30-d84dab429fce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma angle_incenter_touchpoint_eq {p : P} {i₁ i₂ : Fin (n + 1)}
    (hp₁ : p ∈ affineSpan ℝ (Set.range (s.faceOpposite i₁).points))
    (hp₂ : p ∈ affineSpan ℝ (Set.range (s.faceOpposite i₂).points)) :
    ∠ s.incenter p (s.touchpoint ∅ i₁) =
      ∠ s.incenter p (s.touchpoint ∅ i₂) :=
  s.excenterExists_empty.angle_excenter_touchpoint_eq hp₁ hp₂

variable {s} in
/-- Given a face of a simplex, if a point bisects the angle between that face and each other face,
as measured at points shared between those faces between that point and its projections onto the
faces, that point is an excenter of the simplex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant99138d7455941e567534fb4227722015fc45a85e21b64ca2134029722dfec2de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant99138d7455941e567534fb4227722015fc45a85e21b64ca2134029722dfec2de.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `107ec32e2e0b69e072284ff08f4886d9128a9537` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

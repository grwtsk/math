# normalizedRealAngle_eq_of_circle_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc46eab6-1e4a-efa6-996a-dd964ae46b76",
  "kind": "theorem",
  "lexical_name": "normalizedRealAngle_eq_of_circle_eq",
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
  "slug": "normalizedrealangle-eq-of-circle-eq--69c8dad0758d4ae18d829f72",
  "source": {
    "blob": "cea97cf3b665a0b3f3e0f5ba25887cb22ed5580c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 235,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69c8dad0758d4ae18d829f72481d9f8fbb3aff5d4ee3fa412913c95718e07cea",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc46eab6-1e4a-efa6-996a-dd964ae46b76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedRealAngle_eq_of_circle_eq (k : ℕ)
    (p q : BoundaryPoint k)
    (h : sourceAngularAddress k p = sourceAngularAddress k q) :
    realAngularAddress k (normalizedSource k p) =
      realAngularAddress k (normalizedSource k q) := by
  letI : Fact (0 < angularPeriod k) := ⟨angularPeriod_pos k⟩
  have hp := perimeterConnected_normalizedSource k p
  have hq := perimeterConnected_normalizedSource k q
  have h' :
      sourceAngularAddress k (normalizedSource k p) =
      sourceAngularAddress k (normalizedSource k q) :=
    (sourceAngularAddress_respects_connected k hp).symm.trans
      (h.trans (sourceAngularAddress_respects_connected k hq))
  rw [sourceAngularAddress_eq_coe_realAngularAddress,
      sourceAngularAddress_eq_coe_realAngularAddress] at h'
  exact (AddCircle.coe_eq_coe_iff_of_mem_Ico
    (normalizedRealAngle_mem_Ico k p)
    (normalizedRealAngle_mem_Ico k q)).mp h'

/-- UNIQUE half-open decomposition: real equality of normalized
addresses identifies the ORIGINAL source side and the actual t,
not merely their images under the attaching map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cea97cf3b665a0b3f3e0f5ba25887cb22ed5580c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

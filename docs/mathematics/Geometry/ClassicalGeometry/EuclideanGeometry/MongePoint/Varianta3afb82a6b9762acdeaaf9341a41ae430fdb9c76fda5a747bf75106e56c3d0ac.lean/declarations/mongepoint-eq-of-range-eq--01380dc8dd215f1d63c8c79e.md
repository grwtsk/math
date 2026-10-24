# mongePoint_eq_of_range_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd7c0b7c0360d55e119bd1fc6112048f448afdc3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3afb82a6b9762acdeaaf9341a41ae430fdb9c76fda5a747bf75106e56c3d0ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd2c7d01-a3f7-42d8-1e62-3e67a0b79d76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35d9e78d-8dc9-ed8e-0ce5-26b0be062e87",
  "kind": "theorem",
  "lexical_name": "mongePoint_eq_of_range_eq",
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
  "slug": "mongepoint-eq-of-range-eq--01380dc8dd215f1d63c8c79e",
  "source": {
    "blob": "cd7c0b7c0360d55e119bd1fc6112048f448afdc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 105,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Varianta3afb82a6b9762acdeaaf9341a41ae430fdb9c76fda5a747bf75106e56c3d0ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01380dc8dd215f1d63c8c79ec36db5747207a45ae8769c1f9622ddf92a787968",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Varianta3afb82a6b9762acdeaaf9341a41ae430fdb9c76fda5a747bf75106e56c3d0ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35d9e78d-8dc9-ed8e-0ce5-26b0be062e87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mongePoint_eq_of_range_eq {n : ℕ} {s₁ s₂ : Simplex ℝ P n}
    (h : Set.range s₁.points = Set.range s₂.points) : s₁.mongePoint = s₂.mongePoint := by
  simp_rw [mongePoint_eq_smul_vsub_vadd_circumcenter, centroid_eq_of_range_eq h,
    circumcenter_eq_of_range_eq h]
#align affine.simplex.monge_point_eq_of_range_eq Affine.Simplex.mongePoint_eq_of_range_eq

/-- The weights for the Monge point of an (n+2)-simplex, in terms of
`pointsWithCircumcenter`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Varianta3afb82a6b9762acdeaaf9341a41ae430fdb9c76fda5a747bf75106e56c3d0ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Varianta3afb82a6b9762acdeaaf9341a41ae430fdb9c76fda5a747bf75106e56c3d0ac.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd7c0b7c0360d55e119bd1fc6112048f448afdc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

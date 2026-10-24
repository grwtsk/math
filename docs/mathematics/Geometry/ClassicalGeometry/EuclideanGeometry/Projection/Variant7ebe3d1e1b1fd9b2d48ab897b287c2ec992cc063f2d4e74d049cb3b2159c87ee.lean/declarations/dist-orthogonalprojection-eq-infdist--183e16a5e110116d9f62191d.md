# dist_orthogonalProjection_eq_infDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2fd1e69f8dfc54ef2bda074b1300e3f735d61a7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 327,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30d84498-e0d9-af07-4b06-693d8d04c1f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:823f3a3e-826d-1b56-07bf-939224d62d1d",
  "kind": "lemma",
  "lexical_name": "dist_orthogonalProjection_eq_infDist",
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
  "slug": "dist-orthogonalprojection-eq-infdist--183e16a5e110116d9f62191d",
  "source": {
    "blob": "2fd1e69f8dfc54ef2bda074b1300e3f735d61a7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 327,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:183e16a5e110116d9f62191d180045caaa5a0ca19420ba3d55d558dbe0e3c9f3",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:823f3a3e-826d-1b56-07bf-939224d62d1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dist_orthogonalProjection_eq_infDist (s : AffineSubspace 𝕜 P) [Nonempty s]
    [s.direction.HasOrthogonalProjection] (p : P) :
    dist p (orthogonalProjection s p) = Metric.infDist p s := by
  refine le_antisymm ?_ (Metric.infDist_le_dist_of_mem (orthogonalProjection_mem _))
  rw [Metric.infDist_eq_iInf]
  refine le_ciInf fun x ↦ le_of_sq_le_sq ?_ dist_nonneg
  rw [dist_comm _ (x : P)]
  simp_rw [pow_two,
    dist_sq_eq_dist_orthogonalProjection_sq_add_dist_orthogonalProjection_sq p x.property]
  simp [mul_self_nonneg]

/-- The nonnegative distance between a point and its orthogonal projection to a subspace equals
the distance to that subspace as given by `Metric.infNndist`. This is not a `simp` lemma since
the simplest form depends on the context (if any calculations are to be done with the distance,
the version with the orthogonal projection gives access to more lemmas about orthogonal
projections that may be useful). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fd1e69f8dfc54ef2bda074b1300e3f735d61a7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

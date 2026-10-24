# cospherical_iff_exists_mem_of_complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27b9dc97-0cc6-f868-3c29-f454b6b0493e",
  "kind": "theorem",
  "lexical_name": "cospherical_iff_exists_mem_of_complete",
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
  "slug": "cospherical-iff-exists-mem-of-complete--e11f0ef5505e4793a0001ec1",
  "source": {
    "blob": "a90181c1c9463a6040d112e20d5d79aff5530ae3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 633,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant76b251d29eccd6c4a983f7da5549bf9c4df0b534d2d50ac859b7b10db17880b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e11f0ef5505e4793a0001ec1ad59d0f0cd621a34dee9c4d7a06048b4491f12ad",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant76b251d29eccd6c4a983f7da5549bf9c4df0b534d2d50ac859b7b10db17880b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27b9dc97-0cc6-f868-3c29-f454b6b0493e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 633–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cospherical_iff_exists_mem_of_complete {s : AffineSubspace ℝ P} {ps : Set P} (h : ps ⊆ s)
    [Nonempty s] [s.direction.HasOrthogonalProjection] :
    Cospherical ps ↔ ∃ center ∈ s, ∃ radius : ℝ, ∀ p ∈ ps, dist p center = radius := by
  constructor
  · rintro ⟨c, hcr⟩
    rw [exists_dist_eq_iff_exists_dist_orthogonalProjection_eq h c] at hcr
    exact ⟨orthogonalProjection s c, orthogonalProjection_mem _, hcr⟩
  · exact fun ⟨c, _, hd⟩ => ⟨c, hd⟩

/-- Given a nonempty affine subspace, whose direction is
finite-dimensional, that contains a set of points, those points are
cospherical if and only if they are equidistant from some point in
that subspace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant76b251d29eccd6c4a983f7da5549bf9c4df0b534d2d50ac859b7b10db17880b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant76b251d29eccd6c4a983f7da5549bf9c4df0b534d2d50ac859b7b10db17880b4.lean#L633).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a90181c1c9463a6040d112e20d5d79aff5530ae3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

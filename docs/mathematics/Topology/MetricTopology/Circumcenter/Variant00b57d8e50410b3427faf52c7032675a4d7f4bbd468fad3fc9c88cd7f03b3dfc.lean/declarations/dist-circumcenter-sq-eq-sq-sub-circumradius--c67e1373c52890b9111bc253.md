# dist_circumcenter_sq_eq_sq_sub_circumradius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3c8942f-b656-0551-7d74-62ad542f8d0c",
  "kind": "theorem",
  "lexical_name": "dist_circumcenter_sq_eq_sq_sub_circumradius",
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
  "slug": "dist-circumcenter-sq-eq-sq-sub-circumradius--c67e1373c52890b9111bc253",
  "source": {
    "blob": "fdf27b75e3954ea760c79c60baa5cb6d2eca1d7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 472,
    "line": 460,
    "path": "GRWTSK/Topology/MetricTopology/Circumcenter/Variant00b57d8e50410b3427faf52c7032675a4d7f4bbd468fad3fc9c88cd7f03b3dfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c67e1373c52890b9111bc25304cc18d58a220d6f97c04934e782eca070a61a07",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Circumcenter/Variant00b57d8e50410b3427faf52c7032675a4d7f4bbd468fad3fc9c88cd7f03b3dfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3c8942f-b656-0551-7d74-62ad542f8d0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_circumcenter_sq_eq_sq_sub_circumradius {n : ℕ} {r : ℝ} (s : Simplex ℝ P n) {p₁ : P}
    (h₁ : ∀ i : Fin (n + 1), dist (s.points i) p₁ = r)
    (h₁' : ↑(s.orthogonalProjectionSpan p₁) = s.circumcenter)
    (h : s.points 0 ∈ affineSpan ℝ (Set.range s.points)) :
    dist p₁ s.circumcenter * dist p₁ s.circumcenter = r * r - s.circumradius * s.circumradius := by
  rw [dist_comm, ← h₁ 0,
    s.dist_sq_eq_dist_orthogonalProjection_sq_add_dist_orthogonalProjection_sq p₁ h]
  simp only [h₁', dist_comm p₁, add_sub_cancel', Simplex.dist_circumcenter_eq_circumradius]
#align affine.simplex.dist_circumcenter_sq_eq_sq_sub_circumradius Affine.Simplex.dist_circumcenter_sq_eq_sq_sub_circumradius

/-- If there exists a distance that a point has from all vertices of a
simplex, the orthogonal projection of that point onto the subspace
spanned by that simplex is its circumcenter.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Circumcenter/Variant00b57d8e50410b3427faf52c7032675a4d7f4bbd468fad3fc9c88cd7f03b3dfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Circumcenter/Variant00b57d8e50410b3427faf52c7032675a4d7f4bbd468fad3fc9c88cd7f03b3dfc.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdf27b75e3954ea760c79c60baa5cb6d2eca1d7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

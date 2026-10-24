# inner_nonneg_of_dist_le_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b566747-72b8-ffcd-d935-ad13aab86e13",
  "kind": "theorem",
  "lexical_name": "inner_nonneg_of_dist_le_radius",
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
  "slug": "inner-nonneg-of-dist-le-radius--a23c2e8d6118458a0dace319",
  "source": {
    "blob": "c2b3b099402443851352843d8c69e5e283214b89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 560,
    "line": 553,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8d2597c8b873db2382ea71fe4cd5bbc16b23177bcf963ac9944a8001e9d83378.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a23c2e8d6118458a0dace31976e7fbdf3cfa045922e69845caaf71bc7b708888",
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

Occurrence: `result:1b566747-72b8-ffcd-d935-ad13aab86e13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–560.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_nonneg_of_dist_le_radius {s : Sphere P} {p₁ p₂ : P} (hp₁ : p₁ ∈ s)
    (hp₂ : dist p₂ s.center ≤ s.radius) : 0 ≤ ⟪p₁ -ᵥ p₂, p₁ -ᵥ s.center⟫ := by
  rcases inner_pos_or_eq_of_dist_le_radius hp₁ hp₂ with (h | rfl)
  · exact h.le
  · simp

/-- Given a point on a sphere and a point inside it, the inner product between the difference of
those points and the radius vector is positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8d2597c8b873db2382ea71fe4cd5bbc16b23177bcf963ac9944a8001e9d83378.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8d2597c8b873db2382ea71fe4cd5bbc16b23177bcf963ac9944a8001e9d83378.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2b3b099402443851352843d8c69e5e283214b89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

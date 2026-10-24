# inner_vsub_altitudeFoot_vsub_altitudeFoot_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ba8f545-712d-25a4-23be-672802c708a9",
  "kind": "lemma",
  "lexical_name": "inner_vsub_altitudeFoot_vsub_altitudeFoot_eq_zero",
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
  "slug": "inner-vsub-altitudefoot-vsub-altitudefoot-eq-zero--bdcb5e70c0a8c5782b15906d",
  "source": {
    "blob": "a1aa69771aa82b62f207e19c9fcdc09fd48e6eb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 324,
    "path": "GRWTSK/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdcb5e70c0a8c5782b15906d4b20b9142521b996bae0933d104aa84a35340907",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ba8f545-712d-25a4-23be-672802c708a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inner_vsub_altitudeFoot_vsub_altitudeFoot_eq_zero {i j : Fin (n + 1)} (h : i ≠ j) :
    have : NeZero n := by grind [neZero_iff]
    ⟪s.points j -ᵥ s.altitudeFoot i, s.points i -ᵥ s.altitudeFoot i⟫ = 0 := by
  have : NeZero n := by grind [neZero_iff]
  refine Submodule.inner_right_of_mem_orthogonal
    (K := vectorSpan ℝ (s.points '' {i}ᶜ))
    (vsub_mem_vectorSpan_of_mem_affineSpan_of_mem_affineSpan
      (s.mem_affineSpan_image_iff.2 h.symm)
      (Affine.Simplex.altitudeFoot_mem_affineSpan_image_compl _ _))
    ?_
  rw [← direction_affineSpan, ← Affine.Simplex.range_faceOpposite_points]
  exact vsub_orthogonalProjection_mem_direction_orthogonal _ _

/-- The inner product of an edge from `j` to `i` and the vector from the foot of `i` to `i`
is the square of the height. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1aa69771aa82b62f207e19c9fcdc09fd48e6eb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

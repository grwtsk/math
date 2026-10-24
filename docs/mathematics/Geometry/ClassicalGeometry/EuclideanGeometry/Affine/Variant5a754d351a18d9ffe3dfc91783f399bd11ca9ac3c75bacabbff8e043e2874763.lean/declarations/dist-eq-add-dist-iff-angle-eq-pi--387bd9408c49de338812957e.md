# dist_eq_add_dist_iff_angle_eq_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f8b8de5-4c7b-ce73-9524-8ec68a7a9f64",
  "kind": "theorem",
  "lexical_name": "dist_eq_add_dist_iff_angle_eq_pi",
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
  "slug": "dist-eq-add-dist-iff-angle-eq-pi--387bd9408c49de338812957e",
  "source": {
    "blob": "338879a70c8444ba628584a05335292d0e5cdbb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 207,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant5a754d351a18d9ffe3dfc91783f399bd11ca9ac3c75bacabbff8e043e2874763.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:387bd9408c49de338812957eb4227caea82b427a4b184c5180626d997363aeac",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant5a754d351a18d9ffe3dfc91783f399bd11ca9ac3c75bacabbff8e043e2874763.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f8b8de5-4c7b-ce73-9524-8ec68a7a9f64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_eq_add_dist_iff_angle_eq_pi {p₁ p₂ p₃ : P} (hp₁p₂ : p₁ ≠ p₂) (hp₃p₂ : p₃ ≠ p₂) :
    dist p₁ p₃ = dist p₁ p₂ + dist p₃ p₂ ↔ ∠ p₁ p₂ p₃ = π := by
  rw [dist_eq_norm_vsub V, dist_eq_norm_vsub V, dist_eq_norm_vsub V, ← vsub_sub_vsub_cancel_right]
  exact
    norm_sub_eq_add_norm_iff_angle_eq_pi (fun he => hp₁p₂ (vsub_eq_zero_iff_eq.1 he)) fun he =>
      hp₃p₂ (vsub_eq_zero_iff_eq.1 he)

/-- If ∠ABC = 0, then (dist A C) = abs ((dist A B) - (dist B C)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant5a754d351a18d9ffe3dfc91783f399bd11ca9ac3c75bacabbff8e043e2874763.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant5a754d351a18d9ffe3dfc91783f399bd11ca9ac3c75bacabbff8e043e2874763.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `338879a70c8444ba628584a05335292d0e5cdbb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

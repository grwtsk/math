# circumsphere_eq_of_dist_of_oangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67dd52eb843d47b38007a135f73dc570641932d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:edc87c84-397e-712d-276a-22fd06d13674",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:279e86e0-2bd0-3a09-35d6-f6558d3f3f09",
  "kind": "theorem",
  "lexical_name": "circumsphere_eq_of_dist_of_oangle",
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
  "slug": "circumsphere-eq-of-dist-of-oangle--1227b0554c828bcfddda150a",
  "source": {
    "blob": "67dd52eb843d47b38007a135f73dc570641932d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 276,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1227b0554c828bcfddda150a954d342e29c8611e83a16ff59dce269f138c3e63",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:279e86e0-2bd0-3a09-35d6-f6558d3f3f09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circumsphere_eq_of_dist_of_oangle (t : Triangle ℝ P) {i₁ i₂ i₃ : Fin 3} (h₁₂ : i₁ ≠ i₂)
    (h₁₃ : i₁ ≠ i₃) (h₂₃ : i₂ ≠ i₃) : t.circumsphere =
    ⟨((Real.Angle.tan (∡ (t.points i₁) (t.points i₂) (t.points i₃)))⁻¹ / 2) •
      o.rotation (π / 2 : ℝ) (t.points i₃ -ᵥ t.points i₁) +ᵥ midpoint ℝ (t.points i₁) (t.points i₃),
      dist (t.points i₁) (t.points i₃) /
        |Real.Angle.sin (∡ (t.points i₁) (t.points i₂) (t.points i₃))| / 2⟩ :=
  t.circumsphere.ext
    (t.inv_tan_div_two_smul_rotation_pi_div_two_vadd_midpoint_eq_circumcenter h₁₂ h₁₃ h₂₃).symm
    (t.dist_div_sin_oangle_div_two_eq_circumradius h₁₂ h₁₃ h₂₃).symm

/-- If two triangles have two points the same, and twice the angle at the third point the same,
they have the same circumsphere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67dd52eb843d47b38007a135f73dc570641932d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

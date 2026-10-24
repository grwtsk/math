# reflection_eq_iff_orthogonalProjection_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75b8762b-7a28-b93e-3110-6b5a2bb0140f",
  "kind": "theorem",
  "lexical_name": "reflection_eq_iff_orthogonalProjection_eq",
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
  "slug": "reflection-eq-iff-orthogonalprojection-eq--dfd7cf158e7aa3a4cc62de09",
  "source": {
    "blob": "677631e1550b57ba430dc68795e4c22ee2c5d3da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 482,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant0c9c9571b66a64edad7ec23f9e32b81421da3b3eecfca56dde9384bfa782ed79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfd7cf158e7aa3a4cc62de094591102c2cac145427a4cf6cb48fd010e3443ddc",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant0c9c9571b66a64edad7ec23f9e32b81421da3b3eecfca56dde9384bfa782ed79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75b8762b-7a28-b93e-3110-6b5a2bb0140f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflection_eq_iff_orthogonalProjection_eq (s₁ s₂ : AffineSubspace 𝕜 P) [Nonempty s₁]
    [Nonempty s₂] [s₁.direction.HasOrthogonalProjection] [s₂.direction.HasOrthogonalProjection]
    (p : P) :
    reflection s₁ p = reflection s₂ p ↔
      (orthogonalProjection s₁ p : P) = orthogonalProjection s₂ p := by
  rw [reflection_apply', reflection_apply']
  constructor
  · intro h
    rw [← @vsub_eq_zero_iff_eq V, vsub_vadd_eq_vsub_sub, vadd_vsub_assoc, add_comm, add_sub_assoc,
      vsub_sub_vsub_cancel_right, ←
      two_smul 𝕜 ((orthogonalProjection s₁ p : P) -ᵥ orthogonalProjection s₂ p), smul_eq_zero] at h
    simpa using h
  · intro h
    rw [h]

/-- The distance between `p₁` and the reflection of `p₂` equals that
between the reflection of `p₁` and `p₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant0c9c9571b66a64edad7ec23f9e32b81421da3b3eecfca56dde9384bfa782ed79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant0c9c9571b66a64edad7ec23f9e32b81421da3b3eecfca56dde9384bfa782ed79.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `677631e1550b57ba430dc68795e4c22ee2c5d3da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

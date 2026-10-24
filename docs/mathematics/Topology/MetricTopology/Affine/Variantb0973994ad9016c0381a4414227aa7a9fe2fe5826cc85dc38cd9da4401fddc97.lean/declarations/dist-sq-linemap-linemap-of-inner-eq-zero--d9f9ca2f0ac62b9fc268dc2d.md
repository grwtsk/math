# dist_sq_lineMap_lineMap_of_inner_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29379c22-681b-354a-fcb7-e996da49c4c7",
  "kind": "theorem",
  "lexical_name": "dist_sq_lineMap_lineMap_of_inner_eq_zero",
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
  "slug": "dist-sq-linemap-linemap-of-inner-eq-zero--d9f9ca2f0ac62b9fc268dc2d",
  "source": {
    "blob": "9fbc39c2876effbe7ca471748a211da5e06fe330",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 75,
    "path": "GRWTSK/Topology/MetricTopology/Affine/Variantb0973994ad9016c0381a4414227aa7a9fe2fe5826cc85dc38cd9da4401fddc97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9f9ca2f0ac62b9fc268dc2d7a488a2a15ab36bf6f985c5aa94e4fe76a0146f2",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Affine/Variantb0973994ad9016c0381a4414227aa7a9fe2fe5826cc85dc38cd9da4401fddc97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29379c22-681b-354a-fcb7-e996da49c4c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_sq_lineMap_lineMap_of_inner_eq_zero {a b c : P} (t₁ t₂ : ℝ)
    (h_inner : ⟪b -ᵥ a, c -ᵥ a⟫ = 0) :
    dist (AffineMap.lineMap a b t₁) (AffineMap.lineMap a c t₂) ^ 2 =
      t₁ ^ 2 * dist a b ^ 2 + t₂ ^ 2 * dist a c ^ 2 := by
  have hvec : AffineMap.lineMap a b t₁ -ᵥ AffineMap.lineMap a c t₂ =
              t₁ • (b -ᵥ a) - t₂ • (c -ᵥ a) := by
    rw [AffineMap.lineMap_apply, AffineMap.lineMap_apply, vadd_vsub_vadd_cancel_right]
  rw [dist_eq_norm_vsub V, hvec, norm_sub_sq_real, norm_smul, norm_smul,
      Real.norm_eq_abs, Real.norm_eq_abs, inner_smul_left, inner_smul_right, h_inner]
  simp only [mul_zero, sub_zero, mul_pow, sq_abs, ← dist_eq_norm_vsub' V]

/-- Squared distance from `p` to a point on the line from `a` to `b`,
given that `p -ᵥ a` is orthogonal to `b -ᵥ a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Affine/Variantb0973994ad9016c0381a4414227aa7a9fe2fe5826cc85dc38cd9da4401fddc97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Affine/Variantb0973994ad9016c0381a4414227aa7a9fe2fe5826cc85dc38cd9da4401fddc97.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fbc39c2876effbe7ca471748a211da5e06fe330` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

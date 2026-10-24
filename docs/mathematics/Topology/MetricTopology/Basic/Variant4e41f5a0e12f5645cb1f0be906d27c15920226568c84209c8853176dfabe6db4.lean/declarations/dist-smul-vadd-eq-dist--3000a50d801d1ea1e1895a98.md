# dist_smul_vadd_eq_dist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bbe341c-c27c-4a77-6795-9daed4216d8e",
  "kind": "theorem",
  "lexical_name": "dist_smul_vadd_eq_dist",
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
  "slug": "dist-smul-vadd-eq-dist--3000a50d801d1ea1e1895a98",
  "source": {
    "blob": "35842b188c5bc7938adda13615b712bafc0b48b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 109,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant4e41f5a0e12f5645cb1f0be906d27c15920226568c84209c8853176dfabe6db4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3000a50d801d1ea1e1895a98faf109cc6991a14c92ef62f4b790ff80aabd2441",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant4e41f5a0e12f5645cb1f0be906d27c15920226568c84209c8853176dfabe6db4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bbe341c-c27c-4a77-6795-9daed4216d8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_smul_vadd_eq_dist {v : V} (p₁ p₂ : P) (hv : v ≠ 0) (r : ℝ) :
    dist (r • v +ᵥ p₁) p₂ = dist p₁ p₂ ↔ r = 0 ∨ r = -2 * ⟪v, p₁ -ᵥ p₂⟫ / ⟪v, v⟫ := by
  conv_lhs =>
    rw [← mul_self_inj_of_nonneg dist_nonneg dist_nonneg, dist_smul_vadd_sq, mul_assoc,
      ← sub_eq_zero, add_sub_assoc, dist_eq_norm_vsub V p₁ p₂, ← real_inner_self_eq_norm_mul_norm,
      sub_self]
  have hvi : ⟪v, v⟫ ≠ 0 := by simpa using hv
  have hd : discrim ⟪v, v⟫ (2 * ⟪v, p₁ -ᵥ p₂⟫) 0 = 2 * ⟪v, p₁ -ᵥ p₂⟫ * (2 * ⟪v, p₁ -ᵥ p₂⟫) := by
    rw [discrim]
    ring
  rw [quadratic_eq_zero_iff hvi hd, neg_add_cancel, zero_div, neg_mul_eq_neg_mul, ←
    mul_sub_right_distrib, sub_eq_add_neg, ← mul_two, mul_assoc, mul_div_assoc, mul_div_mul_left,
    mul_div_assoc]
  simp

open AffineSubspace Module

/-- Distances `r₁` `r₂` of `p` from two different points `c₁` `c₂` determine at
most two points `p₁` `p₂` in a two-dimensional subspace containing those points
(two circles intersect in at most two points). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant4e41f5a0e12f5645cb1f0be906d27c15920226568c84209c8853176dfabe6db4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant4e41f5a0e12f5645cb1f0be906d27c15920226568c84209c8853176dfabe6db4.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35842b188c5bc7938adda13615b712bafc0b48b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

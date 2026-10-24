# cos_sin_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01e79ab2-3bc5-4b31-08d5-bbd27bb88b93",
  "kind": "theorem",
  "lexical_name": "cos_sin_inj",
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
  "slug": "cos-sin-inj--2c88263c6d72b4f4eed747e3",
  "source": {
    "blob": "358d8e29b4a6099451b07372ffb0d5827c3a2e6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 250,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant77e5f8f310cce7f5f847661fbb7b65cc1165a9c2ae308a2b23f23bb2e9d89a0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c88263c6d72b4f4eed747e353e6ef98d5be2762ca51a86887f75a124932fd94",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant77e5f8f310cce7f5f847661fbb7b65cc1165a9c2ae308a2b23f23bb2e9d89a0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01e79ab2-3bc5-4b31-08d5-bbd27bb88b93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cos_sin_inj {θ ψ : ℝ} (Hcos : cos θ = cos ψ) (Hsin : sin θ = sin ψ) : (θ : Angle) = ψ := by
  rcases cos_eq_iff_coe_eq_or_eq_neg.mp Hcos with hc | hc; · exact hc
  rcases sin_eq_iff_coe_eq_or_add_eq_pi.mp Hsin with hs | hs; · exact hs
  rw [eq_neg_iff_add_eq_zero, hs] at hc
  obtain ⟨n, hn⟩ : ∃ n, n • _ = _ := QuotientAddGroup.leftRel_apply.mp (Quotient.exact' hc)
  rw [← neg_one_mul, add_zero, ← sub_eq_zero, zsmul_eq_mul, ← mul_assoc, ← sub_mul, mul_eq_zero,
    eq_false (ne_of_gt pi_pos), or_false, sub_neg_eq_add, ← Int.cast_zero, ← Int.cast_one,
    ← Int.cast_ofNat, ← Int.cast_mul, ← Int.cast_add, Int.cast_inj] at hn
  have : (n * 2 + 1) % (2 : ℤ) = 0 % (2 : ℤ) := congr_arg (· % (2 : ℤ)) hn
  rw [add_comm, Int.add_mul_emod_self_right] at this
  exact absurd this one_ne_zero

/-- The sine of a `Real.Angle`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant77e5f8f310cce7f5f847661fbb7b65cc1165a9c2ae308a2b23f23bb2e9d89a0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant77e5f8f310cce7f5f847661fbb7b65cc1165a9c2ae308a2b23f23bb2e9d89a0c.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `358d8e29b4a6099451b07372ffb0d5827c3a2e6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# norm_cauchyPowerSeries_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8732d0dc-7b77-2157-ca93-6b27312a98be",
  "kind": "theorem",
  "lexical_name": "norm_cauchyPowerSeries_le",
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
  "slug": "norm-cauchypowerseries-le--4159a6170b4da49e1396813e",
  "source": {
    "blob": "522ba9768c647004c25d3a1572e6ea4c05ff58b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 487,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CircleIntegral/Variantcb7e17c2b8c4fbb5baa5c94c455a509741af15f774c0fdbbc41eb16b2f591113.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4159a6170b4da49e1396813ed9992b7f2515dba823407e73a17a36e18d78283e",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CircleIntegral/Variantcb7e17c2b8c4fbb5baa5c94c455a509741af15f774c0fdbbc41eb16b2f591113.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8732d0dc-7b77-2157-ca93-6b27312a98be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_cauchyPowerSeries_le (f : ℂ → E) (c : ℂ) (R : ℝ) (n : ℕ) :
    ‖cauchyPowerSeries f c R n‖ ≤
      ((2 * π)⁻¹ * ∫ θ : ℝ in (0)..2 * π, ‖f (circleMap c R θ)‖) * |R|⁻¹ ^ n :=
  calc ‖cauchyPowerSeries f c R n‖
    _ = (2 * π)⁻¹ * ‖∮ z in C(c, R), (z - c)⁻¹ ^ n • (z - c)⁻¹ • f z‖ := by
      simp [cauchyPowerSeries, norm_smul, Real.pi_pos.le]
    _ ≤ (2 * π)⁻¹ * ∫ θ in (0)..2 * π, ‖deriv (circleMap c R) θ •
        (circleMap c R θ - c)⁻¹ ^ n • (circleMap c R θ - c)⁻¹ • f (circleMap c R θ)‖ :=
      (mul_le_mul_of_nonneg_left
        (intervalIntegral.norm_integral_le_integral_norm Real.two_pi_pos.le)
        (by simp [Real.pi_pos.le]))
    _ = (2 * π)⁻¹ *
        (|R|⁻¹ ^ n * (|R| * (|R|⁻¹ * ∫ x : ℝ in (0)..2 * π, ‖f (circleMap c R x)‖))) := by
      simp [norm_smul, mul_left_comm |R|]
    _ ≤ ((2 * π)⁻¹ * ∫ θ : ℝ in (0)..2 * π, ‖f (circleMap c R θ)‖) * |R|⁻¹ ^ n := by
      rcases eq_or_ne R 0 with (rfl | hR)
      · cases n <;> simp [-mul_inv_rev]
        rw [← mul_assoc, inv_mul_cancel₀ (Real.two_pi_pos.ne.symm), one_mul]
        apply norm_nonneg
      · rw [mul_inv_cancel_left₀, mul_assoc, mul_comm (|R|⁻¹ ^ n)]
        rwa [Ne, _root_.abs_eq_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CircleIntegral/Variantcb7e17c2b8c4fbb5baa5c94c455a509741af15f774c0fdbbc41eb16b2f591113.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CircleIntegral/Variantcb7e17c2b8c4fbb5baa5c94c455a509741af15f774c0fdbbc41eb16b2f591113.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `522ba9768c647004c25d3a1572e6ea4c05ff58b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

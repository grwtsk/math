# dist_next_apply_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:908dc3c4-4769-a087-ef08-f02404acfc53",
  "kind": "theorem",
  "lexical_name": "dist_next_apply_le_of_le",
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
  "slug": "dist-next-apply-le-of-le--4b28b8e524ad76c02563db7e",
  "source": {
    "blob": "e0cf0a7edf3ee7e8e5b47c47f97b9c5b365532bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 266,
    "path": "GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b28b8e524ad76c02563db7ea30041b4070061075f1e5bc97459f1a9ad0a097b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:908dc3c4-4769-a087-ef08-f02404acfc53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_next_apply_le_of_le {f₁ f₂ : FunSpace v} {n : ℕ} {d : ℝ}
    (h : ∀ t, dist (f₁ t) (f₂ t) ≤ (v.L * |t.1 - v.t₀|) ^ n / n ! * d) (t : Icc v.tMin v.tMax) :
    dist (next f₁ t) (next f₂ t) ≤ (v.L * |t.1 - v.t₀|) ^ (n + 1) / (n + 1)! * d := by
  simp only [dist_eq_norm, next_apply, add_sub_add_left_eq_sub, ←
    intervalIntegral.integral_sub (intervalIntegrable_vComp _ _ _)
      (intervalIntegrable_vComp _ _ _),
    norm_integral_eq_norm_integral_uIoc] at *
  calc
    ‖∫ τ in Ι (v.t₀ : ℝ) t, f₁.vComp τ - f₂.vComp τ‖ ≤
        ∫ τ in Ι (v.t₀ : ℝ) t, v.L * ((v.L * |τ - v.t₀|) ^ n / n ! * d) := by
      refine norm_integral_le_of_norm_le (Continuous.integrableOn_uIoc (by fun_prop)) ?_
      refine (ae_restrict_mem measurableSet_Ioc).mono fun τ hτ ↦ ?_
      refine (v.lipschitzOnWith (v.proj τ).2).norm_sub_le_of_le (f₁.mem_closedBall _)
          (f₂.mem_closedBall _) ((h _).trans_eq ?_)
      rw [v.proj_of_mem]
      exact uIcc_subset_Icc v.t₀.2 t.2 <| Ioc_subset_Icc_self hτ
    _ = (v.L * |t.1 - v.t₀|) ^ (n + 1) / (n + 1)! * d := by
      simp_rw [mul_pow, div_eq_mul_inv, mul_assoc, MeasureTheory.integral_const_mul,
        MeasureTheory.integral_mul_const, integral_pow_abs_sub_uIoc, div_eq_mul_inv,
        pow_succ' (v.L : ℝ), Nat.factorial_succ, Nat.cast_mul, Nat.cast_succ, mul_inv, mul_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0cf0a7edf3ee7e8e5b47c47f97b9c5b365532bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

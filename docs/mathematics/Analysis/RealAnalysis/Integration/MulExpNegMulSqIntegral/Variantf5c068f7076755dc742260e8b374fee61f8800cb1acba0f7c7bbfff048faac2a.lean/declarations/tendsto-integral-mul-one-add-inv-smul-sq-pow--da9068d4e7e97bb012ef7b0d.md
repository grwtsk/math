# tendsto_integral_mul_one_add_inv_smul_sq_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04a95c66-6bd2-ac48-1740-83e9e3dcf1b9",
  "kind": "theorem",
  "lexical_name": "tendsto_integral_mul_one_add_inv_smul_sq_pow",
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
  "slug": "tendsto-integral-mul-one-add-inv-smul-sq-pow--da9068d4e7e97bb012ef7b0d",
  "source": {
    "blob": "f4e9c3f1df13aab54fb93e8f3ca7c8698e8d1fb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 85,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variantf5c068f7076755dc742260e8b374fee61f8800cb1acba0f7c7bbfff048faac2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da9068d4e7e97bb012ef7b0d90eb9aaf32a1ce39a8c17d5ce2db0cd3c3bf6266",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variantf5c068f7076755dc742260e8b374fee61f8800cb1acba0f7c7bbfff048faac2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04a95c66-6bd2-ac48-1740-83e9e3dcf1b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_integral_mul_one_add_inv_smul_sq_pow (g : E →ᵇ ℝ) (hε : 0 < ε) :
    Tendsto (fun (n : ℕ) => ∫ x, (g * (1 + (n : ℝ)⁻¹ • -(ε • g * g)) ^ n) x ∂ P)
    atTop (𝓝 (∫ x, mulExpNegMulSq ε (g x) ∂P)) := by
  apply tendsto_integral_filter_of_norm_le_const ?h_meas ?h_bound ?h_lim
  · apply Eventually.of_forall
    exact fun n => StronglyMeasurable.aestronglyMeasurable (Continuous.stronglyMeasurable
        (Continuous.mul g.continuous ((1 + ((n : ℝ)⁻¹ • -(ε • g * g))) ^ n).continuous))
  · obtain ⟨N, hgN⟩ := exists_nat_gt (ε * (norm g * norm g))
    use norm g
    rw [eventually_atTop]
    use N
    intro n hn
    have hnpos : 0 < (n : ℝ) := by
      apply lt_of_lt_of_le (lt_of_le_of_lt _ hgN) (Nat.cast_le.mpr hn)
      exact (mul_nonneg (le_of_lt hε) (mul_self_nonneg (norm g)))
    apply Eventually.of_forall
    intro x
    simp only [smul_neg, BoundedContinuousFunction.coe_mul, Pi.mul_apply, pow_apply,
      BoundedContinuousFunction.coe_add, BoundedContinuousFunction.coe_one, coe_neg,
      BoundedContinuousFunction.coe_smul, smul_eq_mul, Pi.add_apply, Pi.one_apply, Pi.neg_apply,
      norm_mul, norm_eq_abs, norm_pow]
    refine (mul_le_mul_of_nonneg_right (norm_coe_le_norm g x) (pow_nonneg (abs_nonneg _) n)).trans
      <| mul_le_of_le_one_right (norm_nonneg _) ?_
    apply pow_le_one₀ (abs_nonneg _)
    rw [mul_assoc, inv_mul_eq_div, abs_le]
    refine ⟨?_, (add_le_iff_nonpos_right 1).mpr (Left.neg_nonpos_iff.mpr
      (div_nonneg (mul_nonneg (le_of_lt hε) (mul_self_nonneg (g x))) (le_of_lt hnpos)))⟩
    apply le_trans (by linarith) (sub_nonneg_of_le ((div_le_one hnpos).mpr _))
    apply le_trans (le_trans _ (le_of_lt hgN)) (Nat.cast_le.mpr hn)
    apply mul_le_mul (Preorder.le_refl ε) _ (mul_self_nonneg (g x)) (le_of_lt hε)
    rw [← abs_le_iff_mul_self_le, abs_norm]
    exact norm_coe_le_norm g x
  · apply Eventually.of_forall
    intro x
    apply Tendsto.const_mul (g x)
    simp [mul_assoc, inv_mul_eq_div, ← neg_div]
    exact tendsto_one_add_div_pow_exp (-(ε * (g x * g x)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variantf5c068f7076755dc742260e8b374fee61f8800cb1acba0f7c7bbfff048faac2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variantf5c068f7076755dc742260e8b374fee61f8800cb1acba0f7c7bbfff048faac2a.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4e9c3f1df13aab54fb93e8f3ca7c8698e8d1fb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# isUniformInducing_cast_withVal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:247eb481-61d5-6338-b7ef-4cee88f88037",
  "kind": "lemma",
  "lexical_name": "isUniformInducing_cast_withVal",
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
  "slug": "isuniforminducing-cast-withval--30c9835a2be28cf3dd4aa1d9",
  "source": {
    "blob": "0cb2d9fa749a094d34941116e6a6c11fedf589ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/WithVal/Variant995dfd95e7421c08054e816a5ff58ceffbbe380b5c4a00b0f78a91a3a9c6279a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30c9835a2be28cf3dd4aa1d99531d1fc476762862baaa1af8c2fe72684e246a0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/WithVal/Variant995dfd95e7421c08054e816a5ff58ceffbbe380b5c4a00b0f78a91a3a9c6279a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:247eb481-61d5-6338-b7ef-4cee88f88037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isUniformInducing_cast_withVal : IsUniformInducing ((Rat.castHom ℚ_[p]).comp
    (WithVal.equiv (Rat.padicValuation p)).toRingHom) := by
  have hp0' : 0 < (p : ℚ) := by simp [Nat.Prime.pos Fact.out]
  have hp0 : 0 < (p : ℝ)⁻¹ := by simp [Nat.Prime.pos Fact.out]
  have hp1' : 1 < (p : ℚ) := by simp [Nat.Prime.one_lt Fact.out]
  have hp1 : (p : ℝ)⁻¹ < 1 := by simp [inv_lt_one_iff₀, Nat.Prime.one_lt Fact.out]
  rw [Filter.HasBasis.isUniformInducing_iff (Valued.hasBasis_uniformity _ _)
    (Metric.uniformity_basis_dist_le_pow hp0 hp1)]
  simp only [Set.mem_ofPred_eq, dist_eq_norm_sub, inv_pow, RingEquiv.toRingHom_eq_coe,
    RingHom.coe_comp, Rat.coe_castHom, RingHom.coe_coe, Function.comp_apply, ← Rat.cast_sub,
    ← map_sub, Padic.eq_padicNorm, true_and, forall_const]
  constructor
  · intro n
    have hn : Valued.v (R := (WithVal (Rat.padicValuation p))) (p ^ n) =
      exp (-n : ℤ) := by
      simp only [← WithVal.val_apply_equiv, map_pow, map_natCast, Rat.padicValuation_self,
        Int.reduceNeg, exp_neg, inv_pow, ← exp_nsmul, nsmul_eq_mul, mul_one]
    use Units.mk0 (Valued.v.restrict (p ^ n)) (by
      simp [Valuation.restrict_def, Nat.Prime.ne_zero Fact.out])
    intro x y h
    set x' := (WithVal.equiv (Rat.padicValuation p)) x with hx
    set y' := (WithVal.equiv (Rat.padicValuation p)) y with hy
    rw [Valuation.map_sub_swap, Units.val_mk0, Valuation.restrict_lt_iff, hn] at h
    change Rat.padicValuation p (x' - y') < exp _ at h
    rw [← Nat.cast_pow, ← Rat.cast_natCast, ← Rat.cast_inv_of_ne_zero, Rat.cast_le]
    · rw [map_sub, ← hx, ← hy]
      simp only [Rat.padicValuation, Valuation.coe_mk, MonoidWithZeroHom.coe_mk, ZeroHom.coe_mk,
        padicNorm, zpow_neg, Nat.cast_pow] at h ⊢
      split_ifs with H
      · simp
      · simp only [H, ↓reduceIte, exp_lt_exp, neg_lt_neg_iff] at h
        simpa [hp0', zpow_pos, pow_pos, inv_le_inv₀] using
          zpow_right_mono₀ (by exact_mod_cast (Nat.Prime.one_le Fact.out)) h.le
    · simp [Nat.Prime.ne_zero Fact.out]
  · intro γ
    use (log ((embedding γ.val) * exp (-1))).natAbs
    intro x y h
    set x' := (WithVal.equiv (Rat.padicValuation p)) x with hx
    set y' := (WithVal.equiv (Rat.padicValuation p)) y with hy
    rw [Valuation.map_sub_swap, Valuation.restrict_lt_iff_lt_embedding]
    change Rat.padicValuation p (x' - y') < embedding γ.1
    rw [← Nat.cast_pow, ← Rat.cast_natCast, ← Rat.cast_inv_of_ne_zero, Rat.cast_le] at h
    · change padicNorm p (x' - y') ≤ _ at h
      simp only [Rat.padicValuation, Valuation.coe_mk, MonoidWithZeroHom.coe_mk, ZeroHom.coe_mk,
        padicNorm, zpow_neg, Nat.cast_pow] at h ⊢
      split_ifs with H
      · simp only [exp_neg]
        exact embedding_unit_pos _
      · rw [← lt_log_iff_exp_lt (embedding_unit_ne_zero _)]
        simp_all [← zpow_natCast, zpow_pos, inv_le_inv₀, zpow_le_zpow_iff_right₀ hp1', abs_le,
          Int.lt_iff_add_one_le]
    · simp [Nat.Prime.ne_zero Fact.out]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/WithVal/Variant995dfd95e7421c08054e816a5ff58ceffbbe380b5c4a00b0f78a91a3a9c6279a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/WithVal/Variant995dfd95e7421c08054e816a5ff58ceffbbe380b5c4a00b0f78a91a3a9c6279a.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cb2d9fa749a094d34941116e6a6c11fedf589ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

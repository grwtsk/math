# bklnw_corollary_9_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ca845d5-96e5-9d85-fb5e-36a19f910e13",
  "kind": "theorem",
  "lexical_name": "bklnw_corollary_9_1",
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
  "slug": "bklnw-corollary-9-1--df39e142ade145e24ec3c469",
  "source": {
    "blob": "ffde19a257af38792c1e302adf6bb58acc6c98a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1793,
    "line": 1721,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df39e142ade145e24ec3c4692c2ee082f29be5cfcd063d4d721be2b28f49253e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ca845d5-96e5-9d85-fb5e-36a19f910e13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1721–1793.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bklnw_corollary_9_1 (k : ℕ) (v c C b : ℝ) (hvcc : (100, v, c, C) ∈ table_from_buthe) (hb : max (10000 : ℝ) (exp (2 * k)) ≤ exp b ∧ exp b ≤ v) :
  ∀ x ∈ Set.Icc (exp b) v, θ x ≥ x - C_bk b c C RS_prime.c₀ k * x / (log x)^k := by
  obtain ⟨hb_lb, hb_ub⟩ := hb
  set u := exp (b / 2) with hu_def
  obtain ⟨hbk, hu_ge_100, hb_pos, hu_lt_v, hu_ge_1, hu_sq⟩ :=
    exp_half_mem_Icc_of_exp_mem k v b hb_lb hb_ub
  have hψ_bound_uv : ∀ x ∈ Set.Icc u v, -c ≤ (x - ψ x) / sqrt x ∧ (x - ψ x) / sqrt x ≤ C := by
    intro x hx
    apply bklnw_table_from_buthe 100 v c C hvcc
    exact ⟨le_trans (by exact_mod_cast hu_ge_100) hx.1, hx.2⟩
  have hψ_linear : ∀ x > 0, ψ x < RS_prime.c₀ * x :=
    fun x hx => RS_prime.theorem_12 hx
  have hlemma9 : ∀ x ∈ Set.Icc (exp b) v,
      θ x ≥ x - (C + 1) * x ^ (1 / 2 : ℝ) - RS_prime.c₀ * x ^ (1 / 3 : ℝ)
              - c * x ^ (1 / 4 : ℝ) - RS_prime.c₀ * x ^ (1 / 5 : ℝ) := by
    have h9 := bklnw_lemma_9 u v c C RS_prime.c₀ ⟨hu_ge_1, hu_lt_v⟩ hψ_bound_uv hψ_linear
    rwa [hu_sq] at h9
  intro x hx_mem
  have hx_pos : (0 : ℝ) < x := (exp_pos b).trans_le hx_mem.1
  have hx_log : b ≤ log x := by
    have := hx_mem.1
    rwa [← Real.log_exp b, Real.log_le_log_iff (exp_pos b) hx_pos]
  have hterm1 := log_pow_mul_rpow_neg_le_pow_mul_exp_neg k 1 (by norm_num) b hbk x hx_pos hx_log
  have hterm2 := log_pow_mul_rpow_neg_le_pow_mul_exp_neg k 2 (by norm_num) b hbk x hx_pos hx_log
  have hterm3 := log_pow_mul_rpow_neg_le_pow_mul_exp_neg k 3 (by norm_num) b hbk x hx_pos hx_log
  have hterm4 := log_pow_mul_rpow_neg_le_pow_mul_exp_neg k 4 (by norm_num) b hbk x hx_pos hx_log
  obtain ⟨hc_nonneg, hC_nonneg⟩ := table_from_buthe_cC_nonneg v c C hvcc
  have hc₀_nonneg : (0 : ℝ) ≤ RS_prime.c₀ := by norm_num [RS_prime.c₀]
  have hlogk_pos : 0 < (log x) ^ k := pow_pos (by linarith) k
  have hrw1 : x ^ (1 / 2 : ℝ) = x ^ (-(1 : ℝ) / (1 + 1)) * x := by
    rw [show (1 / 2 : ℝ) = 1 / (1 + 1 : ℝ) by norm_num]
    exact rpow_one_div_succ_eq_rpow_neg_div_mul 1 (by norm_num) x hx_pos
  have hrw2 : x ^ (1 / 3 : ℝ) = x ^ (-(2 : ℝ) / (2 + 1)) * x := by
    rw [show (1 / 3 : ℝ) = 1 / (2 + 1 : ℝ) by norm_num]
    exact rpow_one_div_succ_eq_rpow_neg_div_mul 2 (by norm_num) x hx_pos
  have hrw3 : x ^ (1 / 4 : ℝ) = x ^ (-(3 : ℝ) / (3 + 1)) * x := by
    rw [show (1 / 4 : ℝ) = 1 / (3 + 1 : ℝ) by norm_num]
    exact rpow_one_div_succ_eq_rpow_neg_div_mul 3 (by norm_num) x hx_pos
  have hrw4 : x ^ (1 / 5 : ℝ) = x ^ (-(4 : ℝ) / (4 + 1)) * x := by
    rw [show (1 / 5 : ℝ) = 1 / (4 + 1 : ℝ) by norm_num]
    exact rpow_one_div_succ_eq_rpow_neg_div_mul 4 (by norm_num) x hx_pos
  suffices h_sum_le : (C + 1) * x ^ (1 / 2 : ℝ) + RS_prime.c₀ * x ^ (1 / 3 : ℝ)
      + c * x ^ (1 / 4 : ℝ) + RS_prime.c₀ * x ^ (1 / 5 : ℝ)
      ≤ C_bk b c C RS_prime.c₀ k * x / (log x) ^ k by
    linarith [hlemma9 x hx_mem]
  calc (C + 1) * x ^ (1 / 2 : ℝ) + RS_prime.c₀ * x ^ (1 / 3 : ℝ)
          + c * x ^ (1 / 4 : ℝ) + RS_prime.c₀ * x ^ (1 / 5 : ℝ)
      _ ≤ ((C + 1) * (b ^ k * exp (-(1 : ℝ) * b / (1 + 1)))
            + RS_prime.c₀ * (b ^ k * exp (-(2 : ℝ) * b / (2 + 1)))
            + c * (b ^ k * exp (-(3 : ℝ) * b / (3 + 1)))
            + RS_prime.c₀ * (b ^ k * exp (-(4 : ℝ) * b / (4 + 1)))) * x / (log x) ^ k := by
          rw [hrw1, hrw2, hrw3, hrw4, le_div_iff₀ hlogk_pos]
          nlinarith [mul_le_mul_of_nonneg_left hterm1 (by linarith : (0:ℝ) ≤ C + 1),
                     mul_le_mul_of_nonneg_left hterm2 hc₀_nonneg,
                     mul_le_mul_of_nonneg_left hterm3 hc_nonneg,
                     mul_le_mul_of_nonneg_left hterm4 hc₀_nonneg,
                     mul_nonneg (rpow_nonneg hx_pos.le (-(1 : ℝ) / (1 + 1))) hx_pos.le,
                     mul_nonneg (rpow_nonneg hx_pos.le (-(2 : ℝ) / (2 + 1))) hx_pos.le,
                     mul_nonneg (rpow_nonneg hx_pos.le (-(3 : ℝ) / (3 + 1))) hx_pos.le,
                     mul_nonneg (rpow_nonneg hx_pos.le (-(4 : ℝ) / (4 + 1))) hx_pos.le]
      _ = C_bk b c C RS_prime.c₀ k * x / (log x) ^ k := by
          simp only [C_bk]; ring_nf

@[blueprint
  "bklnw-table-12-verification"
  (title := "BKLNW Table 12 verification")
  (statement := /--  Verification of the entries of Table 12. -/)
  (proof := /-- For each row, the constant $C_{b,k}$ of Corollary \ref{bklnw-corollary-9-1}
is at most the tabulated entry.  This is a finite numerical check, carried out by
`table\_12\_check` in `BKLNW\_tables.lean` via interval arithmetic, using
$C_{b,k} = b^k \cdot S$ with $S$ independent of $k$. -/)
  (latexEnv := "proposition")
  (discussion := 1263)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean#L1721).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffde19a257af38792c1e302adf6bb58acc6c98a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

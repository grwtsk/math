# Solution_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30d000e0-2005-c510-03f2-2762f6d8c9ea",
  "kind": "theorem",
  "lexical_name": "Solution_1",
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
  "slug": "solution-1--880a6d4f650191b2ecf685bf",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3093,
    "line": 3024,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:880a6d4f650191b2ecf685bf376820de06fd34ad5ef913bb0ada83ba3550b35f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30d000e0-2005-c510-03f2-2762f6d8c9ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3024–3093.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Solution_1 (ε : ℝ) (hε : ε > 0) : ∀ᶠ n in .atTop, ∃ f : Factorization n,
    f.total_imbalance = 0 ∧ f.a.card ≤ n - n / Real.log n + ε * n / Real.log n := by
  have h_stirling : ∀ᶠ n : ℕ in .atTop,
      log (n ! : ℝ) ≤ n * Real.log n - n + (ε / 4) * n := by
    have h_ratio : Filter.Tendsto
        (fun n : ℕ ↦ (n ! : ℝ) / (sqrt (2 * n * π) * (n / exp 1) ^ n))
        .atTop (nhds 1) := by
      have h := Stirling.factorial_isEquivalent_stirling
      rw [isEquivalent_iff_tendsto_one] at h
      · exact h
      · filter_upwards [Filter.eventually_gt_atTop 0] with n hn; positivity
    have h_ratio_le : ∀ᶠ n : ℕ in .atTop,
        (n ! : ℝ) / (sqrt (2 * n * π) * (n / exp 1) ^ n) ≤ 2 :=
      h_ratio.eventually (Metric.ball_mem_nhds 1 one_pos) |>.mono fun n hn ↦ by
        simp only [Real.dist_eq] at hn; linarith [abs_sub_lt_iff.mp hn]
    have h_log_o := isLittleO_log_id_atTop.def (by linarith : (0 : ℝ) < ε / 16)
    have h_const : ∀ᶠ n : ℕ in .atTop, Real.log 2 + log (2 * π) / 2 ≤ (ε / 16) * n := by
      let c := Real.log 2 + log (2 * π) / 2
      filter_upwards [Filter.eventually_ge_atTop (ceil (c / (ε / 16)) + 1)] with n hn
      calc c = (ε / 16) * (c / (ε / 16)) := by field_simp
        _ ≤ (ε / 16) * (ceil (c / (ε / 16)) + 1) := by
            gcongr; exact (le_ceil _).trans (le_add_of_nonneg_right (by norm_num))
        _ ≤ (ε / 16) * n := by gcongr; exact_mod_cast hn
    filter_upwards [h_ratio_le, h_log_o.natCast_atTop, h_const, Filter.eventually_gt_atTop 0]
      with n h_rat h_logn h_c hn_pos
    have hn : (0 : ℝ) < n := cast_pos.mpr hn_pos
    have h_fact : (n ! : ℝ) ≤ 2 * sqrt (2 * n * π) * (n / exp 1) ^ n := by
      calc (n ! : ℝ) = (n ! : ℝ) / (sqrt (2 * n * π) * (n / exp 1) ^ n) *
      have h_denom_pos : sqrt (2 * n * π) * (n / exp 1) ^ n > 0 := by positivity
              (sqrt (2 * n * π) * (n / exp 1) ^ n) := by field_simp
        _ ≤ 2 * (sqrt (2 * n * π) * (n / exp 1) ^ n) := by gcongr
        _ = 2 * sqrt (2 * n * π) * (n / exp 1) ^ n := by ring
    simp only [id, norm_eq_abs] at h_logn
    have hn1 : (1 : ℝ) ≤ n := by
      exact_mod_cast one_le_iff_ne_zero.mpr (pos_iff_ne_zero.mp hn_pos)
    rw [abs_of_nonneg (Real.log_nonneg hn1), abs_of_nonneg hn.le] at h_logn
    have h2npi : (0 : ℝ) < 2 * n * π := by positivity
    have h2pi : (0 : ℝ) < 2 * π := by positivity
    have hsqrt : sqrt (2 * n * π) > 0 := by positivity
    have hpow : (n / exp 1 : ℝ) ^ n > 0 := by positivity
    calc Real.log (n ! : ℝ)
        ≤ log (2 * sqrt (2 * n * π) * (n / exp 1) ^ n) := log_le_log (by positivity) h_fact
      _ = Real.log 2 + log (2 * n * π) / 2 + n * Real.log n - n := by
        rw [show (2 : ℝ) * sqrt (2 * n * π) * (n / exp 1) ^ n =
              2 * (sqrt (2 * n * π) * (n / exp 1) ^ n) by ring, log_mul (by norm_num)
                (mul_pos hsqrt hpow).ne', log_mul hsqrt.ne' hpow.ne', sqrt_eq_rpow, log_rpow h2npi,
                  Real.log_pow, log_div hn.ne' (exp_pos 1).ne', log_exp]
        ring
      _ = Real.log 2 + Real.log (2 * π) / 2 + Real.log n / 2 + n * Real.log n - n := by
          have : Real.log (2 * n * π) = Real.log (2 * π) + Real.log n := by
            rw [show (2 : ℝ) * n * π = 2 * π * n by ring, log_mul h2pi.ne' hn.ne']
          linarith [this]
      _ ≤ (ε / 16) * n + (ε / 16) * n / 2 + n * Real.log n - n := by gcongr
      _ = n * Real.log n - n + (3 * ε / 32) * n := by ring
      _ ≤ n * Real.log n - n + (ε / 4) * n := by nlinarith
  filter_upwards [Params.initial.score (ε / 2) (by linarith),
    h_stirling, Filter.eventually_gt_atTop 1]
    with n ⟨P, hPn, hP_score⟩ h_stir hn
  obtain ⟨f, hf_bal, hf_card⟩ := Factorization.card_bound P.initial P.L
  subst hPn
  refine ⟨f, hf_bal, ?_⟩
  have hlogn_pos : Real.log P.n > 0 := Real.log_pos (by exact_mod_cast hn)
  calc (f.a.card : ℝ)
      ≤ (Real.log P.n.factorial + P.initial.score P.L) / Real.log P.n := by
          rw [le_div_iff₀ hlogn_pos]; exact hf_card
    _ ≤ (P.n * Real.log P.n - P.n + (ε / 4) * P.n + (ε / 2) * P.n) / Real.log P.n := by gcongr
    _ = P.n - P.n / Real.log P.n + (3 * ε / 4) * P.n / Real.log P.n := by field_simp; ring
    _ ≤ P.n - P.n / Real.log P.n + ε * P.n / Real.log P.n := by gcongr; linarith

/-- Pair up elements of a list by multiplying consecutive pairs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L3024).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

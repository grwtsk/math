# Criterion.mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1df0036932c50be6ae794baf03b00c927520c3660ca7939e343043915b2880f0",
  "kind": "def",
  "lexical_name": "Criterion.mk'",
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
  "slug": "criterion-mk--96e11e57eeb088dd3ef5a360",
  "source": {
    "blob": "a71400b521d5902842b91edafd8e491fe67e89eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1667,
    "line": 1596,
    "path": "GRWTSK/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96e11e57eeb088dd3ef5a36038b026953c453e1c108ae934968c723b0dc4fdea",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1df0036932c50be6ae794baf03b00c927520c3660ca7939e343043915b2880f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1596–1667.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Criterion.mk' {n : ℕ} (hn : n ≥ X₀ ^ 2) : Criterion where
  n := n
  p := (exists_p_primes hn).choose
  q := (exists_q_primes hn).choose
  hn := le_trans (by decide : 1 ≤ 89693 ^ 2) hn
  hp := (exists_p_primes hn).choose_spec.1
  hp_mono := (exists_p_primes hn).choose_spec.2.1
  hq := (exists_q_primes hn).choose_spec.1
  hq_mono := (exists_q_primes hn).choose_spec.2.1
  h_ord_1 := (exists_p_primes hn).choose_spec.2.2.2
  h_ord_2 := by
    have hn_pos : (0 : ℝ) < n := by positivity
    have hp' : ((exists_p_primes hn).choose 2 : ℝ) ≤ √n * (1 + 1 / (log √n) ^ 3) ^ 3 := by
      convert (exists_p_primes hn).choose_spec.2.2.1 2 using 2; norm_cast
    have hq' : n * (1 + 1 / (log √n) ^ 3) ^ (-3 : ℝ) ≤ (exists_q_primes hn).choose 0 := by
      convert (exists_q_primes hn).choose_spec.2.2.1 0 using 2
      norm_num
    have hε_pos := hε_pos hn
    have hmid :
        √n * (1 + 1 / (log √n) ^ 3) ^ 3 < n * (1 + 1 / (log √n) ^ 3) ^ (-3 : ℝ) := by
      norm_cast
      norm_num [rpow_neg_one] at *
      rw [← div_eq_mul_inv, lt_div_iff₀ <| pow_pos hε_pos 3]
      have : (1 + ((log √n) ^ 3)⁻¹) ^ 6 < 2 :=
        calc (1 + ((log √n) ^ 3)⁻¹) ^ 6 < (1 + (11 ^ 3 : ℝ)⁻¹) ^ 6 := by gcongr; linarith [hlog hn]
          _ ≤ 2 := by norm_num
      nlinarith [mul_self_sqrt (Nat.cast_nonneg n), hsqrt_ge hn]
    exact_mod_cast hp'.trans_lt <| hmid.trans_le hq'
  h_ord_3 := (exists_q_primes hn).choose_spec.2.2.2
  h_crit := by
    have hn₀ : 0 ≤ Real.log √n := by
      grw [hn]
      simp [log_nonneg]
    have h₁ : 1 - (4 : ℝ) *
        (∏ i, (exists_p_primes hn).choose i : ℝ) / ∏ i, ((exists_q_primes hn).choose i : ℝ) ≥
        1 - 4 * (1 + 0.000675) ^ 12 * ((1 / 89693) * (1 / n)) := by
      grw [pq_ratio_ge hn, inv_cube_log_sqrt_le hn, ← inv_n_pow_3_div_2_le hn]
      simp [field]
    have : 0 ≤ 1 - 4 * (1 + 0.000675 : ℝ) ^ 12 * ((1 / 89693) * (1 / n)) := by
      grw [hn]
      norm_num
    have := this.trans h₁
    have hn' : (0 : ℝ) ≤ 1 / ↑n ∧ (1 : ℝ) / ↑n ≤ 1 / 89693 ^ 2 := ⟨by simp, by grw [hn]; simp⟩
    grw [Lcm.prod_q_ge hn, Lcm.prod_p_ge hn, h₁]
    simp_rw [div_eq_mul_one_div (_ ^ (_ : ℝ) : ℝ) (n : ℝ),
      show 3 / (8 * n : ℝ) = 3 / 8 * (1 / n) by field_simp, ← one_div_mul_one_div]
    grw [inv_cube_log_sqrt_le hn, inv_n_add_sqrt_ge hn]
    set ε : ℝ := 1 / n
    calc
      _ ≤ ∏ i : Fin 3, (1 + (1 + 0.000675 : ℝ) ^ (i + 1 : ℝ) * ε) := by gcongr
      _ = ∏ i : Fin 3, (1 + (1.000675 : ℝ) ^ (i + 1 : ℝ) * ε) := by norm_num [div_eq_mul_inv]
      _ ≤ _ := (prod_epsilon_le (ε := ε) hn')
      _ ≤ _ := final_comparison hn'
      _ ≤ _ := by
        grw [← prod_epsilon_ge hn']
        apply le_of_eq
        simp [field]
        ring_nf

blueprint_comment /--
\subsection{Conclusion for large \(n\)}
-/

@[blueprint
  "thm:large-n-final"
  (title := "Non-highly abundant for large \\(n\\)")
  (statement := /-- For every integer \(n \ge 89693^2\), the integer \(L_n\) is not highly
  abundant. -/)
  (proof := /-- By Proposition~\ref{prop:ineq-holds-large-n}, there exist primes
  \(p_1,p_2,p_3,q_1,q_2,q_3\) satisfying the hypotheses of Theorem~\ref{thm:criterion}.
  Hence \(L_n\) is not highly abundant. -/)
  (proofUses := ["prop:ineq-holds-large-n", "thm:criterion"])]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean#L1596).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a71400b521d5902842b91edafd8e491fe67e89eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

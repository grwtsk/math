# Criterion.σnorm_M_ge_σnorm_L'_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39458ad6-ef65-4e65-733a-53947101a7ab",
  "kind": "theorem",
  "lexical_name": "Criterion.σnorm_M_ge_σnorm_L'_mul",
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
  "slug": "criterion-norm-m-ge-norm-l-mul--def856d8bb89df80c8c87e38",
  "source": {
    "blob": "5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 980,
    "line": 843,
    "path": "GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:def856d8bb89df80c8c87e380c1cc471611bbbd0f37d0436534563b119212439",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39458ad6-ef65-4e65-733a-53947101a7ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 843–980.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Criterion.σnorm_M_ge_σnorm_L'_mul (c : Criterion) :
    σnorm c.M ≥
      σnorm c.L' * (∏ i, (1 + 1 / (c.p i * (c.p i + 1 : ℝ)))) * (1 + 3 / (8 * c.n)) := by
  have h_sigma_norm_M : (σnorm c.M) = (σnorm (c.L' : ℕ)) * (∏ p ∈ Nat.primeFactors c.M,
      ((∑ i ∈ Finset.range (Nat.factorization c.M p + 1), (1 / p : ℝ) ^ i) /
      (∑ i ∈ Finset.range (Nat.factorization (c.L' : ℕ) p + 1), (1 / p : ℝ) ^ i))) := by
    have h_sigma_norm_prod : ∀ {n : ℕ}, n ≠ 0 → (σnorm n : ℝ) = (∏ p ∈ Nat.primeFactors n,
        ((∑ i ∈ Finset.range (Nat.factorization n p + 1), (1 / p : ℝ) ^ i))) := by
      intro n hn_ne_zero
      have h_sigma_def : ((σ n) : ℝ) = (∏ p ∈ Nat.primeFactors n, (∑ i ∈ Finset.range
          (Nat.factorization n p + 1), (p ^ i : ℝ))) := by
        unfold σ
        have h_sigma_def : ∀ {n : ℕ}, n ≠ 0 → (Nat.divisors n).sum (fun d ↦ d) =
            ∏ p ∈ n.primeFactors, (∑ i ∈ Finset.range (Nat.factorization n p + 1), p ^ i) := by
          exact fun {n} a ↦ sum_divisors a
        convert congr_arg (( ↑ ) : ℕ → ℝ) (h_sigma_def hn_ne_zero) using 1 <;>
        norm_num [ArithmeticFunction.sigma]
      have h_sigma_def : (n : ℝ) = (∏ p ∈ Nat.primeFactors n, (p ^ (Nat.factorization n p) : ℝ)) :=
        mod_cast Eq.symm (Nat.prod_factorization_pow_eq_self hn_ne_zero)
      simp_all only [div_eq_mul_inv]
      rw [← div_eq_mul_inv, ← Finset.prod_div_distrib]
      refine Finset.prod_congr rfl fun p hp ↦ ?_
      field_simp
      rw [Finset.mul_sum _ _ _, ← Finset.sum_flip]
      exact Finset.sum_congr rfl fun i hi ↦ by
        rw [show ((1:ℝ) / ↑p) ^ i = 1 / ((↑p) ^ i) by simp]
        rw [mul_one_div, eq_div_iff (pow_ne_zero _ <| Nat.cast_ne_zero.mpr <| Nat.ne_of_gt <|
          Nat.pos_of_mem_primeFactors hp), ←pow_add, Nat.sub_add_cancel <|
          Finset.mem_range_succ_iff.mp hi]
    by_cases hM : c.M = 0 <;> by_cases hL' : c.L' = 0
    · simp_all
    · exact absurd hM (Nat.ne_of_gt (Criterion.M_pos c))
    · exact absurd hL' (Nat.ne_of_gt (Criterion.L'_pos c))
    · simp_all only [ne_eq, one_div, inv_pow, not_false_eq_true, prod_div_distrib]
      rw [mul_div, eq_div_iff]
      · rw [mul_comm, ← Finset.prod_subset (show c.L'.primeFactors ⊆ c.M.primeFactors from ?_)]
        · intro p hp hpn; rw [Nat.factorization_eq_zero_of_not_dvd] <;> aesop
        · intro p hp; simp_all only [mem_primeFactors, ne_eq, not_false_eq_true, and_true, true_and]
          exact dvd_trans hp.2 (by exact ⟨(4 * ∏ i, c.p i) * c.m, by rw [Criterion.M]; ring⟩)
      · exact Finset.prod_ne_zero_iff.mpr fun p hp ↦ ne_of_gt <| Finset.sum_pos
          (fun _ _ ↦ inv_pos.mpr <| pow_pos (Nat.cast_pos.mpr <| Nat.pos_of_mem_primeFactors hp) _)
          <| by norm_num
  have h_ratio_terms (p : ℕ) (hp : p ∈ Nat.primeFactors c.M) : (∑ i ∈ Finset.range
      (Nat.factorization c.M p + 1), (1 / p : ℝ) ^ i) / (∑ i ∈ Finset.range
      (Nat.factorization (c.L' : ℕ) p + 1), (1 / p : ℝ) ^ i) ≥ if p ∈ Finset.image c.p Finset.univ
      then (1 + 1 / (p * (p + 1) : ℝ)) else if p = 2 then (1 + 3 / (8 * c.n : ℝ)) else 1 := by
    split_ifs
    · obtain ⟨i, hi⟩ : ∃ i : Fin 3, p = c.p i := by grind
      have h_ratio_p_i : (∑ i ∈ Finset.range (Nat.factorization c.M p + 1), (1 / p : ℝ) ^ i) /
          (∑ i ∈ Finset.range (Nat.factorization (c.L' : ℕ) p + 1), (1 / p : ℝ) ^ i) ≥
          (∑ i ∈ Finset.range 3, (1 / p : ℝ) ^ i) / (∑ i ∈ Finset.range 2, (1 / p : ℝ) ^ i) := by
        rw [show Nat.factorization (c.L' : ℕ) p = 1 from hi ▸ c.val_p_L' i]
        exact div_le_div_of_nonneg_right (Finset.sum_le_sum_of_subset_of_nonneg (Finset.range_mono
          (by grind [c.val_p_M_ge_two i])) fun _ _ _ ↦ by positivity)
          (Finset.sum_nonneg fun _ _ ↦ by positivity)
      convert h_ratio_p_i using 1; norm_num [Finset.sum_range_succ]; ring_nf; field_simp; grind
    · have h_geo_series : (∑ i ∈ Finset.range (Nat.factorization c.M 2 + 1), (1 / 2 : ℝ) ^ i)
          / (∑ i ∈ Finset.range (Nat.factorization c.L' 2 + 1), (1 / 2 : ℝ) ^ i) ≥
          (1 + 3 / (8 * c.n : ℝ)) := by
        have h_geo_series : (∑ i ∈ Finset.range (Nat.factorization c.M 2 + 1), (1 / 2 : ℝ) ^ i)
            / (∑ i ∈ Finset.range (Nat.factorization (c.L' : ℕ) 2 + 1), (1 / 2 : ℝ) ^ i) ≥
            (∑ i ∈ Finset.range (Nat.factorization (c.L' : ℕ) 2 + 3), (1 / 2 : ℝ) ^ i) /
            (∑ i ∈ Finset.range (Nat.factorization (c.L' : ℕ) 2 + 1), (1 / 2 : ℝ) ^ i) := by
          exact div_le_div_of_nonneg_right (Finset.sum_le_sum_of_subset_of_nonneg
            (Finset.range_mono (by linarith [val_two_M_ge_L' c])) fun _ _ _ ↦ by positivity)
            (Finset.sum_nonneg fun _ _ ↦ by positivity)
        refine le_trans ?_ h_geo_series
        convert σnorm_ratio_ge_aux c.n _ using 1
        exact c.val_two_L'.symm ▸ Nat.pow_log_le_self 2 (by linarith [c.hn])
      aesop
    · rw [ge_iff_le, le_div_iff₀] <;> norm_num
      · refine Finset.sum_le_sum_of_subset_of_nonneg (Finset.range_mono (Nat.succ_le_succ ?_))
          fun ?_ ?_ ?_ ↦ by positivity
        have h_div : c.L' ∣ c.M := by
          exact dvd_mul_left _ _
        exact (Nat.factorization_le_iff_dvd (by aesop) (by aesop)) |>.2 h_div p
      · exact Finset.sum_pos (fun _ _ ↦ inv_pos.mpr (pow_pos (Nat.cast_pos.mpr
          (Nat.pos_of_mem_primeFactors hp)) _)) (by norm_num)
  have h_prod_ratio_terms : (∏ p ∈ Nat.primeFactors c.M,
      ((∑ i ∈ Finset.range (Nat.factorization c.M p + 1), (1 / p : ℝ) ^ i) /
      (∑ i ∈ Finset.range (Nat.factorization (c.L' : ℕ) p + 1), (1 / p : ℝ) ^ i))) ≥
      (∏ p ∈ Finset.image c.p Finset.univ, (1 + 1/(p * (p + 1) : ℝ)))*(1 + 3 / (8 * c.n : ℝ)) := by
    refine le_trans ?_ (Finset.prod_le_prod ?_ h_ratio_terms)
    · rw [Finset.prod_ite]
      refine mul_le_mul ?_ ?_ (by positivity) (Finset.prod_nonneg fun _ _ ↦ by positivity)
      · rw [Finset.prod_subset]
        · simp only [mem_image, mem_univ, true_and, subset_iff, mem_filter, mem_primeFactors,
            forall_exists_index, forall_apply_eq_imp_iff, exists_apply_eq_apply, and_true]
          intro i; exact ⟨c.hp i, by
            exact dvd_mul_of_dvd_left (dvd_mul_of_dvd_left (dvd_mul_of_dvd_right
              (Finset.dvd_prod_of_mem _ (Finset.mem_univ _)) _) _) _, by
              exact Nat.ne_of_gt (Criterion.M_pos c)⟩
        · aesop
      · rw [Finset.prod_ite]
        by_cases h : 2 ∈ c.M.primeFactors <;> simp_all +decide only
          [mem_primeFactors, true_and, prod_const]
        · simp only [one_pow, mul_one]
          refine le_self_pow₀ (M₀ := ℝ) (by norm_num ; positivity) ?_
          · norm_num; exact ⟨2, Nat.prime_two, h.1, h.2, fun i ↦ by linarith [c.p_gt_two i], rfl⟩
        · contrapose! h
          refine ⟨dvd_mul_of_dvd_left ?_ _, Nat.ne_of_gt (Criterion.M_pos c)⟩
          · exact dvd_mul_of_dvd_left (dvd_mul_of_dvd_left (by decide) _) _
    · intro p hp; split_ifs <;> positivity
  simp_all
  rw [Finset.prod_image] at h_prod_ratio_terms <;> norm_num [Finset.prod_range_succ] at *
  · simpa only [mul_assoc] using mul_le_mul_of_nonneg_left h_prod_ratio_terms <|
      show 0 ≤ σnorm c.L' by exact div_nonneg (Nat.cast_nonneg _) <| Nat.cast_nonneg _
  · simp [c.hp_mono.injective]



blueprint_comment /--
We have thus completed the key step of demonstrating a sufficient criterion to establish that
$L_n$ is not highly abundant:
-/

@[blueprint
  "thm:criterion"
  (statement := /--
    Let $n \geq 1$.
  Suppose that primes \(p_1,p_2,p_3,q_1,q_2,q_3\) satisfy
  \[
    \sqrt{n} < p_1 < p_2 < p_3 < q_1 < q_2 < q_3 < n
  \]
  and the key criterion \eqref{eq:main-ineq}.
  Then \(L_n\) is not highly abundant.
  -/)
  (proof := /--
  By Lemma~\ref{lem:sigmaM-lower-final}, the condition \eqref{eq:sigmaM-lower} holds.
  By Lemma~\ref{lem:criterion-reduced} this implies
  \[
    \frac{\sigma(M)}{M}
    \Bigl(1 - \frac{4 p_1 p_2 p_3}{q_1 q_2 q_3}\Bigr)
    \ge \frac{\sigma(L_n)}{L_n}.
  \]
  Applying Lemma~\ref{lem:criterion-sufficient}, we obtain \(\sigma(M) \ge \sigma(L_n)\) with
  \(M < L_n\), so \(L_n\) cannot be highly abundant.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean#L843).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

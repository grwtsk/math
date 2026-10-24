# Params.initial.bound_score_4

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2738,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8be74475-7203-0ce6-685e-1321ff4575e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b19b9881-e023-4e8f-cd38-d1a03c2cf6e8",
  "kind": "theorem",
  "lexical_name": "Params.initial.bound_score_4",
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
  "slug": "params-initial-bound-score-4--2cb47cdc1893a46bd6bcc82c",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2800,
    "line": 2738,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cb47cdc1893a46bd6bcc82c00b91cdab5b96a76488a212ab61e7b9eca427f69",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b19b9881-e023-4e8f-cd38-d1a03c2cf6e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2738–2800.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Params.initial.bound_score_4 (ε : ℝ) (hε : ε > 0) (L : ℕ) :
    ∀ᶠ n in .atTop, ∀ P : Params, P.L = L → P.n = n →
      ∑ p ∈ filter (·.Prime) (Icc (P.n / P.L + 1) P.n),
      (P.n / p) * Real.log (P.n / p) ≤ ε * P.n := by
  have h_term_bound : ∀ (n L : ℕ), 0 < n → 0 < L →
      ∀ p ∈ Finset.filter (·.Prime) (Icc (n / L + 1) n),
      ((n : ℝ) / p) * Real.log (n / p) ≤ L * Real.log L := by
    intro n L hn hL p hp
    have hp_Icc := Finset.mem_Icc.mp (mem_filter.mp hp).1
    have hp_prime : p.Prime := (mem_filter.mp hp).2
    have h_div_bound : (n / p : ℝ) ≤ L := by
      rw [div_le_iff₀ (cast_pos.mpr hp_prime.pos)]
      norm_cast
      nlinarith [Nat.div_add_mod n L, Nat.mod_lt n hL, hp_Icc.1, hp_Icc.2]
    gcongr
    · exact log_nonneg <| by
        rw [le_div_iff₀ (cast_pos.mpr hp_prime.pos)]
        norm_cast
        grind
    · exact div_pos (cast_pos.mpr hn) (cast_pos.mpr hp_prime.pos)
  have h_num_terms : ∀ (n L : ℕ), 0 < n → 0 < L →
      (Finset.filter (·.Prime) (Icc (n / L + 1) n)).card ≤ primeCounting n := by
    intro n L _ _
    rw [primeCounting, primeCounting', count_eq_card_filter_range]
    exact card_mono fun x hx ↦ Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (by
      linarith [Finset.mem_Icc.mp (Finset.mem_filter.mp hx).1]), (mem_filter.mp hx).2⟩
  have h_bound : ∀ᶠ n in .atTop, ∀ P : Params, P.L = L → P.n = n →
      (∑ p ∈ filter (·.Prime) (Icc (P.n / P.L + 1) P.n),
        ((P.n : ℝ) / p) * Real.log (P.n / p))
        ≤ (primeCounting P.n) * L * Real.log L := by
    filter_upwards [Filter.eventually_gt_atTop 0] with n hn P hP₁ hP₂
    refine le_trans (Finset.sum_le_sum fun x hx ↦ h_term_bound _ _ (by linarith) P.hL_pos _ hx) ?_
    · simp_all only [gt_iff_lt, Finset.mem_filter, Finset.mem_Icc,
        and_imp, sum_const, nsmul_eq_mul, mul_assoc]
      exact mul_le_mul_of_nonneg_right (mod_cast h_num_terms n L hn (by linarith [P.hL_pos]))
        (mul_nonneg (cast_nonneg _) (log_natCast_nonneg _))
  have h_tendsto : Filter.Tendsto
      (fun n ↦ (primeCounting n : ℝ) * L * Real.log L / n)
      .atTop (nhds 0) := by
    have := primeCounting_is_o_id
    rw [isLittleO_iff_tendsto] at this
    · convert this.const_mul (L * Real.log L) using 2 <;> ring
    · aesop
  have h_pi_bound : ∀ᶠ n in .atTop, (primeCounting n : ℝ) * L * Real.log L ≤ ε * n := by
    filter_upwards [h_tendsto.eventually (gt_mem_nhds (show 0 < ε by positivity)),
      Filter.eventually_gt_atTop 0] with n hn hn'
    rw [div_lt_iff₀ (by positivity : (0 : ℝ) < n)] at hn
    linarith
  filter_upwards [h_bound, h_pi_bound] with n hn hn' P hP hP'
  exact le_trans (hn P hP hP') (by simpa [hP'] using hn')

@[blueprint
  "primeCounting-le-bound"
  (statement := /-- For all $n \geq 2$, one has
  $$\pi(n) \leq \sqrt{n} + \frac{2n \log 4}{\log n}.$$ -/)
  (proof := /-- By Chebyshev's bound, $\prod_{p \leq n} p \leq 4^n$, so
$\sum_{p \leq n} \log p \leq n \log 4$. The number of primes $p \leq \sqrt{n}$ is trivially
at most $\sqrt{n}$. For primes $p > \sqrt{n}$, we have $\log p > \frac{1}{2} \log n$, hence
$$\bigl(\pi(n) - \pi(\sqrt{n})\bigr) \cdot \tfrac{1}{2} \log n
  < \sum_{\sqrt{n} < p \leq n} \log p \leq n \log 4,$$
giving $\pi(n) - \pi(\sqrt{n}) < \frac{2n \log 4}{\log n}$. Adding $\pi(\sqrt{n}) \leq \sqrt{n}$
yields the result. -/)
  (latexEnv := "sublemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L2738).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

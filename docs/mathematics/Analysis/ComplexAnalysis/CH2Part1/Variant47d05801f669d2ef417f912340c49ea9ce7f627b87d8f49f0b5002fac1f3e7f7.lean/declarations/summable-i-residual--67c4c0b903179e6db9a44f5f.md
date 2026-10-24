# summable_I'_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:642ee3c5-bbef-2f33-ec75-e2506f05a7b9",
  "kind": "lemma",
  "lexical_name": "summable_I'_residual",
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
  "slug": "summable-i-residual--67c4c0b903179e6db9a44f5f",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1077,
    "line": 1025,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67c4c0b903179e6db9a44f5faa0f115e66b6ae878c6abfec4a83146ab72634ed",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:642ee3c5-bbef-2f33-ec75-e2506f05a7b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1025–1077.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma summable_I'_residual {a : ℕ → ℝ} (ha_pos : ∀ n, a n ≥ 0)
    {T β σ : ℝ} (hT : 0 < T) (hσ : σ ≠ 1)
    (ha : Summable (fun n ↦ ‖(a n : ℂ)‖ / (n * log n ^ β)))
    {x : ℝ} (hx : 1 ≤ x) :
    Summable (fun (n : ℕ+) ↦ a n * (x / n) * I' ((2 * π * (σ - 1)) / T) ((T / (2 * π)) * log (n / x))) := by
  by_cases hσ_lt : σ < 1
  · apply summable_of_hasFiniteSupport
    have h_support : Function.support (fun (n : ℕ+) ↦ a n * (x / n) * I' ((2 * π * (σ - 1)) / T) ((T / (2 * π)) * log (n / x))) ⊆ Set.Iic (⟨⌊x⌋₊, Nat.floor_pos.mpr hx⟩ : ℕ+) := by
      intro n hn
      rw [Function.mem_support] at hn
      have hI : I' ((2 * π * (σ - 1)) / T) ((T / (2 * π)) * log (n / x)) ≠ 0 := by
        contrapose! hn; simp [hn]
      unfold I' at hI
      split_ifs at hI with h_cond
      · have h_const : (2 * π * (σ - 1) / T) * (T / (2 * π) * log (n / x)) = (σ - 1) * log (n / x) := by
          field_simp [Real.pi_pos.ne', hT.ne']
        rw [h_const] at h_cond
        have h_log : log (n / x) ≤ 0 :=
          nonpos_of_mul_nonneg_right h_cond (sub_neg_of_lt hσ_lt)
        exact Nat.le_floor ((div_le_one (zero_lt_one.trans_le hx)).mp
          ((log_le_log_iff (div_pos (Nat.cast_pos.mpr n.pos) (zero_lt_one.trans_le hx)) zero_lt_one).mp (h_log.trans_eq Real.log_one.symm)))
      · exact absurd rfl hI
    exact (Set.finite_Iic _).subset h_support
  · have hσ_gt : 1 < σ := lt_of_le_of_ne (not_lt.mp hσ_lt) hσ.symm
    have h_bound : ∀ (n : ℕ+), a n * (x / n) * I' ((2 * π * (σ - 1)) / T) ((T / (2 * π)) * log (n / x)) ≤ a n * (x ^ σ) * (1 / (n : ℝ) ^ σ) :=
      fun n ↦ I'_mul_le_rpow_of_one_lt (ha_pos n) hT hx n
    apply Summable.of_nonneg_of_le
    · intro n
      unfold I'
      split_ifs
      · exact mul_nonneg (mul_nonneg (ha_pos n) (div_nonneg (zero_lt_one.trans_le hx).le (by positivity))) (by positivity)
      · simp
    · exact h_bound
    · have h_summable_nterm : Summable (fun n : ℕ+ ↦ (a n : ℝ) / (n : ℝ) ^ σ) := by
        convert (summable_pnat_iff_summable_nat (f := nterm (fun n ↦ ↑(a n)) σ)).mpr ?_ using 1
        · ext n ; simp only [nterm, PNat.ne_zero, ↓reduceIte, norm_real, norm_eq_abs]
          rw [abs_of_nonneg (ha_pos _)]
        · exact summable_nterm_of_log_weight hσ_gt ha
      convert h_summable_nterm.mul_left (x ^ σ) using 1
      ext n
      ring

@[blueprint
  "ch2-prop-2-4-minus"
  (title := "CH2 Proposition 2.4, lower bound")
  (statement := /--
  Let $a_n$ be a non-negative sequence with $\sum_{n>1} \frac{|a_n|}{n \log^\beta n} < \infty$ for some $\beta > 1$.  Assume that $\sum_n a_n n^{-s} - \frac{1}{s-1}$ extends continuously to a function $G$ defined on $1 + i[-T,T]$.  Let $\varphi_-$ be absolutely integrable, supported on $[-1,1]$, and has Fourier decay $\hat \varphi_-(y) = O(1/|y|^\beta)$.  Let $\sigma \neq 1$ and write $\lambda = 2\pi(\sigma-1)/T$.  Assume $\hat \varphi_-(y) \leq I_\lambda(y)$ for all $y$. Then for any $x\geq 1$ and $\sigma \neq 1$,
  $$ S_\sigma(x) \geq \frac{2\pi x^{1-\sigma}}{T} \varphi_-(0) + \frac{x^{-\sigma}}{T} \int_{-T}^T \varphi_-(t/T) G(1+it) x^{1+it}\ dt - \frac{1_{(-\infty,1)}(\sigma)}{1-\sigma}.$$
  -/)
  (proof := /-- Similar to the proof of Proposition \ref{ch2-prop-2-4-plus}; see \cite[Proposition 2.4]{CH2} for details.
  -/)
  (latexEnv := "proposition")
  (discussion := 883)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L1025).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

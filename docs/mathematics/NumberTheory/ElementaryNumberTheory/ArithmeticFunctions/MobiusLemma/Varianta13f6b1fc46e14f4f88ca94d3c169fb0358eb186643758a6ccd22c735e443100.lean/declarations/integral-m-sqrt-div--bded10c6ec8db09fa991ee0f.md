# integral_M_sqrt_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3605ba51d6d0c5c046a782e0b91ce751e7ecc3e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a13f6b1fc46e14f4f88ca94d3c169fb0358eb186643758a6ccd22c735e443100.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57a26007-f2c3-7def-8e19-db8797aa19e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a39beb2c-a10a-6d02-2249-0fc123fdf523",
  "kind": "theorem",
  "lexical_name": "integral_M_sqrt_div",
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
  "slug": "integral-m-sqrt-div--bded10c6ec8db09fa991ee0f",
  "source": {
    "blob": "3605ba51d6d0c5c046a782e0b91ce751e7ecc3e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 265,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Varianta13f6b1fc46e14f4f88ca94d3c169fb0358eb186643758a6ccd22c735e443100.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bded10c6ec8db09fa991ee0f3292a16576e99216fe540423dd2412e3e3071841",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Varianta13f6b1fc46e14f4f88ca94d3c169fb0358eb186643758a6ccd22c735e443100.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a39beb2c-a10a-6d02-2249-0fc123fdf523`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_M_sqrt_div (x : ℝ) (hx : 0 < x) :
    ∫ u in 0..x, (M (sqrt (x / u)) : ℝ) = x * ∑' n : ℕ, (moebius n : ℝ) / (n : ℝ) ^ 2 := by
  have h_abs : ∀ n : ℕ, |(moebius n : ℝ)| ≤ 1 := fun n ↦ by
    simp only [moebius, coe_mk]; split_ifs <;> norm_num
  have h_integral : ∫ u in (0 : ℝ)..x, (M (sqrt (x / u)) : ℝ) =
      ∑' n : ℕ, (moebius n : ℝ) * ∫ u in (0 : ℝ)..x, if n ≤ sqrt (x / u) then 1 else 0 := by
    have h_rewrite : ∫ u in (0 : ℝ)..x, (M (sqrt (x / u)) : ℝ) =
        ∫ u in (0 : ℝ)..x, ∑' n : ℕ, (moebius n : ℝ) * (if n ≤ sqrt (x / u) then 1 else 0) := by
      refine intervalIntegral.integral_congr fun u _ ↦ ?_
      rw [tsum_eq_sum (s := Ioc 0 ⌊sqrt (x / u)⌋₊)]
      · simp only [M, Int.cast_sum]
        refine sum_congr rfl fun i hi ↦ ?_
        rw [mul_ite, mul_one, mul_zero, if_pos]
        exact le_trans (Nat.cast_le.mpr (mem_Ioc.mp hi).2) (Nat.floor_le (sqrt_nonneg _))
      · intro n hn
        simp only [mul_ite, mul_one, mul_zero]
        by_cases hn0 : n = 0
        · simp [hn0, moebius]
        · rw [if_neg]; intro hle; apply hn; rw [mem_Ioc]
          exact ⟨Nat.pos_of_ne_zero hn0, Nat.le_floor hle⟩
    rw [h_rewrite, intervalIntegral.integral_of_le hx.le, integral_tsum]
    · exact tsum_congr fun n ↦ by rw [intervalIntegral.integral_of_le hx.le, integral_const_mul]
    · exact fun n ↦ (measurable_const.mul
        (Measurable.ite (measurableSet_le measurable_const
          (continuous_sqrt.measurable.comp (measurable_const.div measurable_id')))
            measurable_const measurable_const)).aestronglyMeasurable
    · refine ne_of_lt (lt_of_le_of_lt (ENNReal.tsum_le_tsum (g := fun n ↦ ENNReal.ofReal
        (|moebius n| * (x / n ^ 2))) ?_) ?_)
      · intro n
        by_cases hn : n = 0
        · simp [hn]
        · have hdiv_le : x / (n : ℝ) ^ 2 ≤ x :=
            div_le_self hx.le (mod_cast Nat.one_le_pow _ _ (Nat.pos_of_ne_zero hn))
          calc ∫⁻ u in Set.Ioc 0 x,
              ‖(moebius n : ℝ) * if n ≤ sqrt (x / u) then 1 else 0‖ₑ
            _ ≤ ∫⁻ u in Set.Ioc 0 x, (Set.Ioc 0 (x / n ^ 2)).indicator
                  (fun _ ↦ ENNReal.ofReal |(moebius n : ℝ)|) u := by
                apply lintegral_mono_ae
                filter_upwards [ae_restrict_mem measurableSet_Ioc] with u hu
                simp only [Set.mem_Ioc] at hu
                by_cases h1 : (n : ℝ) ≤ sqrt (x / u)
                · have h2 : u ≤ x / n ^ 2 := by
                    rw [le_sqrt (by positivity) (div_nonneg hx.le hu.1.le)] at h1
                    rwa [le_div_iff₀ hu.1, mul_comm, ← le_div_iff₀ (by positivity)] at h1
                  simp only [h1, ↓reduceIte, mul_one]
                  rw [Set.indicator_of_mem (Set.mem_Ioc.mpr ⟨hu.1, h2⟩)]
                  rw [enorm_eq_ofReal_abs]
                · simp only [h1, ↓reduceIte, mul_zero]
                  rw [enorm_zero]
                  exact zero_le _
            _ = ∫⁻ u in Set.Ioc 0 (x / n ^ 2), ENNReal.ofReal |(moebius n : ℝ)| := by
                rw [lintegral_indicator measurableSet_Ioc,
                  Measure.restrict_restrict measurableSet_Ioc]
                congr 1
                exact Measure.restrict_congr_set
                  (Set.inter_eq_left.mpr (Set.Ioc_subset_Ioc_right hdiv_le)).eventuallyEq
            _ = ENNReal.ofReal |(moebius n : ℝ)| * volume (Set.Ioc 0 (x / n ^ 2)) :=
                setLIntegral_const ..
            _ = ENNReal.ofReal |(moebius n : ℝ)| * ENNReal.ofReal (x / n ^ 2) := by
                rw [Real.volume_Ioc, sub_zero]
            _ = ENNReal.ofReal (|(moebius n : ℝ)| * (x / n ^ 2)) := by
                rw [← ENNReal.ofReal_mul (abs_nonneg _)]
            _ = ENNReal.ofReal (|moebius n| * (x / n ^ 2)) := by rw [Int.cast_abs]
      · rw [← ENNReal.ofReal_tsum_of_nonneg]
        · exact ENNReal.ofReal_lt_top
        · exact fun n ↦ mul_nonneg (by positivity : (0 : ℝ) ≤ |moebius n|)
            (div_nonneg hx.le (sq_nonneg _))
        · refine Summable.of_nonneg_of_le
            (fun n ↦ mul_nonneg (by positivity) (div_nonneg hx.le (sq_nonneg _)))
            (fun n ↦ mul_le_of_le_one_left (div_nonneg hx.le (sq_nonneg _)) ?_)
            (Summable.mul_left _ <| summable_nat_pow_inv.2 one_lt_two)
          rw [Int.cast_abs]; exact h_abs n
  have h_inner : ∀ n : ℕ, n ≠ 0 →
      ∫ u in (0 : ℝ)..x, (if n ≤ sqrt (x / u) then 1 else 0) = x / n ^ 2 := by
    intro n hn_ne
    have h_equiv : ∀ u ∈ Set.Ioc 0 x, (n : ℝ) ≤ sqrt (x / u) ↔ u ≤ x / n ^ 2 := fun u hu ↦ by
      rw [le_sqrt (by positivity) (div_nonneg hx.le hu.1.le), le_div_iff₀ hu.1, le_div_iff₀
        (by positivity : (0 : ℝ) < n ^ 2)]
      ring_nf
    have h_inner_eval : ∫ u in (0 : ℝ)..x, (if n ≤ sqrt (x / u) then 1 else 0) =
        ∫ u in (0 : ℝ)..x / n ^ 2, (1 : ℝ) := by
      rw [intervalIntegral.integral_of_le hx.le, intervalIntegral.integral_of_le (by positivity),
          ← integral_indicator measurableSet_Ioc, ← integral_indicator measurableSet_Ioc]
      congr 1 with u
      simp only [Set.indicator]
      by_cases hu1 : 0 < u
      · by_cases hu2 : u ≤ x
        · simp only [Set.mem_Ioc, hu1, hu2, and_self, ↓reduceIte]
          by_cases hu3 : u ≤ x / n ^ 2
          · simp [hu3, (h_equiv u ⟨hu1, hu2⟩).mpr hu3]
          · simp [hu3, mt (h_equiv u ⟨hu1, hu2⟩).mp hu3]
        · have hle : x / n ^ 2 < u := lt_of_le_of_lt
            (div_le_self hx.le (mod_cast Nat.one_le_pow _ _ (Nat.pos_of_ne_zero hn_ne)))
            (lt_of_not_ge hu2)
          simp [not_and_of_not_right _ (not_le.mpr (lt_of_not_ge hu2)),
            not_and_of_not_right _ (not_le.mpr hle)]
      · simp [not_and_of_not_left _ (not_lt.mpr <| le_of_not_gt hu1)]
    simp only [h_inner_eval, intervalIntegral.integral_const, smul_eq_mul, mul_one, sub_zero]
  rw [h_integral, ← tsum_mul_left]
  congr 1; ext n
  by_cases hn : n = 0
  · simp [hn]
  · rw [h_inner n hn]; ring

@[blueprint
  "mobius-lemma-1"
  (title := "Mobius Lemma 1")
  (statement := /--
    For any $x>0$,
    \begin{equation}\label{eq:antenor}
    R(x) = \sum_{k\leq x} M\left(\sqrt{\frac{x}{k}}\right) -
      \int_0^x M\left(\sqrt{\frac{x}{u}}\right) du.
    \end{equation}
  -/)
  (proof := /--
    The equality is immediate from Theorem \ref{mobius-lemma-1-sub} and exchanging the order of
    $\sum$ and $\int$, as is justified by
    $\sum_n |\mu(n)|\int_0^{x/n^2} du \leq \sum_n x/n^2 < \infty$)
    $$\int_0^x M\left(\sqrt{\frac{x}{u}}\right) du = \int_0^x \sum_{n\leq \sqrt{\frac{x}{u}}}
    \mu(n) du = \sum_n \mu(n) \int_0^{\frac{x}{n^2}} du = x \sum_n \frac{\mu(n)}{n^2}
    = \frac{x}{\zeta(2)}.$$
  -/)
  (latexEnv := "lemma")
  (discussion := 527)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Varianta13f6b1fc46e14f4f88ca94d3c169fb0358eb186643758a6ccd22c735e443100.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Varianta13f6b1fc46e14f4f88ca94d3c169fb0358eb186643758a6ccd22c735e443100.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3605ba51d6d0c5c046a782e0b91ce751e7ecc3e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

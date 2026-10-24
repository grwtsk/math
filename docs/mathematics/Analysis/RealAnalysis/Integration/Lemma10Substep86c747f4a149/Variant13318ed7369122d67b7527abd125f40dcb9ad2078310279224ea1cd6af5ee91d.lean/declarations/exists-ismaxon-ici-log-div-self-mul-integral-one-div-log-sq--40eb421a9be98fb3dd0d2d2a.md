# exists_isMaxOn_Ici_log_div_self_mul_integral_one_div_log_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad9cb5ff-1cdf-79a7-b053-b1e07fa48f09",
  "kind": "lemma",
  "lexical_name": "exists_isMaxOn_Ici_log_div_self_mul_integral_one_div_log_sq",
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
  "slug": "exists-ismaxon-ici-log-div-self-mul-integral-one-div-log-sq--40eb421a9be98fb3dd0d2d2a",
  "source": {
    "blob": "96412d1ff7921d8348f589fce58fc9abd41397e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3473,
    "line": 3376,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40eb421a9be98fb3dd0d2d2a737d970547086203beca966515dae7d45e251985",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad9cb5ff-1cdf-79a7-b053-b1e07fa48f09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3376–3473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isMaxOn_Ici_log_div_self_mul_integral_one_div_log_sq {x₁ : ℝ} (h : x₁ ≥ 14) : ∃ xm > x₁, xm > x₁ * log x₁ ∧
  ∀ y ≥ x₁, (log y / y) * ∫ t in x₁..y, 1 / (log t) ^ 2 ≤ 1 / (log xm - 1) := by
  obtain ⟨t₁, ht₁_gt, ht₁_val⟩ := exists_larger_than_boundary_val h
  have ht₁_ge : x₁ ≤ t₁ := (x1_le_x1_log_x1 h).trans ht₁_gt.le
  have h_exists_max : ∃ xm ≥ x₁, ∀ y ≥ x₁,
    (log y / y) * ∫ t in x₁..y, 1 / (log t) ^ 2 ≤ (log xm / xm) * ∫ t in x₁..xm, 1 / (log t) ^ 2 := by
    have hc_pos : 0 < (log t₁ / t₁) * ∫ s in x₁..t₁, 1 / (log s) ^ 2 :=
      (log_div_self_mul_integral_nonneg h (x1_le_x1_log_x1 h)).trans_lt ht₁_val
    have h_eventually : ∀ᶠ y in Filter.atTop,
        (log y / y) * ∫ s in x₁..y, 1 / (log s) ^ 2 <
        (log t₁ / t₁) * ∫ s in x₁..t₁, 1 / (log s) ^ 2 := by
      filter_upwards [tendsto_log_div_self_mul_integral_atTop_zero h
          (Metric.ball_mem_nhds 0 hc_pos),
        Filter.eventually_ge_atTop x₁] with y hy hy_ge
      rwa [Set.mem_preimage, Metric.mem_ball, Real.dist_0_eq_abs,
           abs_of_nonneg (log_div_self_mul_integral_nonneg h hy_ge)] at hy
    obtain ⟨M, hM_prop⟩ := Filter.eventually_atTop.mp h_eventually
    set M' := max (max M t₁) x₁
    have hM'_ge_x₁ : x₁ ≤ M' := le_max_right (max M t₁) x₁
    have hM'_ge_t₁ : t₁ ≤ M' := (le_max_right M t₁).trans (le_max_left (max M t₁) x₁)
    have hM'_ge_M  : M ≤ M'  := (le_max_left M t₁).trans (le_max_left (max M t₁) x₁)
    have h_int_M' : IntervalIntegrable (fun s ↦ 1 / (Real.log s) ^ 2) volume x₁ M' := by
      apply ContinuousOn.intervalIntegrable
      rw [Set.uIcc_of_le hM'_ge_x₁]
      intro s hs
      have hs0 : s ≠ 0 := ne_of_gt (by linarith [hs.1] : 0 < s)
      have hlog_ne : Real.log s ≠ 0 :=
        ne_of_gt (Real.log_pos (by linarith [hs.1] : 1 < s))
      exact (ContinuousAt.div continuousAt_const
        (ContinuousAt.pow (Real.continuousAt_log hs0) 2)
        (pow_ne_zero 2 hlog_ne)).continuousWithinAt
    have h_cont_f : ContinuousOn
        (fun y ↦ (Real.log y / y) * ∫ t in x₁..y, 1 / (Real.log t) ^ 2) (Set.Icc x₁ M') := by
      apply ContinuousOn.mul
      · intro y hy
        exact (ContinuousAt.div (Real.continuousAt_log (ne_of_gt (by linarith [hy.1] : 0 < y)))
          continuousAt_id (by simp; linarith [hy.1])).continuousWithinAt
      · rw [← Set.uIcc_of_le hM'_ge_x₁]
        exact intervalIntegral.continuousOn_primitive_interval' h_int_M' Set.left_mem_uIcc
    obtain ⟨xm, hxm_mem, hxm_max⟩ :=
      isCompact_Icc.exists_isMaxOn (Set.nonempty_Icc.mpr hM'_ge_x₁) h_cont_f
    exact ⟨xm, hxm_mem.1, fun y hy_ge ↦ by
      by_cases hy_le : y ≤ M'
      · exact hxm_max ⟨hy_ge, hy_le⟩
      · have hy_ge_M : M ≤ y := by linarith [hM'_ge_M, not_le.mp hy_le]
        exact ((hM_prop y hy_ge_M).trans_le (hxm_max ⟨ht₁_ge, hM'_ge_t₁⟩)).le⟩
  obtain ⟨xm, hxm_ge, hxm_max⟩ := h_exists_max
  have h_xm_gt : xm > x₁ * log x₁ := by
    by_contra hle
    push Not at hle
    linarith [h_monotoneOn h ⟨hxm_ge, hle⟩ ⟨x1_le_x1_log_x1 h, le_refl _⟩ hle,
              hxm_max t₁ ((x1_lt_x1_log_x1 h).trans ht₁_gt |>.le)]
  have h_max_val : (log xm / xm) * ∫ t in x₁..xm, 1 / (log t) ^ 2 = 1 / (log xm - 1) := by
    have hxm_gt : x₁ < xm := (x1_lt_x1_log_x1 h).trans h_xm_gt
    have h_local_max : IsLocalMax (fun t ↦ (log t / t) * ∫ s in x₁..t, 1 / (log s) ^ 2) xm := by
      filter_upwards [eventually_ge_nhds hxm_gt] with y hy using hxm_max y hy
    have h_deriv_xm : HasDerivAt (fun t ↦ (log t / t) * ∫ s in x₁..t, 1 / (log s) ^ 2)
        ((xm / log xm - (log xm - 1) * ∫ s in x₁..xm, 1 / (log s) ^ 2) / xm ^ 2) xm :=
      hasDerivAt_log_div_self_mul_integral (by linarith : 1 < x₁) hxm_gt
    have h_num_eq_zero : xm / log xm - (log xm - 1) * ∫ s in x₁..xm, 1 / (log s) ^ 2 = 0 :=
      div_eq_zero_iff.mp (h_deriv_xm.deriv ▸ h_local_max.deriv_eq_zero)
        |>.resolve_right (pow_ne_zero 2 (by linarith : xm ≠ 0))
    have h_logxm_gt : log xm > 1 := by
      have h1 : log x₁ > 1 := log_gt_one_of_ge_14 h
      linarith [Real.log_le_log (by positivity) h_xm_gt.le, Real.log_pos h1,
                Real.log_mul (by linarith : x₁ ≠ 0) (by linarith : log x₁ ≠ 0)]
    have h_logxm_sub_ne : log xm - 1 ≠ 0 := by linarith
    have h_logxm_ne : log xm ≠ 0 := by linarith
    have h_xm_ne : xm ≠ 0 := by linarith
    rw [show (log xm / xm) * ∫ s in x₁..xm, 1 / (log s) ^ 2 =
        ((log xm - 1) * ∫ s in x₁..xm, 1 / (log s) ^ 2) * (log xm / (xm * (log xm - 1)))
        from by field_simp,
      show (log xm - 1) * ∫ s in x₁..xm, 1 / (log s) ^ 2 = xm / log xm
        from by linarith [h_num_eq_zero]]
    field_simp [h_logxm_sub_ne, h_logxm_ne, h_xm_ne]
  exact ⟨xm, (x1_lt_x1_log_x1 h).trans h_xm_gt, h_xm_gt,
    fun y hy ↦ (hxm_max y hy).trans h_max_val.le⟩

@[blueprint
  "fks2-theorem-6-2"
  (title := "FKS2 Theorem 6, substep 2")
  (statement := /-- With the above hypotheses, for all $x \geq x_1$ we have
  $$ \frac{\log x}{x} \int_{x_1}^x \frac{dt}{\log^2 t} < \frac{1}{\log x_1 + \log \log x_1 - 1}. $$ -/)
  (proof := /-- Call the left-hand side $f(x)$. We have
  $$ f(x) = \frac{\log x}{x} \left( \mathrm{Li}(x) - \frac{x}{\log x} - \mathrm{Li}(x_1) + \frac{x_1}{\log x_1} \right). $$
  Using integration by parts, its derivative can be written as
  $$ f'(x) = -\frac{1}{x \log^2 x} + \frac{2}{x \log^3 x} + \frac{\log x - 1}{x^2} \left( \frac{x_1}{\log^2 x_1} + \frac{2 x_1}{\log^3 x_1} - \int_{x_1}^x \frac{6}{\log^4 t} dt \right). $$
  From which we see that $f'(x_1) = \frac{1}{\log x_1} > 0$, and that $f'(x)$ is eventually negative. Thus there exists a critical point for $f(x)$ to the right of $x_1$. Moreover, by bounding $\int_{x_1}^x \frac{6}{\log^4 t} dt < 6 \frac{x - x_1}{\log^4 x_1}$, one finds that $f'(x_1 \log x_1) > 0$ if $x_1 > e$.
  Now we write $f'(x) = \frac{f_1(x)}{x^2}$ with
  $$ f_1(x) = \frac{x}{\log x} - (\log x - 1) \int_{x_1}^x \frac{1}{\log^2 t} dt. $$
  Its derivative is $f_1'(x) = -\frac{1}{x} \int_{x_1}^x \frac{1}{\log^2 t} dt$, which is negative for $x > x_1$. Thus $f_1(x)$ decreases and vanishes at most once, giving $f(x)$ at most one critical point, $x_m > x_1$, which is then the maximum of $f(x)$. In other words, $x_m$ satisfies $f_1(x_m) = 0$, i.e.\ $\mathrm{Li}(x_m) - \mathrm{Li}(x_1) + \frac{x_1}{\log x_1} = -\frac{x_m}{1 - \log x_m}$, which shows that $f(x)$ attains its maximum at $x = x_m$, where
  $$ f(x_m) = \frac{\log x_m}{x_m} \left( -\frac{x_m}{\log x_m} - \frac{x_m}{1 - \log x_m} \right) = \frac{1}{\log x_m - 1}. $$
  Now, because $x_m > x_1 \log x_1$ we obtain the bound
  $$ f(x) < \frac{1}{\log x_1 + \log(\log x_1) - 1}, $$
  which gives the announced result.
  -/)
  (latexEnv := "sublemma")
  (discussion := 716)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean#L3376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96412d1ff7921d8348f589fce58fc9abd41397e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

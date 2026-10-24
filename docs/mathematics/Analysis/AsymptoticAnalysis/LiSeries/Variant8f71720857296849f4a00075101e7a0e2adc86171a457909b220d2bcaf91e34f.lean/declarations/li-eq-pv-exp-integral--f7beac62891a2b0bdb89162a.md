# li_eq_pv_exp_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1444762eec9a3ce15b7d30b8945e3fb6d87d5f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 561,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79011458-467a-8f5b-3b53-4bf59dc1930c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c64cffad-10e9-76be-0818-55c45b619817",
  "kind": "theorem",
  "lexical_name": "li_eq_pv_exp_integral",
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
  "slug": "li-eq-pv-exp-integral--f7beac62891a2b0bdb89162a",
  "source": {
    "blob": "f1444762eec9a3ce15b7d30b8945e3fb6d87d5f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 870,
    "line": 561,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7beac62891a2b0bdb89162aa01183afddbf8267d07c2fd7a7f3632bdeb73e2e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c64cffad-10e9-76be-0818-55c45b619817`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 561–870.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem li_eq_pv_exp_integral {x : ℝ} (hx : 1 < x) :
    li x = lim ((𝓝[>] (0 : ℝ)).map (fun ε =>
      (∫ u in (-1/ε)..(-ε), exp u / u) + ∫ u in ε..log x, exp u / u)) := by
  have hlogx : 0 < log x := Real.log_pos hx
  have hx0 : (0 : ℝ) < x := by linarith
  -- The limit L of the RHS
  set L := ((∫ t in (0:ℝ)..1, (1 - exp (-t)) / t) - ∫ t in Ioi (1:ℝ), exp (-t) / t) +
    (∫ u in (0:ℝ)..log x, (exp u - 1) / u) + log (log x)
  -- Step 1: Build Tendsto for the exp/u side
  have h_tendsto_exp : Tendsto
      (fun ε => (∫ u in (-1/ε)..(-ε), exp u / u) + ∫ u in ε..log x, exp u / u)
      (𝓝[>] (0 : ℝ)) (𝓝 L) := by
    have h_rw : Tendsto
        (fun ε => (∫ t in ε..1, (1 - exp (-t)) / t) - (∫ t in (1:ℝ)..(1/ε), exp (-t) / t) +
          (∫ u in ε..log x, (exp u - 1) / u) + log (log x))
        (𝓝[>] (0 : ℝ)) (𝓝 L) :=
      ((_root_.tendsto_integral_one_sub_exp_neg_div.sub
        _root_.tendsto_integral_exp_neg_div_Ioi).add
        (_root_.tendsto_integral_exp_sub_one_div hlogx)).add tendsto_const_nhds
    apply h_rw.congr'
    have : ∀ᶠ ε in 𝓝[>] (0 : ℝ), ε < min (log x) 1 := by
      apply nhdsWithin_le_nhds
      exact Iio_mem_nhds (lt_min hlogx one_pos)
    filter_upwards [this, self_mem_nhdsWithin] with ε hε hε_pos
    exact (_root_.pv_rewrite hlogx hε_pos (lt_of_lt_of_le hε (min_le_right _ _))
      (lt_of_lt_of_le hε (min_le_left _ _))).symm
  -- Step 2: Show the li side Tends to the same limit
  -- We show f_li(ε) - f_exp(ε) → 0, then f_li → L
  have h_tendsto_li : Tendsto
      (fun ε => ∫ t in (Ioc 0 x).diff (Ioo (1 - ε) (1 + ε)), (1 : ℝ) / log t)
      (𝓝[>] (0 : ℝ)) (𝓝 L) := by
    suffices hdiff : Tendsto
        (fun ε => (∫ t in (Ioc 0 x).diff (Ioo (1 - ε) (1 + ε)), (1 : ℝ) / log t) -
          ((∫ u in (-1/ε)..(-ε), exp u / u) + ∫ u in ε..log x, exp u / u))
        (𝓝[>] (0 : ℝ)) (𝓝 0) by
      have := hdiff.add h_tendsto_exp
      simp only [zero_add] at this
      exact this.congr (fun ε => by ring)
    -- Error term 1: ∫₀^{e^{-1/ε}} 1/log t → 0 as ε → 0+
    -- Strategy: |1/log t| ≤ ε on (0, e^{-1/ε}] (since |log t| ≥ 1/ε), so
    -- |∫| ≤ ε * e^{-1/ε} and ε * e^{-1/ε} → 0 (exponential decay beats polynomial).
    -- Use norm_integral_le_of_norm_le_const + squeeze_zero'.
    have herr1 : Tendsto (fun ε => ∫ t in (0 : ℝ)..exp (-1/ε), 1 / log t)
        (𝓝[>] (0 : ℝ)) (𝓝 0) := by
      -- Bound: ‖∫₀^{e^{-1/ε}} 1/log t‖ ≤ ε * exp(-1/ε) ≤ ε → 0
      apply squeeze_zero_norm'
      · -- ‖integral‖ ≤ ε
        filter_upwards [self_mem_nhdsWithin] with ε (hε_pos : 0 < ε)
        have hexp_lt_one : exp (-1/ε) < 1 := by
          rw [exp_lt_one_iff, neg_div]; exact neg_neg_of_pos (div_pos one_pos hε_pos)
        calc ‖∫ t in (0 : ℝ)..exp (-1/ε), 1 / log t‖
            ≤ ε * |exp (-1/ε) - 0| := by
              apply intervalIntegral.norm_integral_le_of_norm_le_const
              intro t ht
              rw [Set.uIoc_of_le (exp_pos _).le] at ht
              rw [norm_div, norm_one, Real.norm_eq_abs, one_div]
              have hlog_neg : log t < 0 :=
                Real.log_neg ht.1 (lt_of_le_of_lt ht.2 hexp_lt_one)
              have hlog_le : log t ≤ -1/ε := by
                rw [Real.log_le_iff_le_exp ht.1]; exact ht.2
              rw [abs_of_neg hlog_neg]
              have h1e : 1/ε ≤ -log t := by rw [neg_div] at hlog_le; linarith
              calc (-log t)⁻¹ ≤ (1/ε)⁻¹ := inv_anti₀ (by positivity) h1e
                _ = ε := by rw [one_div, inv_inv]
          _ = ε * exp (-1/ε) := by rw [sub_zero, abs_of_pos (exp_pos _)]
          _ ≤ ε * 1 := by
              apply mul_le_mul_of_nonneg_left _ hε_pos.le
              exact exp_le_one_iff.mpr (by rw [neg_div]
                                           exact neg_nonpos.mpr (div_nonneg one_pos.le hε_pos.le))
          _ = ε := mul_one ε
      · exact tendsto_nhdsWithin_of_tendsto_nhds tendsto_id
    -- Error term 2: ∫_{-ε}^{log(1-ε)} exp u / u → 0 as ε → 0+
    -- Strategy: on [log(1-ε), -ε], |exp u| ≤ 1 and |u| ≥ ε, so |exp u/u| ≤ 1/ε.
    -- The interval length |log(1-ε)+ε| ≤ ε²/(1-ε) (Taylor bound for log).
    -- So |∫| ≤ (1/ε) * ε²/(1-ε) = ε/(1-ε) → 0.
    have herr2 : Tendsto (fun ε => ∫ u in (-ε)..log (1 - ε), exp u / u)
        (𝓝[>] (0 : ℝ)) (𝓝 0) := by
      apply squeeze_zero_norm'
      · -- ‖∫_{-ε}^{log(1-ε)} exp u / u‖ ≤ ε/(1-ε)
        have hev : ∀ᶠ ε in 𝓝[>] (0 : ℝ), ε < 1/2 :=
          nhdsWithin_le_nhds (Iio_mem_nhds (by norm_num : (0 : ℝ) < 1/2))
        filter_upwards [hev, self_mem_nhdsWithin] with ε hεhalf (hε_pos : 0 < ε)
        have hε1 : ε < 1 := by linarith
        have h1mε : 0 < 1 - ε := by linarith
        -- log(1-ε) < -ε for ε ∈ (0,1)
        have hlog_bound : log (1 - ε) ≤ -ε := by
          have := Real.log_le_sub_one_of_pos h1mε; linarith
        -- -log(1-ε) ≤ ε/(1-ε)
        have hneg_log_bound : -log (1 - ε) ≤ ε / (1 - ε) := by
          have h := Real.log_le_sub_one_of_pos (show 0 < (1-ε)⁻¹ from by positivity)
          rw [Real.log_inv] at h
          have heq : (1 - ε)⁻¹ - 1 = ε / (1 - ε) := by
            field_simp; ring
          linarith
        -- -ε - log(1-ε) ≤ ε²/(1-ε)
        have hlen_bound : -ε - log (1 - ε) ≤ ε ^ 2 / (1 - ε) := by
          have : -log (1 - ε) - ε ≤ ε / (1 - ε) - ε := by linarith
          calc -ε - log (1 - ε) = -log (1 - ε) - ε := by ring
            _ ≤ ε / (1 - ε) - ε := this
            _ = ε ^ 2 / (1 - ε) := by field_simp; ring
        -- On [log(1-ε), -ε], |exp u / u| ≤ 1/ε
        have hlog_neg : log (1 - ε) < 0 := Real.log_neg h1mε (by linarith)
        calc ‖∫ u in (-ε)..log (1 - ε), exp u / u‖
            ≤ (1/ε) * |log (1 - ε) - (-ε)| := by
              apply intervalIntegral.norm_integral_le_of_norm_le_const
              intro u hu
              rw [Set.uIoc_comm, Set.uIoc_of_le (by linarith)] at hu
              -- u ∈ (log(1-ε), -ε], so u < 0 and |u| ≥ ε
              have hu_neg : u < 0 := by linarith [hu.2]
              have hu_le : u ≤ -ε := hu.2
              rw [norm_div, Real.norm_eq_abs, Real.norm_eq_abs]
              rw [abs_of_pos (exp_pos _), abs_of_neg hu_neg]
              -- exp u ≤ 1 since u < 0, and -u ≥ ε
              exact div_le_div₀ zero_le_one (exp_le_one_iff.mpr hu_neg.le) hε_pos (by linarith)
          _ ≤ (1/ε) * (-ε - log (1 - ε)) := by
              apply mul_le_mul_of_nonneg_left _ (by positivity)
              rw [show log (1 - ε) - -ε = -((-ε) - log (1 - ε)) from by ring, abs_neg,
                abs_of_nonneg (by linarith)]
          _ ≤ (1/ε) * (ε ^ 2 / (1 - ε)) := by
              apply mul_le_mul_of_nonneg_left hlen_bound (by positivity)
          _ = ε / (1 - ε) := by field_simp
      · -- ε/(1-ε) → 0 as ε → 0+
        have : Tendsto (fun ε : ℝ => ε / (1 - ε)) (𝓝[>] 0) (𝓝 (0 / (1 - 0))) := by
          apply Tendsto.div
          · exact tendsto_nhdsWithin_of_tendsto_nhds tendsto_id
          · exact tendsto_nhdsWithin_of_tendsto_nhds (tendsto_const_nhds.sub tendsto_id)
          · simp
        simp at this; exact this
    -- Error term 3: ∫_{log(1+ε)}^ε exp u / u → 0 as ε → 0+
    -- Strategy: on [log(1+ε), ε], exp u ≤ exp ε and u ≥ log(1+ε), so
    -- |exp u/u| ≤ exp(ε)/log(1+ε). The interval length ε - log(1+ε) ≤ ε²/2.
    -- So |∫| ≤ exp(ε)/(log(1+ε)) * ε²/2 ≈ ε/2 → 0.
    have herr3 : Tendsto (fun ε => ∫ u in log (1 + ε)..ε, exp u / u)
        (𝓝[>] (0 : ℝ)) (𝓝 0) := by
      -- Bound: ‖∫_{log(1+ε)}^ε exp u/u‖ ≤ 2 * exp 1 * ε → 0
      apply squeeze_zero_norm'
      · have hev : ∀ᶠ ε in 𝓝[>] (0 : ℝ), ε < 1/2 :=
          nhdsWithin_le_nhds (Iio_mem_nhds (by norm_num : (0 : ℝ) < 1/2))
        filter_upwards [hev, self_mem_nhdsWithin] with ε hεhalf (hε_pos : 0 < ε)
        have hε1 : ε < 1 := by linarith
        have h1pε : 0 < 1 + ε := by linarith
        have hlog_pos : 0 < log (1 + ε) := Real.log_pos (by linarith)
        -- Key bound: log(1+ε) ≥ ε/(1+ε), from log_le_sub_one_of_pos applied to (1+ε)⁻¹
        have hlog_lower : ε / (1 + ε) ≤ log (1 + ε) := by
          have h := Real.log_le_sub_one_of_pos (show 0 < (1+ε)⁻¹ from by positivity)
          rw [Real.log_inv] at h
          have : (1 + ε)⁻¹ - 1 = -(ε / (1 + ε)) := by field_simp; ring
          linarith
        -- Consequence: log(1+ε) ≥ ε/2 for ε < 1
        have hlog_half : ε / 2 ≤ log (1 + ε) := by
          calc ε / 2 ≤ ε / (1 + ε) := by
                apply div_le_div_of_nonneg_left hε_pos.le (by positivity) (by linarith)
            _ ≤ log (1 + ε) := hlog_lower
        -- Interval length bound: ε - log(1+ε) ≤ ε²/(1+ε) ≤ ε²
        have hlen : ε - log (1 + ε) ≤ ε ^ 2 := by
          have : ε - log (1 + ε) ≤ ε - ε / (1 + ε) := by linarith
          calc ε - log (1 + ε) ≤ ε - ε / (1 + ε) := this
            _ = ε ^ 2 / (1 + ε) := by field_simp; ring
            _ ≤ ε ^ 2 / 1 := by
                apply div_le_div_of_nonneg_left (by positivity) one_pos (by linarith)
            _ = ε ^ 2 := div_one _
        -- log(1+ε) ≤ ε (for direction of integral)
        have hlog_upper : log (1 + ε) ≤ ε := by
          have := Real.log_le_sub_one_of_pos h1pε; linarith
        -- On [log(1+ε), ε]: exp u ≤ exp ε ≤ exp 1, u ≥ log(1+ε) > 0
        -- So |exp u / u| ≤ exp 1 / log(1+ε) ≤ exp 1 / (ε/2) = 2*exp(1)/ε
        calc ‖∫ u in log (1 + ε)..ε, exp u / u‖
            ≤ (exp 1 / log (1 + ε)) * |ε - log (1 + ε)| := by
              apply intervalIntegral.norm_integral_le_of_norm_le_const
              intro u hu
              rw [Set.uIoc_of_le hlog_upper] at hu
              rw [norm_div, Real.norm_eq_abs, Real.norm_eq_abs,
                abs_of_pos (exp_pos _), abs_of_pos (lt_of_lt_of_le hlog_pos (le_of_lt hu.1))]
              apply div_le_div₀ (exp_pos 1).le
              · exact exp_le_exp.mpr (le_of_lt (lt_of_le_of_lt hu.2 hε1))
              · exact hlog_pos
              · exact le_of_lt hu.1
          _ ≤ (exp 1 / (ε / 2)) * ε ^ 2 := by
              apply mul_le_mul
              · exact div_le_div_of_nonneg_left (exp_pos 1).le (by positivity) hlog_half
              · rw [abs_of_nonneg (by linarith)]; exact hlen
              · exact abs_nonneg _
              · positivity
          _ = 2 * exp 1 * ε := by field_simp
      · -- 2 * exp 1 * ε → 0 as ε → 0+
        have : Tendsto (fun ε : ℝ => 2 * exp 1 * ε) (𝓝[>] 0) (𝓝 (2 * exp 1 * 0)) :=
          (tendsto_nhdsWithin_of_tendsto_nhds tendsto_id).const_mul _
        simp at this; exact this
    -- Combine: the sum of the three error terms → 0
    have herr : Tendsto (fun ε =>
        ((∫ t in (0:ℝ)..exp (-1/ε), 1 / log t) + ∫ u in (-ε)..log (1 - ε), exp u / u) +
        ∫ u in log (1 + ε)..ε, exp u / u)
        (𝓝[>] (0 : ℝ)) (𝓝 0) := by
      have := (herr1.add herr2).add herr3
      simp only [add_zero] at this
      exact this
    -- Show the difference is eventually equal to the sum of three error terms
    apply herr.congr'
    -- For small ε, decompose the difference
    have hev : ∀ᶠ ε in 𝓝[>] (0 : ℝ), ε < min (min (1/2) (x - 1)) 1 := by
      apply nhdsWithin_le_nhds
      exact Iio_mem_nhds (lt_min (lt_min (by linarith) (by linarith)) (by linarith))
    filter_upwards [hev, self_mem_nhdsWithin] with ε hε hε_mem
    have hε_pos : (0 : ℝ) < ε := hε_mem
    have hε1 : ε < 1 := lt_of_lt_of_le hε (min_le_right _ _)
    have hεhalf : ε < 1/2 := by
      calc ε < min (min (1/2) (x - 1)) 1 := hε
        _ ≤ min (1/2) (x - 1) := min_le_left _ _
        _ ≤ 1/2 := min_le_left _ _
    have hεx : 1 + ε < x := by
      have : ε < x - 1 := by
        calc ε < min (min (1/2) (x - 1)) 1 := hε
          _ ≤ min (1/2) (x - 1) := min_le_left _ _
          _ ≤ x - 1 := min_le_right _ _
      linarith
    have h1mε : 0 < 1 - ε := by linarith
    have hexp_pos : 0 < exp (-1/ε) := exp_pos _
    have hexp_lt : exp (-1/ε) < 1 - ε := by
      calc exp (-1/ε) ≤ exp (-2) := by
            apply exp_le_exp.mpr
            rw [neg_div, neg_le_neg_iff]
            rw [le_div_iff₀ hε_pos]
            linarith
          _ < 1/2 := by
            -- exp(-2) < exp(0) = 1 < 1/2 is wrong, so we need exp(-2) < 1/2
            -- Use: exp(-1) < 1/2 + 1/2 = 1 and exp(-2) = exp(-1)^2 < 1
            -- Actually, exp(-1) < 1 and exp(-1) < 0.4 (since exp(1) > 2.5)
            -- For a cleaner proof: exp(-2) ≤ 1/(1+2) = 1/3 < 1/2 (by exp(-x) ≤ 1/(1+x))
            -- In Lean, we use: exp x ≤ 1/(1-x) for x < 1, so exp(-2) ≤ ... hmm
            -- Simplest: show exp(-2) < exp(0) / 2... not simple.
            -- Just use: for x ≤ 0, exp(x) ≤ 1 + x + x^2/2 (Taylor bound)
            -- Actually easiest: 2 * exp(-2) = 2/exp(2). Since exp(2) > 1+2 = 3, 2/exp(2) < 2/3 < 1
            calc exp (-2 : ℝ) < exp (-1) := by apply exp_lt_exp.mpr; norm_num
              _ = 1 / exp 1 := by rw [exp_neg, one_div]
              _ ≤ 1 / (1 + 1) := by
                  apply div_le_div_of_nonneg_left (by positivity) (by positivity)
                  exact add_one_le_exp 1
              _ = 1 / 2 := by norm_num
          _ < 1 - ε := by linarith
    -- Rewrite the li integral using li_setDiff_eq_split
    have hsplit := li_setDiff_eq_split hx hε_pos hε1 hεx
    -- The goal uses .diff but hsplit uses \; these are definitionally equal
    -- So we can rewrite the goal using hsplit via `conv`
    conv_rhs => rw [show (Ioc 0 x).diff (Ioo (1 - ε) (1 + ε)) = Ioc 0 x \ Ioo (1 - ε) (1 + ε) from rfl]
    rw [hsplit]
    -- Split ∫₀^{1-ε} at e^{-1/ε}
    rw [show (∫ t in (0:ℝ)..(1 - ε), 1 / log t) =
      (∫ t in (0:ℝ)..exp (-1/ε), 1 / log t) +
      ∫ t in exp (-1/ε)..(1 - ε), 1 / log t from
      (intervalIntegral.integral_add_adjacent_intervals
        (by -- 1/log t is bounded on [0, e^{-1/ε}], hence interval integrable
            rw [intervalIntegrable_iff]
            apply Measure.integrableOn_of_bounded (M := ε) (by
              rw [Set.uIoc_of_le (by positivity : (0 : ℝ) ≤ exp (-1/ε))]
              exact measure_Ioc_lt_top.ne)
            · exact (measurable_const.div measurable_log).aestronglyMeasurable
            · rw [Set.uIoc_of_le (by positivity : (0 : ℝ) ≤ exp (-1/ε))]
              rw [ae_restrict_iff' measurableSet_Ioc]
              apply Filter.Eventually.of_forall
              intro t ht
              rw [norm_div, norm_one, Real.norm_eq_abs, one_div]
              -- Goal: |log t|⁻¹ ≤ ε
              have hlog_neg : log t < 0 := Real.log_neg ht.1 (by
                calc t ≤ exp (-1/ε) := ht.2
                  _ < 1 := by
                    rw [exp_lt_one_iff]; rw [neg_div]; exact neg_neg_of_pos (div_pos one_pos hε_pos))
              have hlog_le : log t ≤ -1/ε := by
                rw [Real.log_le_iff_le_exp ht.1]
                exact ht.2
              rw [abs_of_neg hlog_neg]
              have h1e : 1/ε ≤ -log t := by
                have := hlog_le; rw [neg_div] at this; linarith
              calc (-log t)⁻¹ ≤ (1/ε)⁻¹ := inv_anti₀ (by positivity) h1e
                _ = ε := by rw [one_div, inv_inv])
        (by apply ContinuousOn.intervalIntegrable
            apply ContinuousOn.div continuousOn_const
            · exact continuousOn_log.mono (fun t ht => by
                rw [Set.uIcc_of_le hexp_lt.le] at ht
                exact ne_of_gt (lt_of_lt_of_le hexp_pos ht.1))
            · intro t ht
              rw [Set.uIcc_of_le hexp_lt.le] at ht
              exact ne_of_lt (Real.log_neg (lt_of_lt_of_le hexp_pos ht.1) (by linarith [ht.2])))).symm]
    -- Apply substitution: ∫_{e^{-1/ε}}^{1-ε} 1/log t = ∫_{-1/ε}^{log(1-ε)} exp u / u
    rw [integral_log_inv_eq_integral_exp_div_of_lt_one hexp_pos hexp_lt.le (by linarith)]
    rw [Real.log_exp]
    -- Apply substitution: ∫_{1+ε}^x 1/log t = ∫_{log(1+ε)}^{log x} exp u / u
    rw [integral_log_inv_eq_integral_exp_div (by linarith : 1 < 1 + ε) hεx]
    -- Split the exp/u integrals to isolate error terms
    rw [show (∫ u in (-1/ε)..log (1 - ε), exp u / u) =
      (∫ u in (-1/ε)..(-ε), exp u / u) + ∫ u in (-ε)..log (1 - ε), exp u / u from
      (intervalIntegral.integral_add_adjacent_intervals
        (intervalIntegrable_exp_div_of_neg (show -1/ε < 0 by rw [neg_div]; exact neg_lt_zero.mpr (div_pos one_pos hε_pos)) (by linarith))
        (intervalIntegrable_exp_div_of_neg (by linarith) (Real.log_neg h1mε (by linarith)))).symm]
    rw [show (∫ u in log (1 + ε)..log x, exp u / u) =
      (∫ u in log (1 + ε)..ε, exp u / u) + ∫ u in ε..log x, exp u / u from
      (intervalIntegral.integral_add_adjacent_intervals
        (intervalIntegrable_exp_div_of_pos (Real.log_pos (by linarith)) hε_pos)
        (intervalIntegrable_exp_div_of_pos hε_pos hlogx)).symm]
    ring
  -- Step 3: Conclude
  show lim ((𝓝[>] (0 : ℝ)).map (fun ε =>
      ∫ t in (Ioc 0 x).diff (Ioo (1 - ε) (1 + ε)), (1 : ℝ) / log t)) =
    lim ((𝓝[>] (0 : ℝ)).map (fun ε =>
      (∫ u in (-1/ε)..(-ε), exp u / u) + ∫ u in ε..log x, exp u / u))
  exact (lim_eq h_tendsto_li).trans (lim_eq h_tendsto_exp).symm

/-! ## Part E: Main theorem -/

/-- The series expansion for the logarithmic integral:
    `li(x) = γ + log(log x) + ∑ (log x)^n / (n * n!)` for `x > 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean#L561).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1444762eec9a3ce15b7d30b8945e3fb6d87d5f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

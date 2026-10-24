# eulerMascheroni_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de357c34051029ec1e785dacf601e32497997d99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:383df541-4b37-901a-ca1b-b0c22cb269ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a5c94eb-a146-d356-a373-203d5cc7b0a3",
  "kind": "lemma",
  "lexical_name": "eulerMascheroni_eq_integral",
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
  "slug": "eulermascheroni-eq-integral--76e61db026795e93b1907708",
  "source": {
    "blob": "de357c34051029ec1e785dacf601e32497997d99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 177,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76e61db026795e93b19077082d9131d873789b85e05e65aab1538ed1a75804ac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a5c94eb-a146-d356-a373-203d5cc7b0a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eulerMascheroni_eq_integral :
    eulerMascheroniConstant =
      (∫ t in (0:ℝ)..1, (1 - exp (-t)) / t) - ∫ t in Ioi (1:ℝ), exp (-t) / t := by
  -- Using the fact that $\gamma = -\Gamma'(1)$ and the integral representation of $\Gamma'(1)$, we can write
  have h_gamma_deriv : Real.eulerMascheroniConstant = -∫ t in Set.Ioi 0, Real.exp (-t) * Real.log t := by
    have h_gamma_deriv : deriv Real.Gamma 1 = ∫ t in Set.Ioi 0, Real.exp (-t) * Real.log t := by
      -- By definition of the Gamma function, we know that its derivative at 1 is given by the integral of $t^{s-1} e^{-t} \log(t)$ evaluated at $s=1$.
      have h_gamma_deriv : deriv Real.Gamma 1 = ∫ t in Set.Ioi 0, t^0 * Real.exp (-t) * Real.log t := by
        have h_def : ∀ s > 0, Real.Gamma s = ∫ t in Set.Ioi 0, t^(s-1) * Real.exp (-t) := by
          exact fun s hs => by rw [ Real.Gamma_eq_integral hs ] ; congr; ext; ring;
        -- Apply the dominated convergence theorem to interchange the limit and integral.
        have h_dominated : Filter.Tendsto (fun h => ∫ t in Set.Ioi 0, (t^h - 1) / h * Real.exp (-t)) (nhdsWithin 0 (Set.Ioi 0)) (nhds (∫ t in Set.Ioi 0, Real.log t * Real.exp (-t))) := by
          -- To apply the dominated convergence theorem, we need to find a dominating function for the integrand.
          have h_dominate : ∀ h ∈ Set.Ioo 0 1, ∀ t ∈ Set.Ioi 0, abs ((t^h - 1) / h * Real.exp (-t)) ≤ abs (Real.log t) * Real.exp (-t) * (t + 1) := by
            intros h hh t ht
            have h_abs : abs ((t^h - 1) / h) ≤ abs (Real.log t) * (t + 1) := by
              -- Using the mean value theorem, we can find a $c \in (0, h)$ such that $t^h - 1 = h \cdot t^c \cdot \log t$.
              obtain ⟨c, hc⟩ : ∃ c ∈ Set.Ioo 0 h, t^h - 1 = h * t^c * Real.log t := by
                -- Apply the Mean Value Theorem to the function $f(x) = t^x$ on the interval $[0, h]$.
                have h_mean_value : ∃ c ∈ Set.Ioo 0 h, deriv (fun x => t^x) c = (t^h - 1) / h := by
                  have := exists_deriv_eq_slope ( f := fun x => t ^ x ) hh.1;
                  simpa using this ( continuousOn_of_forall_continuousAt fun x hx => by exact ContinuousAt.rpow continuousAt_const continuousAt_id <| Or.inl <| by linarith [ ht.out ] ) ( fun x hx => by exact DifferentiableAt.differentiableWithinAt <| by exact DifferentiableAt.rpow ( differentiableAt_const _ ) differentiableAt_id <| by linarith [ ht.out ] );
                norm_num [ Real.rpow_def_of_pos ht, mul_assoc, mul_comm, mul_left_comm ] at *;
                exact h_mean_value.imp fun x hx => ⟨ hx.1, by rw [ hx.2, mul_div_cancel₀ _ hh.1.ne' ] ⟩;
              by_cases h_zero : h = 0 <;> simp_all +decide [ abs_div, abs_mul, mul_assoc, mul_comm, mul_left_comm ];
              by_cases h₂ : t ≤ 1;
              · exact mul_le_mul_of_nonneg_right ( by rw [ abs_of_nonneg ( Real.rpow_nonneg ht.le _ ) ] ; exact le_trans ( Real.rpow_le_one ht.le h₂ ( by linarith ) ) ( by linarith ) ) ( abs_nonneg _ );
              · exact mul_le_mul_of_nonneg_right ( by rw [ abs_of_nonneg ( Real.rpow_nonneg ht.le _ ) ] ; exact le_trans ( Real.rpow_le_rpow_of_exponent_le ( by linarith ) ( show c ≤ 1 by linarith ) ) ( by norm_num ) ) ( abs_nonneg _ );
            rw [ abs_mul, abs_of_nonneg ( Real.exp_pos _ |> LT.lt.le ) ] ; nlinarith [ Real.exp_pos ( -t ) ];
          -- The function $| \log t | e^{-t} (t + 1)$ is integrable on $(0, \infty)$.
          have h_integrable : MeasureTheory.IntegrableOn (fun t : ℝ => abs (Real.log t) * Real.exp (-t) * (t + 1)) (Set.Ioi 0) := by
            have h_integrable : MeasureTheory.IntegrableOn (fun t : ℝ => abs (Real.log t) * Real.exp (-t) * t) (Set.Ioi 0) := by
              have h_integrable : MeasureTheory.IntegrableOn (fun t : ℝ => t * Real.exp (-t) * abs (Real.log t)) (Set.Ioi 0) := by
                have h_integrable : MeasureTheory.IntegrableOn (fun t : ℝ => t * Real.exp (-t) * abs (Real.log t)) (Set.Ioc 0 1) := by
                  have h_integrable : MeasureTheory.IntegrableOn (fun t : ℝ => t * abs (Real.log t)) (Set.Ioc 0 1) := by
                    have h_integrable : MeasureTheory.IntegrableOn (fun t : ℝ => t * Real.log t) (Set.Ioc 0 1) := by
                      exact Continuous.integrableOn_Ioc ( Real.continuous_mul_log );
                    refine' h_integrable.norm.congr _;
                    filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Ioc ] with t ht using by rw [ Real.norm_eq_abs, abs_mul, abs_of_nonneg ht.1.le ] ;
                  refine' h_integrable.mono' _ _;
                  · exact MeasureTheory.AEStronglyMeasurable.mul ( MeasureTheory.AEStronglyMeasurable.mul ( measurable_id.aestronglyMeasurable ) ( Real.continuous_exp.comp_aestronglyMeasurable ( measurable_neg.aestronglyMeasurable ) ) ) ( Real.measurable_log.norm.aestronglyMeasurable );
                  · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Ioc ] with t ht using by rw [ Real.norm_of_nonneg ( mul_nonneg ( mul_nonneg ht.1.le ( Real.exp_nonneg _ ) ) ( abs_nonneg _ ) ) ] ; exact mul_le_mul_of_nonneg_right ( mul_le_of_le_one_right ht.1.le ( Real.exp_le_one_iff.mpr ( neg_nonpos.mpr ht.1.le ) ) ) ( abs_nonneg _ ) ;
                have h_integrable : MeasureTheory.IntegrableOn (fun t : ℝ => t * Real.exp (-t) * abs (Real.log t)) (Set.Ioi 1) := by
                  have h_integrable : MeasureTheory.IntegrableOn (fun t : ℝ => t * Real.exp (-t) * t) (Set.Ioi 1) := by
                    have h_integrable : MeasureTheory.IntegrableOn (fun t : ℝ => t^2 * Real.exp (-t)) (Set.Ioi 1) := by
                      have h_gamma : ∫ t in Set.Ioi 0, t^2 * Real.exp (-t) = Real.Gamma 3 := by
                        rw [ h_def ] <;> norm_num;
                      exact MeasureTheory.IntegrableOn.mono_set ( by exact ( by contrapose! h_gamma; rw [ MeasureTheory.integral_undef h_gamma ] ; positivity ) ) ( Set.Ioi_subset_Ioi zero_le_one );
                    exact h_integrable.congr_fun ( fun x hx => by ring ) measurableSet_Ioi;
                  refine' h_integrable.mono' _ _;
                  · exact Measurable.aestronglyMeasurable ( by exact Measurable.mul ( measurable_id.mul ( Real.continuous_exp.measurable.comp measurable_neg ) ) ( Real.measurable_log.norm ) );
                  · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Ioi ] with t ht using by rw [ Real.norm_of_nonneg ( mul_nonneg ( mul_nonneg ( by linarith [ ht.out ] ) ( Real.exp_nonneg _ ) ) ( abs_nonneg _ ) ) ] ; exact mul_le_mul_of_nonneg_left ( by rw [ abs_of_nonneg ( Real.log_nonneg ( by linarith [ ht.out ] ) ) ] ; exact le_trans ( Real.log_le_sub_one_of_pos ( by linarith [ ht.out ] ) ) ( by linarith [ ht.out ] ) ) ( mul_nonneg ( by linarith [ ht.out ] ) ( Real.exp_nonneg _ ) ) ;
                convert MeasureTheory.IntegrableOn.union ‹IntegrableOn ( fun t : ℝ => t * Real.exp ( -t ) * |log t| ) ( Set.Ioc 0 1 ) volume› ‹IntegrableOn ( fun t : ℝ => t * Real.exp ( -t ) * |log t| ) ( Set.Ioi 1 ) volume› using 1 ; norm_num;
              exact h_integrable.congr_fun ( fun x hx => by ring ) measurableSet_Ioi;
            have h_integrable : MeasureTheory.IntegrableOn (fun t : ℝ => abs (Real.log t) * Real.exp (-t)) (Set.Ioi 0) := by
              have h_integrable : MeasureTheory.IntegrableOn (fun t : ℝ => abs (Real.log t) * Real.exp (-t)) (Set.Ioc 0 1) := by
                have h_integrable : MeasureTheory.IntegrableOn (fun t : ℝ => abs (Real.log t)) (Set.Ioc 0 1) := by
                  have h_integrable : ∫ t in Set.Ioc 0 1, abs (Real.log t) = 1 := by
                    rw [ MeasureTheory.setIntegral_congr_fun measurableSet_Ioc fun x hx => abs_of_nonpos ( Real.log_nonpos hx.1.le hx.2 ), ← intervalIntegral.integral_of_le ] <;> norm_num;
                  exact ( by contrapose! h_integrable; rw [ MeasureTheory.integral_undef h_integrable ] ; norm_num );
                refine' h_integrable.mono' _ _;
                · exact MeasureTheory.AEStronglyMeasurable.mul ( h_integrable.aestronglyMeasurable ) ( Continuous.aestronglyMeasurable ( by continuity ) );
                · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Ioc ] with t ht using by simpa [ abs_mul ] using mul_le_mul_of_nonneg_left ( Real.exp_le_one_iff.mpr <| neg_nonpos.mpr ht.1.le ) <| abs_nonneg <| Real.log t;
              have h_integrable : MeasureTheory.IntegrableOn (fun t : ℝ => abs (Real.log t) * Real.exp (-t)) (Set.Ioi 1) := by
                have h_integrable : MeasureTheory.IntegrableOn (fun t : ℝ => t * Real.exp (-t)) (Set.Ioi 1) := by
                  have := @integral_rpow_mul_exp_neg_rpow 1;
                  specialize @this 1 ; norm_num at this;
                  exact MeasureTheory.IntegrableOn.mono_set ( by exact ( by exact ( by exact ( by exact ( by exact ( by exact by contrapose! this; rw [ MeasureTheory.integral_undef this ] ; norm_num ) ) ) ) ) ) ( Set.Ioi_subset_Ioi zero_le_one );
                refine' h_integrable.mono' _ _;
                · exact Measurable.aestronglyMeasurable ( by exact Measurable.mul ( Real.measurable_log.norm ) ( Real.continuous_exp.measurable.comp measurable_neg ) );
                · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Ioi ] with t ht using by rw [ Real.norm_of_nonneg ( by positivity ) ] ; exact mul_le_mul_of_nonneg_right ( by rw [ abs_of_nonneg ( Real.log_nonneg ht.out.le ) ] ; exact le_trans ( Real.log_le_sub_one_of_pos ( by linarith [ ht.out ] ) ) ( by linarith [ ht.out ] ) ) ( by positivity ) ;
              convert MeasureTheory.IntegrableOn.union ‹IntegrableOn ( fun t : ℝ => |Real.log t| * Real.exp ( -t ) ) ( Set.Ioc 0 1 ) volume› ‹IntegrableOn ( fun t : ℝ => |Real.log t| * Real.exp ( -t ) ) ( Set.Ioi 1 ) volume› using 1 ; norm_num;
            simp_all +decide [ mul_add ];
            exact MeasureTheory.Integrable.add ‹_› ‹_›;
          refine' MeasureTheory.tendsto_integral_filter_of_dominated_convergence _ _ _ _ _;
          refine' fun t => |Real.log t| * Real.exp ( -t ) * ( t + 1 );
          · filter_upwards [ self_mem_nhdsWithin ] with n hn using Measurable.aestronglyMeasurable ( by exact Measurable.mul ( Measurable.div_const ( by exact Measurable.sub ( measurable_id.pow_const _ ) measurable_const ) _ ) ( Real.continuous_exp.measurable.comp measurable_neg ) );
          · filter_upwards [ Ioo_mem_nhdsGT zero_lt_one ] with h hh using Filter.eventually_of_mem ( MeasureTheory.ae_restrict_mem measurableSet_Ioi ) fun t ht => h_dominate h hh t ht;
          · exact h_integrable;
          · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Ioi ] with t ht;
            refine' Filter.Tendsto.mul _ tendsto_const_nhds;
            simpa [ div_eq_inv_mul, Real.rpow_def_of_pos ht ] using HasDerivAt.tendsto_slope_zero_right ( HasDerivAt.sub ( HasDerivAt.exp ( HasDerivAt.const_mul ( Real.log t ) ( hasDerivAt_id 0 ) ) ) ( hasDerivAt_const 0 1 ) );
        -- By definition of the derivative, we know that
        have h_deriv : Filter.Tendsto (fun h => (Real.Gamma (1 + h) - Real.Gamma 1) / h) (nhdsWithin 0 (Set.Ioi 0)) (nhds (deriv Real.Gamma 1)) := by
          have h_deriv : HasDerivAt Real.Gamma (deriv Real.Gamma 1) 1 := by
            exact DifferentiableAt.hasDerivAt ( Real.differentiableAt_Gamma fun m => by linarith );
          simpa [ div_eq_inv_mul ] using h_deriv.tendsto_slope_zero_right;
        -- By definition of the Gamma function, we know that
        have h_gamma_def : ∀ h > 0, (Real.Gamma (1 + h) - Real.Gamma 1) / h = ∫ t in Set.Ioi 0, (t^h - 1) / h * Real.exp (-t) := by
          intro h hh; rw [ h_def ( 1 + h ) ( by linarith ), h_def 1 zero_lt_one ] ; simp +decide [ sub_mul, div_mul_eq_mul_div, MeasureTheory.integral_div ] ;
          rw [ MeasureTheory.integral_sub ] <;> norm_num [ integral_exp_Iic ];
          · have := @integral_rpow_mul_exp_neg_rpow 1;
            exact ( by have := @this h ( by norm_num ) ( by linarith ) ; exact ( by contrapose! this; rw [ MeasureTheory.integral_undef ( by aesop ) ] ; positivity ) );
          · exact MeasureTheory.integrable_of_integral_eq_one ( by simpa using integral_exp_neg_Ioi_zero );
        simpa [ mul_assoc, mul_comm, mul_left_comm ] using tendsto_nhds_unique h_deriv ( h_dominated.congr' <| Filter.eventuallyEq_of_mem self_mem_nhdsWithin fun x hx => h_gamma_def x hx ▸ rfl );
      aesop;
    rw [ ← h_gamma_deriv, Real.eulerMascheroniConstant_eq_neg_deriv ];
  -- We can split the integral into two parts: from 0 to 1 and from 1 to ∞.
  have h_split : ∫ t in Set.Ioi 0, Real.exp (-t) * Real.log t = (∫ t in Set.Ioc 0 1, Real.exp (-t) * Real.log t) + (∫ t in Set.Ioi 1, Real.exp (-t) * Real.log t) := by
    rw [ ← MeasureTheory.setIntegral_union ] <;> norm_num;
    · have h_integrable : MeasureTheory.IntegrableOn (fun t => Real.log t) (Set.Ioc 0 1) := by
        rw [ ← intervalIntegrable_iff_integrableOn_Ioc_of_le zero_le_one ];
        norm_num +zetaDelta at *;
      refine' h_integrable.norm.mono' _ _;
      · exact MeasureTheory.AEStronglyMeasurable.mul ( Continuous.aestronglyMeasurable ( by continuity ) ) h_integrable.aestronglyMeasurable;
      · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Ioc ] with x hx using by rw [ norm_mul, Real.norm_of_nonneg ( Real.exp_pos _ |> le_of_lt ) ] ; exact mul_le_of_le_one_left ( norm_nonneg _ ) ( Real.exp_le_one_iff.mpr <| by linarith [ hx.1, hx.2 ] ) ;
    · -- We'll use the fact that $\int_1^\infty e^{-t} \log t \, dt$ converges.
      have h_conv : MeasureTheory.IntegrableOn (fun t : ℝ => Real.exp (-t) * t) (Set.Ioi 1) := by
        have h_integrable : ∫ t in Set.Ioi 0, Real.exp (-t) * t = Real.Gamma 2 := by
          rw [ Real.Gamma_eq_integral ] <;> norm_num;
        exact MeasureTheory.IntegrableOn.mono_set ( by exact ( by contrapose! h_integrable; rw [ MeasureTheory.integral_undef h_integrable ] ; positivity ) ) ( Set.Ioi_subset_Ioi zero_le_one );
      refine' h_conv.mono' _ _;
      · exact ContinuousOn.aestronglyMeasurable ( fun t ht => ContinuousAt.continuousWithinAt ( by exact ContinuousAt.mul ( ContinuousAt.rexp ( continuousAt_id.neg ) ) ( Real.continuousAt_log ( by linarith [ ht.out ] ) ) ) ) measurableSet_Ioi;
      · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Ioi ] with t ht using by rw [ Real.norm_eq_abs, abs_of_nonneg ( mul_nonneg ( Real.exp_pos _ |> le_of_lt ) ( Real.log_nonneg ht.out.le ) ) ] ; exact mul_le_mul_of_nonneg_left ( le_trans ( Real.log_le_sub_one_of_pos ( zero_lt_one.trans ht.out ) ) ( by linarith ) ) ( Real.exp_pos _ |> le_of_lt ) ;
  -- For the integral from 0 to 1, we use the fact that $\log t = -\int_t^1 \frac{1}{s} ds$.
  have h_log_zero_one : ∫ t in Set.Ioc 0 1, Real.exp (-t) * Real.log t = -∫ t in Set.Ioc 0 1, ∫ s in t..1, Real.exp (-t) / s := by
    have h_log_zero_one : ∀ t ∈ Set.Ioc 0 1, Real.log t = -∫ s in t..1, 1 / s := by
      intro t ht; rw [ integral_one_div_of_pos ] <;> aesop;
    rw [ ← MeasureTheory.integral_neg ] ; exact MeasureTheory.setIntegral_congr_fun measurableSet_Ioc fun x hx => by rw [ h_log_zero_one x hx ] ; simp +decide [ div_eq_mul_inv, mul_assoc, mul_comm, mul_left_comm, hx.1.le ] ;
  -- By Fubini's theorem, we can interchange the order of integration.
  have h_fubini : ∫ t in Set.Ioc 0 1, ∫ s in t..1, Real.exp (-t) / s = ∫ s in Set.Ioc 0 1, ∫ t in Set.Ioc 0 s, Real.exp (-t) / s := by
    have h_fubini : ∫ t in Set.Ioc 0 1, ∫ s in t..1, Real.exp (-t) / s = ∫ t in Set.Ioc 0 1, ∫ s in Set.Ioc 0 1, (if t ≤ s then Real.exp (-t) / s else 0) := by
      refine' MeasureTheory.setIntegral_congr_fun measurableSet_Ioc fun t ht => _;
      rw [ ← MeasureTheory.integral_indicator ] <;> norm_num [ Set.indicator ];
      rw [ intervalIntegral.integral_of_le ht.2 ];
      rw [ ← MeasureTheory.integral_Icc_eq_integral_Ioc, ← MeasureTheory.integral_indicator ] <;> norm_num [ Set.indicator ];
      grind;
    rw [ h_fubini, ← MeasureTheory.integral_integral_swap ];
    · norm_num [ ← MeasureTheory.integral_indicator, Set.indicator_apply ];
      grind +splitImp;
    · rw [ MeasureTheory.integrable_prod_iff ];
      · field_simp;
        constructor;
        · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Ioc ] with x hx;
          refine' MeasureTheory.Integrable.indicator _ _;
          · exact Continuous.integrableOn_Ioc ( by exact Continuous.div_const ( Real.continuous_exp.comp <| ContinuousNeg.continuous_neg ) _ );
          · exact measurableSet_Iic;
        · refine' MeasureTheory.Integrable.congr _ _;
          use fun x => ∫ y in Set.Ioc 0 x, Real.exp ( -y ) / x;
          · -- The integral of $\frac{e^{-y}}{x}$ over $(0, x)$ is $\frac{1 - e^{-x}}{x}$.
            have h_inner : ∀ x ∈ Set.Ioc 0 1, ∫ y in Set.Ioc 0 x, Real.exp (-y) / x = (1 - Real.exp (-x)) / x := by
              intro x hx; rw [ ← intervalIntegral.integral_of_le hx.1.le ] ; norm_num [ intervalIntegral.integral_comp_neg ] ;
            rw [ MeasureTheory.integrable_congr ( Filter.eventuallyEq_of_mem ( MeasureTheory.ae_restrict_mem measurableSet_Ioc ) fun x hx => h_inner x hx ) ];
            refine' MeasureTheory.Integrable.mono' _ _ _;
            refine' fun x => 1;
            · norm_num;
            · exact ContinuousOn.aestronglyMeasurable ( fun x hx => ContinuousAt.continuousWithinAt ( by exact ContinuousAt.div ( continuousAt_const.sub ( Real.continuous_exp.continuousAt.comp ( ContinuousAt.neg continuousAt_id ) ) ) continuousAt_id ( ne_of_gt hx.1 ) ) ) measurableSet_Ioc;
            · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Ioc ] with x hx using by rw [ Real.norm_of_nonneg ( div_nonneg ( sub_nonneg.2 <| Real.exp_le_one_iff.2 <| by linarith [ hx.1, hx.2 ] ) hx.1.le ) ] ; exact div_le_one_of_le₀ ( by linarith [ hx.1, hx.2, Real.add_one_le_exp ( -x ) ] ) hx.1.le;
          · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Ioc ] with x hx;
            rw [ ← MeasureTheory.integral_indicator, ← MeasureTheory.integral_indicator ] <;> norm_num [ Set.indicator ];
            congr with y ; split_ifs <;> norm_num;
            · rw [ abs_of_nonneg ( div_nonneg ( Real.exp_nonneg _ ) hx.1.le ) ];
            · grind +revert;
            · grind;
            · aesop;
      · exact Measurable.aestronglyMeasurable ( by exact Measurable.ite ( measurableSet_le measurable_snd measurable_fst ) ( by exact Measurable.div ( Real.continuous_exp.measurable.comp ( measurable_neg.comp measurable_snd ) ) measurable_fst ) measurable_const );
  -- For the integral from 1 to ∞, we use the fact that $\log t = \int_1^t \frac{1}{s} ds$.
  have h_log_one_infty : ∫ t in Set.Ioi 1, Real.exp (-t) * Real.log t = ∫ t in Set.Ioi 1, ∫ s in (1 : ℝ)..t, Real.exp (-t) / s := by
    refine' MeasureTheory.setIntegral_congr_fun measurableSet_Ioi fun t ht => _;
    norm_num [ div_eq_mul_inv, ht.out.le ];
  -- By Fubini's theorem, we can interchange the order of integration for the integral from 1 to ∞.
  have h_fubini_one_infty : ∫ t in Set.Ioi 1, ∫ s in (1 : ℝ)..t, Real.exp (-t) / s = ∫ s in Set.Ioi 1, ∫ t in Set.Ioi s, Real.exp (-t) / s := by
    have h_fubini_one_infty : ∫ t in Set.Ioi 1, ∫ s in (1 : ℝ)..t, Real.exp (-t) / s = ∫ s in Set.Ioi 1, ∫ t in Set.Ioi 1, Real.exp (-t) / s * (if s ≤ t then 1 else 0) := by
      rw [ ← MeasureTheory.integral_integral_swap ];
      · refine' MeasureTheory.setIntegral_congr_fun measurableSet_Ioi fun t ht => _;
        rw [ intervalIntegral.integral_of_le ht.out.le, ← MeasureTheory.integral_indicator ] <;> norm_num [ Set.indicator ];
        rw [ ← MeasureTheory.integral_indicator ] <;> norm_num [ Set.indicator ];
        simpa only [ ← ite_and ];
      · rw [ MeasureTheory.integrable_prod_iff ];
        · constructor;
          · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Ioi ] with t ht;
            -- The function is integrable on $(1, t]$ and zero elsewhere, so it is integrable on $(1, \infty)$.
            have h_integrable : MeasureTheory.IntegrableOn (fun y => Real.exp (-t) / y) (Set.Ioc 1 t) := by
              exact ContinuousOn.integrableOn_Icc ( by exact continuousOn_of_forall_continuousAt fun x hx => ContinuousAt.div continuousAt_const continuousAt_id <| by linarith [ hx.1 ] ) |> fun h => h.mono_set <| Set.Ioc_subset_Icc_self;
            rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Ioc ) ] at h_integrable;
            rw [ MeasureTheory.integrable_congr ];
            convert h_integrable.restrict;
            filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Ioi ] with y hy using by rw [ Set.indicator_apply ] ; aesop;
          · refine' MeasureTheory.Integrable.congr _ _;
            use fun x => ∫ y in Set.Ioc 1 x, Real.exp ( -x ) / y;
            · -- The integral $\int_{1}^{x} \frac{e^{-x}}{y} \, dy$ simplifies to $e^{-x} \log x$.
              have h_inner : ∀ x ∈ Set.Ioi 1, ∫ y in Set.Ioc 1 x, Real.exp (-x) / y = Real.exp (-x) * Real.log x := by
                intro x hx; rw [ ← intervalIntegral.integral_of_le hx.out.le ] ; norm_num [ div_eq_mul_inv, hx.out.le ] ;
              rw [ MeasureTheory.integrable_congr ( Filter.eventuallyEq_of_mem ( MeasureTheory.ae_restrict_mem measurableSet_Ioi ) h_inner ) ];
              have h_integrable : MeasureTheory.IntegrableOn (fun x => Real.exp (-x) * x) (Set.Ioi 1) := by
                have h_integrable : MeasureTheory.IntegrableOn (fun x => Real.exp (-x) * x) (Set.Ioi 0) := by
                  have h_integrable : ∫ x in Set.Ioi 0, Real.exp (-x) * x = Real.Gamma 2 := by
                    rw [ Real.Gamma_eq_integral ] <;> norm_num;
                  exact ( by contrapose! h_integrable; rw [ MeasureTheory.integral_undef h_integrable ] ; positivity );
                exact h_integrable.mono_set <| Set.Ioi_subset_Ioi zero_le_one;
              refine' h_integrable.mono' _ _;
              · exact MeasureTheory.AEStronglyMeasurable.mul ( Continuous.aestronglyMeasurable ( by continuity ) ) ( Real.measurable_log.aestronglyMeasurable );
              · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Ioi ] with x hx using by rw [ Real.norm_of_nonneg ( mul_nonneg ( Real.exp_pos _ |> le_of_lt ) ( Real.log_nonneg hx.out.le ) ) ] ; exact mul_le_mul_of_nonneg_left ( le_trans ( Real.log_le_sub_one_of_pos ( zero_lt_one.trans hx.out ) ) ( by linarith ) ) ( Real.exp_pos _ |> le_of_lt ) ;
            · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Ioi ] with x hx;
              rw [ ← MeasureTheory.integral_indicator, ← MeasureTheory.integral_indicator ] <;> norm_num [ Set.indicator ];
              congr with y ; split_ifs <;> norm_num;
              · rw [ abs_of_nonneg ( div_nonneg ( Real.exp_nonneg _ ) ( by linarith ) ) ];
              · linarith;
              · grind +revert;
              · grind +qlia;
        · exact Measurable.aestronglyMeasurable ( by exact Measurable.mul ( by exact Measurable.mul ( Real.continuous_exp.measurable.comp ( measurable_neg.comp measurable_fst ) ) ( measurable_snd.inv ) ) ( by exact Measurable.ite ( measurableSet_le measurable_snd measurable_fst ) measurable_const measurable_const ) );
    rw [ h_fubini_one_infty ];
    refine' MeasureTheory.setIntegral_congr_fun measurableSet_Ioi fun s hs => _;
    rw [ ← MeasureTheory.integral_indicator ( measurableSet_Ioi ), ← MeasureTheory.integral_indicator ( measurableSet_Ioi ) ];
    simp +decide [ Set.indicator ];
    rw [ ← MeasureTheory.integral_congr_ae ];
    filter_upwards [ MeasureTheory.measure_eq_zero_iff_ae_notMem.mp ( MeasureTheory.measure_singleton s ) ] with x hx using by split_ifs <;> cases lt_or_gt_of_ne hx <;> linarith [ hs.out ] ;
  simp_all +decide [ div_eq_mul_inv, ← intervalIntegral.integral_of_le zero_le_one ];
  rw [ intervalIntegral.integral_of_le zero_le_one ] ; norm_num [ MeasureTheory.integral_mul_const, integral_exp_neg_Ioi ] ; ring_nf;
  norm_num [ integral_exp_Iic, ← intervalIntegral.integral_of_le zero_le_one ] ; ring_nf;
  rw [ intervalIntegral.integral_of_le zero_le_one ] ; rw [ MeasureTheory.setIntegral_congr_fun measurableSet_Ioc fun x hx => by rw [ ← intervalIntegral.integral_of_le hx.1.le ] ] ; norm_num [ intervalIntegral.integral_comp_neg ] ; ring_nf;
  rw [ intervalIntegral.integral_of_le zero_le_one ]
/-
PROBLEM
For 0 < ε < min y 1, the PV integrand equals a sum of convergent pieces
PROVIDED SOLUTION
This is an algebraic identity. Steps:
1. Use integral_exp_div_neg_eq to rewrite the first integral: ∫_{-1/ε}^{-ε} exp(u)/u du = -∫_{ε}^{1/ε} exp(-t)/t dt
2. Use integral_exp_div_split to rewrite the second integral: ∫_{ε}^{y} exp(u)/u du = ∫_{ε}^{y} (exp(u)-1)/u du + log(y) - log(ε)
3. Split -∫_{ε}^{1/ε} exp(-t)/t dt = -∫_{ε}^{1} exp(-t)/t dt - ∫_{1}^{1/ε} exp(-t)/t dt (using intervalIntegral.integral_add_adjacent_intervals)
4. Note that -∫_{ε}^{1} exp(-t)/t dt - log(ε) = ∫_{ε}^{1} (1-exp(-t))/t dt since log(ε) = -∫_{ε}^{1} 1/t dt. More precisely: ∫_{ε}^{1} (1-exp(-t))/t dt = ∫_{ε}^{1} 1/t dt - ∫_{ε}^{1} exp(-t)/t dt = -log(ε) - ∫_{ε}^{1} exp(-t)/t dt.
5. Combining: -∫_{ε}^{1/ε} exp(-t)/t dt + ∫_{ε}^{y} (exp(u)-1)/u du + log(y) - log(ε)
   = -∫_{ε}^{1} exp(-t)/t dt - ∫_{1}^{1/ε} exp(-t)/t dt + ∫_{ε}^{y} (exp(u)-1)/u du + log(y) - log(ε)
   = ∫_{ε}^{1} (1-exp(-t))/t dt - ∫_{1}^{1/ε} exp(-t)/t dt + ∫_{ε}^{y} (exp(u)-1)/u du + log(y)
Use integral_exp_div_neg_eq, integral_exp_div_split, intervalIntegral.integral_add_adjacent_intervals, and algebraic manipulation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de357c34051029ec1e785dacf601e32497997d99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

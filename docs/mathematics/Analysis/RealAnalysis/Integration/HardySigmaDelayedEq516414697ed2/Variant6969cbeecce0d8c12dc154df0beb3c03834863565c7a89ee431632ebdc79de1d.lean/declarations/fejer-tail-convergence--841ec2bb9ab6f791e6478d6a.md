# fejer_tail_convergence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a9327df-f2ed-4a84-1870-3812496b852e",
  "kind": "theorem",
  "lexical_name": "fejer_tail_convergence",
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
  "slug": "fejer-tail-convergence--841ec2bb9ab6f791e6478d6a",
  "source": {
    "blob": "738b9a07216212d85fc41196714020e6eae78238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 878,
    "line": 722,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:841ec2bb9ab6f791e6478d6a2d444e49e58acc3b392530ff4affb30b5d888b26",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a9327df-f2ed-4a84-1870-3812496b852e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 722–878.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fejer_tail_convergence (f : ℝ → ℝ) (hf_int : IntervalIntegrable f MeasureTheory.volume (-Real.pi) Real.pi)
    (hf_per : Function.Periodic f (2 * Real.pi)) (a b : ℝ) (hab : a ≤ b)
    (hf_cont : ∀ x ∈ Set.Icc a b, ContinuousAt f x) (δ : ℝ) (hδ_pos : 0 < δ) (hδ_le : δ < Real.pi) :
    TendstoUniformlyOn (fun n x => (1 / Real.pi) * ∫ t in (Set.Icc (-Real.pi) (-δ) ∪ Set.Icc δ Real.pi), (f (x - t) - f x) * fejer_kernel n t) 0 Filter.atTop (Set.Icc a b) := by
      -- By Lemma 24, the integral of the difference over the tail region tends to 0 uniformly.
      have h_tail : ∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, ∀ x ∈ Set.Icc a b, |∫ t in Set.Icc (-Real.pi) (-δ) ∪ Set.Icc δ Real.pi, (f (x - t) - f x) * fejer_kernel n t| < ε := by
        -- By Lemma 24, the integral of the difference over the tail region tends to 0 uniformly. Hence, we can apply the lemma directly.
        intros ε hε_pos
        obtain ⟨N, hN⟩ : ∃ N : ℕ, ∀ n ≥ N, ⨆ t ∈ Set.Icc δ Real.pi, fejer_kernel n t < ε / (2 * (∫ t in Set.Icc (-Real.pi) Real.pi, |f t|) + 2 * Real.pi * (SupSet.sSup (Set.image (fun x => |f x|) (Set.Icc a b))) + 1) := by
          have := fejer_kernel_uniform_limit_zero δ hδ_pos hδ_le.le |> fun h => h.eventually ( gt_mem_nhds <| show 0 < ε / ( ( 2 * ∫ t in Set.Icc ( -Real.pi ) Real.pi, |f t| ) + 2 * Real.pi * sSup ( ( fun x => |f x| ) '' Set.Icc a b ) + 1 ) from div_pos hε_pos <| by exact add_pos_of_nonneg_of_pos ( add_nonneg ( mul_nonneg zero_le_two <| MeasureTheory.integral_nonneg fun _ => abs_nonneg _ ) <| mul_nonneg ( mul_nonneg zero_le_two <| Real.pi_pos.le ) <| by apply_rules [ Real.sSup_nonneg ] ; rintro x ⟨ y, hy, rfl ⟩ ; exact abs_nonneg _ ) zero_lt_one ) ; aesop;
        use N;
        intros n hn x hx
        have h_bound : |∫ t in Set.Icc (-Real.pi) (-δ) ∪ Set.Icc δ Real.pi, (f (x - t) - f x) * fejer_kernel n t| ≤ (∫ t in Set.Icc (-Real.pi) (-δ) ∪ Set.Icc δ Real.pi, |f (x - t)| + |f x|) * (⨆ t ∈ Set.Icc δ Real.pi, fejer_kernel n t) := by
          have h_bound : ∀ t ∈ Set.Icc (-Real.pi) (-δ) ∪ Set.Icc δ Real.pi, |(f (x - t) - f x) * fejer_kernel n t| ≤ (|f (x - t)| + |f x|) * (⨆ t ∈ Set.Icc δ Real.pi, fejer_kernel n t) := by
            intros t ht
            have h_bound : |fejer_kernel n t| ≤ ⨆ t ∈ Set.Icc δ Real.pi, fejer_kernel n t := by
              have h_bound : ∀ t ∈ Set.Icc δ Real.pi, |fejer_kernel n t| ≤ ⨆ t ∈ Set.Icc δ Real.pi, fejer_kernel n t := by
                intros t ht
                have h_bound : fejer_kernel n t ≤ ⨆ t ∈ Set.Icc δ Real.pi, fejer_kernel n t := by
                  apply le_csSup;
                  · refine' ⟨ ( n + 1 ) / 2, Set.forall_mem_range.mpr fun t => _ ⟩;
                    field_simp;
                    rw [ @ciSup_eq_ite ] ; norm_num;
                    split_ifs <;> [ exact le_trans ( mul_le_mul_of_nonneg_right ( fejer_kernel_le_linear n t ) zero_le_two ) ( by linarith ) ; exact by linarith ];
                  · exact ⟨ t, by aesop ⟩;
                rw [ abs_of_nonneg ( fejer_kernel_nonneg n t ) ] ; exact h_bound;
              cases ht <;> simp_all +decide [ abs_of_nonneg, fejer_kernel_nonneg ];
              convert h_bound ( -t ) ( by linarith ) ( by linarith ) using 1 ; rw [ ← fejer_kernel_even ];
            simpa only [ abs_mul ] using mul_le_mul ( abs_sub _ _ ) h_bound ( by positivity ) ( by positivity );
          rw [ ← MeasureTheory.integral_mul_const ];
          refine' le_trans ( MeasureTheory.norm_integral_le_integral_norm ( _ : ℝ → ℝ ) ) ( MeasureTheory.integral_mono_of_nonneg _ _ _ );
          · exact Filter.Eventually.of_forall fun t => norm_nonneg _;
          · refine' MeasureTheory.Integrable.mul_const _ _;
            refine' MeasureTheory.Integrable.add _ _;
            · have h_integrable : MeasureTheory.IntegrableOn (fun t => |f t|) (Set.Icc (-Real.pi) Real.pi) := by
                rw [ intervalIntegrable_iff_integrableOn_Icc_of_le ( by linarith [ Real.pi_pos ] ) ] at hf_int ; exact hf_int.abs;
              have h_integrable : MeasureTheory.IntegrableOn (fun t => |f (x - t)|) (Set.Icc (-Real.pi) Real.pi) := by
                have h_integrable : MeasureTheory.IntegrableOn (fun t => |f t|) (Set.Icc (x - Real.pi) (x + Real.pi)) := by
                  have h_integrable : ∀ m : ℤ, MeasureTheory.IntegrableOn (fun t => |f t|) (Set.Icc (m * 2 * Real.pi - Real.pi) (m * 2 * Real.pi + Real.pi)) := by
                    intro m;
                    have h_integrable : ∀ m : ℤ, MeasureTheory.IntegrableOn (fun t => |f t|) (Set.Icc (m * 2 * Real.pi - Real.pi) (m * 2 * Real.pi + Real.pi)) := by
                      intro m
                      have h_periodic : ∀ t, |f (t + m * 2 * Real.pi)| = |f t| := by
                        exact fun t => by simpa [ mul_assoc ] using congr_arg abs ( Function.Periodic.int_mul hf_per m t ) ;
                      rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                      convert h_integrable.comp_sub_right ( m * 2 * Real.pi ) using 1;
                      ext t; simp [Set.indicator];
                      grind;
                    exact h_integrable m;
                  -- Choose $m$ such that $m * 2 * \pi - \pi \leq x - \pi < m * 2 * \pi + \pi$.
                  obtain ⟨m, hm⟩ : ∃ m : ℤ, m * 2 * Real.pi - Real.pi ≤ x - Real.pi ∧ x - Real.pi < m * 2 * Real.pi + Real.pi := by
                    exact ⟨ ⌊ ( x - Real.pi + Real.pi ) / ( 2 * Real.pi ) ⌋, by nlinarith [ Int.floor_le ( ( x - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ], by nlinarith [ Int.lt_floor_add_one ( ( x - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] ⟩;
                  have h_integrable : MeasureTheory.IntegrableOn (fun t => |f t|) (Set.Icc (m * 2 * Real.pi - Real.pi) (m * 2 * Real.pi + Real.pi + 2 * Real.pi)) := by
                    have h_integrable : MeasureTheory.IntegrableOn (fun t => |f t|) (Set.Icc (m * 2 * Real.pi - Real.pi) (m * 2 * Real.pi + Real.pi)) ∧ MeasureTheory.IntegrableOn (fun t => |f t|) (Set.Icc (m * 2 * Real.pi + Real.pi) (m * 2 * Real.pi + Real.pi + 2 * Real.pi)) := by
                      exact ⟨ h_integrable m, by convert h_integrable ( m + 1 ) using 1 ; push_cast ; ring ⟩;
                    convert h_integrable.1.union h_integrable.2 using 1 ; ext ; norm_num;
                    exact ⟨ fun h => if h' : _ ≤ _ then Or.inl ⟨ h.1, h' ⟩ else Or.inr ⟨ by linarith, h.2 ⟩, fun h => h.elim ( fun h => ⟨ h.1, by linarith ⟩ ) fun h => ⟨ by linarith, h.2 ⟩ ⟩;
                  exact h_integrable.mono_set ( Set.Icc_subset_Icc ( by linarith ) ( by linarith ) );
                rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                convert h_integrable.comp_sub_left x using 1;
                ext; simp [Set.indicator];
                grind;
              exact h_integrable.mono_set ( Set.union_subset ( Set.Icc_subset_Icc_right ( by linarith ) ) ( Set.Icc_subset_Icc_left ( by linarith ) ) );
            · exact Continuous.integrableOn_Icc ( by continuity ) |> fun h => h.union ( by exact Continuous.integrableOn_Icc ( by continuity ) );
          · filter_upwards [ MeasureTheory.ae_restrict_mem ( measurableSet_Icc.union measurableSet_Icc ) ] with t ht using h_bound t ht;
        -- By Lemma 24, the integral of |f(x-t)| over [-π, -δ] ∪ [δ, π] is bounded by the integral of |f(t)| over [-π, π].
        have h_integral_bound : ∫ t in Set.Icc (-Real.pi) (-δ) ∪ Set.Icc δ Real.pi, |f (x - t)| ≤ ∫ t in Set.Icc (-Real.pi) Real.pi, |f t| := by
          have h_integral_bound : ∫ t in Set.Icc (-Real.pi) (-δ) ∪ Set.Icc δ Real.pi, |f (x - t)| ≤ ∫ t in Set.Icc (-Real.pi) Real.pi, |f (x - t)| := by
            refine' MeasureTheory.setIntegral_mono_set _ _ _;
            · have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi) Real.pi) := by
                rw [ intervalIntegrable_iff_integrableOn_Icc_of_le ( by linarith [ Real.pi_pos ] ) ] at hf_int ; aesop;
              have h_integrable : MeasureTheory.IntegrableOn (fun t => f (x - t)) (Set.Icc (-Real.pi) Real.pi) := by
                have h_integrable : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (x - Real.pi) (x + Real.pi)) := by
                  have h_integrable : ∀ m : ℤ, MeasureTheory.IntegrableOn f (Set.Icc (m * (2 * Real.pi) - Real.pi) (m * (2 * Real.pi) + Real.pi)) := by
                    intro m;
                    have h_integrable : ∀ m : ℤ, MeasureTheory.IntegrableOn f (Set.Icc (m * (2 * Real.pi) - Real.pi) (m * (2 * Real.pi) + Real.pi)) := by
                      intro m
                      have h_periodic : ∀ t, f (t + m * (2 * Real.pi)) = f t := by
                        exact fun t => by simpa [ mul_assoc, mul_left_comm ] using Function.Periodic.int_mul hf_per m t;
                      rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                      convert h_integrable.comp_sub_right ( m * ( 2 * Real.pi ) ) using 1;
                      ext t; simp [Set.indicator];
                      grind;
                    exact h_integrable m;
                  -- Choose $m$ such that $m * (2 * π) - π ≤ x - π < m * (2 * π) + π$.
                  obtain ⟨m, hm⟩ : ∃ m : ℤ, m * (2 * Real.pi) - Real.pi ≤ x - Real.pi ∧ x - Real.pi < m * (2 * Real.pi) + Real.pi := by
                    exact ⟨ ⌊ ( x - Real.pi + Real.pi ) / ( 2 * Real.pi ) ⌋, by nlinarith [ Int.floor_le ( ( x - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ], by nlinarith [ Int.lt_floor_add_one ( ( x - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] ⟩;
                  have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (m * (2 * Real.pi) - Real.pi) (m * (2 * Real.pi) + 3 * Real.pi)) := by
                    have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (m * (2 * Real.pi) - Real.pi) (m * (2 * Real.pi) + Real.pi)) ∧ MeasureTheory.IntegrableOn f (Set.Icc (m * (2 * Real.pi) + Real.pi) (m * (2 * Real.pi) + 3 * Real.pi)) := by
                      exact ⟨ h_integrable m, by convert h_integrable ( m + 1 ) using 1 ; push_cast ; ring ⟩;
                    convert h_integrable.1.union h_integrable.2 using 1 ; ext ; norm_num;
                    exact ⟨ fun h => if h' : _ ≤ _ then Or.inl ⟨ h.1, h' ⟩ else Or.inr ⟨ by linarith, h.2 ⟩, fun h => h.elim ( fun h => ⟨ h.1, by linarith ⟩ ) fun h => ⟨ by linarith, h.2 ⟩ ⟩;
                  exact h_integrable.mono_set <| Set.Icc_subset_Icc ( by linarith ) ( by linarith );
                rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                convert h_integrable.comp_sub_left x using 1;
                ext; simp [Set.indicator];
                grind;
              exact h_integrable.abs;
            · exact Filter.Eventually.of_forall fun t => abs_nonneg _;
            · exact MeasureTheory.ae_of_all _ fun t ht => by cases ht <;> constructor <;> linarith [ Set.mem_Icc.mp ‹_› ] ;
          have h_integral_bound : ∫ t in Set.Icc (-Real.pi) Real.pi, |f (x - t)| = ∫ t in Set.Icc (x - Real.pi) (x + Real.pi), |f t| := by
            rw [ MeasureTheory.integral_Icc_eq_integral_Ioc, MeasureTheory.integral_Icc_eq_integral_Ioc ];
            rw [ ← intervalIntegral.integral_of_le ( by linarith [ Real.pi_pos ] ), ← intervalIntegral.integral_of_le ( by linarith [ Real.pi_pos ] ) ] ; convert intervalIntegral.integral_comp_sub_left _ x using 2 <;> ring;
          have h_integral_bound : ∫ t in Set.Icc (x - Real.pi) (x + Real.pi), |f t| = ∫ t in Set.Icc (-Real.pi) Real.pi, |f t| := by
            rw [ MeasureTheory.integral_Icc_eq_integral_Ioc, MeasureTheory.integral_Icc_eq_integral_Ioc ];
            rw [ ← intervalIntegral.integral_of_le ( by linarith [ Real.pi_pos ] ), ← intervalIntegral.integral_of_le ( by linarith [ Real.pi_pos ] ) ];
            convert integral_periodic_shift _ _ _ _ using 2;
            · exact fun x => by simp +decide [ hf_per x ] ;
            · exact hf_int.abs;
          linarith;
        -- By Lemma 24, the integral of |f(x)| over [-π, -δ] ∪ [δ, π] is bounded by 2π times the supremum of |f(x)| over [a, b].
        have h_integral_bound_f : ∫ t in Set.Icc (-Real.pi) (-δ) ∪ Set.Icc δ Real.pi, |f x| ≤ 2 * Real.pi * (SupSet.sSup (Set.image (fun x => |f x|) (Set.Icc a b))) := by
          rw [ MeasureTheory.setIntegral_union ] <;> norm_num;
          · rw [ max_eq_left ( by linarith ), max_eq_left ( by linarith ) ];
            nlinarith [ abs_nonneg ( f x ), Real.pi_pos, show |f x| ≤ sSup ( ( fun x => |f x| ) '' Set.Icc a b ) from le_csSup ( by exact ( IsCompact.bddAbove ( isCompact_Icc.image_of_continuousOn ( continuous_abs.comp_continuousOn ( show ContinuousOn f ( Set.Icc a b ) from fun x hx => ContinuousAt.continuousWithinAt ( hf_cont x hx ) ) ) ) ) ) ( Set.mem_image_of_mem _ hx ) ];
          · exact Set.disjoint_left.mpr fun x hx₁ hx₂ => by linarith [ Set.mem_Icc.mp hx₁, Set.mem_Icc.mp hx₂ ] ;
        refine lt_of_le_of_lt h_bound ?_;
        rw [ MeasureTheory.integral_add ];
        · refine' lt_of_le_of_lt ( mul_le_mul_of_nonneg_right ( add_le_add h_integral_bound h_integral_bound_f ) ( by exact Real.iSup_nonneg fun _ => Real.iSup_nonneg fun _ => fejer_kernel_nonneg _ _ ) ) _;
          have := hN n hn;
          rw [ lt_div_iff₀ ] at this <;> nlinarith [ show 0 ≤ ∫ t in Set.Icc ( -Real.pi ) Real.pi, |f t| from MeasureTheory.integral_nonneg fun _ => abs_nonneg _, show 0 ≤ 2 * Real.pi * sSup ( ( fun x => |f x| ) '' Set.Icc a b ) from mul_nonneg ( by positivity ) ( by apply_rules [ Real.sSup_nonneg ] ; rintro x ⟨ y, hy, rfl ⟩ ; exact abs_nonneg _ ) ];
        · have h_integrable : MeasureTheory.IntegrableOn (fun t => |f t|) (Set.Icc (-Real.pi) Real.pi) := by
            rw [ intervalIntegrable_iff_integrableOn_Icc_of_le ( by linarith [ Real.pi_pos ] ) ] at hf_int ; exact hf_int.abs;
          have h_integrable_shift : MeasureTheory.IntegrableOn (fun t => |f (x - t)|) (Set.Icc (-Real.pi) Real.pi) := by
            have h_integrable_shift : MeasureTheory.IntegrableOn (fun t => |f t|) (Set.Icc (x - Real.pi) (x + Real.pi)) := by
              have h_integrable_shift : ∀ m : ℤ, MeasureTheory.IntegrableOn (fun t => |f t|) (Set.Icc (m * 2 * Real.pi - Real.pi) (m * 2 * Real.pi + Real.pi)) := by
                field_simp;
                intro m;
                have h_integrable_shift : MeasureTheory.IntegrableOn (fun t => |f (t - m * 2 * Real.pi)|) (Set.Icc (Real.pi * (m * 2 - 1)) (Real.pi * (m * 2 + 1))) := by
                  rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                  convert h_integrable.comp_sub_right ( m * 2 * Real.pi ) using 1;
                  ext; simp [Set.indicator];
                  exact if_congr ⟨ fun h => ⟨ by linarith, by linarith ⟩, fun h => ⟨ by linarith, by linarith ⟩ ⟩ rfl rfl;
                convert h_integrable_shift using 1;
                exact funext fun x => by rw [ show f x = f ( x - m * 2 * Real.pi ) by simpa [ mul_assoc ] using Function.Periodic.int_mul hf_per m ( x - m * 2 * Real.pi ) ] ;
              -- Choose $m$ such that $m * 2 * \pi - \pi \leq x - \pi < m * 2 * \pi + \pi$.
              obtain ⟨m, hm⟩ : ∃ m : ℤ, m * 2 * Real.pi - Real.pi ≤ x - Real.pi ∧ x - Real.pi < m * 2 * Real.pi + Real.pi := by
                exact ⟨ ⌊ ( x - Real.pi + Real.pi ) / ( 2 * Real.pi ) ⌋, by nlinarith [ Int.floor_le ( ( x - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ], by nlinarith [ Int.lt_floor_add_one ( ( x - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] ⟩;
              have h_integrable_shift : MeasureTheory.IntegrableOn (fun t => |f t|) (Set.Icc (m * 2 * Real.pi - Real.pi) (m * 2 * Real.pi + Real.pi + 2 * Real.pi)) := by
                have h_integrable_shift : MeasureTheory.IntegrableOn (fun t => |f t|) (Set.Icc (m * 2 * Real.pi - Real.pi) (m * 2 * Real.pi + Real.pi)) ∧ MeasureTheory.IntegrableOn (fun t => |f t|) (Set.Icc (m * 2 * Real.pi + Real.pi) (m * 2 * Real.pi + Real.pi + 2 * Real.pi)) := by
                  exact ⟨ h_integrable_shift m, by convert h_integrable_shift ( m + 1 ) using 1 ; push_cast ; ring ⟩;
                convert h_integrable_shift.1.union h_integrable_shift.2 using 1 ; ext ; norm_num;
                exact ⟨ fun h => if h' : _ ≤ _ then Or.inl ⟨ h.1, h' ⟩ else Or.inr ⟨ by linarith, h.2 ⟩, fun h => h.elim ( fun h => ⟨ h.1, by linarith ⟩ ) fun h => ⟨ by linarith, h.2 ⟩ ⟩;
              exact h_integrable_shift.mono_set <| Set.Icc_subset_Icc ( by linarith ) ( by linarith );
            rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
            convert h_integrable_shift.comp_sub_left x using 1;
            ext; simp [Set.indicator];
            grind;
          exact h_integrable_shift.mono_set ( Set.union_subset ( Set.Icc_subset_Icc_right ( by linarith ) ) ( Set.Icc_subset_Icc_left ( by linarith ) ) );
        · exact Continuous.integrableOn_Icc ( by continuity ) |> fun h => h.union ( by exact Continuous.integrableOn_Icc ( by continuity ) );
      rw [ Metric.tendstoUniformlyOn_iff ];
      field_simp;
      exact fun ε hε => by rcases h_tail ( ε * Real.pi ) ( mul_pos hε Real.pi_pos ) with ⟨ N, hN ⟩ ; filter_upwards [ Filter.eventually_ge_atTop N ] with n hn x hx using abs_lt.mpr ⟨ by norm_num; nlinarith [ abs_lt.mp ( hN n hn x hx ), Real.pi_pos, mul_div_cancel₀ ( ∫ t in Set.Icc ( -Real.pi ) ( -δ ) ∪ Set.Icc δ Real.pi, ( f ( x - t ) - f x ) * fejer_kernel n t ) Real.pi_ne_zero ], by norm_num; nlinarith [ abs_lt.mp ( hN n hn x hx ), Real.pi_pos, mul_div_cancel₀ ( ∫ t in Set.Icc ( -Real.pi ) ( -δ ) ∪ Set.Icc δ Real.pi, ( f ( x - t ) - f x ) * fejer_kernel n t ) Real.pi_ne_zero ] ⟩ ;

/-
Lemma: The integral of the Fejér kernel over the tail region tends to 0.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean#L722).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `738b9a07216212d85fc41196714020e6eae78238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

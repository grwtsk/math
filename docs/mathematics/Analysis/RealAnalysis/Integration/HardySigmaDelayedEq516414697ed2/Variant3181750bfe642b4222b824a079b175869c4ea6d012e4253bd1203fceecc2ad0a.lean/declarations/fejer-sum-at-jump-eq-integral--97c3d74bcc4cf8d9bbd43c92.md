# fejer_sum_at_jump_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84f685935c5324bdcc51c6fdf7db424d8bd5db1c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b40802cf-d043-cff2-98dd-47a0c7caab93",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:118d4e6e-d1d6-6deb-1d03-6894ec72a104",
  "kind": "theorem",
  "lexical_name": "fejer_sum_at_jump_eq_integral",
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
  "slug": "fejer-sum-at-jump-eq-integral--97c3d74bcc4cf8d9bbd43c92",
  "source": {
    "blob": "84f685935c5324bdcc51c6fdf7db424d8bd5db1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1507,
    "line": 1139,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97c3d74bcc4cf8d9bbd43c922f8788681f10d4d154b76fdc4bf71fb709844ec9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:118d4e6e-d1d6-6deb-1d03-6894ec72a104`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1139–1507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fejer_sum_at_jump_eq_integral {f : ℝ → ℝ} {n : ℕ} {x₀ L_plus L_minus : ℝ}
    (hf_int : IntervalIntegrable f MeasureTheory.volume (-Real.pi) Real.pi)
    (hf_per : Function.Periodic f (2 * Real.pi)) :
    fejer_sum f n x₀ - (L_plus + L_minus) / 2 =
    (1 / Real.pi) * ∫ t in (0:ℝ)..Real.pi, (f (x₀ + t) + f (x₀ - t) - L_plus - L_minus) * fejer_kernel n t := by
      -- Split the integral into two parts: from -π to 0 and from 0 to π.
      have h_split : ∫ t in (-Real.pi)..Real.pi, fejer_kernel n t * (f (x₀ - t) - (L_plus + L_minus) / 2) = (∫ t in (0:ℝ)..Real.pi, fejer_kernel n t * (f (x₀ + t) - (L_plus + L_minus) / 2)) + (∫ t in (0:ℝ)..Real.pi, fejer_kernel n t * (f (x₀ - t) - (L_plus + L_minus) / 2)) := by
        rw [ ← intervalIntegral.integral_add_adjacent_intervals ];
        rw [ ← intervalIntegral.integral_comp_neg, neg_zero ];
        · norm_num [ fejer_kernel_even ];
        · have h_integrable : IntervalIntegrable (fun t => f (x₀ - t)) MeasureTheory.volume (-Real.pi) Real.pi := by
            rw [ intervalIntegrable_iff_integrableOn_Ioc_of_le ( by linarith [ Real.pi_pos ] ) ] at *;
            have h_integrable : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (x₀ - Real.pi) (x₀ + Real.pi)) MeasureTheory.volume := by
              have h_integrable : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (-Real.pi) Real.pi) MeasureTheory.volume := by
                rwa [ MeasureTheory.IntegrableOn, MeasureTheory.Measure.restrict_congr_set MeasureTheory.Ioc_ae_eq_Icc ] at *;
              -- By periodicity, we can shift the interval of integration.
              have h_shift : ∀ k : ℤ, MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (-Real.pi + k * 2 * Real.pi) (Real.pi + k * 2 * Real.pi)) MeasureTheory.volume := by
                intro k;
                have h_shift : ∀ k : ℤ, MeasureTheory.IntegrableOn (fun t => f (t - k * 2 * Real.pi)) (Set.Icc (-Real.pi + k * 2 * Real.pi) (Real.pi + k * 2 * Real.pi)) MeasureTheory.volume := by
                  intro k;
                  rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                  convert h_integrable.comp_sub_right ( k * 2 * Real.pi ) using 1;
                  ext; simp [Set.indicator];
                  split_ifs <;> ring_nf at * <;> aesop;
                convert h_shift k using 1;
                exact funext fun x => by simpa [ mul_assoc ] using Function.Periodic.int_mul hf_per k ( x - k * 2 * Real.pi ) ;
              -- Choose $k$ such that $x₀ - \pi \in [-\pi + k * 2 * \pi, \pi + k * 2 * \pi]$.
              obtain ⟨k, hk⟩ : ∃ k : ℤ, x₀ - Real.pi ∈ Set.Icc (-Real.pi + k * 2 * Real.pi) (Real.pi + k * 2 * Real.pi) := by
                exact ⟨ ⌊ ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ⌋, by nlinarith [ Int.floor_le ( ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x₀ - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ], by nlinarith [ Int.lt_floor_add_one ( ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x₀ - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] ⟩;
              have h_shift : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (-Real.pi + k * 2 * Real.pi) (Real.pi + k * 2 * Real.pi)) MeasureTheory.volume := by
                exact h_shift k;
              have h_shift : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (x₀ - Real.pi) (x₀ + Real.pi)) MeasureTheory.volume := by
                have h_subset : Set.Icc (x₀ - Real.pi) (x₀ + Real.pi) ⊆ Set.Icc (-Real.pi + k * 2 * Real.pi) (Real.pi + k * 2 * Real.pi) ∪ Set.Icc (-Real.pi + (k + 1) * 2 * Real.pi) (Real.pi + (k + 1) * 2 * Real.pi) := by
                  intro t ht; cases le_or_gt t ( Real.pi + k * 2 * Real.pi ) <;> [ left; right ] <;> constructor <;> linarith [ ht.1, ht.2, hk.1, hk.2 ] ;
                have h_shift : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (-Real.pi + (k + 1) * 2 * Real.pi) (Real.pi + (k + 1) * 2 * Real.pi)) MeasureTheory.volume := by
                  convert ‹∀ k : ℤ, MeasureTheory.IntegrableOn ( fun t => f t ) ( Set.Icc ( -Real.pi + k * 2 * Real.pi ) ( Real.pi + k * 2 * Real.pi ) ) MeasureTheory.volume› ( k + 1 ) using 1 ; push_cast ; ring;
                exact MeasureTheory.IntegrableOn.mono_set ( MeasureTheory.IntegrableOn.union ‹_› ‹_› ) h_subset;
              convert h_shift using 1;
            have h_integrable : MeasureTheory.IntegrableOn (fun t => f (x₀ - t)) (Set.Icc (-Real.pi) Real.pi) MeasureTheory.volume := by
              rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
              convert h_integrable.comp_sub_left x₀ using 1;
              ext; simp [Set.indicator];
              grind;
            exact h_integrable.mono_set <| Set.Ioc_subset_Icc_self;
          have h_integrable : IntervalIntegrable (fun t => fejer_kernel n t * (f (x₀ - t) - (L_plus + L_minus) / 2)) MeasureTheory.volume (-Real.pi) Real.pi := by
            convert h_integrable.mul_continuousOn ( Continuous.continuousOn ( show Continuous fun t => fejer_kernel n t from ?_ ) ) |> fun h => h.sub ( Continuous.intervalIntegrable ( show Continuous fun t => fejer_kernel n t * ( L_plus + L_minus ) / 2 from ?_ ) ( -Real.pi ) Real.pi ) using 1;
            · exact funext fun x => by ring;
            · refine' continuous_const.mul _;
              refine' continuous_finset_sum _ fun j hj => _;
              exact continuous_const.add ( continuous_finset_sum _ fun i hi => Real.continuous_cos.comp ( continuous_const.mul continuous_id' ) );
            · apply_rules [ Continuous.mul, Continuous.div, continuous_const ];
              refine' continuous_finset_sum _ fun i hi => _;
              exact continuous_const.add ( continuous_finset_sum _ fun j hj => Real.continuous_cos.comp ( continuous_const.mul continuous_id' ) );
          apply_rules [ h_integrable.mono_set, Set.Icc_subset_Icc ] <;> norm_num [ Real.pi_pos.le ];
        · apply_rules [ MeasureTheory.IntegrableOn.intervalIntegrable ];
          refine' MeasureTheory.Integrable.mono' _ _ _;
          refine' fun t => ( n + 1 ) / 2 * |f ( x₀ - t ) - ( L_plus + L_minus ) / 2|;
          · refine' MeasureTheory.Integrable.const_mul _ _;
            refine' MeasureTheory.Integrable.abs _;
            refine' MeasureTheory.Integrable.sub _ _;
            · have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (x₀ - Real.pi) (x₀ + Real.pi)) := by
                have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi) Real.pi) := by
                  rw [ intervalIntegrable_iff_integrableOn_Icc_of_le ( by linarith [ Real.pi_pos ] ) ] at hf_int ; aesop;
                have h_integrable : ∀ m : ℤ, MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi + m * 2 * Real.pi) (Real.pi + m * 2 * Real.pi)) := by
                  intro m
                  have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi) Real.pi) := by
                    exact h_integrable
                  have h_integrable_shift : MeasureTheory.IntegrableOn (fun t => f (t - m * 2 * Real.pi)) (Set.Icc (-Real.pi + m * 2 * Real.pi) (Real.pi + m * 2 * Real.pi)) := by
                    rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                    convert h_integrable.comp_sub_right ( m * 2 * Real.pi ) using 1;
                    ext; simp [Set.indicator];
                    split_ifs <;> ring_nf at * <;> aesop
                  have h_integrable_shift_eq : ∀ t, f (t - m * 2 * Real.pi) = f t := by
                    exact fun t => by simpa [ mul_assoc ] using Function.Periodic.int_mul hf_per ( -m ) t;
                  aesop;
                -- Choose $m$ such that $x₀ - \pi \in [-\pi + m * 2 * \pi, \pi + m * 2 * \pi]$.
                obtain ⟨m, hm⟩ : ∃ m : ℤ, x₀ - Real.pi ∈ Set.Icc (-Real.pi + m * 2 * Real.pi) (Real.pi + m * 2 * Real.pi) := by
                  exact ⟨ ⌊ ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ⌋, by nlinarith [ Int.floor_le ( ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x₀ - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ], by nlinarith [ Int.lt_floor_add_one ( ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x₀ - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] ⟩;
                have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi + m * 2 * Real.pi) (Real.pi + m * 2 * Real.pi + 2 * Real.pi)) := by
                  convert MeasureTheory.IntegrableOn.union ( h_integrable m ) ( h_integrable ( m + 1 ) ) using 1 ; ring;
                  grind;
                exact h_integrable.mono_set ( Set.Icc_subset_Icc ( by linarith [ hm.1 ] ) ( by linarith [ hm.2 ] ) );
              have h_integrable : MeasureTheory.IntegrableOn (fun t => f (x₀ - t)) (Set.Icc 0 Real.pi) := by
                have h_integrable : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (x₀ - Real.pi) x₀) := by
                  exact h_integrable.mono_set <| Set.Icc_subset_Icc_right <| by linarith [ Real.pi_pos ] ;
                rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                convert h_integrable.comp_sub_left x₀ using 1;
                ext; simp [Set.indicator];
                grind;
              simpa [ Real.pi_pos.le ] using h_integrable;
            · exact Continuous.integrableOn_Icc ( by continuity );
          · refine' MeasureTheory.AEStronglyMeasurable.mul _ _;
            · refine' Continuous.aestronglyMeasurable _;
              refine' continuous_const.mul _;
              refine' continuous_finset_sum _ fun j _ => _;
              refine' continuous_const.add _;
              exact continuous_finset_sum _ fun _ _ => Real.continuous_cos.comp <| by continuity;
            · refine' MeasureTheory.AEStronglyMeasurable.sub _ _;
              · have h_integrable : MeasureTheory.IntegrableOn (fun t => f (x₀ - t)) (Set.Icc (-Real.pi) Real.pi) := by
                  have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (x₀ - Real.pi) (x₀ + Real.pi)) := by
                    have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi) Real.pi) := by
                      rw [ intervalIntegrable_iff_integrableOn_Icc_of_le ( by linarith [ Real.pi_pos ] ) ] at hf_int ; aesop;
                    have h_integrable : ∀ m : ℤ, MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi + m * 2 * Real.pi) (Real.pi + m * 2 * Real.pi)) := by
                      intro m
                      have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi) Real.pi) := by
                        exact h_integrable
                      have h_integrable_shift : MeasureTheory.IntegrableOn (fun t => f (t - m * 2 * Real.pi)) (Set.Icc (-Real.pi + m * 2 * Real.pi) (Real.pi + m * 2 * Real.pi)) := by
                        rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                        convert h_integrable.comp_sub_right ( m * 2 * Real.pi ) using 1;
                        ext; simp [Set.indicator];
                        split_ifs <;> ring_nf at * <;> aesop
                      have h_integrable_shift_eq : ∀ t, f (t - m * 2 * Real.pi) = f t := by
                        exact fun t => by simpa [ mul_assoc ] using Function.Periodic.int_mul hf_per ( -m ) t;
                      aesop;
                    -- Choose $m$ such that $x₀ - \pi \in [-\pi + m * 2 * \pi, \pi + m * 2 * \pi]$.
                    obtain ⟨m, hm⟩ : ∃ m : ℤ, x₀ - Real.pi ∈ Set.Icc (-Real.pi + m * 2 * Real.pi) (Real.pi + m * 2 * Real.pi) := by
                      exact ⟨ ⌊ ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ⌋, by nlinarith [ Int.floor_le ( ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x₀ - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ], by nlinarith [ Int.lt_floor_add_one ( ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x₀ - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] ⟩;
                    have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi + m * 2 * Real.pi) (Real.pi + m * 2 * Real.pi + 2 * Real.pi)) := by
                      convert MeasureTheory.IntegrableOn.union ( h_integrable m ) ( h_integrable ( m + 1 ) ) using 1 ; ring;
                      grind;
                    exact h_integrable.mono_set ( Set.Icc_subset_Icc ( by linarith [ hm.1 ] ) ( by linarith [ hm.2 ] ) );
                  rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                  convert h_integrable.comp_sub_left x₀ using 1;
                  ext; simp [Set.indicator];
                  grind;
                exact h_integrable.aestronglyMeasurable.mono_set ( by rw [ Set.uIcc_of_le ( by linarith [ Real.pi_pos ] ) ] ; exact Set.Icc_subset_Icc ( by linarith [ Real.pi_pos ] ) le_rfl );
              · exact MeasureTheory.aestronglyMeasurable_const;
          · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Icc ] with t ht;
            rw [ Real.norm_eq_abs, abs_mul ];
            exact mul_le_mul_of_nonneg_right ( by rw [ abs_of_nonneg ( show 0 ≤ fejer_kernel n t from by exact? ) ] ; exact? ) ( abs_nonneg _ );
      convert congr_arg ( fun x : ℝ => ( Real.pi : ℝ ) ⁻¹ * x ) h_split using 1 <;> ring;
      · convert congr_arg ( fun x : ℝ => x + L_plus * ( -1 / 2 ) + L_minus * ( -1 / 2 ) ) ( fejer_sum_eq_integral_alt hf_int hf_per n x₀ ) using 1 ; ring;
        field_simp;
        norm_num [ mul_div, mul_comm ];
        rw [ show ( fun t => fejer_kernel n t * ( -L_plus + -L_minus + f ( x₀ - t ) * 2 ) ) = fun t => -L_plus * fejer_kernel n t + -L_minus * fejer_kernel n t + f ( x₀ - t ) * fejer_kernel n t * 2 by ext; ring ] ; rw [ intervalIntegral.integral_add, intervalIntegral.integral_add ] <;> norm_num ; ring;
        · simp +decide only [mul_comm];
          rw [ show ∫ x in -Real.pi..Real.pi, fejer_kernel n x = Real.pi by have := fejer_kernel_integral_one n; norm_num [ mul_comm, div_eq_mul_inv ] at *; nlinarith [ Real.pi_pos, mul_inv_cancel₀ Real.pi_ne_zero ] ];
        · apply_rules [ Continuous.intervalIntegrable ];
          refine' Continuous.neg ( Continuous.mul continuous_const _ );
          refine' continuous_const.mul _;
          refine' continuous_finset_sum _ fun i hi => _;
          exact continuous_const.add ( continuous_finset_sum _ fun _ _ => Real.continuous_cos.comp ( by continuity ) );
        · apply_rules [ Continuous.intervalIntegrable ];
          apply_rules [ Continuous.neg, Continuous.mul, continuous_const ];
          refine' continuous_finset_sum _ fun i hi => _;
          exact continuous_const.add ( continuous_finset_sum _ fun _ _ => Real.continuous_cos.comp ( by continuity ) );
        · apply_rules [ Continuous.intervalIntegrable ];
          apply_rules [ Continuous.add, Continuous.neg, Continuous.mul, continuous_const, continuous_id ];
          · refine' continuous_finset_sum _ fun i hi => _;
            exact continuous_const.add ( continuous_finset_sum _ fun j hj => Real.continuous_cos.comp ( continuous_const.mul continuous_id' ) );
          · refine' continuous_finset_sum _ fun i hi => _;
            exact continuous_const.add ( continuous_finset_sum _ fun _ _ => Real.continuous_cos.comp ( by continuity ) );
        · apply_rules [ MeasureTheory.IntegrableOn.intervalIntegrable ];
          have h_integrable : MeasureTheory.IntegrableOn (fun t => f (x₀ - t)) (Set.Icc (-Real.pi) Real.pi) := by
            have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (x₀ - Real.pi) (x₀ + Real.pi)) := by
              have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi) Real.pi) := by
                rw [ intervalIntegrable_iff_integrableOn_Icc_of_le ( by linarith [ Real.pi_pos ] ) ] at hf_int ; aesop;
              have h_integrable : ∀ k : ℤ, MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi)) := by
                intro k;
                have h_integrable : MeasureTheory.IntegrableOn (fun t => f (t - 2 * k * Real.pi)) (Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi)) := by
                  rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                  convert h_integrable.comp_sub_right ( 2 * k * Real.pi ) using 1;
                  ext; simp [Set.indicator];
                  grind;
                convert h_integrable using 1;
                exact funext fun x => by simpa [ mul_assoc, mul_left_comm ] using Function.Periodic.int_mul hf_per k ( x - 2 * k * Real.pi ) ;
              -- Choose $k$ such that $x₀ - \pi \in [-\pi + 2k\pi, \pi + 2k\pi]$.
              obtain ⟨k, hk⟩ : ∃ k : ℤ, x₀ - Real.pi ∈ Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi) := by
                exact ⟨ ⌊ ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ⌋, by nlinarith [ Int.floor_le ( ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x₀ - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ], by nlinarith [ Int.lt_floor_add_one ( ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x₀ - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] ⟩;
              have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi)) := by
                exact h_integrable k;
              have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (x₀ - Real.pi) (x₀ + Real.pi)) := by
                have h_subset : Set.Icc (x₀ - Real.pi) (x₀ + Real.pi) ⊆ Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi) ∪ Set.Icc (-Real.pi + 2 * (k + 1) * Real.pi) (Real.pi + 2 * (k + 1) * Real.pi) := by
                  grind
                have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi) ∪ Set.Icc (-Real.pi + 2 * (k + 1) * Real.pi) (Real.pi + 2 * (k + 1) * Real.pi)) := by
                  exact MeasureTheory.IntegrableOn.union h_integrable ( by simpa using ‹∀ k : ℤ, MeasureTheory.IntegrableOn f ( Set.Icc ( -Real.pi + 2 * ( k : ℝ ) * Real.pi ) ( Real.pi + 2 * ( k : ℝ ) * Real.pi ) ) MeasureTheory.volume› ( k + 1 ) );
                exact h_integrable.mono_set h_subset;
              exact h_integrable;
            rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
            convert h_integrable.comp_sub_left x₀ using 1;
            ext; simp [Set.indicator];
            exact if_congr ⟨ fun h => ⟨ by linarith, by linarith ⟩, fun h => ⟨ by linarith, by linarith ⟩ ⟩ rfl rfl;
          rw [ Set.uIcc_of_le ( by linarith [ Real.pi_pos ] ) ];
          refine' MeasureTheory.Integrable.mul_const _ _;
          refine' h_integrable.norm.mul_const _ |> fun h => h.mono' _ _;
          exact ( n + 1 ) / 2;
          · refine' MeasureTheory.AEStronglyMeasurable.mul _ _;
            · exact h_integrable.aestronglyMeasurable;
            · refine' Measurable.aestronglyMeasurable _;
              refine' Measurable.mul _ _;
              · exact measurable_const;
              · refine' Finset.measurable_sum _ fun i _ => _;
                exact Measurable.add ( measurable_const ) ( Finset.measurable_sum _ fun _ _ => Real.continuous_cos.measurable.comp ( measurable_const.mul measurable_id' ) );
          · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Icc ] with t ht using by rw [ norm_mul ] ; exact mul_le_mul_of_nonneg_left ( by rw [ Real.norm_of_nonneg ( fejer_kernel_nonneg n t ) ] ; exact fejer_kernel_le_linear n t ) ( norm_nonneg _ ) ;
      · rw [ ← mul_add, ← intervalIntegral.integral_add ] ; congr ; ext ; ring;
        · apply_rules [ MeasureTheory.IntegrableOn.intervalIntegrable ];
          refine' MeasureTheory.Integrable.add ( MeasureTheory.Integrable.add _ _ ) _;
          · refine' Continuous.integrableOn_Icc _;
            refine' Continuous.mul ( Continuous.mul continuous_const _ ) continuous_const;
            refine' continuous_const.mul _;
            refine' continuous_finset_sum _ fun i hi => _;
            exact continuous_const.add ( continuous_finset_sum _ fun _ _ => Real.continuous_cos.comp ( by continuity ) );
          · refine' Continuous.integrableOn_Icc _;
            refine' Continuous.mul ( Continuous.mul continuous_const _ ) continuous_const;
            refine' continuous_const.mul _;
            refine' continuous_finset_sum _ fun i hi => _;
            exact continuous_const.add ( continuous_finset_sum _ fun _ _ => Real.continuous_cos.comp ( by continuity ) );
          · refine' MeasureTheory.Integrable.mono' _ _ _;
            refine' fun t => ( n + 1 ) / 2 * |f ( x₀ + t )|;
            · refine' MeasureTheory.Integrable.const_mul _ _;
              have h_integrable : MeasureTheory.IntegrableOn (fun t => f (x₀ + t)) (Set.Icc (-Real.pi) Real.pi) := by
                have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (x₀ - Real.pi) (x₀ + Real.pi)) := by
                  have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi) Real.pi) := by
                    rw [ intervalIntegrable_iff_integrableOn_Icc_of_le ( by linarith [ Real.pi_pos ] ) ] at hf_int ; aesop;
                  have h_integrable : ∀ k : ℤ, MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi)) := by
                    intro k;
                    have h_integrable : MeasureTheory.IntegrableOn (fun t => f (t - 2 * k * Real.pi)) (Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi)) := by
                      rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                      convert h_integrable.comp_sub_right ( 2 * k * Real.pi ) using 1;
                      ext; simp [Set.indicator];
                      grind;
                    convert h_integrable using 1;
                    exact funext fun x => by simpa [ mul_assoc, mul_left_comm ] using Function.Periodic.int_mul hf_per k ( x - 2 * k * Real.pi ) ;
                  -- Choose $k$ such that $x₀ - \pi \in [-\pi + 2k\pi, \pi + 2k\pi]$.
                  obtain ⟨k, hk⟩ : ∃ k : ℤ, x₀ - Real.pi ∈ Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi) := by
                    exact ⟨ ⌊ ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ⌋, by nlinarith [ Int.floor_le ( ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x₀ - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ], by nlinarith [ Int.lt_floor_add_one ( ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x₀ - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] ⟩;
                  have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi)) := by
                    exact h_integrable k;
                  have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (x₀ - Real.pi) (x₀ + Real.pi)) := by
                    have h_subset : Set.Icc (x₀ - Real.pi) (x₀ + Real.pi) ⊆ Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi) ∪ Set.Icc (-Real.pi + 2 * (k + 1) * Real.pi) (Real.pi + 2 * (k + 1) * Real.pi) := by
                      grind
                    have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi) ∪ Set.Icc (-Real.pi + 2 * (k + 1) * Real.pi) (Real.pi + 2 * (k + 1) * Real.pi)) := by
                      exact MeasureTheory.IntegrableOn.union h_integrable ( by simpa using ‹∀ k : ℤ, MeasureTheory.IntegrableOn f ( Set.Icc ( -Real.pi + 2 * ( k : ℝ ) * Real.pi ) ( Real.pi + 2 * ( k : ℝ ) * Real.pi ) ) MeasureTheory.volume› ( k + 1 ) );
                    exact h_integrable.mono_set h_subset;
                  exact h_integrable;
                rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                convert h_integrable.comp_add_left x₀ using 1;
                ext; simp [Set.indicator];
                grind;
              exact MeasureTheory.Integrable.abs ( h_integrable.mono_set <| by rw [ Set.uIcc_of_le Real.pi_pos.le ] ; exact Set.Icc_subset_Icc ( by linarith [ Real.pi_pos ] ) ( by linarith [ Real.pi_pos ] ) );
            · refine' MeasureTheory.AEStronglyMeasurable.mul _ _;
              · refine' Continuous.aestronglyMeasurable _;
                refine' continuous_const.mul _;
                refine' continuous_finset_sum _ fun i hi => _;
                exact continuous_const.add ( continuous_finset_sum _ fun _ _ => Real.continuous_cos.comp ( by continuity ) );
              · have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (x₀ - Real.pi) (x₀ + Real.pi)) := by
                  have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi) Real.pi) := by
                    rw [ intervalIntegrable_iff_integrableOn_Icc_of_le ( by linarith [ Real.pi_pos ] ) ] at hf_int ; aesop;
                  have h_integrable : ∀ k : ℤ, MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi)) := by
                    intro k;
                    have h_integrable : MeasureTheory.IntegrableOn (fun t => f (t - 2 * k * Real.pi)) (Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi)) := by
                      rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                      convert h_integrable.comp_sub_right ( 2 * k * Real.pi ) using 1;
                      ext; simp [Set.indicator];
                      grind;
                    convert h_integrable using 1;
                    exact funext fun x => by simpa [ mul_assoc, mul_left_comm ] using Function.Periodic.int_mul hf_per k ( x - 2 * k * Real.pi ) ;
                  -- Choose $k$ such that $x₀ - \pi \in [-\pi + 2k\pi, \pi + 2k\pi]$.
                  obtain ⟨k, hk⟩ : ∃ k : ℤ, x₀ - Real.pi ∈ Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi) := by
                    exact ⟨ ⌊ ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ⌋, by nlinarith [ Int.floor_le ( ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x₀ - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ], by nlinarith [ Int.lt_floor_add_one ( ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x₀ - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] ⟩;
                  have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi)) := by
                    exact h_integrable k;
                  have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (x₀ - Real.pi) (x₀ + Real.pi)) := by
                    have h_subset : Set.Icc (x₀ - Real.pi) (x₀ + Real.pi) ⊆ Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi) ∪ Set.Icc (-Real.pi + 2 * (k + 1) * Real.pi) (Real.pi + 2 * (k + 1) * Real.pi) := by
                      grind
                    have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi) ∪ Set.Icc (-Real.pi + 2 * (k + 1) * Real.pi) (Real.pi + 2 * (k + 1) * Real.pi)) := by
                      exact MeasureTheory.IntegrableOn.union h_integrable ( by simpa using ‹∀ k : ℤ, MeasureTheory.IntegrableOn f ( Set.Icc ( -Real.pi + 2 * ( k : ℝ ) * Real.pi ) ( Real.pi + 2 * ( k : ℝ ) * Real.pi ) ) MeasureTheory.volume› ( k + 1 ) );
                    exact h_integrable.mono_set h_subset;
                  exact h_integrable;
                have h_integrable : MeasureTheory.IntegrableOn (fun t => f (x₀ + t)) (Set.Icc (-Real.pi) Real.pi) := by
                  rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                  convert h_integrable.comp_add_left x₀ using 1;
                  ext; simp [Set.indicator];
                  grind;
                exact h_integrable.aestronglyMeasurable.mono_set ( by rw [ Set.uIcc_of_le Real.pi_pos.le ] ; exact Set.Icc_subset_Icc ( by linarith [ Real.pi_pos ] ) ( by linarith [ Real.pi_pos ] ) );
            · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Icc ] with t ht using by rw [ Real.norm_eq_abs, abs_mul ] ; exact mul_le_mul_of_nonneg_right ( by rw [ abs_of_nonneg ( show 0 ≤ fejer_kernel n t from by exact (by
                                                                                                                                                                                                    exact?) ) ] ; exact (by
                                                                                                                                                                                                    exact?) ) ( abs_nonneg _ ) ;
        · apply_rules [ MeasureTheory.IntegrableOn.intervalIntegrable ];
          refine' MeasureTheory.Integrable.add ( MeasureTheory.Integrable.add _ _ ) _;
          · refine' Continuous.integrableOn_Icc _;
            refine' Continuous.mul ( Continuous.mul continuous_const _ ) continuous_const;
            exact continuous_const.mul <| continuous_finset_sum _ fun _ _ => continuous_const.add <| continuous_finset_sum _ fun _ _ => Real.continuous_cos.comp <| by continuity;
          · refine' Continuous.integrableOn_Icc _;
            refine' Continuous.mul _ _;
            · refine' continuous_const.mul _;
              refine' continuous_const.mul _;
              refine' continuous_finset_sum _ fun i hi => _;
              exact continuous_const.add ( continuous_finset_sum _ fun _ _ => Real.continuous_cos.comp ( by continuity ) );
            · exact continuous_const;
          · refine' MeasureTheory.Integrable.mono' _ _ _;
            refine' fun t => ( n + 1 ) / 2 * |f ( x₀ - t )|;
            · refine' MeasureTheory.Integrable.const_mul _ _;
              have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (x₀ - Real.pi) (x₀ + Real.pi)) := by
                have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi) Real.pi) := by
                  rw [ intervalIntegrable_iff_integrableOn_Icc_of_le ( by linarith [ Real.pi_pos ] ) ] at hf_int ; aesop;
                have h_integrable : ∀ k : ℤ, MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi)) := by
                  intro k;
                  have h_integrable : MeasureTheory.IntegrableOn (fun t => f (t - 2 * k * Real.pi)) (Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi)) := by
                    rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                    convert h_integrable.comp_sub_right ( 2 * k * Real.pi ) using 1;
                    ext; simp [Set.indicator];
                    grind;
                  convert h_integrable using 1;
                  exact funext fun x => by simpa [ mul_assoc, mul_left_comm ] using Function.Periodic.int_mul hf_per k ( x - 2 * k * Real.pi ) ;
                -- Choose $k$ such that $x₀ - \pi \in [-\pi + 2k\pi, \pi + 2k\pi]$.
                obtain ⟨k, hk⟩ : ∃ k : ℤ, x₀ - Real.pi ∈ Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi) := by
                  exact ⟨ ⌊ ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ⌋, by nlinarith [ Int.floor_le ( ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x₀ - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ], by nlinarith [ Int.lt_floor_add_one ( ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x₀ - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] ⟩;
                have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi)) := by
                  exact h_integrable k;
                have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (x₀ - Real.pi) (x₀ + Real.pi)) := by
                  have h_subset : Set.Icc (x₀ - Real.pi) (x₀ + Real.pi) ⊆ Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi) ∪ Set.Icc (-Real.pi + 2 * (k + 1) * Real.pi) (Real.pi + 2 * (k + 1) * Real.pi) := by
                    grind
                  have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi) ∪ Set.Icc (-Real.pi + 2 * (k + 1) * Real.pi) (Real.pi + 2 * (k + 1) * Real.pi)) := by
                    exact MeasureTheory.IntegrableOn.union h_integrable ( by simpa using ‹∀ k : ℤ, MeasureTheory.IntegrableOn f ( Set.Icc ( -Real.pi + 2 * ( k : ℝ ) * Real.pi ) ( Real.pi + 2 * ( k : ℝ ) * Real.pi ) ) MeasureTheory.volume› ( k + 1 ) );
                  exact h_integrable.mono_set h_subset;
                exact h_integrable;
              have h_integrable : MeasureTheory.IntegrableOn (fun t => f (x₀ - t)) (Set.Icc 0 Real.pi) := by
                have h_integrable : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (x₀ - Real.pi) x₀) := by
                  exact h_integrable.mono_set <| Set.Icc_subset_Icc_right <| by linarith [ Real.pi_pos ] ;
                rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                convert h_integrable.comp_sub_left x₀ using 1;
                ext; simp [Set.indicator];
                grind;
              simpa only [ Set.uIcc_of_le Real.pi_pos.le ] using h_integrable.abs;
            · refine' MeasureTheory.AEStronglyMeasurable.mul _ _;
              · refine' Continuous.aestronglyMeasurable _;
                refine' continuous_const.mul _;
                refine' continuous_finset_sum _ fun i hi => _;
                exact continuous_const.add ( continuous_finset_sum _ fun j hj => Real.continuous_cos.comp ( continuous_const.mul continuous_id' ) );
              · have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (x₀ - Real.pi) (x₀ + Real.pi)) := by
                  have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi) Real.pi) := by
                    rw [ intervalIntegrable_iff_integrableOn_Icc_of_le ( by linarith [ Real.pi_pos ] ) ] at hf_int ; aesop;
                  have h_integrable : ∀ k : ℤ, MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi)) := by
                    intro k;
                    have h_integrable : MeasureTheory.IntegrableOn (fun t => f (t - 2 * k * Real.pi)) (Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi)) := by
                      rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                      convert h_integrable.comp_sub_right ( 2 * k * Real.pi ) using 1;
                      ext; simp [Set.indicator];
                      grind;
                    convert h_integrable using 1;
                    exact funext fun x => by simpa [ mul_assoc, mul_left_comm ] using Function.Periodic.int_mul hf_per k ( x - 2 * k * Real.pi ) ;
                  -- Choose $k$ such that $x₀ - \pi \in [-\pi + 2k\pi, \pi + 2k\pi]$.
                  obtain ⟨k, hk⟩ : ∃ k : ℤ, x₀ - Real.pi ∈ Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi) := by
                    exact ⟨ ⌊ ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ⌋, by nlinarith [ Int.floor_le ( ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x₀ - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ], by nlinarith [ Int.lt_floor_add_one ( ( x₀ - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x₀ - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] ⟩;
                  have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi)) := by
                    exact h_integrable k;
                  have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (x₀ - Real.pi) (x₀ + Real.pi)) := by
                    have h_subset : Set.Icc (x₀ - Real.pi) (x₀ + Real.pi) ⊆ Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi) ∪ Set.Icc (-Real.pi + 2 * (k + 1) * Real.pi) (Real.pi + 2 * (k + 1) * Real.pi) := by
                      grind
                    have h_integrable : MeasureTheory.IntegrableOn f (Set.Icc (-Real.pi + 2 * k * Real.pi) (Real.pi + 2 * k * Real.pi) ∪ Set.Icc (-Real.pi + 2 * (k + 1) * Real.pi) (Real.pi + 2 * (k + 1) * Real.pi)) := by
                      exact MeasureTheory.IntegrableOn.union h_integrable ( by simpa using ‹∀ k : ℤ, MeasureTheory.IntegrableOn f ( Set.Icc ( -Real.pi + 2 * ( k : ℝ ) * Real.pi ) ( Real.pi + 2 * ( k : ℝ ) * Real.pi ) ) MeasureTheory.volume› ( k + 1 ) );
                    exact h_integrable.mono_set h_subset;
                  exact h_integrable;
                have h_integrable : MeasureTheory.IntegrableOn (fun t => f (x₀ - t)) (Set.Icc 0 Real.pi) := by
                  have h_integrable : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (x₀ - Real.pi) x₀) := by
                    exact h_integrable.mono_set <| Set.Icc_subset_Icc_right <| by linarith [ Real.pi_pos ] ;
                  rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                  convert h_integrable.comp_sub_left x₀ using 1;
                  ext; simp [Set.indicator];
                  grind;
                simpa only [ Set.uIcc_of_le Real.pi_pos.le ] using h_integrable.aestronglyMeasurable;
            · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Icc ] with t ht;
              rw [ Real.norm_eq_abs, abs_mul ];
              exact mul_le_mul_of_nonneg_right ( by rw [ abs_of_nonneg ( show 0 ≤ fejer_kernel n t from by exact? ) ] ; exact? ) ( abs_nonneg _ )

/-
If g is integrable on [0, pi] and tends to 0 at 0+, then the weighted integral of |g| against the Fejér kernel tends to 0.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean#L1139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84f685935c5324bdcc51c6fdf7db424d8bd5db1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

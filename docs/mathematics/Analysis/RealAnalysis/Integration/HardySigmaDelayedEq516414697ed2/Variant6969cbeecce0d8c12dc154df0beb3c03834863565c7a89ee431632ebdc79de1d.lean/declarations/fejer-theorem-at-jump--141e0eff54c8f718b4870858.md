# fejer_theorem_at_jump

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4a5f109-f0bf-2d15-8a0e-300ce39dd517",
  "kind": "theorem",
  "lexical_name": "fejer_theorem_at_jump",
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
  "slug": "fejer-theorem-at-jump--141e0eff54c8f718b4870858",
  "source": {
    "blob": "738b9a07216212d85fc41196714020e6eae78238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1757,
    "line": 1662,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:141e0eff54c8f718b48708581f52ec50ba0f18aa02794d14e2a4642403dfb0ce",
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

Occurrence: `result:b4a5f109-f0bf-2d15-8a0e-300ce39dd517`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1662–1757.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fejer_theorem_at_jump (f : ℝ → ℝ) (hf_int : IntervalIntegrable f MeasureTheory.volume (-Real.pi) Real.pi)
    (hf_per : Function.Periodic f (2 * Real.pi)) (x₀ L_plus L_minus : ℝ)
    (h_left : Filter.Tendsto f (nhdsWithin x₀ (Set.Iio x₀)) (nhds L_minus))
    (h_right : Filter.Tendsto f (nhdsWithin x₀ (Set.Ioi x₀)) (nhds L_plus)) :
    Filter.Tendsto (fun n => fejer_sum f n x₀) Filter.atTop (nhds ((L_plus + L_minus) / 2)) := by
      -- By `fejer_sum_at_jump_eq_integral`, `fejer_sum f n x₀ - (L_plus + L_minus) / 2 = (1 / Real.pi) * ∫ t in (0:ℝ)..Real.pi, g t * fejer_kernel n t`.
      have h_eq_integral : ∀ n, fejer_sum f n x₀ - (L_plus + L_minus) / 2 = (1 / Real.pi) * ∫ t in (0:ℝ)..Real.pi, (f (x₀ + t) + f (x₀ - t) - L_plus - L_minus) * fejer_kernel n t := by
        exact?;
      -- We want to show this tends to 0.
      -- It suffices to show `(1 / Real.pi) * ∫ t in 0..Real.pi, |(f (x₀ + t) + f (x₀ - t) - L_plus - L_minus)| * fejer_kernel n t` tends to 0, because $| \int g K_n | \le \int |g| K_n$ (since $K_n \ge 0$).
      suffices h_abs_integral : Filter.Tendsto (fun n => (1 / Real.pi) * ∫ t in (0:ℝ)..Real.pi, |(f (x₀ + t) + f (x₀ - t) - L_plus - L_minus)| * fejer_kernel n t) Filter.atTop (nhds 0) by
        -- By the properties of integrals, we can bound the absolute value of the integral.
        have h_abs_integral_bound : ∀ n, |∫ t in (0:ℝ)..Real.pi, (f (x₀ + t) + f (x₀ - t) - L_plus - L_minus) * fejer_kernel n t| ≤ ∫ t in (0:ℝ)..Real.pi, |(f (x₀ + t) + f (x₀ - t) - L_plus - L_minus)| * fejer_kernel n t := by
          intro n; rw [ intervalIntegral.integral_of_le Real.pi_pos.le ] ; rw [ intervalIntegral.integral_of_le Real.pi_pos.le ] ; refine' le_trans ( MeasureTheory.norm_integral_le_integral_norm ( _ : ℝ → ℝ ) ) _ ; norm_num [ abs_mul, abs_of_nonneg, fejer_kernel_nonneg ] ;
        rw [ tendsto_iff_norm_sub_tendsto_zero ];
        simp_all +decide [ abs_mul, abs_inv ];
        exact squeeze_zero ( fun _ => by positivity ) ( fun n => mul_le_mul_of_nonneg_left ( h_abs_integral_bound n ) ( by positivity ) ) ( by simpa [ abs_of_nonneg Real.pi_pos.le ] using h_abs_integral );
      -- We check the conditions for `fejer_kernel_integral_limit_zero`:
      -- 1. g is integrable on [0, pi].
      have h_g_integrable : IntervalIntegrable (fun t => |f (x₀ + t) + f (x₀ - t) - L_plus - L_minus|) MeasureTheory.volume 0 Real.pi := by
        have h_g_integrable : IntervalIntegrable (fun t => f (x₀ + t)) MeasureTheory.volume 0 Real.pi ∧ IntervalIntegrable (fun t => f (x₀ - t)) MeasureTheory.volume 0 Real.pi := by
          constructor
          all_goals generalize_proofs at *;
          · exact?;
          · have h_g_integrable : IntervalIntegrable (fun t => f t) MeasureTheory.volume (x₀ - Real.pi) x₀ := by
              have h_integrable_neg : ∀ a b, a ≤ b → IntervalIntegrable f MeasureTheory.volume a b := by
                intro a b hab; exact (by
                rw [ intervalIntegrable_iff_integrableOn_Ioc_of_le hab ] at *;
                have h_integrable : ∀ a b, a ≤ b → MeasureTheory.IntegrableOn f (Set.Ioc a b) MeasureTheory.volume := by
                  intros a b hab
                  have h_periodic : ∀ x, f x = f (x - 2 * Real.pi * ⌊(x + Real.pi) / (2 * Real.pi)⌋) := by
                    exact fun x => by simpa [ mul_comm ] using Function.Periodic.int_mul hf_per ⌊ ( x + Real.pi ) / ( 2 * Real.pi ) ⌋ ( x - 2 * Real.pi * ⌊ ( x + Real.pi ) / ( 2 * Real.pi ) ⌋ ) ;
                  have h_integrable : MeasureTheory.IntegrableOn f (Set.Ioc (-Real.pi) Real.pi) MeasureTheory.volume := by
                    exact hf_int.1.mono_set <| Set.Ioc_subset_Ioc le_rfl le_rfl
                  have h_integrable : ∀ k : ℤ, MeasureTheory.IntegrableOn f (Set.Ioc (-Real.pi + 2 * Real.pi * k) (Real.pi + 2 * Real.pi * k)) MeasureTheory.volume := by
                    intro k
                    have h_integrable : MeasureTheory.IntegrableOn (fun x => f (x - 2 * Real.pi * k)) (Set.Ioc (-Real.pi + 2 * Real.pi * k) (Real.pi + 2 * Real.pi * k)) MeasureTheory.volume := by
                      rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Ioc ) ] at *;
                      convert h_integrable.comp_sub_right ( 2 * Real.pi * k ) using 1;
                      ext; simp [Set.indicator]
                    generalize_proofs at *; (
                    convert h_integrable using 1;
                    exact funext fun x => by simpa [ mul_comm ] using Function.Periodic.int_mul hf_per k ( x - 2 * Real.pi * k ) ;)
                  -- Since $a$ and $b$ are real numbers, we can find integers $k$ and $m$ such that $a \in [-\pi + 2\pi k, \pi + 2\pi k]$ and $b \in [-\pi + 2\pi m, \pi + 2\pi m]$.
                  obtain ⟨k, hk⟩ : ∃ k : ℤ, a ∈ Set.Icc (-Real.pi + 2 * Real.pi * k) (Real.pi + 2 * Real.pi * k) := by
                    exact ⟨ ⌊ ( a + Real.pi ) / ( 2 * Real.pi ) ⌋, by nlinarith [ Int.floor_le ( ( a + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( a + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ], by nlinarith [ Int.lt_floor_add_one ( ( a + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( a + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] ⟩
                  obtain ⟨m, hm⟩ : ∃ m : ℤ, b ∈ Set.Icc (-Real.pi + 2 * Real.pi * m) (Real.pi + 2 * Real.pi * m) := by
                    exact ⟨ ⌊ ( b + Real.pi ) / ( 2 * Real.pi ) ⌋, by nlinarith [ Int.floor_le ( ( b + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( b + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ], by nlinarith [ Int.lt_floor_add_one ( ( b + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( b + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] ⟩
                  generalize_proofs at *; (
                  have h_integrable : MeasureTheory.IntegrableOn f (Set.Ioc (-Real.pi + 2 * Real.pi * k) (Real.pi + 2 * Real.pi * m)) MeasureTheory.volume := by
                    have h_integrable : ∀ k m : ℤ, k ≤ m → MeasureTheory.IntegrableOn f (Set.Ioc (-Real.pi + 2 * Real.pi * k) (Real.pi + 2 * Real.pi * m)) MeasureTheory.volume := by
                      intros k m hkm
                      induction' m using Int.induction_on with m ih m ih
                      generalize_proofs at *; (
                      induction' k using Int.induction_on with k ih k ih;
                      · simpa using ‹MeasureTheory.IntegrableOn f ( Set.Ioc ( -Real.pi ) Real.pi ) MeasureTheory.volume›;
                      · linarith;
                      · have := h_integrable ( -k - 1 ) ; norm_num at * ; (
                        convert this.union ih using 1 ; ring;
                        rw [ Set.Ioc_union_Ioc_eq_Ioc ] <;> nlinarith [ Real.pi_pos ]));
                      · rcases hkm.eq_or_lt with hkm | hkm <;> norm_num at *;
                        · convert h_integrable ( m + 1 ) using 1 ; push_cast [ hkm ] ; ring;
                        · have h_integrable : MeasureTheory.IntegrableOn f (Set.Ioc (-Real.pi + 2 * Real.pi * k) (Real.pi + 2 * Real.pi * m)) MeasureTheory.volume ∧ MeasureTheory.IntegrableOn f (Set.Ioc (Real.pi + 2 * Real.pi * m) (Real.pi + 2 * Real.pi * (m + 1))) MeasureTheory.volume := by
                            exact ⟨ ih ( by linarith ), by convert h_integrable ( m + 1 ) using 1 ; push_cast ; ring ⟩
                          generalize_proofs at *; (
                          convert h_integrable.1.union h_integrable.2 using 1 ; ring;
                          rw [ Set.Ioc_union_Ioc_eq_Ioc ] <;> nlinarith [ Real.pi_pos, show ( k : ℝ ) ≤ m by norm_cast; linarith ]);
                      · exact ih ( by linarith ) |> fun h => h.mono_set ( Set.Ioc_subset_Ioc_right ( by push_cast; linarith [ Real.pi_pos ] ) )
                    generalize_proofs at *; (
                    by_cases hkm : k ≤ m;
                    · exact h_integrable k m hkm;
                    · exact MeasureTheory.IntegrableOn.mono_set ( h_integrable m k ( by linarith ) ) ( Set.Ioc_subset_Ioc ( by nlinarith [ Real.pi_pos, show ( k : ℝ ) ≥ m + 1 by exact_mod_cast not_le.mp hkm ] ) ( by nlinarith [ Real.pi_pos, show ( k : ℝ ) ≥ m + 1 by exact_mod_cast not_le.mp hkm ] ) ))
                  generalize_proofs at *; (
                  exact h_integrable.mono_set ( Set.Ioc_subset_Ioc ( by linarith [ hk.1 ] ) ( by linarith [ hm.2 ] ) )))
                generalize_proofs at *; (
                exact h_integrable a b hab));
              generalize_proofs at *; (
              exact h_integrable_neg _ _ ( by linarith [ Real.pi_pos ] ))
            generalize_proofs at *; (
            rw [ intervalIntegrable_iff_integrableOn_Ioo_of_le ( by linarith [ Real.pi_pos ] ) ] at *;
            rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Ioo ) ] at *;
            convert h_g_integrable.comp_sub_left x₀ using 1 ; ext ; simp +decide [ Set.indicator ] ; ring;
            split_ifs <;> tauto)
        generalize_proofs at *; (
        simpa only [ sub_sub ] using h_g_integrable.1.add h_g_integrable.2 |> fun h => h.sub ( intervalIntegrable_const ) |> fun h => h.abs)
      generalize_proofs at *; (
      -- 2. g(t) → 0 as t → 0+.
      have h_g_zero : Filter.Tendsto (fun t => |f (x₀ + t) + f (x₀ - t) - L_plus - L_minus|) (nhdsWithin 0 (Set.Ioi 0)) (nhds 0) := by
        convert Filter.Tendsto.abs ( Filter.Tendsto.sub ( Filter.Tendsto.sub ( h_right.comp ( show Filter.Tendsto ( fun t : ℝ => x₀ + t ) ( nhdsWithin 0 ( Set.Ioi 0 ) ) ( nhdsWithin x₀ ( Set.Ioi x₀ ) ) by exact Filter.Tendsto.inf ( Continuous.tendsto' ( by continuity ) _ _ <| by norm_num ) <| Filter.tendsto_principal_principal.mpr <| by aesop_cat ) |> Filter.Tendsto.add <| h_left.comp ( show Filter.Tendsto ( fun t : ℝ => x₀ - t ) ( nhdsWithin 0 ( Set.Ioi 0 ) ) ( nhdsWithin x₀ ( Set.Iio x₀ ) ) by exact Filter.Tendsto.inf ( Continuous.tendsto' ( by continuity ) _ _ <| by norm_num ) <| Filter.tendsto_principal_principal.mpr <| by aesop_cat ) ) tendsto_const_nhds ) tendsto_const_nhds ) using 2 ; norm_num
      generalize_proofs at *; (
      convert fejer_kernel_integral_limit_zero h_g_integrable h_g_zero using 1;
      norm_num [ abs_mul ]))

/-
The Fejér sum is 2pi-periodic.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean#L1662).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `738b9a07216212d85fc41196714020e6eae78238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

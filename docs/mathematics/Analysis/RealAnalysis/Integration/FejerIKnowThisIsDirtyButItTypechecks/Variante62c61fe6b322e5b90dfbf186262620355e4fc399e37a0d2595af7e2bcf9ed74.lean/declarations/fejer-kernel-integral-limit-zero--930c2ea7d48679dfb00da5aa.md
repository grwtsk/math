# fejer_kernel_integral_limit_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87b89f56-dc1c-87e8-711f-6d3680e8662f",
  "kind": "lemma",
  "lexical_name": "fejer_kernel_integral_limit_zero",
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
  "slug": "fejer-kernel-integral-limit-zero--930c2ea7d48679dfb00da5aa",
  "source": {
    "blob": "05981873a9aec6e28dbb56a9d9fb76c5e5eaa1c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1626,
    "line": 1516,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:930c2ea7d48679dfb00da5aac6256e4b1297826b8f5d5708ffc5fab0f58e175d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87b89f56-dc1c-87e8-711f-6d3680e8662f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1516–1626.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fejer_kernel_integral_limit_zero {g : ℝ → ℝ}
    (hg_int : IntervalIntegrable g MeasureTheory.volume 0 Real.pi)
    (hg_lim : Filter.Tendsto g (nhdsWithin 0 (Set.Ioi 0)) (nhds 0)) :
    Filter.Tendsto (fun n => (1 / Real.pi) * ∫ t in (0:ℝ)..Real.pi, |g t| * fejer_kernel n t) Filter.atTop (nhds 0) := by
      field_simp;
      -- By definition of $K_n$, we know that $\int_0^\pi K_n(t) |g(t)| dt$ tends to $0$ as $n \to \infty$.
      have h_integral : Filter.Tendsto (fun n => ∫ t in Set.Icc 0 Real.pi, |g t| * fejer_kernel n t) Filter.atTop (nhds 0) := by
        -- Split the integral into two parts: one over $(0, \delta)$ and one over $[\delta, \pi]$.
        have h_split : ∀ δ ∈ Set.Ioo 0 Real.pi, ∀ n, ∫ t in Set.Icc 0 Real.pi, |g t| * fejer_kernel n t ≤ (∫ t in Set.Ioo 0 δ, |g t| * fejer_kernel n t) + (∫ t in Set.Icc δ Real.pi, |g t| * fejer_kernel n t) := by
          intros δ hδ n
          have h_split_integral : ∫ t in Set.Icc 0 Real.pi, |g t| * fejer_kernel n t = (∫ t in Set.Icc 0 δ, |g t| * fejer_kernel n t) + (∫ t in Set.Ioc δ Real.pi, |g t| * fejer_kernel n t) := by
            rw [ ← MeasureTheory.setIntegral_union ] <;> norm_num [ hδ.1.le, hδ.2.le ];
            · exact Set.disjoint_left.mpr fun x hx₁ hx₂ => hx₁.2.not_lt hx₂.1;
            · refine' MeasureTheory.Integrable.mono' _ _ _;
              refine' fun t => |g t| * ( n + 1 ) / 2;
              · refine' MeasureTheory.Integrable.div_const _ _;
                refine' MeasureTheory.Integrable.mul_const _ _;
                rw [ intervalIntegrable_iff_integrableOn_Icc_of_le Real.pi_pos.le ] at hg_int;
                exact MeasureTheory.Integrable.abs ( hg_int.mono_set <| Set.Icc_subset_Icc_right hδ.2.le );
              · refine' MeasureTheory.AEStronglyMeasurable.mul _ _;
                · have := hg_int.abs;
                  rw [ intervalIntegrable_iff_integrableOn_Icc_of_le Real.pi_pos.le ] at this;
                  exact this.aestronglyMeasurable.mono_set <| Set.Icc_subset_Icc_right hδ.2.le;
                · refine' Measurable.aestronglyMeasurable _;
                  refine' Measurable.mul _ _;
                  · exact measurable_const;
                  · refine' Finset.measurable_sum _ fun i _ => _;
                    exact Measurable.add ( measurable_const ) ( Finset.measurable_sum _ fun _ _ => Real.continuous_cos.measurable.comp ( measurable_const.mul measurable_id' ) );
              · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Icc ] with t ht ; rw [ Real.norm_eq_abs, abs_of_nonneg ( mul_nonneg ( abs_nonneg _ ) ( show 0 ≤ fejer_kernel n t from by exact? ) ) ] ; exact le_trans ( mul_le_mul_of_nonneg_left ( show fejer_kernel n t ≤ ( n + 1 ) / 2 from by exact? ) ( abs_nonneg _ ) ) ( by ring_nf; norm_num ) ;
            · refine' MeasureTheory.Integrable.mono' _ _ _;
              refine' fun t => |g t| * ( n + 1 ) / 2;
              · refine' MeasureTheory.Integrable.div_const _ _;
                refine' MeasureTheory.Integrable.mul_const _ _;
                exact MeasureTheory.Integrable.abs ( hg_int.1.mono_set <| Set.Ioc_subset_Ioc hδ.1.le le_rfl );
              · refine' MeasureTheory.AEStronglyMeasurable.mul _ _;
                · have := hg_int.abs;
                  exact this.aestronglyMeasurable.mono_set <| Set.Ioc_subset_Ioc hδ.1.le le_rfl;
                · refine' Measurable.aestronglyMeasurable _;
                  refine' Measurable.mul _ _;
                  · exact measurable_const;
                  · refine' Finset.measurable_sum _ fun i _ => _;
                    exact Measurable.add measurable_const ( Finset.measurable_sum _ fun _ _ => Real.continuous_cos.measurable.comp ( measurable_const.mul measurable_id' ) );
              · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Ioc ] with t ht using by rw [ Real.norm_of_nonneg ( mul_nonneg ( abs_nonneg _ ) ( fejer_kernel_nonneg _ _ ) ) ] ; exact le_trans ( mul_le_mul_of_nonneg_left ( fejer_kernel_le_linear _ _ ) ( abs_nonneg _ ) ) ( by ring_nf; norm_num ) ;
          simp_all +decide [ MeasureTheory.integral_Icc_eq_integral_Ioc, MeasureTheory.integral_Ioc_eq_integral_Ioo ];
        -- By the properties of the Fejér kernel, we know that $\int_0^\delta |g(t)| K_n(t) dt \leq \frac{\varepsilon}{2}$ for sufficiently large $n$.
        have h_small : ∀ ε > 0, ∃ δ ∈ Set.Ioo 0 Real.pi, ∃ N, ∀ n ≥ N, ∫ t in Set.Ioo 0 δ, |g t| * fejer_kernel n t ≤ ε / 2 := by
          -- By the properties of the Fejér kernel, we know that $\int_0^\delta |g(t)| K_n(t) dt \leq \frac{\varepsilon}{2}$ for sufficiently large $n$ because $|g(t)|$ is bounded near $0$.
          intros ε hε_pos
          obtain ⟨δ, hδ_pos, hδ_small⟩ : ∃ δ ∈ Set.Ioo 0 Real.pi, ∀ t ∈ Set.Ioo 0 δ, |g t| ≤ ε / 4 := by
            have := Metric.tendsto_nhdsWithin_nhds.mp hg_lim ( ε / 4 ) ( by linarith );
            obtain ⟨ δ, hδ_pos, H ⟩ := this; exact ⟨ Min.min δ Real.pi / 2, ⟨ by positivity, by linarith [ min_le_left δ Real.pi, min_le_right δ Real.pi, Real.pi_pos ] ⟩, fun t ht => by simpa using le_of_lt ( H ht.1 ( by rw [ dist_comm ] ; exact abs_lt.mpr ⟨ by linarith [ ht.1, ht.2, min_le_left δ Real.pi, min_le_right δ Real.pi ], by linarith [ ht.1, ht.2, min_le_left δ Real.pi, min_le_right δ Real.pi ] ⟩ ) ) ⟩ ;
          refine' ⟨ δ, hδ_pos, 0, fun n hn => _ ⟩ ; refine' le_trans ( MeasureTheory.setIntegral_mono_on _ _ measurableSet_Ioo fun t ht => mul_le_mul_of_nonneg_right ( hδ_small t ht ) ( _ ) ) _;
          · refine' MeasureTheory.Integrable.mono' _ _ _;
            refine' fun t => ε / 4 * ( n + 1 ) / 2;
            · norm_num +zetaDelta at *;
            · refine' MeasureTheory.AEStronglyMeasurable.mul _ _;
              · exact MeasureTheory.AEStronglyMeasurable.norm ( hg_int.1.aestronglyMeasurable.mono_set <| Set.Ioo_subset_Ioc_self.trans <| Set.Ioc_subset_Ioc_right hδ_pos.2.le );
              · refine' Measurable.aestronglyMeasurable _;
                refine' Measurable.mul _ _;
                · exact measurable_const;
                · refine' Finset.measurable_sum _ fun i _ => _;
                  exact Measurable.add measurable_const ( Finset.measurable_sum _ fun _ _ => Real.continuous_cos.measurable.comp ( measurable_const.mul measurable_id' ) );
            · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Ioo ] with t ht using by rw [ Real.norm_of_nonneg ( mul_nonneg ( abs_nonneg _ ) ( fejer_kernel_nonneg _ _ ) ) ] ; exact le_trans ( mul_le_mul_of_nonneg_right ( hδ_small t ht ) ( fejer_kernel_nonneg _ _ ) ) ( by nlinarith [ show ( fejer_kernel n t : ℝ ) ≤ ( n + 1 ) / 2 from le_trans ( fejer_kernel_le_linear n t ) ( by ring_nf; norm_num ) ] ) ;
          · field_simp;
            exact ContinuousOn.integrableOn_Icc ( by exact ContinuousOn.div_const ( ContinuousOn.mul continuousOn_const <| by exact ContinuousOn.congr ( show ContinuousOn ( fun t => ( 1 / ( n + 1 : ℝ ) ) * ∑ j ∈ Finset.range ( n + 1 ), ( 1 / 2 + ∑ k ∈ Finset.Icc 1 j, Real.cos ( k * t ) ) ) _ from Continuous.continuousOn <| by exact Continuous.mul ( continuous_const ) <| by exact continuous_finset_sum _ fun _ _ => by exact Continuous.add continuous_const <| by exact continuous_finset_sum _ fun _ _ => Real.continuous_cos.comp <| by continuity ) fun t ht => rfl ) _ ) |> fun h => h.mono_set <| Set.Ioo_subset_Icc_self;
          · exact?;
          · rw [ ← MeasureTheory.integral_Ioc_eq_integral_Ioo, ← intervalIntegral.integral_of_le ] <;> norm_num [ hδ_pos.1.le, hδ_pos.2.le ];
            -- By the properties of the Fejér kernel, we know that $\int_0^\delta K_n(t) dt \leq \frac{\pi}{2}$.
            have h_fejer_integral : ∫ t in (0:ℝ)..Real.pi, fejer_kernel n t = Real.pi / 2 := by
              convert congr_arg ( fun x : ℝ => x * Real.pi ) ( fejer_kernel_integral_half_range n ) using 1 <;> ring;
              norm_num [ Real.pi_ne_zero ];
            -- Since the Fejér kernel is non-negative, we can bound the integral over $[0, \delta]$ by the integral over $[0, \pi]$.
            have h_fejer_integral_bound : ∫ t in (0:ℝ)..δ, fejer_kernel n t ≤ ∫ t in (0:ℝ)..Real.pi, fejer_kernel n t := by
              apply_rules [ intervalIntegral.integral_mono_interval, hδ_pos.1.le, hδ_pos.2.le ];
              · norm_num;
              · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Ioc ] with t ht using fejer_kernel_nonneg n t;
              · exact ( by contrapose! h_fejer_integral; rw [ intervalIntegral.integral_undef h_fejer_integral ] ; positivity );
            nlinarith [ Real.pi_le_four ];
        -- By the properties of the Fejér kernel, we know that $\int_\delta^\pi |g(t)| K_n(t) dt \leq \frac{\varepsilon}{2}$ for sufficiently large $n$.
        have h_large : ∀ ε > 0, ∀ δ ∈ Set.Ioo 0 Real.pi, ∃ N, ∀ n ≥ N, ∫ t in Set.Icc δ Real.pi, |g t| * fejer_kernel n t ≤ ε / 2 := by
          intros ε hε δ hδ
          have h_bound : ∀ n, ∫ t in Set.Icc δ Real.pi, |g t| * fejer_kernel n t ≤ (∫ t in Set.Icc δ Real.pi, |g t|) * (⨆ t ∈ Set.Icc δ Real.pi, fejer_kernel n t) := by
            intro n
            have h_bound : ∀ t ∈ Set.Icc δ Real.pi, |g t| * fejer_kernel n t ≤ |g t| * (⨆ t ∈ Set.Icc δ Real.pi, fejer_kernel n t) := by
              intro t ht; gcongr;
              apply le_csSup;
              · refine' ⟨ ( n + 1 ) / 2, Set.forall_mem_range.2 fun t => _ ⟩;
                field_simp;
                rw [ @ciSup_eq_ite ] ; norm_num ; split_ifs <;> linarith [ fejer_kernel_le_linear n t ] ;
              · exact ⟨ t, by aesop ⟩
            generalize_proofs at *;
            rw [ ← MeasureTheory.integral_mul_const ];
            refine' MeasureTheory.integral_mono_of_nonneg _ _ _;
            · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Icc ] with t ht using mul_nonneg ( abs_nonneg _ ) ( fejer_kernel_nonneg _ _ );
            · refine' MeasureTheory.Integrable.mul_const _ _;
              have h_integrable : MeasureTheory.IntegrableOn g (Set.Icc 0 Real.pi) := by
                rw [ intervalIntegrable_iff_integrableOn_Icc_of_le Real.pi_pos.le ] at hg_int ; aesop
                skip;
              exact MeasureTheory.Integrable.abs ( h_integrable.mono_set <| Set.Icc_subset_Icc hδ.1.le le_rfl );
            · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Icc ] with t ht using h_bound t ht;
          have h_lim : Filter.Tendsto (fun n => ⨆ t ∈ Set.Icc δ Real.pi, fejer_kernel n t) Filter.atTop (nhds 0) := by
            convert fejer_kernel_uniform_limit_zero δ hδ.1 hδ.2.le using 1;
          have := h_lim.const_mul ( ∫ t in Set.Icc δ Real.pi, |g t| );
          simpa using this.eventually ( ge_mem_nhds <| by linarith ) |> fun h => h.mono fun n hn => le_trans ( h_bound n ) hn;
        rw [ Metric.tendsto_nhds ];
        intro ε hε_pos; rcases h_small ( ε / 2 ) ( half_pos hε_pos ) with ⟨ δ, hδ₁, N₁, hN₁ ⟩ ; rcases h_large ( ε / 2 ) ( half_pos hε_pos ) δ hδ₁ with ⟨ N₂, hN₂ ⟩ ; filter_upwards [ Filter.Ici_mem_atTop N₁, Filter.Ici_mem_atTop N₂ ] with n hn₁ hn₂ using abs_lt.mpr ⟨ by linarith [ show 0 ≤ ∫ t in Set.Icc 0 Real.pi, |g t| * fejer_kernel n t from MeasureTheory.setIntegral_nonneg measurableSet_Icc fun t ht => mul_nonneg ( abs_nonneg _ ) ( fejer_kernel_nonneg n t ) ], by linarith [ h_split δ hδ₁ n, hN₁ n hn₁, hN₂ n hn₂ ] ⟩ ;
      simpa [ MeasureTheory.integral_Icc_eq_integral_Ioc, intervalIntegral.integral_of_le Real.pi_pos.le ] using h_integral.div_const Real.pi

/-
If f is 2pi-periodic and integrable on [-pi, pi], then f(x+t) is integrable on [0, pi].
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean#L1516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05981873a9aec6e28dbb56a9d9fb76c5e5eaa1c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

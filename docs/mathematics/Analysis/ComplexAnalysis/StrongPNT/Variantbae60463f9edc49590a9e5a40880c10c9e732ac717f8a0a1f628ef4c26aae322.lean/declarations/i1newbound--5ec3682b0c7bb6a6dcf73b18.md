# I1NewBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c103fcc8-d2db-abd8-d0b2-e7567b224fc7",
  "kind": "lemma",
  "lexical_name": "I1NewBound",
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
  "slug": "i1newbound--5ec3682b0c7bb6a6dcf73b18",
  "source": {
    "blob": "febb261e8c76e0d4aec8c8de1ca02559ac821fcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2109,
    "line": 1996,
    "path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ec3682b0c7bb6a6dcf73b18aaf03530f3bfb19619bf18a4c4d5459e7da44853",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c103fcc8-d2db-abd8-d0b2-e7567b224fc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1996–2109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma I1NewBound {SmoothingF : ℝ → ℝ}
    (suppSmoothingF : Function.support SmoothingF ⊆ Icc (1 / 2) 2)
    (ContDiffSmoothingF : ContDiff ℝ 1 SmoothingF) : ∃ (C : ℝ) (_Cnonneg : 0 ≤ C),
    ∀ {ε X T : ℝ} (_εinIoo : ε ∈ Ioo 0 1) (_Xgt3 : 3 < X) (_Tgt3 : 3 < T),
    ‖I1New SmoothingF ε X T‖ ≤ C * (X / (ε * Real.sqrt T)) := by
    have h_I1New_bound : ∃ C > 0, ∀ {ε X T : ℝ} (εinIoo : ε ∈ Set.Ioo 0 1) (Xgt3 : 3 < X)
        (Tgt3 : 3 < T),
        ‖∫ t in Set.Iic (-T),
          SmoothedChebyshevIntegrand SmoothingF ε X (1 + (Real.log X)⁻¹ + t * I)‖ ≤
          C * (X / ε) * (1 / Real.sqrt T) := by
            obtain ⟨C₁, hC₁_pos, hC₁⟩ : ∃ C₁ > 0, ∀ {ε X T : ℝ} (εinIoo : ε ∈ Set.Ioo 0 1)
                (Xgt3 : 3 < X) (Tgt3 : 3 < T)
                (t : ℝ) (ht : t ≤ -T),
                ‖SmoothedChebyshevIntegrand SmoothingF ε X (1 + (Real.log X)⁻¹ + t * I)‖ ≤
                C₁ * (X / ε) * (Real.log (-t))^2 / (-t)^2 :=
              I1NewIntegrandBound suppSmoothingF ContDiffSmoothingF
            obtain ⟨C₂, hC₂_pos, hC₂⟩ : ∃ C₂ > 0, ∀ {T : ℝ} (Tgt3 : 3 < T),
                ∫ t in Set.Ici T, (Real.log t)^2 / t^2 ≤ C₂ / Real.sqrt T :=
                  IntegralLogSqOverTSqBound
            refine ⟨C₁ * C₂, mul_pos hC₁_pos hC₂_pos,
              fun {ε X T} εinIoo Xgt3 Tgt3 ↦
                (MeasureTheory.norm_integral_le_integral_norm _).trans ?_⟩
            refine (MeasureTheory.integral_mono_of_nonneg
              (g := fun t ↦ C₁ * (X / ε) * Real.log (-t) ^ 2 / (-t) ^ 2) ?_ ?_ ?_).trans ?_
            · exact Filter.Eventually.of_forall fun x ↦ norm_nonneg _
            · have h_integrable :
                  MeasureTheory.IntegrableOn (fun t ↦ (Real.log t)^2 / t^2) (Set.Ici T) := by
                have h_integrable :
                    MeasureTheory.IntegrableOn
                      (fun t ↦ (Real.log t)^2 / t^2) (Set.Ioi T) := by
                  have h_bound : ∀ t, t > T → (Real.log t)^2 / t^2 ≤ 4 / t^(3/2 : ℝ) := by
                    intro t ht
                    have h_log_bound : Real.log t ≤ 2 * t^(1/4 : ℝ) := by
                      have := Real.log_le_sub_one_of_pos (show 0 < t ^ (1 / 4 : ℝ) / 2 by
                        exact div_pos (Real.rpow_pos_of_pos (by linarith) _) zero_lt_two)
                      rw [Real.log_div (by exact ne_of_gt (Real.rpow_pos_of_pos (by linarith) _))
                        (by norm_num), Real.log_rpow (by linarith)] at this
                      have := Real.log_two_lt_d9; norm_num at *; linarith
                    rw [div_le_div_iff₀ (by nlinarith)
                      (Real.rpow_pos_of_pos (by linarith) (3 / 2))]
                    refine (mul_le_mul_of_nonneg_right (pow_le_pow_left₀
                      (Real.log_nonneg (by linarith)) h_log_bound 2)
                      (by exact Real.rpow_nonneg (by linarith) _)).trans ?_
                    ring_nf
                    norm_num
                    rw [← Real.rpow_natCast, ← Real.rpow_mul (by linarith),
                      ← Real.rpow_add (by linarith)]
                    norm_num
                  have h_integrable :
                      MeasureTheory.IntegrableOn (fun t ↦ 4 / t^(3/2 : ℝ)) (Set.Ioi T) := by
                    have h_integrable :
                        MeasureTheory.IntegrableOn (fun t ↦ t ^ (-3 / 2 : ℝ)) (Set.Ioi T) :=
                      integrableOn_Ioi_rpow_of_lt (by norm_num) (by linarith)
                    norm_num [div_eq_mul_inv] at *
                    exact MeasureTheory.Integrable.const_mul (h_integrable.congr_fun
                      (fun x hx ↦ by rw [Real.rpow_neg (by linarith [hx.out])])
                      measurableSet_Ioi) _
                  refine h_integrable.mono' ?_ ?_
                  · refine ContinuousOn.aestronglyMeasurable ?_ measurableSet_Ioi
                    have hne : ∀ t ∈ Set.Ioi T, t ≠ 0 := fun t ht ↦ by linarith [ht.out]
                    have hsq : ∀ t ∈ Set.Ioi T, t ^ 2 ≠ 0 := fun t ht ↦ pow_ne_zero 2 (hne t ht)
                    fun_prop (discharger := assumption)
                  · filter_upwards [MeasureTheory.ae_restrict_mem measurableSet_Ioi]
                      with t ht using by
                        rw [Real.norm_of_nonneg (by positivity)]
                        exact h_bound t ht
                rw [MeasureTheory.IntegrableOn, MeasureTheory.Measure.restrict_congr_set
                  MeasureTheory.Ioi_ae_eq_Ici] at *
                simp_all only [one_div, mem_Ioo, ofReal_inv, Complex.norm_mul, Complex.norm_div,
                  norm_neg, log_neg_eq_log, even_two, Even.neg_pow]
              have h_integrable : MeasureTheory.IntegrableOn (fun t ↦
                  (Real.log (-t))^2 / (-t)^2) (Set.Iic (-T)) := by
                convert h_integrable.comp_neg using 1; norm_num [Set.indicator]
              simpa only [mul_div_assoc] using h_integrable.const_mul _
            · filter_upwards [MeasureTheory.ae_restrict_mem measurableSet_Iic] with t ht
                using hC₁ εinIoo Xgt3 Tgt3 t ht
            · convert mul_le_mul_of_nonneg_left (hC₂ Tgt3) (show 0 ≤ C₁ * (X / ε) by
                exact mul_nonneg hC₁_pos.le
                  (div_nonneg (by positivity) (by linarith [εinIoo.1]))) using 1 <;> ring_nf
              rw [← MeasureTheory.integral_const_mul, MeasureTheory.integral_Ici_eq_integral_Ioi,
                ← neg_neg T, ← integral_comp_neg_Iic]
              norm_num
              ring_nf
    obtain ⟨C, hC₀, hC⟩ := h_I1New_bound; use C / (2 * Real.pi)
    refine ⟨by positivity, fun {ε X T} hε hX hT ↦ ?_⟩
    simp_all [div_eq_mul_inv, mul_assoc, mul_comm, mul_left_comm]
    ring_nf at *
    convert mul_le_mul_of_nonneg_right (hC hε.1 hε.2 hX hT)
      (show (0 : ℝ) ≤ Real.pi⁻¹ * (1 / 2) by positivity) using 1
    · simp only [I1New, SmoothedChebyshevIntegrand, norm_mul, norm_inv, Complex.norm_I,
        Complex.norm_two, mul_one, one_mul, one_div]
      rw [show ∀ a b : ℝ, (2 * a)⁻¹ * b = b * (a⁻¹ * 2⁻¹) by intro _ _; ring]
      congr 1
      · apply congr_arg
        apply MeasureTheory.setIntegral_congr_fun measurableSet_Iic fun t _ ↦ by
          rw [show (↑t : ℂ) * I = I * ↑t by ring, div_eq_mul_inv, neg_mul,
              show (↑(Real.log X)⁻¹ : ℂ) = (↑(Real.log X))⁻¹ from Complex.ofReal_inv _]
          ring
      · rw [show ‖(↑π : ℂ)‖ = π from (RCLike.norm_ofReal π).trans (abs_of_pos Real.pi_pos)]
    · ring

set_option backward.isDefEq.respectTransparency false in
@[blueprint
  (title := "I5NewBound")
  (statement := /--
    We have that
    $$|I_5(\nu,\varepsilon,X,T)|\ll\frac{X}{\varepsilon\sqrt{T}}.$$
  -/)
  (proof := /--
    By symmetry, note that
    $$|I_1(\nu,\varepsilon,X,T)|=|\overline{I_5(\nu,\varepsilon,X,T)}|=|I_5(\nu,\varepsilon,X,T)|.$$
    Applying Lemma \ref{I1NewBound} completes the proof.
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean#L1996).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `febb261e8c76e0d4aec8c8de1ca02559ac821fcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# shift_downwards

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15e4dc4b-863b-4c8e-309b-0cf619c0e635",
  "kind": "theorem",
  "lexical_name": "shift_downwards",
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
  "slug": "shift-downwards--e160f64038178ec189abd05f",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4031,
    "line": 3844,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e160f64038178ec189abd05f1371b4b8ea7906f7880171ca90aa98e869c2b5e5",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15e4dc4b-863b-4c8e-309b-0cf619c0e635`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3844–4031.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shift_downwards (ν ε : ℝ) (hν : ν > 0) (x : ℝ) (hx : x > 0) :
    Filter.Tendsto
      (fun T : ℝ ↦
        (-I * ∫ (t : ℝ) in Set.Icc 0 T, (Phi_circ ν ε (-1 - I * ↑t) - Phi_star ν ε (-1 - I * ↑t)) * E (-(-1 - I * ↑t) * ↑x)) +
        (I * ∫ (t : ℝ) in Set.Icc 0 T, (Phi_circ ν ε (-1 / 2 - I * ↑t) - Phi_star ν ε (-1 / 2 - I * ↑t)) * E (-(-1 / 2 - I * ↑t) * ↑x)) +
        (∫ (t : ℝ) in Set.Icc (-1 / 2 : ℝ) (1 / 2 : ℝ), Phi_circ ν ε ↑t * E (-↑t * ↑x)) -
        (∫ (t : ℝ) in Set.Icc (-1 / 2 : ℝ) 0, Phi_star ν ε ↑t * E (-↑t * ↑x)) +
        (∫ (t : ℝ) in Set.Icc 0 (1 / 2 : ℝ), Phi_star ν ε ↑t * E (-↑t * ↑x)) -
        (I * ∫ (t : ℝ) in Set.Icc 0 T, (Phi_circ ν ε (1 / 2 - I * ↑t) + Phi_star ν ε (1 / 2 - I * ↑t)) * E (-(1 / 2 - I * ↑t) * ↑x)) +
        (I * ∫ (t : ℝ) in Set.Icc 0 T, (Phi_circ ν ε (1 - I * ↑t) + Phi_star ν ε (1 - I * ↑t)) * E (-(1 - I * ↑t) * ↑x)))
      Filter.atTop (nhds (𝓕 (ϕ_pm ν ε) x)) := by
  have hlam : ν ≠ 0 := by linarith
  let fL z := (Phi_circ ν ε z - Phi_star ν ε z) * E (-z * x)
  let fR z := (Phi_circ ν ε z + Phi_star ν ε z) * E (-z * x)
  set AL := ∫ t in Set.Icc (-1 : ℝ) (-1/2), fL t
  set AM := ∫ t in Set.Icc (-1/2 : ℝ) 0, fL t
  set BM := ∫ t in Set.Icc 0 (1/2 : ℝ), fR t
  set BR := ∫ t in Set.Icc (1/2 : ℝ) 1, fR t
  have hci : ∀ (a b : ℝ), IntegrableOn (fun t : ℝ ↦ Phi_circ ν ε (↑t : ℂ) * E (-(↑t : ℂ) * ↑x)) (Set.Ioc a b) :=
    fun a b ↦ (((Phi_circ.contDiff_real ν ε hlam).continuous).mul (cont_E x)).integrableOn_Ioc
  have hsi : ∀ (a b : ℝ), IntegrableOn (fun t : ℝ ↦ Phi_star ν ε (↑t : ℂ) * E (-(↑t : ℂ) * ↑x)) (Set.Ioc a b) :=
    fun a b ↦ (((Phi_star.contDiff_real ν ε hlam).continuous).mul (cont_E x)).integrableOn_Ioc
  have hfLi (a b : ℝ) : IntegrableOn (fun (t : ℝ) ↦ fL t) (Set.Ioc a b) := by
    apply (Integrable.sub (hci a b) (hsi a b)).congr
    filter_upwards [] with t; dsimp [fL]; ring
  have hfRi (a b : ℝ) : IntegrableOn (fun (t : ℝ) ↦ fR t) (Set.Ioc a b) := by
    apply (Integrable.add (hci a b) (hsi a b)).congr
    filter_upwards [] with t; dsimp [fR]; ring
  have hfourier : 𝓕 (ϕ_pm ν ε) x = AL + AM + BM + BR := by
    rw [varphi_fourier_ident ν ε hlam x]
    have hA : ∫ t in Set.Icc (-1 : ℝ) 0, fL t = AL + AM := by
      simp only [AL, AM]
      rw [MeasureTheory.integral_Icc_eq_integral_Ioc, MeasureTheory.integral_Icc_eq_integral_Ioc, MeasureTheory.integral_Icc_eq_integral_Ioc]
      rw [← MeasureTheory.setIntegral_union (Set.Ioc_disjoint_Ioc_of_le (by norm_num)) measurableSet_Ioc (hfLi _ _) (hfLi _ _)]
      rw [Set.Ioc_union_Ioc_eq_Ioc (by norm_num) (by norm_num)]
    have hB : ∫ t in Set.Icc (0 : ℝ) 1, fR t = BM + BR := by
      simp only [BM, BR]
      rw [MeasureTheory.integral_Icc_eq_integral_Ioc, MeasureTheory.integral_Icc_eq_integral_Ioc, MeasureTheory.integral_Icc_eq_integral_Ioc]
      rw [← MeasureTheory.setIntegral_union (Set.Ioc_disjoint_Ioc_of_le (by norm_num)) measurableSet_Ioc (hfRi _ _) (hfRi _ _)]
      rw [Set.Ioc_union_Ioc_eq_Ioc (by norm_num) (by norm_num)]
    rw [hA, hB]; ring
  have hALshift : Filter.Tendsto (fun T : ℝ ↦ (I * ∫ t in Set.Icc 0 T, fL (-1 / 2 - I * t)) - (I * ∫ t in Set.Icc 0 T, fL (-1 - I * t))) Filter.atTop (nhds AL) := by
    obtain ⟨g, hg_anal, hg_eq⟩ := Phi_fourier_holo_left ν ε x hν
    have h_g_AL : (∫ t in (-1 : ℝ)..(-1 / 2), g t) = AL := by
      dsimp [AL]
      rw [intervalIntegral.integral_of_le (by norm_num), MeasureTheory.integral_Icc_eq_integral_Ioc]
      have : Set.Ioc (-1 : ℝ) (-1 / 2) = Set.Ioc (-1) (-(1 / 2)) := by norm_num
      rw [this]
      apply MeasureTheory.setIntegral_congr_ae
      · exact measurableSet_Ioc
      · filter_upwards with t ht
        apply hg_eq
        simp only [z₀_pole, ne_eq, Set.mem_setOf_eq]
        intro h
        have h_im := (Complex.ext_iff.mp h).2
        simp only [ofReal_im, sub_im, neg_im, one_im, neg_zero, mul_im, I_re, zero_mul, I_im,
          one_mul, zero_add, zero_sub, zero_eq_neg] at h_im
        norm_cast at h_im
        field_simp [Real.pi_ne_zero] at h_im
        linarith [hν]
    have h_g_lim : Filter.Tendsto (fun T : ℝ  ↦ (I * ∫ t in Set.Icc 0 T, g (-(1 / 2 : ℝ) - I * t)) - (I * ∫ t in Set.Icc 0 T, g (-1 - I * t))) Filter.atTop (nhds (∫ t in (-1)..(-1 / 2 : ℝ), g t)) := by
      convert tendsto_contour_shift_downwards (σ := -1) (σ' := -1/2) (f := g) ?_ ?_ using 1
      · ext T; congr 1
        · congr 1; apply MeasureTheory.setIntegral_congr_ae
          · exact measurableSet_Icc
          · filter_upwards [] with t ht; congr 1; push_cast; ring
        · congr 1; apply MeasureTheory.setIntegral_congr_ae
          · exact measurableSet_Icc
          · filter_upwards [] with t ht; congr 1; push_cast; ring
      · push_cast; ring_nf
        intro U hU
        convert hg_anal U hU
      · apply horizontal_integral_phi_fourier_vanish_downwards ν ε x (-1) (-1 / 2) hν hx
          (Set.Icc_subset_Icc (by norm_num) (by norm_num)) (by norm_num) g
        · intro T hT
          exact_mod_cast (hg_anal T (by linarith)).continuousOn
        · obtain ⟨C, T₀, hT₀_bound, hC⟩ := phi_bound_downwards ν ε hν
          apply Filter.eventually_atTop.mpr
          use T₀
          intro T hT t ht
          have h_not_pole : (↑t - I * ↑T) ≠ z₀_pole ν := by
            intro h_pole
            have h_T_val : T = ν / (2 * π) := by
              replace h_pole := (Complex.ext_iff.mp h_pole).2
              simp [z₀_pole, Complex.I_im, Complex.I_re, Complex.sub_im, Complex.mul_im, Complex.ofReal_im, Complex.ofReal_re] at h_pole
              norm_cast at h_pole
            linarith [hT, h_T_val ▸ hT₀_bound]
          rw [hg_eq h_not_pole]
          dsimp [fL]
          rw [norm_mul]
          refine mul_le_mul_of_nonneg_right ?_ (norm_nonneg _)
          exact norm_sub_le _ _
    refine h_g_AL ▸ (h_g_lim.congr' (Filter.Eventually.of_forall fun T ↦ ?_))
    · congr 1
      · congr 1
        apply MeasureTheory.setIntegral_congr_ae
        · exact measurableSet_Icc
        · filter_upwards with t ht; dsimp [fL]; push_cast; simp only [neg_div]; apply hg_eq
          intro h
          simp only [one_div] at h
          apply absurd (Complex.ext_iff.mp h).1
            (by dsimp [z₀_pole]; simp [Complex.div_im, Complex.ofReal_re, Complex.ofReal_im])
      · congr 1
        apply MeasureTheory.setIntegral_congr_ae
        · exact measurableSet_Icc
        · filter_upwards [ae_iff.mpr (show volume {t | ¬ t ≠ ν / (2 * π)} = 0 from (by simp))] with t hne
          intro ht; apply hg_eq; dsimp [fL];
          simp only [z₀_pole, sub_right_inj, mul_eq_mul_left_iff,
            I_ne_zero, or_false]
          intro h_eq
          have h_im := (Complex.ext_iff.mp h_eq).2
          exact hne (by simp at h_im; exact_mod_cast h_eq)
  have hBRshift : Filter.Tendsto (fun T : ℝ ↦ (I * ∫ t in Set.Icc 0 T, fR (1 - I * t)) - (I * ∫ t in Set.Icc 0 T, fR (1 / 2 - I * t))) Filter.atTop (nhds BR) := by
    obtain ⟨g, hg_anal, hg_eq⟩ := Phi_fourier_holo_right ν ε x hν
    convert tendsto_contour_shift_downwards (σ := 1 / 2) (σ' := 1) (f := g) ?_ ?_ using 1
    · ext T; congr 1
      · congr 1
        apply MeasureTheory.setIntegral_congr_ae
        · exact measurableSet_Icc
        · filter_upwards [ae_iff.mpr (show volume {t | ¬ t ≠ ν / (2 * π)} = 0 by simp)] with t hne
          intro ht; dsimp [fR]; symm; apply hg_eq;
          simp only [z₁_pole, ne_eq, Set.mem_setOf_eq,
            sub_right_inj, mul_eq_mul_left_iff, I_ne_zero, or_false]
          intro h
          replace h := Complex.ext_iff.mp h; norm_cast at h
          exact hne h.1
      · congr 1
        apply MeasureTheory.setIntegral_congr_ae
        · exact measurableSet_Icc
        · filter_upwards with t
          intro ht; dsimp [fR]; symm; convert hg_eq _ using 1
          · norm_num
          · intro h; have h_re := congr_arg Complex.re h
            simp [z₁_pole] at h_re; norm_cast at h_re; norm_num at h_re
    · congr 1
      dsimp [BR]
      rw [intervalIntegral.integral_of_le (by norm_num), MeasureTheory.integral_Icc_eq_integral_Ioc]
      apply MeasureTheory.setIntegral_congr_ae
      · exact measurableSet_Ioc
      · filter_upwards with t
        intro ht; dsimp [fR]; symm; apply hg_eq; simp only [z₁_pole, ne_eq, Set.mem_setOf_eq]; intro h
        have h_im := (Complex.ext_iff.mp h).2
        simp only [ofReal_im, sub_im, one_im, mul_im, I_re, zero_mul, I_im, one_mul, zero_add,
          zero_sub, zero_eq_neg] at h_im; norm_cast at h_im
        field_simp [Real.pi_ne_zero] at h_im; linarith [hν]
    · intro U hU
      convert hg_anal U hU
      push_cast; ring
    · apply horizontal_integral_phi_fourier_vanish_downwards ν ε x (1 / 2) 1 hν hx
        (Set.Icc_subset_Icc (by norm_num) (by norm_num)) (by norm_num) g
      · intro T hT
        convert (hg_anal T (by linarith)).continuousOn using 1
        push_cast; ring_nf
      · obtain ⟨C, T₀, hT₀_bound, hC⟩ := phi_bound_downwards ν ε hν
        apply Filter.eventually_atTop.mpr
        use T₀
        intro T hT t ht
        have h_not_pole : (↑t - I * ↑T) ≠ z₁_pole ν := by
          intro h_pole
          have h_T_val : T = ν / (2 * π) := by
            replace h_pole := (Complex.ext_iff.mp h_pole).2
            simp only [sub_im, ofReal_im, mul_im, I_re, mul_zero, I_im, ofReal_re, one_mul,
              zero_add, zero_sub, z₁_pole, one_im, zero_mul, neg_inj] at h_pole
            exact_mod_cast h_pole
          linarith [hT, h_T_val ▸ hT₀_bound]
        rw [hg_eq h_not_pole]
        dsimp [fR]
        rw [norm_mul]
        refine mul_le_mul_of_nonneg_right (norm_add_le _ _) (norm_nonneg _)
  have hmiddle : AM + BM = (∫ t in Set.Icc (-1/2 : ℝ) (1/2 : ℝ), Phi_circ ν ε t * E (-t * x)) - (∫ t in Set.Icc (-1/2 : ℝ) 0, Phi_star ν ε t * E (-t * x)) + (∫ t in Set.Icc 0 (1/2 : ℝ), Phi_star ν ε t * E (-t * x)) := by
    simp only [AM, BM, fL, fR]
    rw [MeasureTheory.integral_Icc_eq_integral_Ioc, MeasureTheory.integral_Icc_eq_integral_Ioc, MeasureTheory.integral_Icc_eq_integral_Ioc, MeasureTheory.integral_Icc_eq_integral_Ioc, MeasureTheory.integral_Icc_eq_integral_Ioc]
    simp_rw [sub_mul, add_mul]
    rw [integral_sub (hci (-1/2) 0) (hsi (-1/2) 0), integral_add (hci 0 (1/2)) (hsi 0 (1/2))]
    rw [show Set.Ioc (-1/2 : ℝ) (1/2) = Set.Ioc (-1/2) 0 ∪ Set.Ioc 0 (1/2) from
          (Set.Ioc_union_Ioc_eq_Ioc (by norm_num) (by norm_num)).symm,
        MeasureTheory.setIntegral_union (Set.Ioc_disjoint_Ioc_of_le le_rfl)
          measurableSet_Ioc (hci _ _) (hci _ _)]
    abel
  have h_combined_lim := (hALshift.add hBRshift).add_const (AM + BM)
  rw [hmiddle] at h_combined_lim
  simp only [fL, fR] at h_combined_lim
  convert h_combined_lim using 1
  · ext T; ring
  · rw [hfourier]
    congr 1
    linear_combination hmiddle

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L3844).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

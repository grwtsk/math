# mainChi_uniform_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:599853f4-a8bb-aac8-7161-05c6a11fb20d",
  "kind": "theorem",
  "lexical_name": "mainChi_uniform_aux",
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
  "slug": "mainchi-uniform-aux--40644e36a9f0feac3c3d4bb2",
  "source": {
    "blob": "6140043765504284b68ec21dfd2c5dd00c05a4ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 268,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantbde71c6106e3be3a4e4d856d00beb34ec0ba761dfc30685f2f4c43667a6937c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40644e36a9f0feac3c3d4bb2417c6ae7e0fb8c8906fd4728b5e03870e4796183",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantbde71c6106e3be3a4e4d856d00beb34ec0ba761dfc30685f2f4c43667a6937c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:599853f4-a8bb-aac8-7161-05c6a11fb20d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mainChi_uniform_aux
    (hBack : ∃ C : ℝ, ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q), χ ≠ 1 →
      ∀ T : ℝ, (∀ ρ, IsNontrivialZeroL χ ρ → ρ.im ≠ T) →
        |(∫ σ in (1 / 2 : ℝ)..2, logDeriv χ.LFunction (σ + T * I)).im|
          ≤ C * Real.log (q * (|T| + 3)))
    (hΓ : ∃ C : ℝ, ∀ (κ q : ℕ), κ ≤ 1 → 1 ≤ q → GammaFactsChiBounded κ q C) :
    ∃ A T₀ : ℝ, 0 < A ∧
    ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q), 1 < q → χ.IsPrimitive →
    ∀ T : ℝ, T₀ ≤ T →
      |(NcountL χ T (2 * T) : ℝ) - T / (2 * Real.pi) * ell1q q T|
        ≤ A * Real.log (q * (T + 2)) := by
  obtain ⟨CB, hB⟩ := hBack
  obtain ⟨CΓ, hΓall⟩ := hΓ
  obtain ⟨A₀, hA₀1, hA₀⟩ := localCountChi_uniform_proof
  have hA₀0 : 0 ≤ A₀ := by linarith
  set CM : ℝ := |CΓ| + 2 with hCM
  have hCM0 : 0 < CM := by positivity
  refine ⟨4 * |CB| + 4 + 8 * A₀ + 8 * CM + |CΓ|, max 4 (|CΓ| + 1),
    by positivity, ?_⟩
  intro q _ χ hq1 hprim T hT
  have hχ1 : χ ≠ 1 := ne_one_of_primitive hq1 hprim
  have hq0 : (0:ℝ) < (q:ℝ) := by exact_mod_cast Nat.pos_of_ne_zero (NeZero.ne q)
  have hq2 : (2:ℝ) ≤ (q:ℝ) := by exact_mod_cast hq1
  have hqnat1 : 1 ≤ q := hq1.le
  have hT4 : 4 ≤ T := le_trans (le_max_left _ _) hT
  have hTΓ : |CΓ| + 1 ≤ T := le_trans (le_max_right _ _) hT
  -- parity
  obtain ⟨κ, hκ1, hκdef⟩ : ∃ κ : ℕ, κ ≤ 1 ∧
      ∀ s, gammaFactor χ s = Complex.Gammaℝ (s + κ) := by
    rcases χ.even_or_odd with he | ho
    · exact ⟨0, by norm_num, fun s => by rw [he.gammaFactor_def]; norm_num⟩
    · exact ⟨1, le_rfl, fun s => by rw [ho.gammaFactor_def]; norm_num⟩
  have hΓb := hΓall κ q hκ1 hqnat1
  -- log scale
  set L' : ℝ := Real.log ((q:ℝ) * (T + 2)) with hL'def
  have hqT12 : (12:ℝ) ≤ (q:ℝ) * (T + 2) := by nlinarith
  have hL'1 : 1 ≤ L' := by
    rw [hL'def, ← Real.log_exp 1]
    apply Real.log_le_log (Real.exp_pos 1)
    have := Real.exp_one_lt_d9; linarith
  have hL'0 : 0 < L' := by linarith
  -- generic: log(q·x) ≤ 2L' whenever 0 < x ≤ (T+2)²·q  (used at x = |T₁|+3 etc.)
  have hlog2L : ∀ x : ℝ, 0 < x → (q:ℝ) * x ≤ ((q:ℝ) * (T + 2))^2 → Real.log ((q:ℝ) * x) ≤ 2 * L' := by
    intro x hx hxq
    have h1 : Real.log ((q:ℝ) * x) ≤ Real.log (((q:ℝ) * (T + 2))^2) :=
      Real.log_le_log (by positivity) hxq
    have h2 : Real.log (((q:ℝ) * (T + 2))^2) = 2 * L' := by
      rw [hL'def, Real.log_pow]; push_cast; ring
    linarith
  -- good heights
  obtain ⟨T₁, hT₁mem, hg1⟩ := exists_goodHeightL hq1 hprim (T - 1)
  obtain ⟨T₂, hT₂mem, hg2⟩ := exists_goodHeightL hq1 hprim (2 * T)
  have hT₁a : T - 1 ≤ T₁ := hT₁mem.1
  have hT₁b : T₁ ≤ T := by have := hT₁mem.2; linarith
  have hT₂a : 2 * T ≤ T₂ := hT₂mem.1
  have hT₂b : T₂ ≤ 2 * T + 1 := hT₂mem.2
  have h1T₁ : 1 ≤ T₁ := by linarith
  have h12 : T₁ ≤ T₂ := by linarith
  have hN := NcountL_eq_im_halfContour hq1 hprim h12 hg1 hg2
  have hsplit := halfContourChi_split hq1 hprim hκdef h1T₁ h12 hg1 hg2
  have hgam := gammaSideChi q κ (T₁ := T₁) (T₂ := T₂) (by linarith) (by linarith)
  have hadd : (NcountL χ T₁ T₂ : ℝ)
      = (NcountL χ T₁ T : ℝ) + (NcountL χ T (2*T) : ℝ) + (NcountL χ (2*T) T₂ : ℝ) := by
    have e1 := NcountL_add hq1 hprim (T₁ := T₁) (T := T) (T₂ := T₂) hT₁b (by linarith)
    have e2 := NcountL_add hq1 hprim (T₁ := T) (T := 2*T) (T₂ := T₂) (by linarith) hT₂a
    rw [e1, e2]; push_cast; ring
  -- end windows ≤ 2A₀L' each... (uniform local count at T₁ resp. 2T)
  have hw1 : (NcountL χ T₁ T : ℝ) ≤ 2 * A₀ * L' := by
    have hsub : NcountL χ T₁ T ≤ NcountL χ T₁ (T₁ + 1) :=
      NcountL_le_of_subset hq1 hprim (zerosInL_subset_of_le le_rfl (by linarith))
    calc (NcountL χ T₁ T : ℝ) ≤ (NcountL χ T₁ (T₁ + 1) : ℝ) := by exact_mod_cast hsub
      _ ≤ A₀ * Real.log ((q:ℝ) * (|T₁| + 3)) := hA₀ q χ hq1 hprim T₁
      _ ≤ A₀ * (2 * L') := by
          refine mul_le_mul_of_nonneg_left ?_ hA₀0
          apply hlog2L _ (by positivity)
          rw [abs_of_pos (by linarith : (0:ℝ) < T₁)]
          nlinarith
      _ = 2 * A₀ * L' := by ring
  have hw2 : (NcountL χ (2*T) T₂ : ℝ) ≤ 2 * A₀ * L' := by
    have hsub : NcountL χ (2*T) T₂ ≤ NcountL χ (2*T) (2*T + 1) :=
      NcountL_le_of_subset hq1 hprim (zerosInL_subset_of_le le_rfl hT₂b)
    calc (NcountL χ (2*T) T₂ : ℝ) ≤ (NcountL χ (2*T) (2*T+1) : ℝ) := by exact_mod_cast hsub
      _ ≤ A₀ * Real.log ((q:ℝ) * (|2*T| + 3)) := hA₀ q χ hq1 hprim (2*T)
      _ ≤ A₀ * (2 * L') := by
          refine mul_le_mul_of_nonneg_left ?_ hA₀0
          apply hlog2L _ (by positivity)
          rw [abs_of_pos (by linarith : (0:ℝ) < 2*T)]
          nlinarith
      _ = 2 * A₀ * L' := by ring
  -- Backlund on the horizontals + π on the vertical
  have habs₁ : |T₁| = T₁ := abs_of_pos (by linarith)
  have habs₂ : |T₂| = T₂ := abs_of_pos (by linarith)
  have hbk1 := hB q χ hχ1 T₁ hg1
  have hbk2 := hB q χ hχ1 T₂ hg2
  rw [habs₁] at hbk1
  rw [habs₂] at hbk2
  have hlogqT₁ : Real.log ((q:ℝ) * (T₁ + 3)) ≤ 2 * L' :=
    hlog2L _ (by linarith) (by nlinarith)
  have hlogqT₂ : Real.log ((q:ℝ) * (T₂ + 3)) ≤ 2 * L' :=
    hlog2L _ (by linarith) (by nlinarith)
  have hbk1' : |(∫ σ in (1/2:ℝ)..2, logDeriv χ.LFunction (σ + T₁ * I)).im| ≤ |CB| * (2 * L') := by
    refine hbk1.trans (le_trans (mul_le_mul (le_abs_self CB) hlogqT₁ ?_ (abs_nonneg _)) le_rfl)
    have : (0:ℝ) < (q:ℝ) * (T₁ + 3) := by positivity
    rw [← Real.log_one]
    exact Real.log_le_log one_pos (by nlinarith)
  have hbk2' : |(∫ σ in (1/2:ℝ)..2, logDeriv χ.LFunction (σ + T₂ * I)).im| ≤ |CB| * (2 * L') := by
    refine hbk2.trans (le_trans (mul_le_mul (le_abs_self CB) hlogqT₂ ?_ (abs_nonneg _)) le_rfl)
    rw [← Real.log_one]
    exact Real.log_le_log one_pos (by nlinarith)
  have hvert := vertical_twoChi hχ1 T₁ T₂
  have hLbound : |(RvM.halfContour (logDeriv χ.LFunction) T₁ T₂).im|
      ≤ |CB| * (2 * L') + Real.pi + |CB| * (2 * L') := by
    unfold RvM.halfContour
    have eim : ((∫ σ in (1/2:ℝ)..2, logDeriv χ.LFunction (σ + T₁ * I))
        + (∫ t in T₁..T₂, logDeriv χ.LFunction (2 + t * I)) * I
        - ∫ σ in (1/2:ℝ)..2, logDeriv χ.LFunction (σ + T₂ * I)).im
        = (∫ σ in (1/2:ℝ)..2, logDeriv χ.LFunction (σ + T₁ * I)).im
          + ((∫ t in T₁..T₂, logDeriv χ.LFunction (2 + t * I)) * I).im
          - (∫ σ in (1/2:ℝ)..2, logDeriv χ.LFunction (σ + T₂ * I)).im := by
      simp [Complex.add_im, Complex.sub_im]
    rw [eim]
    have hmulI : ((∫ t in T₁..T₂, logDeriv χ.LFunction (2 + t * I)) * I).im
        = (∫ t in T₁..T₂, logDeriv χ.LFunction (2 + t * I) * I).im :=
      congrArg Complex.im (intervalIntegral.integral_mul_const (μ := MeasureTheory.volume) I
        (fun t : ℝ => logDeriv χ.LFunction (2 + t * I))).symm
    calc |(∫ σ in (1/2:ℝ)..2, logDeriv χ.LFunction (σ + T₁ * I)).im
          + ((∫ t in T₁..T₂, logDeriv χ.LFunction (2 + t * I)) * I).im
          - (∫ σ in (1/2:ℝ)..2, logDeriv χ.LFunction (σ + T₂ * I)).im|
        ≤ |(∫ σ in (1/2:ℝ)..2, logDeriv χ.LFunction (σ + T₁ * I)).im|
          + |((∫ t in T₁..T₂, logDeriv χ.LFunction (2 + t * I)) * I).im|
          + |(∫ σ in (1/2:ℝ)..2, logDeriv χ.LFunction (σ + T₂ * I)).im| :=
          (abs_sub _ _).trans (add_le_add (abs_add_le _ _) le_rfl)
      _ ≤ |CB| * (2 * L') + Real.pi + |CB| * (2 * L') := by
          rw [hmulI]
          linarith [hvert]
  -- μ_χ bookkeeping (bounded Γ-facts)
  have hμc : Continuous (muq κ q) := hΓb.smooth.continuous
  have hCMbound := muq_le_log_uniform (abs_nonneg CΓ)
    (fun τ hτ => (hΓb.stirling τ hτ).trans (by
      have : CΓ / τ ^ 2 ≤ |CΓ| / τ ^ 2 := by
        gcongr
        exact le_abs_self _
      linarith)) hqnat1
  have hμint : ∀ a b : ℝ, IntervalIntegrable (muq κ q) MeasureTheory.volume a b :=
    fun a b => hμc.intervalIntegrable a b
  have hμsplit : (∫ t in T₁..T₂, muq κ q t)
      = (∫ t in T₁..T, muq κ q t) + (∫ t in T..(2*T), muq κ q t)
        + ∫ t in (2*T)..T₂, muq κ q t := by
    have e1 : (∫ t in T₁..(2*T), muq κ q t)
        = (∫ t in T₁..T, muq κ q t) + ∫ t in T..(2*T), muq κ q t :=
      (intervalIntegral.integral_add_adjacent_intervals (hμint T₁ T) (hμint T (2*T))).symm
    have e2 : (∫ t in T₁..T₂, muq κ q t)
        = (∫ t in T₁..(2*T), muq κ q t) + ∫ t in (2*T)..T₂, muq κ q t :=
      (intervalIntegral.integral_add_adjacent_intervals (hμint T₁ (2*T)) (hμint (2*T) T₂)).symm
    rw [e2, e1]
  have hμwin : ∀ a b : ℝ, 1 ≤ a → a ≤ b → b ≤ 2*T + 1 → |b - a| ≤ 1 →
      |∫ t in a..b, muq κ q t| ≤ 2 * CM * L' := by
    intro a b ha hab hb hba
    have hbound : ∀ t ∈ Set.uIoc a b, ‖muq κ q t‖ ≤ CM * (2 * L') := by
      intro t ht
      rw [Set.uIoc_of_le hab] at ht
      have ht1 : 1 ≤ t := le_trans ha ht.1.le
      have ht2 : t ≤ 2*T + 1 := le_trans ht.2 hb
      rw [Real.norm_eq_abs]
      refine (hCMbound t ht1).trans ?_
      have h1 : Real.log ((q:ℝ) * (t + 3)) ≤ 2 * L' :=
        hlog2L _ (by linarith) (by nlinarith)
      calc (|CΓ| + 2) * Real.log ((q:ℝ) * (t + 3)) ≤ (|CΓ| + 2) * (2 * L') := by
            apply mul_le_mul_of_nonneg_left h1 (by positivity)
        _ = CM * (2 * L') := by rw [hCM]
    have hnorm := intervalIntegral.norm_integral_le_of_norm_le_const hbound
    rw [Real.norm_eq_abs] at hnorm
    calc |∫ t in a..b, muq κ q t| ≤ CM * (2 * L') * |b - a| := hnorm
      _ ≤ CM * (2 * L') * 1 := by
          apply mul_le_mul_of_nonneg_left hba (by positivity)
      _ = 2 * CM * L' := by ring
  have hμ1 : |∫ t in T₁..T, muq κ q t| ≤ 2 * CM * L' :=
    hμwin T₁ T h1T₁ hT₁b (by linarith) (by rw [abs_of_nonneg (by linarith)]; linarith)
  have hμ2 : |∫ t in (2*T)..T₂, muq κ q t| ≤ 2 * CM * L' :=
    hμwin (2*T) T₂ (by linarith) hT₂a (by linarith) (by rw [abs_of_nonneg (by linarith)]; linarith)
  have hintmu := hΓb.int_mu T (by linarith [le_abs_self CΓ])
  have hCΓT : CΓ / T ≤ |CΓ| := by
    calc CΓ / T ≤ |CΓ| / T := by gcongr; exact le_abs_self _
      _ ≤ |CΓ| / 1 := by
          apply div_le_div_of_nonneg_left (abs_nonneg _) one_pos
          linarith
      _ = |CΓ| := div_one _
  have hπ : (0:ℝ) < Real.pi := Real.pi_pos
  have hkey : (NcountL χ T (2*T) : ℝ) - T / (2 * Real.pi) * ell1q q T
      = (1/Real.pi) * (RvM.halfContour (logDeriv χ.LFunction) T₁ T₂).im
        + ((∫ t in T₁..T, muq κ q t) + (∫ t in (2*T)..T₂, muq κ q t)
        + ((∫ t in T..(2*T), muq κ q t) - T * ell1q q T / (2 * Real.pi)))
        - ((NcountL χ T₁ T : ℝ) + (NcountL χ (2*T) T₂ : ℝ)) := by
    have hΛim : (1/Real.pi) * (RvM.halfContour (logDeriv (completedLSym χ)) T₁ T₂).im
        = (1/Real.pi) * (RvM.halfContour (logDeriv χ.LFunction) T₁ T₂).im
          + (1/Real.pi) * (RvM.halfContour (logDeriv (archChi q κ)) T₁ T₂).im := by
      rw [hsplit, Complex.add_im]; ring
    have h5 : (NcountL χ T₁ T₂ : ℝ)
        = (1/Real.pi) * (RvM.halfContour (logDeriv χ.LFunction) T₁ T₂).im
          + ∫ t in T₁..T₂, muq κ q t := by
      rw [hN, hΛim, hgam]
    rw [hμsplit] at h5
    have hTell : T / (2 * Real.pi) * ell1q q T = T * ell1q q T / (2 * Real.pi) := by ring
    rw [hTell]
    linarith [hadd]
  have hA : |(1/Real.pi) * (RvM.halfContour (logDeriv χ.LFunction) T₁ T₂).im|
      ≤ (4 * |CB| + 4) * L' := by
    rw [abs_mul, abs_of_pos (by positivity : (0:ℝ) < 1/Real.pi)]
    have hπ1 : (1:ℝ) ≤ Real.pi := by linarith [Real.pi_gt_three]
    have hfrac : (1:ℝ)/Real.pi ≤ 1 := by rw [div_le_one hπ]; exact hπ1
    have step : (1/Real.pi) * |(RvM.halfContour (logDeriv χ.LFunction) T₁ T₂).im|
        ≤ |CB| * (2 * L') + Real.pi + |CB| * (2 * L') := by
      calc (1/Real.pi) * |(RvM.halfContour (logDeriv χ.LFunction) T₁ T₂).im|
          ≤ 1 * |(RvM.halfContour (logDeriv χ.LFunction) T₁ T₂).im| :=
            mul_le_mul_of_nonneg_right hfrac (abs_nonneg _)
        _ = |(RvM.halfContour (logDeriv χ.LFunction) T₁ T₂).im| := one_mul _
        _ ≤ |CB| * (2 * L') + Real.pi + |CB| * (2 * L') := hLbound
    have hπ4 : Real.pi ≤ 4 * L' := by nlinarith [Real.pi_lt_d2]
    nlinarith [abs_nonneg CB]
  have hmid : |(∫ t in T..(2*T), muq κ q t) - T * ell1q q T / (2 * Real.pi)| ≤ |CΓ| * L' := by
    calc |(∫ t in T..(2*T), muq κ q t) - T * ell1q q T / (2 * Real.pi)| ≤ CΓ / T := hintmu
      _ ≤ |CΓ| := hCΓT
      _ ≤ |CΓ| * L' := le_mul_of_one_le_right (abs_nonneg _) hL'1
  rw [hkey]
  have htri : |(1/Real.pi) * (RvM.halfContour (logDeriv χ.LFunction) T₁ T₂).im
        + ((∫ t in T₁..T, muq κ q t) + (∫ t in (2*T)..T₂, muq κ q t)
        + ((∫ t in T..(2*T), muq κ q t) - T * ell1q q T / (2 * Real.pi)))
        - ((NcountL χ T₁ T : ℝ) + (NcountL χ (2*T) T₂ : ℝ))|
      ≤ |(1/Real.pi) * (RvM.halfContour (logDeriv χ.LFunction) T₁ T₂).im|
        + (|∫ t in T₁..T, muq κ q t| + |∫ t in (2*T)..T₂, muq κ q t|
        + |(∫ t in T..(2*T), muq κ q t) - T * ell1q q T / (2 * Real.pi)|)
        + ((NcountL χ T₁ T : ℝ) + (NcountL χ (2*T) T₂ : ℝ)) := by
    have h2 := abs_add_le (∫ t in T₁..T, muq κ q t) (∫ t in (2*T)..T₂, muq κ q t)
    have h3 := abs_add_le ((∫ t in T₁..T, muq κ q t) + (∫ t in (2*T)..T₂, muq κ q t))
      ((∫ t in T..(2*T), muq κ q t) - T * ell1q q T / (2 * Real.pi))
    have h1 := abs_add_le ((1/Real.pi) * (RvM.halfContour (logDeriv χ.LFunction) T₁ T₂).im)
      ((∫ t in T₁..T, muq κ q t) + (∫ t in (2*T)..T₂, muq κ q t)
        + ((∫ t in T..(2*T), muq κ q t) - T * ell1q q T / (2 * Real.pi)))
    have h4 := abs_sub (((1/Real.pi) * (RvM.halfContour (logDeriv χ.LFunction) T₁ T₂).im)
        + ((∫ t in T₁..T, muq κ q t) + (∫ t in (2*T)..T₂, muq κ q t)
        + ((∫ t in T..(2*T), muq κ q t) - T * ell1q q T / (2 * Real.pi))))
      ((NcountL χ T₁ T : ℝ) + (NcountL χ (2*T) T₂ : ℝ))
    have h5 : |(NcountL χ T₁ T : ℝ) + (NcountL χ (2*T) T₂ : ℝ)|
        = (NcountL χ T₁ T : ℝ) + (NcountL χ (2*T) T₂ : ℝ) := abs_of_nonneg (by positivity)
    rw [h5] at h4
    linarith
  refine htri.trans ?_
  nlinarith [hA, hμ1, hμ2, hmid, hw1, hw2, hL'0]


/-! ### Per-χ main term (from the q-uniform assembly) -/

/-- **Main term for N_χ(T,2T)** (per-χ constant; from `mainChi_uniform_aux` instantiated with the q-uniform
Backlund bound and the bounded H-Γ(χ) facts: log(q(T+2)) ≤ (log q + log 2 + 1)·log T for T ≥ 3). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantbde71c6106e3be3a4e4d856d00beb34ec0ba761dfc30685f2f4c43667a6937c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantbde71c6106e3be3a4e4d856d00beb34ec0ba761dfc30685f2f4c43667a6937c6.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6140043765504284b68ec21dfd2c5dd00c05a4ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

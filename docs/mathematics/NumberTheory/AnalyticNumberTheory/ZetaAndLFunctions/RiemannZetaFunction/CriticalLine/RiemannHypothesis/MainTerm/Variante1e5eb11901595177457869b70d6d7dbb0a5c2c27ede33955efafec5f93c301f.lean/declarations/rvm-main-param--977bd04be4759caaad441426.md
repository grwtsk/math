# rvM_main_param

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54bffbb76eda3bf06bc919689e7c5010a9e830d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1e5eb11901595177457869b70d6d7dbb0a5c2c27ede33955efafec5f93c301f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d008e07-0a46-b24f-1f4f-556b82cfb9c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83945322-ad0c-e6a7-5d29-e6ecf5c72d00",
  "kind": "theorem",
  "lexical_name": "rvM_main_param",
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
  "slug": "rvm-main-param--977bd04be4759caaad441426",
  "source": {
    "blob": "54bffbb76eda3bf06bc919689e7c5010a9e830d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 215,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variante1e5eb11901595177457869b70d6d7dbb0a5c2c27ede33955efafec5f93c301f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:977bd04be4759caaad44142606796376a67d826c41275851eeff54589734158b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variante1e5eb11901595177457869b70d6d7dbb0a5c2c27ede33955efafec5f93c301f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83945322-ad0c-e6a7-5d29-e6ecf5c72d00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rvM_main_param {CB TB A₀ Cμ Tμ CM : ℝ}
    (hB : ∀ T : ℝ, TB ≤ T → (∀ ρ, IsNontrivialZero ρ → ρ.im ≠ T) →
      |(∫ σ in (1 / 2 : ℝ)..2, logDeriv riemannZeta (σ + T * I)).im| ≤ CB * Real.log T)
    (vertical_two : ∀ T₁ T₂ : ℝ,
      |(∫ t in T₁..T₂, logDeriv riemannZeta (2 + t * I) * I).im| ≤ Real.pi)
    (hA₀1 : 1 ≤ A₀) (hA₀ : ∀ t : ℝ, (Ncount t (t + 1) : ℝ) ≤ A₀ * Real.log (|t| + 3))
    (hCμ : ∀ T : ℝ, Tμ ≤ T →
      |(∫ τ in T..(2 * T), mu τ) - T * ell1 T / (2 * Real.pi)| ≤ Cμ / T)
    (hCM0 : 0 < CM) (hCM : ∀ τ : ℝ, 1 ≤ τ → |mu τ| ≤ CM * Real.log (τ + 3))
    (hμc : Continuous mu) :
    ∀ T : ℝ, max (max (TB + 1) (Tμ + 1)) 4 ≤ T →
      |(zetaZeroConfig.N T (2 * T) : ℝ) - T / (2 * Real.pi) * ell1 T|
        ≤ (3 * |CB| + 4 * A₀ + 4 * CM + |Cμ| + 1) * Real.log T := by
  have hA₀0 : 0 ≤ A₀ := by linarith
  intro T hT
  have hT4 : 4 ≤ T := le_trans (le_max_right _ _) hT
  have hTB : TB + 1 ≤ T := le_trans (le_trans (le_max_left _ _) (le_max_left _ _)) hT
  have hTμ : Tμ + 1 ≤ T := le_trans (le_trans (le_max_right _ _) (le_max_left _ _)) hT
  have hlogT : 1 ≤ Real.log T := by
    rw [← Real.log_exp 1]
    exact Real.log_le_log (Real.exp_pos 1) (le_trans (by linarith [Real.exp_one_lt_d9]) le_rfl)
  have hlogT0 : 0 < Real.log T := by linarith
  -- good heights straddling [T, 2T]
  obtain ⟨T₁, hT₁mem, hg1⟩ := exists_goodHeight (T - 1)
  obtain ⟨T₂, hT₂mem, hg2⟩ := exists_goodHeight (2 * T)
  have hT₁a : T - 1 ≤ T₁ := hT₁mem.1
  have hT₁b : T₁ ≤ T := by have := hT₁mem.2; linarith
  have hT₂a : 2 * T ≤ T₂ := hT₂mem.1
  have hT₂b : T₂ ≤ 2 * T + 1 := hT₂mem.2
  have h1T₁ : 1 ≤ T₁ := by linarith
  have h12 : T₁ < T₂ := by linarith
  -- argument principle + split + Γ-side
  have hN := N_eq_halfContour_completedZeta h1T₁ h12 hg1 hg2
  have hsplit := halfContour_completedZeta_split h1T₁ h12 hg1 hg2
  have hgam := gamma_side (T₁ := T₁) (T₂ := T₂) (by linarith) (by linarith)
  -- window arithmetic
  have hadd : (Ncount T₁ T₂ : ℝ)
      = (Ncount T₁ T : ℝ) + (Ncount T (2*T) : ℝ) + (Ncount (2*T) T₂ : ℝ) := by
    have e1 := Zeta23.Ncount_add (a := T₁) (b := T) (c := T₂) hT₁b (by linarith)
    have e2 := Zeta23.Ncount_add (a := T) (b := 2*T) (c := T₂) (by linarith) hT₂a
    rw [e1, e2]
    push_cast
    ring
  -- small windows are O(log T)
  have hlogsq : ∀ x : ℝ, 0 < x → x + 3 ≤ T ^ 2 → Real.log (x + 3) ≤ 2 * Real.log T := by
    intro x hx hxT
    calc Real.log (x + 3) ≤ Real.log (T ^ 2) := Real.log_le_log (by linarith) hxT
      _ = 2 * Real.log T := by
          rw [Real.log_pow]
          push_cast
          ring
  have hw1 : (Ncount T₁ T : ℝ) ≤ 2 * A₀ * Real.log T := by
    have hsub : Ncount T₁ T ≤ Ncount T₁ (T₁ + 1) :=
      Zeta23.Ncount_mono le_rfl (by linarith)
    calc (Ncount T₁ T : ℝ) ≤ (Ncount T₁ (T₁ + 1) : ℝ) := by exact_mod_cast hsub
      _ ≤ A₀ * Real.log (|T₁| + 3) := hA₀ T₁
      _ ≤ A₀ * (2 * Real.log T) := by
          refine mul_le_mul_of_nonneg_left ?_ hA₀0
          rw [abs_of_pos (by linarith : 0 < T₁)]
          exact hlogsq T₁ (by linarith) (by nlinarith)
      _ = 2 * A₀ * Real.log T := by ring
  have hw2 : (Ncount (2*T) T₂ : ℝ) ≤ 2 * A₀ * Real.log T := by
    have hsub : Ncount (2*T) T₂ ≤ Ncount (2*T) (2*T + 1) :=
      Zeta23.Ncount_mono le_rfl hT₂b
    calc (Ncount (2*T) T₂ : ℝ) ≤ (Ncount (2*T) (2*T+1) : ℝ) := by exact_mod_cast hsub
      _ ≤ A₀ * Real.log (|2*T| + 3) := hA₀ (2*T)
      _ ≤ A₀ * (2 * Real.log T) := by
          refine mul_le_mul_of_nonneg_left ?_ hA₀0
          rw [abs_of_pos (by linarith : 0 < 2*T)]
          exact hlogsq (2*T) (by linarith) (by nlinarith)
      _ = 2 * A₀ * Real.log T := by ring
  -- the ζ half-contour is O(log T)
  have hbk1 := hB T₁ (by linarith) hg1
  have hbk2 := hB T₂ (by linarith) hg2
  have hvert := vertical_two T₁ T₂
  have hζbound : |(halfContour (logDeriv riemannZeta) T₁ T₂).im|
      ≤ |CB| * Real.log T₁ + Real.pi + |CB| * Real.log T₂ := by
    have hlog₁0 : 0 ≤ Real.log T₁ := Real.log_nonneg h1T₁
    have hlog₂0 : 0 ≤ Real.log T₂ := Real.log_nonneg (by linarith)
    unfold halfContour
    have eim : ((∫ σ in (1/2:ℝ)..2, logDeriv riemannZeta (σ + T₁ * I))
        + (∫ t in T₁..T₂, logDeriv riemannZeta (2 + t * I)) * I
        - ∫ σ in (1/2:ℝ)..2, logDeriv riemannZeta (σ + T₂ * I)).im
        = (∫ σ in (1/2:ℝ)..2, logDeriv riemannZeta (σ + T₁ * I)).im
          + ((∫ t in T₁..T₂, logDeriv riemannZeta (2 + t * I)) * I).im
          - (∫ σ in (1/2:ℝ)..2, logDeriv riemannZeta (σ + T₂ * I)).im := by
      simp [Complex.add_im, Complex.sub_im]
    rw [eim]
    have hmulI : ((∫ t in T₁..T₂, logDeriv riemannZeta (2 + t * I)) * I).im
        = (∫ t in T₁..T₂, logDeriv riemannZeta (2 + t * I) * I).im :=
      congrArg Complex.im (intervalIntegral.integral_mul_const (μ := MeasureTheory.volume) I
        (fun t : ℝ => logDeriv riemannZeta (2 + t * I))).symm
    have h1 : |(∫ σ in (1/2:ℝ)..2, logDeriv riemannZeta (σ + T₁ * I)).im| ≤ |CB| * Real.log T₁ :=
      hbk1.trans (by
        have : CB * Real.log T₁ ≤ |CB| * Real.log T₁ :=
          mul_le_mul_of_nonneg_right (le_abs_self CB) hlog₁0
        linarith)
    have h2 : |(∫ σ in (1/2:ℝ)..2, logDeriv riemannZeta (σ + T₂ * I)).im| ≤ |CB| * Real.log T₂ :=
      hbk2.trans (by
        have : CB * Real.log T₂ ≤ |CB| * Real.log T₂ :=
          mul_le_mul_of_nonneg_right (le_abs_self CB) hlog₂0
        linarith)
    calc |(∫ σ in (1/2:ℝ)..2, logDeriv riemannZeta (σ + T₁ * I)).im
          + ((∫ t in T₁..T₂, logDeriv riemannZeta (2 + t * I)) * I).im
          - (∫ σ in (1/2:ℝ)..2, logDeriv riemannZeta (σ + T₂ * I)).im|
        ≤ |(∫ σ in (1/2:ℝ)..2, logDeriv riemannZeta (σ + T₁ * I)).im|
          + |((∫ t in T₁..T₂, logDeriv riemannZeta (2 + t * I)) * I).im|
          + |(∫ σ in (1/2:ℝ)..2, logDeriv riemannZeta (σ + T₂ * I)).im| := by
          exact (abs_sub _ _).trans (add_le_add (abs_add_le _ _) le_rfl)
      _ ≤ |CB| * Real.log T₁ + Real.pi + |CB| * Real.log T₂ := by
          rw [hmulI]
          have := hvert
          linarith
  -- μ-integral bookkeeping
  have hμint : ∀ a b : ℝ, IntervalIntegrable mu MeasureTheory.volume a b :=
    fun a b => hμc.intervalIntegrable a b
  have hμsplit : (∫ t in T₁..T₂, mu t)
      = (∫ t in T₁..T, mu t) + (∫ t in T..(2*T), mu t) + ∫ t in (2*T)..T₂, mu t := by
    have e1 : (∫ t in T₁..(2*T), mu t) = (∫ t in T₁..T, mu t) + ∫ t in T..(2*T), mu t :=
      (intervalIntegral.integral_add_adjacent_intervals (hμint T₁ T) (hμint T (2*T))).symm
    have e2 : (∫ t in T₁..T₂, mu t) = (∫ t in T₁..(2*T), mu t) + ∫ t in (2*T)..T₂, mu t :=
      (intervalIntegral.integral_add_adjacent_intervals (hμint T₁ (2*T)) (hμint (2*T) T₂)).symm
    rw [e2, e1]
  have hμwin : ∀ a b : ℝ, 1 ≤ a → a ≤ b → b ≤ 2*T + 1 → |b - a| ≤ 1 →
      |∫ t in a..b, mu t| ≤ 2 * CM * Real.log T := by
    intro a b ha hab hb hba
    have hbound : ∀ t ∈ Set.uIoc a b, ‖mu t‖ ≤ CM * Real.log (2*T + 4) := by
      intro t ht
      rw [Set.uIoc_of_le hab] at ht
      have ht1 : 1 ≤ t := le_trans ha ht.1.le
      have ht2 : t ≤ 2*T + 1 := le_trans ht.2 hb
      rw [Real.norm_eq_abs]
      refine (hCM t ht1).trans ?_
      refine mul_le_mul_of_nonneg_left ?_ hCM0.le
      exact Real.log_le_log (by linarith) (by linarith)
    have := intervalIntegral.norm_integral_le_of_norm_le_const hbound
    rw [Real.norm_eq_abs] at this
    have hlog24 : Real.log (2*T + 4) ≤ 2 * Real.log T := by
      calc Real.log (2*T + 4) ≤ Real.log (T ^ 2) := Real.log_le_log (by linarith) (by nlinarith)
        _ = 2 * Real.log T := by rw [Real.log_pow]; push_cast; ring
    calc |∫ t in a..b, mu t| ≤ CM * Real.log (2*T+4) * |b - a| := this
      _ ≤ CM * (2 * Real.log T) * 1 := by
          refine mul_le_mul ?_ hba (abs_nonneg _) (by positivity)
          exact mul_le_mul_of_nonneg_left hlog24 hCM0.le
      _ = 2 * CM * Real.log T := by ring
  have hμ1 : |∫ t in T₁..T, mu t| ≤ 2 * CM * Real.log T :=
    hμwin T₁ T h1T₁ hT₁b (by linarith) (by rw [abs_of_nonneg (by linarith)]; linarith)
  have hμ2 : |∫ t in (2*T)..T₂, mu t| ≤ 2 * CM * Real.log T :=
    hμwin (2*T) T₂ (by linarith) hT₂a (by linarith) (by rw [abs_of_nonneg (by linarith)]; linarith)
  have hintmu := hCμ T (by linarith)
  have hT0 : (0:ℝ) < T := by linarith
  have hCμT : Cμ / T ≤ |Cμ| := by
    calc Cμ / T ≤ |Cμ| / T := by gcongr; exact le_abs_self _
      _ ≤ |Cμ| / 1 := by
          apply div_le_div_of_nonneg_left (abs_nonneg _) one_pos
          linarith
      _ = |Cμ| := div_one _
  -- final assembly
  have hπ : (0:ℝ) < Real.pi := Real.pi_pos
  have hπ1 : (1:ℝ) ≤ Real.pi := by linarith [Real.pi_gt_three]
  have hkey : (Ncount T (2*T) : ℝ) - T * ell1 T / (2 * Real.pi)
      = (1/Real.pi) * (halfContour (logDeriv riemannZeta) T₁ T₂).im
        + ((∫ t in T₁..T, mu t) + (∫ t in (2*T)..T₂, mu t)
        + ((∫ t in T..(2*T), mu t) - T * ell1 T / (2 * Real.pi)))
        - ((Ncount T₁ T : ℝ) + (Ncount (2*T) T₂ : ℝ)) := by
    have hΛim : (1/Real.pi) * (halfContour (logDeriv completedRiemannZeta) T₁ T₂).im
        = (1/Real.pi) * (halfContour (logDeriv riemannZeta) T₁ T₂).im
          + (1/Real.pi) * (halfContour (logDeriv Complex.Gammaℝ) T₁ T₂).im := by
      rw [hsplit, Complex.add_im]
      ring
    have h5 : (Ncount T₁ T₂ : ℝ)
        = (1/Real.pi) * (halfContour (logDeriv riemannZeta) T₁ T₂).im
          + ∫ t in T₁..T₂, mu t := by
      rw [hN, hΛim, hgam]
    rw [hμsplit] at h5
    have h6 := hadd
    linarith
  have hlogT₁ : Real.log T₁ ≤ Real.log T := Real.log_le_log (by linarith) hT₁b
  have hlogT₂ : Real.log T₂ ≤ 2 * Real.log T := by
    calc Real.log T₂ ≤ Real.log (T^2) := Real.log_le_log (by linarith) (by nlinarith)
      _ = 2 * Real.log T := by rw [Real.log_pow]; push_cast; ring
  -- bound each piece
  have hNc1 : (0:ℝ) ≤ (Ncount T₁ T : ℝ) := Nat.cast_nonneg _
  have hNc2 : (0:ℝ) ≤ (Ncount (2*T) T₂ : ℝ) := Nat.cast_nonneg _
  have hA : |(1/Real.pi) * (halfContour (logDeriv riemannZeta) T₁ T₂).im|
      ≤ 3 * |CB| * Real.log T + 1 := by
    rw [abs_mul, abs_of_pos (by positivity : (0:ℝ) < 1/Real.pi)]
    have step1 : (1/Real.pi) * |(halfContour (logDeriv riemannZeta) T₁ T₂).im|
        ≤ (1/Real.pi) * (|CB| * Real.log T₁ + Real.pi + |CB| * Real.log T₂) := by
      exact mul_le_mul_of_nonneg_left hζbound (by positivity)
    have hfrac : (1:ℝ)/Real.pi ≤ 1 := by
      rw [div_le_one hπ]
      exact hπ1
    have e1 : (1/Real.pi) * (|CB| * Real.log T₁) ≤ |CB| * Real.log T := by
      calc (1/Real.pi) * (|CB| * Real.log T₁) ≤ 1 * (|CB| * Real.log T₁) := by
            apply mul_le_mul_of_nonneg_right hfrac
            exact mul_nonneg (abs_nonneg _) (Real.log_nonneg h1T₁)
        _ = |CB| * Real.log T₁ := one_mul _
        _ ≤ |CB| * Real.log T := mul_le_mul_of_nonneg_left hlogT₁ (abs_nonneg _)
    have e2 : (1/Real.pi) * Real.pi = 1 := by field_simp
    have e3 : (1/Real.pi) * (|CB| * Real.log T₂) ≤ 2 * |CB| * Real.log T := by
      calc (1/Real.pi) * (|CB| * Real.log T₂) ≤ 1 * (|CB| * Real.log T₂) := by
            apply mul_le_mul_of_nonneg_right hfrac
            exact mul_nonneg (abs_nonneg _) (Real.log_nonneg (by linarith))
        _ = |CB| * Real.log T₂ := one_mul _
        _ ≤ |CB| * (2 * Real.log T) := mul_le_mul_of_nonneg_left hlogT₂ (abs_nonneg _)
        _ = 2 * |CB| * Real.log T := by ring
    calc (1/Real.pi) * |(halfContour (logDeriv riemannZeta) T₁ T₂).im|
        ≤ (1/Real.pi) * (|CB| * Real.log T₁) + (1/Real.pi) * Real.pi
          + (1/Real.pi) * (|CB| * Real.log T₂) := by
          rw [← mul_add, ← mul_add]
          exact step1
      _ ≤ |CB| * Real.log T + 1 + 2 * |CB| * Real.log T := by
          rw [e2]
          linarith
      _ = 3 * |CB| * Real.log T + 1 := by ring
  have hD : |(∫ t in T..(2*T), mu t) - T * ell1 T / (2 * Real.pi)| ≤ |Cμ| * Real.log T := by
    calc |(∫ t in T..(2*T), mu t) - T * ell1 T / (2 * Real.pi)| ≤ Cμ / T := hintmu
      _ ≤ |Cμ| := hCμT
      _ = |Cμ| * 1 := (mul_one _).symm
      _ ≤ |Cμ| * Real.log T := mul_le_mul_of_nonneg_left hlogT (abs_nonneg _)
  -- put it together
  simp only [zetaZeroConfig_N]
  rw [show T / (2 * Real.pi) * ell1 T = T * ell1 T / (2 * Real.pi) by ring, hkey]
  have htri : |(1/Real.pi) * (halfContour (logDeriv riemannZeta) T₁ T₂).im
        + ((∫ t in T₁..T, mu t) + (∫ t in (2*T)..T₂, mu t)
        + ((∫ t in T..(2*T), mu t) - T * ell1 T / (2 * Real.pi)))
        - ((Ncount T₁ T : ℝ) + (Ncount (2*T) T₂ : ℝ))|
      ≤ |(1/Real.pi) * (halfContour (logDeriv riemannZeta) T₁ T₂).im|
        + (|∫ t in T₁..T, mu t| + |∫ t in (2*T)..T₂, mu t|
        + |(∫ t in T..(2*T), mu t) - T * ell1 T / (2 * Real.pi)|)
        + ((Ncount T₁ T : ℝ) + (Ncount (2*T) T₂ : ℝ)) := by
    have t1 := abs_sub (((1/Real.pi) * (halfContour (logDeriv riemannZeta) T₁ T₂).im
        + ((∫ t in T₁..T, mu t) + (∫ t in (2*T)..T₂, mu t)
        + ((∫ t in T..(2*T), mu t) - T * ell1 T / (2 * Real.pi)))))
      (((Ncount T₁ T : ℝ) + (Ncount (2*T) T₂ : ℝ)))
    have t2 := abs_add_le ((1/Real.pi) * (halfContour (logDeriv riemannZeta) T₁ T₂).im)
      ((∫ t in T₁..T, mu t) + (∫ t in (2*T)..T₂, mu t)
        + ((∫ t in T..(2*T), mu t) - T * ell1 T / (2 * Real.pi)))
    have t3 := abs_add_le ((∫ t in T₁..T, mu t) + (∫ t in (2*T)..T₂, mu t))
      ((∫ t in T..(2*T), mu t) - T * ell1 T / (2 * Real.pi))
    have t4 := abs_add_le (∫ t in T₁..T, mu t) (∫ t in (2*T)..T₂, mu t)
    have t5 : |(Ncount T₁ T : ℝ) + (Ncount (2*T) T₂ : ℝ)|
        = (Ncount T₁ T : ℝ) + (Ncount (2*T) T₂ : ℝ) := abs_of_nonneg (by positivity)
    linarith
  refine htri.trans ?_
  linarith [hA, hμ1, hμ2, hD, hw1, hw2]

/-- The assembly, stated against the two Backlund bounds as explicit hypotheses (∃-form; from
`rvM_main_param` instantiated with the ∃-witnesses of Backlund, the local count, H-Γ's int_mu, μ ≪ log, continuity). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variante1e5eb11901595177457869b70d6d7dbb0a5c2c27ede33955efafec5f93c301f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variante1e5eb11901595177457869b70d6d7dbb0a5c2c27ede33955efafec5f93c301f.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54bffbb76eda3bf06bc919689e7c5010a9e830d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

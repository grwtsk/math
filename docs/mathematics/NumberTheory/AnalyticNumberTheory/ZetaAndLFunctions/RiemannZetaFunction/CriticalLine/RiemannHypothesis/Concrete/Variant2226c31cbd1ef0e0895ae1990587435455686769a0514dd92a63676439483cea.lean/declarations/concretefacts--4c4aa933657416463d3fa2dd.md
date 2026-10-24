# concreteFacts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8601f5bb-ab5c-1cbe-e792-67d3611b9eef",
  "kind": "theorem",
  "lexical_name": "concreteFacts",
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
  "slug": "concretefacts--4c4aa933657416463d3fa2dd",
  "source": {
    "blob": "0b7cd22ca7a05a27b73662f0731932eb76fffc5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 218,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c4aa933657416463d3fa2dd54bd44ce99f59fa4aa55490476967ec19643561f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8601f5bb-ab5c-1cbe-e792-67d3611b9eef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem concreteFacts (hP : P.Valid) (hlam1 : P.lam < 1) (hwin : AdmFamily P win cW)
    (hF : Fam.Hyps) (hΓ : Zeta23.GammaFacts) (hMV : ∃ C : ℝ, 0 < C ∧ Zeta23.MVHilbert C)
    (hPP : PPInput) (hN : EvBound (fun T => Ncnt T - T * ell1 T / (2 * π)) l) :
    FactsXi (concreteData P win Fam cPi Ncnt) := by
  have hlam : 0 < P.lam ∧ P.lam ≤ 1 := ⟨hP.lam_pos, hP.lam_le_one⟩
  have hcheb := Zeta23.Cheb.chebyshevMertens
  obtain ⟨T₁, hT₁⟩ := localHypsCore_eventually hP hwin
  obtain ⟨Tw, hTw⟩ := id hwin
  have hCore : ∀ᶠ T in atTop, LocalHypsCore cW (P.toSetting T) (Fw P win T) :=
    eventually_atTop.2 ⟨T₁, hT₁⟩
  have hAdm : ∀ᶠ T in atTop,
      AdmWindow (win T) (P.L T) P.w cW ∧ 1 / 2 ≤ AdmWindow.bv (win T) (P.L T) :=
    eventually_atTop.2 ⟨Tw, hTw⟩
  obtain ⟨C₁, hC₁0, hS1⟩ := S1_eventually hP hF
  obtain ⟨C₂, hC₂0, hS2⟩ := sumSq_eventually hP hF
  obtain ⟨C₃, hC₃0, hS3⟩ := sumSqDiv_eventually hP hF
  have hreg := regime_eventually hP
  have hc1 : ∀ T, Fam.c T 1 = 0 := hF.c_one
  have hS1nn : ∀ T, 0 ≤ S1 (Fam.c T) (P.X T) := fun T => S1_nonneg _ _
  refine
    { lam_pos := hP.lam_pos
      lam_lt_one := hlam1
      one_le_w := hP.one_le_w
      ab_range := ?ab
      rvm := hN
      muints2 := ?mu2
      prop_trace := ?tr
      lem_ends := ?ends
      Msplit := ?msplit
      prop_mumu := ?mumu
      prop_PP := ?pp
      sumJ := ?sumJ
      cross_muP := ?cmuP
      cross_muPi := ?cmuPi
      cross_PPi := ?cPPi
      cross_PiPi := ?cPiPi }
  case ab =>
    filter_upwards [hAdm, hreg] with T ⟨hW, hb⟩ ⟨_, hl, _, hL, _, hLl, _⟩
    refine ⟨hb, hW.bv_le_av, hW.av_le_one, ?_⟩
    show 0 ≤ 2 / P.L T ^ 3 * l T *
      ∫ y in (0:ℝ)..(P.L T), (Fam.D (y / l T) * AdmWindow.gv (win T) y)
    have hl0 : 0 < l T := by linarith
    refine mul_nonneg (by positivity)
      (intervalIntegral.integral_nonneg (by linarith) fun y hy => ?_)
    refine mul_nonneg (hF.D_nonneg _ ⟨div_nonneg hy.1 hl0.le, ?_⟩) (hW.gv_nonneg y)
    rw [div_le_one hl0]; exact hy.2.trans hLl
  case mu2 =>
    obtain ⟨C, T₂, hC⟩ := hΓ.int_mu_sq
    refine ⟨max C 1, by positivity, max T₂ 0, fun T hT =>
      (hC T ((le_max_left _ _).trans hT)).trans ?_⟩
    have hT0 : 0 ≤ T := (le_max_right _ _).trans hT
    rw [mul_div_assoc]
    refine mul_le_mul_of_nonneg_right (le_max_left _ _) ?_
    exact div_nonneg (div_nonneg (mul_nonneg hT0 (sq_nonneg _)) (by positivity)) (sq_nonneg _)
  case tr =>
    obtain ⟨A, hA, hNA⟩ := hN.eventually_le
    obtain ⟨C, T₂, hC⟩ := prop_trace_W cW P.lam hΓ hlam cPi A
    refine EvBound.of_eventually_le (c := max C 0 * (1 + C₁) + 1) (by positivity) ?_
    filter_upwards [eventually_of_core hT₁ (Q := fun p F => ∀ c : ℕ → ℂ, c 1 = 0 → ∀ N : ℝ,
        |N - p.T * p.ell1 / (2 * π)| ≤ A * p.l →
        |trGtW cPi c p F - F.a * p.L * N| ≤ C * (p.L * Real.sqrt p.X + p.L * S1 c p.X))
        (fun p F hl hT hF' c => hC p F c hl hT hF'), hNA, hS1, hreg]
      with T h hNT hS1T ⟨hT1, hl, _, hL, hX2, hLl, _⟩
    have h' := h (Fam.c T) (hc1 T) (Ncnt T) hNT
    show |trGtW cPi (Fam.c T) (P.toSetting T) (Fw P win T)
        - AdmWindow.av (win T) (P.L T) * P.L T * Ncnt T|
      ≤ (max C 0 * (1 + C₁) + 1) * (P.L T * Real.sqrt (P.X T) * l T)
    refine h'.trans ?_
    have hsX : 0 ≤ Real.sqrt (P.X T) := Real.sqrt_nonneg _
    have hx : 0 ≤ P.L T * Real.sqrt (P.X T) + P.L T * S1 (Fam.c T) (P.X T) := by
      have := hS1nn T; positivity
    have hm : 0 ≤ max C 0 := le_max_right _ _
    calc C * (P.L T * Real.sqrt (P.X T) + P.L T * S1 (Fam.c T) (P.X T))
        ≤ max C 0 * (P.L T * Real.sqrt (P.X T) + P.L T * S1 (Fam.c T) (P.X T)) :=
          mul_le_mul_of_nonneg_right (le_max_left _ _) hx
      _ ≤ max C 0 * (P.L T * Real.sqrt (P.X T) + P.L T * (C₁ * Real.sqrt (P.X T) * l T)) := by
          gcongr
      _ = max C 0 * (1 + C₁ * l T) * (P.L T * Real.sqrt (P.X T)) := by ring
      _ ≤ (max C 0 * (1 + C₁) + 1) * (P.L T * Real.sqrt (P.X T) * l T) := by
          have h0 : 0 ≤ P.L T * Real.sqrt (P.X T) := by positivity
          nlinarith [mul_nonneg hm h0, mul_nonneg (mul_nonneg hm hC₁0) h0,
            mul_nonneg (mul_nonneg hm h0) (by linarith : (0:ℝ) ≤ l T - 1)]
  case ends =>
    obtain ⟨C, T₂, hC⟩ := lem_ends_W (cϱ := cW) hΓ hlam cPi
    set K := 2 * (6 + 3 * |cPi - 1| + C₁) ^ 2 with hK
    refine EvBound.of_eventually_le (c := max C 0 * K + 1) (by positivity) ?_
    filter_upwards [eventually_of_core hT₁ (Q := fun p F => ∀ c : ℕ → ℂ,
        |trGt2W cPi c p F - MtotalW cPi c p F| ≤ C * (p.L * p.l * Real.log p.l * BcW cPi c p ^ 2))
        (fun p F hl hT hF' c => hC p F c hl hT hF'), hS1, hreg]
      with T h hS1T ⟨hT1, hl, hlog, hL, hX2, hLl, _⟩
    have h' := h (Fam.c T)
    have hB : BcW cPi (Fam.c T) (P.toSetting T) ^ 2 ≤ K * (l T ^ 2 * (1 + P.X T)) := by
      rw [hK]
      exact BcW_sq_le (cPi := cPi) (c := Fam.c T) (p := P.toSetting T) hl
        (by show 1 ≤ P.X T; linarith) hC₁0 hS1T
    show |trGt2W cPi (Fam.c T) (P.toSetting T) (Fw P win T)
        - MtotalW cPi (Fam.c T) (P.toSetting T) (Fw P win T)| ≤ (max C 0 * K + 1) * Rxi P T
    refine h'.trans ?_
    have hR0 : 0 ≤ Rxi P T := by unfold Rxi; positivity
    have hx : 0 ≤ P.L T * l T * Real.log (l T) * BcW cPi (Fam.c T) (P.toSetting T) ^ 2 := by
      positivity
    calc C * (P.L T * l T * Real.log (l T) * BcW cPi (Fam.c T) (P.toSetting T) ^ 2)
        ≤ max C 0 * (P.L T * l T * Real.log (l T) * BcW cPi (Fam.c T) (P.toSetting T) ^ 2) :=
          mul_le_mul_of_nonneg_right (le_max_left _ _) hx
      _ ≤ max C 0 * (P.L T * l T * Real.log (l T) * (K * (l T ^ 2 * (1 + P.X T)))) := by
          gcongr
      _ = max C 0 * K * Rxi P T := by unfold Rxi; ring
      _ ≤ (max C 0 * K + 1) * Rxi P T := by nlinarith
  case msplit =>
    filter_upwards [hCore] with T hF'
    exact eq_Msplit_W hΓ cPi (Fam.c T) (P.toSetting T) (Fw P win T) hF'
  case mumu =>
    obtain ⟨C, T₂, hC⟩ := PrimeSide.prop_mumu cW P.lam hΓ hcheb hlam
    refine EvBound.of_eventually_le (c := max C 1) (by positivity) ?_
    filter_upwards [eventually_of_core hT₁ hC, hreg] with T h ⟨hT1, hl, hlog, hL, hX2, hLl, _⟩
    show |Mform (Fw P win T).Phi T Zeta23.mu Zeta23.mu
        - 2 * π * AdmWindow.bv (win T) (P.L T) * P.L T * ∫ τ in T..(2 * T), Zeta23.mu τ ^ 2|
      ≤ max C 1 * (l T ^ 2 * Real.log (P.L T))
    refine h.trans (mul_le_mul_of_nonneg_right (le_max_left _ _) ?_)
    exact mul_nonneg (sq_nonneg _) (Real.log_nonneg hL)
  case pp =>
    obtain ⟨CMV, hCMV, hMV'⟩ := hMV
    obtain ⟨K, hK⟩ := hPP CMV cW hMV' hCMV
    refine EvBound.of_eventually_le (c := max K 0 * (C₃ + C₂ + C₁ ^ 2) + 1) (by positivity) ?_
    filter_upwards [hCore, hS1, hS2, hS3, hreg] with T hF' hS1T hS2T hS3T ⟨hT1, hl, _, hL, hX2, _, _⟩
    have h := hK (P.toSetting T) (Fw P win T) (Fam.c T) hF' hT1 (hc1 T)
    show |Mform (Fw P win T).Phi T (Pc (P.X T) (Fam.c T)) (Pc (P.X T) (Fam.c T))
        - T / π * sumW2g (Fam.c T) (P.X T) (AdmWindow.gv (win T))|
      ≤ (max K 0 * (C₃ + C₂ + C₁ ^ 2) + 1) * (P.L T * l T ^ 2 * P.X T)
    refine h.trans ?_
    have hsum0 : 0 ≤ sumSqDivW (Fam.c T) (P.X T) + sumSqW (Fam.c T) (P.X T)
        + S1 (Fam.c T) (P.X T) ^ 2 := by
      have := sumSqDivW_nonneg (Fam.c T) (P.X T)
      have := sumSqW_nonneg (Fam.c T) (P.X T)
      positivity
    have hS1sq : S1 (Fam.c T) (P.X T) ^ 2 ≤ C₁ ^ 2 * P.X T * l T ^ 2 := by
      calc S1 (Fam.c T) (P.X T) ^ 2 ≤ (C₁ * Real.sqrt (P.X T) * l T) ^ 2 :=
            pow_le_pow_left₀ (hS1nn T) hS1T 2
        _ = C₁ ^ 2 * P.X T * l T ^ 2 := by
            rw [mul_pow, mul_pow, Real.sq_sqrt (by linarith)]
    have hm : 0 ≤ max K 0 := le_max_right _ _
    calc K * P.L T * (sumSqDivW (Fam.c T) (P.X T) + sumSqW (Fam.c T) (P.X T)
          + S1 (Fam.c T) (P.X T) ^ 2)
        ≤ max K 0 * P.L T * (sumSqDivW (Fam.c T) (P.X T) + sumSqW (Fam.c T) (P.X T)
          + S1 (Fam.c T) (P.X T) ^ 2) := by
          apply mul_le_mul_of_nonneg_right _ hsum0
          exact mul_le_mul_of_nonneg_right (le_max_left _ _) (by linarith)
      _ ≤ max K 0 * P.L T * (C₃ * l T ^ 2 + C₂ * P.X T * l T ^ 2 + C₁ ^ 2 * P.X T * l T ^ 2) := by
          gcongr
      _ ≤ max K 0 * P.L T * (C₃ * P.X T * l T ^ 2 + C₂ * P.X T * l T ^ 2
          + C₁ ^ 2 * P.X T * l T ^ 2) := by
          gcongr
          nlinarith [sq_nonneg (l T), mul_nonneg hC₃0 (sq_nonneg (l T))]
      _ = max K 0 * (C₃ + C₂ + C₁ ^ 2) * (P.L T * l T ^ 2 * P.X T) := by ring
      _ ≤ (max K 0 * (C₃ + C₂ + C₁ ^ 2) + 1) * (P.L T * l T ^ 2 * P.X T) := by
          have : 0 ≤ P.L T * l T ^ 2 * P.X T := by positivity
          nlinarith
  case sumJ =>
    intro ε hε
    obtain ⟨T₀, hT₀⟩ := hF.H3 (ε / 2) (by positivity)
    filter_upwards [hAdm, hreg, eventually_ge_atTop T₀] with T ⟨hW, hb⟩ ⟨hT1, hl, _, hL, hX2, hLl, _⟩ hT
    have hl0 : 0 < l T := by linarith
    have hL0 : 0 < P.L T := by linarith
    have hg := gv_deriv_facts hW
    have hS : ∀ t : ℝ, 1 ≤ t → t ≤ Real.exp (P.L T) →
        |(∑ k ∈ Finset.Ioc 0 ⌊t⌋₊, ‖Fam.c T k‖ ^ 2 / k)
          - l T ^ 2 * ∫ s in (0:ℝ)..(Real.log t / l T), Fam.D s| ≤ ε / 2 * l T ^ 2 := by
      intro t ht1 ht2
      have ht0 : 0 < t := by linarith
      have hy0 : 0 ≤ Real.log t := Real.log_nonneg ht1
      have hyL : Real.log t ≤ P.L T := by
        rw [← Real.log_exp (P.L T)]; exact Real.log_le_log ht0 ht2
      have := hT₀ T hT (Real.log t) hy0 (hyL.trans hLl)
      rwa [Real.exp_log ht0] at this
    have key := abel_sum_density (c := fun k => ‖Fam.c T k‖ ^ 2 / k) (by simp) hF.D_cont hl0 hL0
      hS hg.1 hg.2.1 hg.2.2 (fun y hy => hW.gv_eq_zero (by rw [abs_of_nonneg (by linarith)]; exact hy))
    show |sumW2g (Fam.c T) (P.X T) (AdmWindow.gv (win T))
        - P.L T ^ 3 / 2 * (2 / P.L T ^ 3 * l T *
            ∫ y in (0:ℝ)..(P.L T), (Fam.D (y / l T) * AdmWindow.gv (win T) y))|
      ≤ ε * (l T ^ 2 * P.L T)
    have e : P.L T ^ 3 / 2 * (2 / P.L T ^ 3 * l T *
        ∫ y in (0:ℝ)..(P.L T), (Fam.D (y / l T) * AdmWindow.gv (win T) y))
        = l T * ∫ y in (0:ℝ)..(P.L T), (Fam.D (y / l T) * AdmWindow.gv (win T) y) := by
      field_simp
    rw [e]
    have hX : Real.exp (P.L T) = P.X T := rfl
    rw [hX] at key
    refine (le_of_eq ?_).trans (key.trans (le_of_eq (by ring)))
    rfl
  case cmuP =>
    obtain ⟨C, T₂, hC⟩ := cross_muPc (cϱ := cW) hΓ hlam
    refine EvBound.of_eventually_le (c := max C 0 * C₁ + 1) (by positivity) ?_
    filter_upwards [eventually_of_core hT₁ (Q := fun p F => ∀ c : ℕ → ℂ, c 1 = 0 →
        |Mform F.Phi p.T Zeta23.mu (Pc p.X c)| ≤ C * (p.l * p.L * S1 c p.X))
        (fun p F hl hT hF' c hc => hC p F c hl hT hF' hc), hS1, hreg]
      with T h hS1T ⟨hT1, hl, _, hL, hX2, _, _⟩
    have h' := h (Fam.c T) (hc1 T)
    show |Mform (Fw P win T).Phi T Zeta23.mu (Pc (P.X T) (Fam.c T))|
      ≤ (max C 0 * C₁ + 1) * (P.L T * l T ^ 2 * Real.sqrt (P.X T))
    refine h'.trans ?_
    have hm : 0 ≤ max C 0 := le_max_right _ _
    have hx : 0 ≤ l T * P.L T * S1 (Fam.c T) (P.X T) := by have := hS1nn T; positivity
    calc C * (l T * P.L T * S1 (Fam.c T) (P.X T))
        ≤ max C 0 * (l T * P.L T * S1 (Fam.c T) (P.X T)) :=
          mul_le_mul_of_nonneg_right (le_max_left _ _) hx
      _ ≤ max C 0 * (l T * P.L T * (C₁ * Real.sqrt (P.X T) * l T)) := by gcongr
      _ = max C 0 * C₁ * (P.L T * l T ^ 2 * Real.sqrt (P.X T)) := by ring
      _ ≤ (max C 0 * C₁ + 1) * (P.L T * l T ^ 2 * Real.sqrt (P.X T)) := by
          have : 0 ≤ P.L T * l T ^ 2 * Real.sqrt (P.X T) := by positivity
          nlinarith
  case cmuPi =>
    obtain ⟨C, T₂, hC⟩ := PrimeSide.prop_cross_muPi cW P.lam hΓ hcheb hlam
    refine EvBound.of_eventually_le (c := |cPi| * max C 0 + 1) (by positivity) ?_
    filter_upwards [eventually_of_core hT₁ hC, hreg] with T h ⟨hT1, hl, _, hL, hX2, _, _⟩
    show |cPi * Mform (Fw P win T).Phi T Zeta23.mu (Zeta23.PiX (P.X T))|
      ≤ (|cPi| * max C 0 + 1) * (l T * P.L T * Real.sqrt (P.X T))
    rw [abs_mul]
    have hx : 0 ≤ l T * P.L T * Real.sqrt (P.X T) := by positivity
    calc |cPi| * |Mform (Fw P win T).Phi T Zeta23.mu (Zeta23.PiX (P.X T))|
        ≤ |cPi| * (max C 0 * (l T * P.L T * Real.sqrt (P.X T))) := by
          refine mul_le_mul_of_nonneg_left (h.trans ?_) (abs_nonneg _)
          exact mul_le_mul_of_nonneg_right (le_max_left _ _) hx
      _ ≤ (|cPi| * max C 0 + 1) * (l T * P.L T * Real.sqrt (P.X T)) := by nlinarith
  case cPPi =>
    refine EvBound.of_eventually_le (c := |cPi| * 6 * C₁ + 1) (by positivity) ?_
    filter_upwards [hCore, hS1, hreg] with T hF' hS1T ⟨hT1, hl, _, hL, hX2, _, _⟩
    have hT0 : 0 < (P.toSetting T).T := by show 0 < T; linarith
    have h := cross_PcPi_le hF' hT0 (Fam.c T)
    show |cPi * Mform (Fw P win T).Phi T (Pc (P.X T) (Fam.c T)) (Zeta23.PiX (P.X T))|
      ≤ (|cPi| * 6 * C₁ + 1) * (P.L T * P.X T * l T)
    rw [abs_mul]
    have hsX : Real.sqrt (P.X T) * Real.sqrt (P.X T) = P.X T := Real.mul_self_sqrt (by linarith)
    have hx : 0 ≤ P.L T * P.X T * l T := by positivity
    calc |cPi| * |Mform (Fw P win T).Phi T (Pc (P.X T) (Fam.c T)) (Zeta23.PiX (P.X T))|
        ≤ |cPi| * (6 * S1 (Fam.c T) (P.X T) * (P.L T * Real.sqrt (P.X T))) :=
          mul_le_mul_of_nonneg_left h (abs_nonneg _)
      _ ≤ |cPi| * (6 * (C₁ * Real.sqrt (P.X T) * l T) * (P.L T * Real.sqrt (P.X T))) := by
          gcongr
      _ = |cPi| * 6 * C₁ * (P.L T * (Real.sqrt (P.X T) * Real.sqrt (P.X T)) * l T) := by ring
      _ = |cPi| * 6 * C₁ * (P.L T * P.X T * l T) := by rw [hsX]
      _ ≤ (|cPi| * 6 * C₁ + 1) * (P.L T * P.X T * l T) := by nlinarith
  case cPiPi =>
    obtain ⟨C, T₂, hC⟩ := PrimeSide.prop_cross_PiPi cW P.lam hΓ hcheb hlam
    refine EvBound.of_eventually_le (c := cPi ^ 2 * max C 0 + 1) (by positivity) ?_
    filter_upwards [eventually_of_core hT₁ hC, hreg] with T h ⟨hT1, hl, _, hL, hX2, _, _⟩
    show |cPi ^ 2 * Mform (Fw P win T).Phi T (Zeta23.PiX (P.X T)) (Zeta23.PiX (P.X T))|
      ≤ (cPi ^ 2 * max C 0 + 1) * (P.L T * P.X T / T)
    rw [abs_mul, abs_of_nonneg (sq_nonneg cPi)]
    have hx : 0 ≤ P.L T * P.X T / T := by positivity
    calc cPi ^ 2 * |Mform (Fw P win T).Phi T (Zeta23.PiX (P.X T)) (Zeta23.PiX (P.X T))|
        ≤ cPi ^ 2 * (max C 0 * (P.L T * P.X T / T)) := by
          refine mul_le_mul_of_nonneg_left (h.trans ?_) (sq_nonneg _)
          exact mul_le_mul_of_nonneg_right (le_max_left _ _) hx
      _ ≤ (cPi ^ 2 * max C 0 + 1) * (P.L T * P.X T / T) := by nlinarith

/-- **The ξ′ two-trace package for the concrete data** (window family × coefficient family). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b7cd22ca7a05a27b73662f0731932eb76fffc5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

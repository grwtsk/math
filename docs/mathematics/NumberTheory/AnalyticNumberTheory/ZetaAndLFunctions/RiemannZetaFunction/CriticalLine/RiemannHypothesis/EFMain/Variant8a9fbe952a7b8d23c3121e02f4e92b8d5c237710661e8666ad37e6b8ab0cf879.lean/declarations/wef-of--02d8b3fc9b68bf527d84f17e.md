# wEF_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "269b3177e0c20517884d2f537ea9802e25e06d96",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a9fbe952a7b8d23c3121e02f4e92b8d5c237710661e8666ad37e6b8ab0cf879.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:286419e9-18ec-dfac-5e71-7090d119a680",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f17c2f6e-ebb0-6d98-555c-dbc28f1f9bda",
  "kind": "theorem",
  "lexical_name": "wEF_of",
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
  "slug": "wef-of--02d8b3fc9b68bf527d84f17e",
  "source": {
    "blob": "269b3177e0c20517884d2f537ea9802e25e06d96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 169,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variant8a9fbe952a7b8d23c3121e02f4e92b8d5c237710661e8666ad37e6b8ab0cf879.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02d8b3fc9b68bf527d84f17ef87fb2fa76b9e9c19ef1535f748fca48f3785431",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variant8a9fbe952a7b8d23c3121e02f4e92b8d5c237710661e8666ad37e6b8ab0cf879.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f17c2f6e-ebb0-6d98-555c-dbc28f1f9bda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wEF_of {t₀ : ℝ} (hZ : WZerosInStrip t₀) (hs : WSeam t₀) (_hR : RiemannVonMangoldt (wZeros hZ hs))
    (hLF : LineFactsW) (hCF : ContourFactsW hZ hs) (hCO : CoeffFactsC)
    (Pf : ℝ → Params) (hPf : FamilyHyps Pf) : WEF (wZeros hZ hs) Pf := by
  -- (0) the line
  obtain ⟨c, hc1, hc2, hWc⟩ := exists_zeroFree_line t₀
  have hc1' : 1 < c := by linarith
  have ht₀ : 0 < t₀ := hs.pos
  have hWline : ∀ t : ℝ, hardyW ((c:ℂ) + t * I) ≠ 0 := by
    intro t
    by_cases ht : |t| < t₀
    · exact hWc _ (by simp) (by simpa using ht)
    · intro h0
      have := (hZ _ h0 (by simp; linarith [not_lt.mp ht])).2
      simp at this; linarith
  have hWc' := hardyW_ne_zero_reflect hc1' (by linarith) hWc
  obtain ⟨hE2, hFr, hline⟩ := hLF c hc1 hc2 hWline
  obtain ⟨⟨E₀, hE₀mem, hWL'⟩, hLm⟩ := hCF c hc1 hc2 hWc hWc' hline
  -- (1) constants
  obtain ⟨lam, Cφ, T₁, hlam0, hlam1, hCφ0, hT₁0, hper⟩ := hPf.perT
  obtain ⟨Cw, Tw, hCw0, hkf⟩ := HW.kfun_facts hPf
  obtain ⟨⟨R₀, hR₀0, hco⟩, hconj⟩ := hCO
  obtain ⟨K, TJ, hK0, hTJ8, hJ⟩ := JcorrW_estimate hc1' hc2 hE2 hFr
  obtain ⟨Ca, Ta, hCa0, habs⟩ := pow_log_absorb lam hlam1 hlam0 (A := 1) zero_le_one
  obtain ⟨M₀, hM₀⟩ : ∃ M₀ : ℝ, M₀ = ∑ ρ ∈ E₀, (analyticOrderNatAt hardyW ρ : ℝ) := ⟨_, rfl⟩
  have hM₀0 : 0 ≤ M₀ := by rw [hM₀]; exact Finset.sum_nonneg fun _ _ => Nat.cast_nonneg _
  obtain ⟨δ, hδ⟩ : ∃ δ : ℝ, δ = (1 - 3 * lam / 4) / 2 := ⟨_, rfl⟩
  have hδ0 : 0 < δ := by rw [hδ]; nlinarith
  obtain ⟨T₀, hT₀⟩ : ∃ T₀ : ℝ, T₀ = max (max (max T₁ Tw) (max TJ Ta)) (max (Real.exp (2 * (R₀ + 1))) (2 * t₀)) :=
    ⟨_, rfl⟩
  refine ⟨2 * K * Cw * Ca + 16 * Cw * Ca * M₀, δ, T₀, hδ0, fun T hT k l => ?_⟩
  rw [hT₀] at hT
  have hT₁ : T₁ ≤ T := le_trans (le_trans (le_trans (le_max_left _ _) (le_max_left _ _)) (le_max_left _ _)) hT
  have hTw : Tw ≤ T := le_trans (le_trans (le_trans (le_max_right _ _) (le_max_left _ _)) (le_max_left _ _)) hT
  have hTJ : TJ ≤ T := le_trans (le_trans (le_trans (le_max_left _ _) (le_max_right _ _)) (le_max_left _ _)) hT
  have hTa : Ta ≤ T := le_trans (le_trans (le_trans (le_max_right _ _) (le_max_right _ _)) (le_max_left _ _)) hT
  have hTR : Real.exp (2 * (R₀ + 1)) ≤ T := le_trans (le_trans (le_max_left _ _) (le_max_right _ _)) hT
  have hTt₀ : 2 * t₀ ≤ T := le_trans (le_trans (le_max_right _ _) (le_max_right _ _)) hT
  have hT8 : 8 ≤ T := le_trans hTJ8 hTJ
  have hT0 : 0 < T := by linarith
  -- per-height facts
  obtain ⟨-, hL1, -, hX, hLlog, hX34, hφC2, hsupp, hL0, -, -, -⟩ := hper T hT₁
  obtain ⟨⟨hkcd, hkc, hks⟩, -, -, hwz⟩ := hkf T hTw (k : ℤ) (l : ℤ)
  set kf : ℝ → ℂ := kfun (Pf T) T k l with hkf_def
  obtain ⟨a, ha_def⟩ : ∃ a : ℝ, a = (Pf T).tau T k := ⟨_, rfl⟩
  obtain ⟨b, hb_def⟩ : ∃ b : ℝ, b = (Pf T).tau T l := ⟨_, rfl⟩
  have ha : T ≤ a := by rw [ha_def]; exact (tau_mem (Pf T) T hL0 hT0 k).1
  have hb : T ≤ b := by rw [hb_def]; exact (tau_mem (Pf T) T hL0 hT0 l).1
  have hτs : (Pf T).tauStar T k l = (a + b) / 2 := by rw [ha_def, hb_def]; rfl
  have hτsT : T ≤ (a + b) / 2 := by linarith
  obtain ⟨Λr, hΛr⟩ : ∃ Λr : ℝ, Λr = L2star ((a + b) / 2) := ⟨_, rfl⟩
  obtain ⟨Λs, hΛs⟩ : ∃ Λs : ℂ, Λs = ((Λr : ℝ) : ℂ) := ⟨_, rfl⟩
  -- ‖Λ⋆‖ ≥ R₀
  have hΛR : R₀ ≤ ‖Λs‖ := by
    have h3 : 2 * (R₀ + 1) ≤ Real.log T := by
      have := Real.log_le_log (Real.exp_pos _) hTR
      rwa [Real.log_exp] at this
    have h2 : Real.log T ≤ Real.log ((a + b) / 2) := Real.log_le_log hT0 hτsT
    have hval : Λr = Real.log ((a + b) / 2) / 2 - Real.log (2 * Real.pi) / 2 := by
      rw [hΛr, L2star, Real.log_div (by linarith) (by positivity)]; ring
    have : R₀ ≤ Λr := by rw [hval]; linarith [log_two_pi_le_two]
    rw [hΛs, Complex.norm_real, Real.norm_eq_abs]
    exact this.trans (le_abs_self _)
  -- coefficients
  obtain ⟨cJ, hcJ⟩ : ∃ cJ : ℕ → ℂ, cJ = xiCoeffJ' Λs := ⟨_, rfl⟩
  obtain ⟨hcs, hC1r⟩ := hco Λs hΛR c hc1 hc2
  rw [← hcJ] at hcs
  have hC1 : ∀ t : ℝ, LSeries cJ ((c:ℂ) + t * I) = DfroC c ((a + b) / 2) t := fun t => by
    rw [hcJ, hC1r t, DfroC, hΛs, hΛr]
  have hcJconj : (fun N => conj (cJ N)) = cJ := by
    funext N; rw [hcJ, ← hconj, hΛs, Complex.conj_ofReal]
  have hC1' : ∀ t : ℝ, LSeries (fun N => conj (cJ N)) ((c:ℂ) + t * I) = DfroC c ((a + b) / 2) t := by
    intro t; rw [hcJconj]; exact hC1 t
  -- weights on the line c
  obtain ⟨W, hW⟩ : ∃ W : ℝ, W = Cw * (Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T ^ 2 := ⟨_, rfl⟩
  obtain ⟨W', hW'⟩ : ∃ W' : ℝ, W' = Cw * (Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T := ⟨_, rfl⟩
  have hXpos : 0 ≤ (Pf T).X T ^ (3/4 : ℝ) := Real.rpow_nonneg (by rw [hX]; exact (Real.exp_pos _).le) _
  have hW0 : 0 ≤ W := by rw [hW]; positivity
  have hW'0 : 0 ≤ W' := by rw [hW']; positivity
  have hcim : |(1/2 : ℝ) - c| ≤ 3/4 := by rw [abs_le]; constructor <;> linarith
  have hcim' : |c - (1/2 : ℝ)| ≤ 3/4 := by rw [abs_le]; constructor <;> linarith
  have hw1 : ∀ t : ℝ, ‖Hfn kf ((c:ℂ) + t * I)‖ ≤ W * (cauchyK a t * cauchyK b t) := by
    intro t
    rw [Hfn_eq_paperFT', line_arg]
    have h := (hwz ((t:ℂ) + ((1/2 - c : ℝ) : ℂ) * I) (by simpa using hcim)).1
    rw [← ha_def, ← hb_def] at h
    simpa [hW] using h
  have hw2 : ∀ t : ℝ, (|t - a| + |t - b|) * ‖Hfn kf ((c:ℂ) + t * I)‖ ≤ W' * (cauchyK a t * cauchyK b t) := by
    intro t
    rw [Hfn_eq_paperFT', line_arg]
    have h := (hwz ((t:ℂ) + ((1/2 - c : ℝ) : ℂ) * I) (by simpa using hcim)).2
    rw [← ha_def, ← hb_def] at h
    simpa [hW'] using h
  have hw1' : ∀ t : ℝ, ‖Hfn kf (1 - (c:ℂ) - t * I)‖ ≤ W * (cauchyK (-a) t * cauchyK (-b) t) := by
    intro t
    rw [Hfn_eq_paperFT', mirror_arg, ← cauchyK_neg_arg, ← cauchyK_neg_arg]
    have h := (hwz (((-t:ℝ):ℂ) + ((c - 1/2 : ℝ) : ℂ) * I) (by simpa using hcim')).1
    rw [← ha_def, ← hb_def] at h
    simpa [hW] using h
  have hw2' : ∀ t : ℝ, (|t + a| + |t + b|) * ‖Hfn kf (1 - (c:ℂ) - t * I)‖ ≤ W' * (cauchyK (-a) t * cauchyK (-b) t) := by
    intro t
    rw [Hfn_eq_paperFT', mirror_arg, ← cauchyK_neg_arg, ← cauchyK_neg_arg]
    have h := (hwz (((-t:ℝ):ℂ) + ((c - 1/2 : ℝ) : ℂ) * I) (by simpa using hcim')).2
    rw [← ha_def, ← hb_def] at h
    have e1 : |(-t) - a| = |t + a| := by rw [← abs_neg]; ring_nf
    have e2 : |(-t) - b| = |t + b| := by rw [← abs_neg]; ring_nf
    have hre : ((((-t:ℝ):ℂ)) + ((c - 1/2 : ℝ) : ℂ) * I).re = -t := by simp
    rw [hre, e1, e2] at h
    rw [hW']; exact h
  -- the J estimate
  have hJk := hJ hkcd hkc (T := T) (a := a) (b := b) (W := W) (W' := W') hTJ ha hb hW0 hW'0
    hw1 hw2 hw1' hw2' hcs hC1 hC1'
  -- the explicit formula in literature form with correction
  obtain ⟨hsumρ, hlit⟩ := w_EF_lit_corr (hZ := hZ) (hs := hs) hc1' hc2 hWL' hLm hE2 hkcd hkc
  have hgam : ∀ ρ : ℂ, paperFT kf (gammaOf ρ) = Hfn kf ρ := fun _ => rfl
  simp_rw [hgam] at hsumρ hlit
  -- zero side
  have hGs : ∀ ρ : ℂ, (wZeros hZ hs).Gsummand (Pf T) T k l ρ = (wMult ρ : ℂ) * Hfn kf ρ := fun ρ =>
    Gsummand_eq_mult_Hfn (Pf T) T (wZeros hZ hs) hφC2 hsupp k l ρ
  have hGz : (wZeros hZ hs).Gz (Pf T) T k l
      = literatureRHSW kf + JcorrW c kf - ∑ ρ ∈ E₀, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn kf ρ := by
    rw [← hlit]
    exact tsum_congr fun ρ => hGs ρ
  -- the frozen main term as a prime-side density
  have hFk := Zeta23.EF.integrable_fourier_of_contDiff_two hkcd hkc
  have hS : (∑' N : ℕ, cJ N / ((Real.sqrt N : ℝ) : ℂ) * kf (Real.log N))
      + (∑' N : ℕ, conj (cJ N) / ((Real.sqrt N : ℝ) : ℂ) * kf (-Real.log N))
      = ∫ τ : ℝ, paperFT kf τ * ((Pc ((Pf T).X T) cJ τ : ℝ) : ℂ) := by
    have h1 := summable_coeff_mul_k hks cJ true
    have h2 := summable_coeff_mul_k hks (fun N => conj (cJ N)) false
    simp only [ite_true] at h1
    simp only [Bool.false_eq_true, ite_false] at h2
    rw [← Summable.tsum_add h1 h2, hX, ← prime_term_complex hkcd.continuous hks hFk cJ]
    refine tsum_congr fun N => ?_
    ring
  have hnuc : ∀ τ : ℝ, nucW 2 ((Pf T).X T) (xiCoeff (((L2star ((Pf T).tauStar T k l)) : ℝ) : ℂ)) τ
      = nucW 2 ((Pf T).X T) (fun N => -((Λ N : ℝ) : ℂ)) τ + Pc ((Pf T).X T) cJ τ := by
    intro τ; rw [hτs, nucW_xiCoeff_eq', hcJ, hΛs, hΛr]; rfl
  have hintPc : Integrable (fun τ : ℝ => paperFT kf τ * ((Pc ((Pf T).X T) cJ τ : ℝ) : ℂ)) := by
    rw [hX]; exact integrable_paperFT_mul_Pc ((Pf T).L T) hFk cJ
  have hG1 := GentryW1_eq (Pf T) T hφC2 hsupp hL0 k l cJ hnuc hintPc
  -- the entry error
  have hdiff : (wZeros hZ hs).Gz (Pf T) T k l - (((Pf T).GentryW1 T k l : ℝ) : ℂ)
      = (JcorrW c kf - ((∑' N : ℕ, cJ N / ((Real.sqrt N : ℝ) : ℂ) * kf (Real.log N))
          + ∑' N : ℕ, conj (cJ N) / ((Real.sqrt N : ℝ) : ℂ) * kf (-Real.log N)))
        - ∑ ρ ∈ E₀, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn kf ρ := by
    rw [hGz, hG1, hS]; ring
  refine ⟨(hsumρ.congr fun ρ => (hGs ρ).symm), ?_⟩
  rw [hdiff, ← ha_def, ← hb_def]
  -- the low-zero sum
  have hlow : ‖∑ ρ ∈ E₀, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn kf ρ‖ ≤ M₀ * (16 * W / T ^ 4) := by
    calc ‖∑ ρ ∈ E₀, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn kf ρ‖
        ≤ ∑ ρ ∈ E₀, ‖(analyticOrderNatAt hardyW ρ : ℂ) * Hfn kf ρ‖ := norm_sum_le _ _
      _ ≤ ∑ ρ ∈ E₀, (analyticOrderNatAt hardyW ρ : ℝ) * (16 * W / T ^ 4) := by
          refine Finset.sum_le_sum fun ρ hρ => ?_
          rw [norm_mul, Complex.norm_natCast]
          refine mul_le_mul_of_nonneg_left ?_ (Nat.cast_nonneg _)
          obtain ⟨him, hre1, hre2⟩ := hE₀mem ρ hρ
          obtain ⟨hzre, hzim⟩ := arg_re_im ρ
          rw [Hfn_eq_paperFT']
          have hz : |((ρ - 1/2) / I).im| ≤ 3/4 := by
            rw [hzim, abs_le]; constructor <;> linarith
          have h := (hwz _ hz).1
          rw [hzre, ← ha_def, ← hb_def] at h
          refine h.trans ?_
          have hKa : cauchyK a ρ.im ≤ 4 / T ^ 2 := HW.cauchyK_le_of_far hT0 (by
            rw [abs_sub_comm, abs_of_pos (by linarith [abs_lt.mp him])]
            linarith [(abs_lt.mp him).2])
          have hKb : cauchyK b ρ.im ≤ 4 / T ^ 2 := HW.cauchyK_le_of_far hT0 (by
            rw [abs_sub_comm, abs_of_pos (by linarith [abs_lt.mp him])]
            linarith [(abs_lt.mp him).2])
          calc Cw * (Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T ^ 2 * (cauchyK a ρ.im * cauchyK b ρ.im)
              ≤ Cw * (Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T ^ 2 * (4 / T ^ 2 * (4 / T ^ 2)) := by
                refine mul_le_mul_of_nonneg_left ?_ (by positivity)
                exact mul_le_mul hKa hKb (cauchyK_nonneg _ _) (by positivity)
            _ = 16 * W / T ^ 4 := by rw [hW]; ring
      _ = M₀ * (16 * W / T ^ 4) := by rw [hM₀, Finset.sum_mul]
  -- numeric absorption
  obtain ⟨hab1, hab2⟩ := habs T hTa
  have hlogT : 0 < Real.log T := Real.log_pos (by linarith)
  have hXL : (Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T ^ 2 ≤ T ^ (3 * lam / 4) * Real.log T ^ 2 := by
    refine mul_le_mul hX34 ?_ (by positivity) (Real.rpow_nonneg hT0.le _)
    exact pow_le_pow_left₀ hL0.le hLlog 2
  have hWW : W + W' ≤ 2 * Cw * (T ^ (3 * lam / 4) * Real.log T ^ 2) := by
    have hLL : (Pf T).L T ≤ (Pf T).L T ^ 2 := by
      calc (Pf T).L T = (Pf T).L T * 1 := by ring
        _ ≤ (Pf T).L T * (Pf T).L T := mul_le_mul_of_nonneg_left hL1 hL0.le
        _ = (Pf T).L T ^ 2 := by ring
    have e : W + W' = Cw * (Pf T).X T ^ (3/4 : ℝ) * ((Pf T).L T ^ 2 + (Pf T).L T) := by
      rw [hW, hW']; ring
    rw [e]
    calc Cw * (Pf T).X T ^ (3/4 : ℝ) * ((Pf T).L T ^ 2 + (Pf T).L T)
        ≤ Cw * (Pf T).X T ^ (3/4 : ℝ) * (2 * (Pf T).L T ^ 2) :=
          mul_le_mul_of_nonneg_left (by linarith) (mul_nonneg hCw0 hXpos)
      _ = 2 * Cw * ((Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T ^ 2) := by ring
      _ ≤ 2 * Cw * (T ^ (3 * lam / 4) * Real.log T ^ 2) :=
          mul_le_mul_of_nonneg_left hXL (by positivity)
  have hWle : W ≤ Cw * (T ^ (3 * lam / 4) * Real.log T ^ 2) := by
    rw [hW, show Cw * (Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T ^ 2
      = Cw * ((Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T ^ 2) by ring]
    exact mul_le_mul_of_nonneg_left hXL hCw0
  have hmax : 0 < max 1 ((a - b) ^ 2) := lt_of_lt_of_le one_pos (le_max_left _ _)
  have h1 : (W + W') / (T * Real.log T) / (4 + (a - b) ^ 2)
      ≤ 2 * Cw * Ca * T ^ (-δ) * (1 / max 1 ((a - b) ^ 2)) := by
    have e1 : (W + W') / (T * Real.log T) ≤ 2 * Cw * Ca * T ^ (-δ) := by
      calc (W + W') / (T * Real.log T)
          ≤ 2 * Cw * (T ^ (3 * lam / 4) * Real.log T ^ 2) / (T * Real.log T) :=
            div_le_div_of_nonneg_right hWW (by positivity)
        _ = 2 * Cw * (T ^ (3 * lam / 4) * Real.log T ^ 2 * 1 / (T * Real.log T)) := by ring
        _ ≤ 2 * Cw * (Ca * T ^ (-((1 - 3 * lam / 4) / 2))) := mul_le_mul_of_nonneg_left hab1 (by positivity)
        _ = 2 * Cw * Ca * T ^ (-δ) := by rw [hδ]; ring
    have e2 : 1 / (4 + (a - b) ^ 2) ≤ 1 / max 1 ((a - b) ^ 2) :=
      div_le_div_of_nonneg_left zero_le_one hmax (max_one_le_four_add _)
    calc (W + W') / (T * Real.log T) / (4 + (a - b) ^ 2)
        = (W + W') / (T * Real.log T) * (1 / (4 + (a - b) ^ 2)) := by ring
      _ ≤ 2 * Cw * Ca * T ^ (-δ) * (1 / max 1 ((a - b) ^ 2)) :=
          mul_le_mul e1 e2 (by positivity) (by positivity)
  have h2 : W / T ^ 2 ≤ Cw * Ca * T ^ (-δ) * (1 / T) := by
    calc W / T ^ 2 ≤ Cw * (T ^ (3 * lam / 4) * Real.log T ^ 2) / T ^ 2 :=
          div_le_div_of_nonneg_right hWle (by positivity)
      _ = Cw * (T ^ (3 * lam / 4) * Real.log T ^ 2 * 1 / T ^ 2) := by ring
      _ ≤ Cw * (Ca * T ^ (-((1 - 3 * lam / 4) / 2)) / T) := mul_le_mul_of_nonneg_left hab2 hCw0
      _ = Cw * Ca * T ^ (-δ) * (1 / T) := by rw [hδ]; ring
  have h3 : M₀ * (16 * W / T ^ 4) ≤ 16 * Cw * Ca * M₀ * T ^ (-δ) * (1 / T) := by
    have hT1 : (1:ℝ) ≤ T := by linarith
    have hpow : T ^ 2 ≤ T ^ 4 := pow_le_pow_right₀ hT1 (by norm_num)
    have hWT4 : W / T ^ 4 ≤ Cw * Ca * T ^ (-δ) * (1 / T) :=
      (div_le_div_of_nonneg_left hW0 (by positivity) hpow).trans h2
    have := mul_le_mul_of_nonneg_left hWT4 (by positivity : (0:ℝ) ≤ 16 * M₀)
    calc M₀ * (16 * W / T ^ 4) = 16 * M₀ * (W / T ^ 4) := by ring
      _ ≤ 16 * M₀ * (Cw * Ca * T ^ (-δ) * (1 / T)) := this
      _ = 16 * Cw * Ca * M₀ * T ^ (-δ) * (1 / T) := by ring
  have hTδ : 0 ≤ T ^ (-δ) := Real.rpow_nonneg hT0.le _
  calc ‖(JcorrW c kf - ((∑' N : ℕ, cJ N / ((Real.sqrt N : ℝ) : ℂ) * kf (Real.log N))
          + ∑' N : ℕ, conj (cJ N) / ((Real.sqrt N : ℝ) : ℂ) * kf (-Real.log N)))
        - ∑ ρ ∈ E₀, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn kf ρ‖
      ≤ ‖JcorrW c kf - ((∑' N : ℕ, cJ N / ((Real.sqrt N : ℝ) : ℂ) * kf (Real.log N))
          + ∑' N : ℕ, conj (cJ N) / ((Real.sqrt N : ℝ) : ℂ) * kf (-Real.log N))‖
        + ‖∑ ρ ∈ E₀, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn kf ρ‖ := norm_sub_le _ _
    _ ≤ K * ((W + W') / (T * Real.log T) / (4 + (a - b) ^ 2) + W / T ^ 2) + M₀ * (16 * W / T ^ 4) :=
        add_le_add hJk hlow
    _ ≤ K * (2 * Cw * Ca * T ^ (-δ) * (1 / max 1 ((a - b) ^ 2)) + Cw * Ca * T ^ (-δ) * (1 / T))
        + 16 * Cw * Ca * M₀ * T ^ (-δ) * (1 / T) :=
        add_le_add (mul_le_mul_of_nonneg_left (add_le_add h1 h2) hK0) h3
    _ ≤ (2 * K * Cw * Ca + 16 * Cw * Ca * M₀) * T ^ (-δ) * (1 / max 1 ((a - b) ^ 2) + 1 / T) := by
        have hnn1 : 0 ≤ K * Cw * Ca * T ^ (-δ) * (1 / T) := by positivity
        have hnn2 : 0 ≤ 16 * Cw * Ca * M₀ * T ^ (-δ) * (1 / max 1 ((a - b) ^ 2)) := by positivity
        have e : (2 * K * Cw * Ca + 16 * Cw * Ca * M₀) * T ^ (-δ) * (1 / max 1 ((a - b) ^ 2) + 1 / T)
            = (K * (2 * Cw * Ca * T ^ (-δ) * (1 / max 1 ((a - b) ^ 2)) + Cw * Ca * T ^ (-δ) * (1 / T))
              + 16 * Cw * Ca * M₀ * T ^ (-δ) * (1 / T))
              + (K * Cw * Ca * T ^ (-δ) * (1 / T) + 16 * Cw * Ca * M₀ * T ^ (-δ) * (1 / max 1 ((a - b) ^ 2))) := by
          ring
        rw [e]; linarith

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variant8a9fbe952a7b8d23c3121e02f4e92b8d5c237710661e8666ad37e6b8ab0cf879.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variant8a9fbe952a7b8d23c3121e02f4e92b8d5c237710661e8666ad37e6b8ab0cf879.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `269b3177e0c20517884d2f537ea9802e25e06d96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

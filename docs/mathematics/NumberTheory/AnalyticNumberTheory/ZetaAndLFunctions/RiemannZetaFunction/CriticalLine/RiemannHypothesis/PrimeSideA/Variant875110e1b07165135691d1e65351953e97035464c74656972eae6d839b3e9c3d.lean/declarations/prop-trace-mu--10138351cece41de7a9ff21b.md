# prop_trace_mu

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95134e99-1642-81c5-1bb5-c1f10502ca5c",
  "kind": "theorem",
  "lexical_name": "prop_trace_mu",
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
  "slug": "prop-trace-mu--10138351cece41de7a9ff21b",
  "source": {
    "blob": "66b0bed8d9dc070a0ef838a776018fb829537088",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant875110e1b07165135691d1e65351953e97035464c74656972eae6d839b3e9c3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10138351cece41de7a9ff21b6f8c2b1b2c27368e3c7ed831414cc544d83e20fe",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant875110e1b07165135691d1e65351953e97035464c74656972eae6d839b3e9c3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95134e99-1642-81c5-1bb5-c1f10502ca5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prop_trace_mu (hΓ : Zeta23.GammaFacts) (hcheb : Zeta23.ChebyshevMertens)
    (hlam : 0 < lam ∧ lam ≤ 1) :
    ∃ C : ℝ, EventuallyAtCore cϱ lam (fun p F =>
      |trGtA p F - F.a * p.L * ∫ τ in p.T..(2 * p.T), Zeta23.mu τ| ≤ C * (p.L * Real.sqrt p.X)) := by
  obtain ⟨K, hK0, hK⟩ := mu_increment_bound hΓ
  obtain ⟨x₀, hx₀⟩ := hcheb.cheb1b
  obtain ⟨T₁, hT₁⟩ := mu_abs_le_l hΓ
  obtain ⟨τ₀, hτ₀0, hτ₀⟩ := mu_nonneg_eventually hΓ
  refine ⟨8 * K + 2 * |cϱ| * K + 44 * cϱ ^ 2 + 4 * π / lam + 245,
    max (max T₁ 4) (max (2 * π * Real.exp (|x₀| / lam)) (τ₀ + 1)), fun p F hplam hT hF => ?_⟩
  -- thresholds
  have hTa : max T₁ 4 ≤ p.T := (le_max_left _ _).trans hT
  have hTb : max (2 * π * Real.exp (|x₀| / lam)) (τ₀ + 1) ≤ p.T := (le_max_right _ _).trans hT
  have hT₁' : T₁ ≤ p.T := (le_max_left _ _).trans hTa
  have hT4 : 4 ≤ p.T := (le_max_right _ _).trans hTa
  have hTx : 2 * π * Real.exp (|x₀| / lam) ≤ p.T := (le_max_left _ _).trans hTb
  have hTτ : τ₀ + 1 ≤ p.T := (le_max_right _ _).trans hTb
  have hT0 : 0 < p.T := by linarith
  have hL := hF.L_pos
  have hL8 := hF.eight_le_L
  have hc4 := hF.four_le_cϱ
  have hc0 : 0 ≤ cϱ := by linarith
  have hlam0 : 0 < p.lam := hplam ▸ hlam.1
  have hX : x₀ ≤ p.X := Setting.le_X_of_T hlam0 (by rw [hplam]; exact hTx)
  have hX1 : 1 ≤ Real.sqrt p.X := by
    rw [Real.le_sqrt' one_pos, one_pow]; exact Real.one_le_exp hL.le |>.trans_eq rfl
  have hsX : 0 ≤ Real.sqrt p.X := Real.sqrt_nonneg _
  have hh0 : 0 < p.h := by simp only [Setting.h]; positivity
  have hh1 : p.h ≤ 1 := by
    simp only [Setting.h]; rw [div_le_one hL]; linarith [Real.pi_lt_four]
  have hl1 := hF.one_le_l
  have ha1 := hF.a_le_one
  have ha0 := hF.a_pos.le
  -- the two taper integrals
  set I₁ := ∫ r, F.phiHat r ^ 2 * |r| with hI₁def
  set I₂ := ∫ r, F.phiHat r ^ 2 * r ^ 2 with hI₂def
  have hI₁0 : 0 ≤ I₁ := integral_nonneg fun r => by positivity
  have hI₂0 : 0 ≤ I₂ := integral_nonneg fun r => by positivity
  have hI₁ : I₁ ≤ 8 + 2 * cϱ * p.L := by
    refine hF.integral_phiHat_sq_mul_abs_le.trans ?_
    have h1 : Real.log (cϱ * p.L / (4 * p.w)) ≤ cϱ * p.L / (4 * p.w) :=
      Real.log_le_self (by have := hF.one_le_w; positivity)
    have h2 : cϱ * p.L / (4 * p.w) ≤ cϱ * p.L / 4 := by
      apply div_le_div_of_nonneg_left (by positivity) (by norm_num); linarith [hF.one_le_w]
    linarith
  have hI₂ : I₂ ≤ 8 + 2 * cϱ ^ 2 := by
    refine hF.integral_phiHat_sq_mul_sq_le.trans ?_
    have : (cϱ / p.w) ^ 2 ≤ cϱ ^ 2 := by
      rw [div_pow]; exact div_le_self (sq_nonneg _) (by nlinarith [hF.one_le_w])
    linarith
  -- rewrite tr G̃ as a sum over range d
  have hsumFin : ∑ k : Fin p.d, GentryA p F k k = ∑ k ∈ Finset.range p.d, GentryA p F k k :=
    Fin.sum_univ_eq_sum_range (fun k => GentryA p F k k) p.d
  -- grid facts
  have hτ : ∀ k ∈ Finset.range p.d, p.T ≤ p.tau k ∧ p.tau k ≤ 2 * p.T := fun k hk =>
    p.tau_mem hL hT0.le hk
  -- decomposition of each diagonal entry
  set Gμ : ℕ → ℝ := fun k => ∫ r, F.phiHat r ^ 2 * Zeta23.mu (p.tau k + r) with hGμ
  set GPi : ℕ → ℝ := fun k => ∫ r, F.phiHat r ^ 2 * Zeta23.PiX p.X (p.tau k + r) with hGPi
  set GP : ℕ → ℝ := fun k => ∫ r, F.phiHat r ^ 2 * Zeta23.PX p.X (p.tau k + r) with hGP
  have hdecomp : ∑ k ∈ Finset.range p.d, GentryA p F k k
      = ∑ k ∈ Finset.range p.d, Gμ k + ∑ k ∈ Finset.range p.d, GPi k
        + ∑ k ∈ Finset.range p.d, GP k := by
    rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun k hk => ?_
    exact GentryA_diag_eq hΓ hF k (by linarith [(hτ k hk).1])
  -- (1) μ-part vs 2πaL μ(τ_k)
  have h1 : |∑ k ∈ Finset.range p.d, Gμ k - 2 * π * F.a * p.L * ∑ k ∈ Finset.range p.d,
      Zeta23.mu (p.tau k)| ≤ p.d * ((K * I₁ + 10 * I₂) / p.T) := by
    rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
    refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
    have : ∀ k ∈ Finset.range p.d, |Gμ k - 2 * π * F.a * p.L * Zeta23.mu (p.tau k)|
        ≤ (K * I₁ + 10 * I₂) / p.T := by
      intro k hk
      have ht2 : 2 ≤ p.tau k := by linarith [(hτ k hk).1]
      refine (mu_part_bound hΓ hF hK ht2).trans ?_
      exact div_le_div_of_nonneg_left (by positivity) hT0 (hτ k hk).1
    refine (Finset.sum_le_sum this).trans ?_
    rw [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
  -- (2) Riemann sum: 2πaL Σ μ(τ_k) vs aL² ∫ μ
  have h2 : |2 * π * F.a * p.L * ∑ k ∈ Finset.range p.d, Zeta23.mu (p.tau k)
      - F.a * p.L ^ 2 * ∫ τ in p.T..(2 * p.T), Zeta23.mu τ| ≤ 4 * π * p.L * p.l := by
    have hR := riemann_sum_monotone (μ := Zeta23.mu) (T := p.T) hh0 (by linarith)
      (hΓ.monotoneOn.mono (fun x hx => by
        simp only [Set.mem_Ici] at hx ⊢; linarith))
      (fun x hx => hτ₀ x (by linarith))
    rw [← p.d_eq_floor hL] at hR
    have hsum : ∑ k ∈ Finset.range p.d, Zeta23.mu (p.tau k)
        = ∑ k ∈ Finset.range p.d, Zeta23.mu (p.T + k * p.h) := by
      refine Finset.sum_congr rfl fun k _ => by rw [Setting.tau_natCast]
    rw [hsum]
    have hid : 2 * π * F.a * p.L * ∑ k ∈ Finset.range p.d, Zeta23.mu (p.T + k * p.h)
        - F.a * p.L ^ 2 * ∫ τ in p.T..(2 * p.T), Zeta23.mu τ
        = F.a * p.L ^ 2 * (p.h * ∑ k ∈ Finset.range p.d, Zeta23.mu (p.T + k * p.h)
            - ∫ τ in p.T..(2 * p.T), Zeta23.mu τ) := by
      simp only [Setting.h]; field_simp
    rw [hid, abs_mul, abs_of_nonneg (by positivity)]
    have hμ2T : Zeta23.mu (2 * p.T) ≤ p.l := by
      have := hT₁ p hT₁' (2 * p.T) ⟨by linarith, le_rfl⟩
      exact (le_abs_self _).trans this
    have hμ2T0 : 0 ≤ Zeta23.mu (2 * p.T) := hτ₀ _ (by linarith)
    calc F.a * p.L ^ 2 * |p.h * ∑ k ∈ Finset.range p.d, Zeta23.mu (p.T + k * p.h)
          - ∫ τ in p.T..(2 * p.T), Zeta23.mu τ|
        ≤ F.a * p.L ^ 2 * (2 * p.h * Zeta23.mu (2 * p.T)) := by gcongr
      _ ≤ 1 * p.L ^ 2 * (2 * p.h * p.l) := by gcongr
      _ = 4 * π * p.L * p.l := by simp only [Setting.h]; field_simp; ring
  -- (3) Π-part
  have h3 : |∑ k ∈ Finset.range p.d, GPi k|
      ≤ p.d * ((6 * Real.sqrt p.X / p.T) * (2 * π * p.L) + (12 * Real.sqrt p.X / p.T) * I₂) := by
    have hbound : ∀ k ∈ Finset.range p.d, |GPi k|
        ≤ (6 * Real.sqrt p.X / p.T) * (2 * π * p.L) + (12 * Real.sqrt p.X / p.T) * I₂ := by
      intro k hk
      have ht := (hτ k hk).1
      have ht2 : 2 ≤ p.tau k := by linarith
      have ht0 : 0 < p.tau k := by linarith
      refine (Pi_part_bound hF ht2).trans ?_
      have e1 : 6 * Real.sqrt p.X / p.tau k ≤ 6 * Real.sqrt p.X / p.T :=
        div_le_div_of_nonneg_left (by positivity) hT0 ht
      have e2 : 12 * Real.sqrt p.X / p.tau k ^ 2 ≤ 12 * Real.sqrt p.X / p.T :=
        div_le_div_of_nonneg_left (by positivity) hT0 (by nlinarith)
      have e3 : 2 * π * F.a * p.L ≤ 2 * π * p.L := by
        have h1 : 2 * π * F.a ≤ 2 * π := mul_le_of_le_one_right (by positivity) ha1
        have h2 : (2 * π * F.a) * p.L ≤ (2 * π) * p.L := mul_le_mul_of_nonneg_right h1 hL.le
        linarith
      have b1 : 6 * Real.sqrt p.X / p.tau k * (2 * π * F.a * p.L)
          ≤ 6 * Real.sqrt p.X / p.T * (2 * π * p.L) :=
        mul_le_mul e1 e3 (by positivity) (by positivity)
      have b2 : 12 * Real.sqrt p.X / p.tau k ^ 2 * I₂
          ≤ 12 * Real.sqrt p.X / p.T * I₂ := mul_le_mul_of_nonneg_right e2 hI₂0
      linarith
    refine ((Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum hbound)).trans ?_
    rw [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
  -- (4) P-part
  have h4 : |∑ k ∈ Finset.range p.d, GP k| ≤ p.L ^ 2 / Real.log 2 * (3 * Real.sqrt p.X) := by
    refine (sum_P_part_bound hF).trans ?_
    exact mul_le_mul_of_nonneg_left (hx₀ _ hX)
      (div_nonneg (sq_nonneg _) (Real.log_nonneg one_le_two))
  -- d ≤ L T
  have hd : (p.d : ℝ) ≤ p.L * p.T := by
    refine (p.d_le (by positivity)).trans (div_le_self (by positivity) ?_)
    linarith [Real.pi_gt_three]
  have hdT : (p.d : ℝ) / p.T ≤ p.L := by rwa [div_le_iff₀ hT0]
  -- combine: |Σ G_kk − aL² ∫μ| ≤ …
  have hmain : |∑ k ∈ Finset.range p.d, GentryA p F k k
      - F.a * p.L ^ 2 * ∫ τ in p.T..(2 * p.T), Zeta23.mu τ|
      ≤ p.L * (K * I₁ + 10 * I₂) + 4 * π * p.L * p.l
        + p.L * ((6 * Real.sqrt p.X) * (2 * π * p.L) + (12 * Real.sqrt p.X) * I₂)
        + p.L ^ 2 / Real.log 2 * (3 * Real.sqrt p.X) := by
    rw [hdecomp]
    have e1 : p.d * ((K * I₁ + 10 * I₂) / p.T) ≤ p.L * (K * I₁ + 10 * I₂) := by
      rw [mul_div_assoc', div_le_iff₀ hT0]
      calc (p.d : ℝ) * (K * I₁ + 10 * I₂) ≤ (p.L * p.T) * (K * I₁ + 10 * I₂) := by
            gcongr
        _ = p.L * (K * I₁ + 10 * I₂) * p.T := by ring
    have e3 : p.d * ((6 * Real.sqrt p.X / p.T) * (2 * π * p.L) + (12 * Real.sqrt p.X / p.T) * I₂)
        ≤ p.L * ((6 * Real.sqrt p.X) * (2 * π * p.L) + (12 * Real.sqrt p.X) * I₂) := by
      have : p.d * ((6 * Real.sqrt p.X / p.T) * (2 * π * p.L) + (12 * Real.sqrt p.X / p.T) * I₂)
          = (p.d / p.T) * ((6 * Real.sqrt p.X) * (2 * π * p.L) + (12 * Real.sqrt p.X) * I₂) := by
        field_simp
      rw [this]; gcongr
    calc |∑ k ∈ Finset.range p.d, Gμ k + ∑ k ∈ Finset.range p.d, GPi k
          + ∑ k ∈ Finset.range p.d, GP k - F.a * p.L ^ 2 * ∫ τ in p.T..(2 * p.T), Zeta23.mu τ|
        = |(∑ k ∈ Finset.range p.d, Gμ k - 2 * π * F.a * p.L * ∑ k ∈ Finset.range p.d,
              Zeta23.mu (p.tau k))
            + (2 * π * F.a * p.L * ∑ k ∈ Finset.range p.d, Zeta23.mu (p.tau k)
              - F.a * p.L ^ 2 * ∫ τ in p.T..(2 * p.T), Zeta23.mu τ)
            + ∑ k ∈ Finset.range p.d, GPi k + ∑ k ∈ Finset.range p.d, GP k| := by ring_nf
      _ ≤ |∑ k ∈ Finset.range p.d, Gμ k - 2 * π * F.a * p.L * ∑ k ∈ Finset.range p.d,
              Zeta23.mu (p.tau k)|
            + |2 * π * F.a * p.L * ∑ k ∈ Finset.range p.d, Zeta23.mu (p.tau k)
              - F.a * p.L ^ 2 * ∫ τ in p.T..(2 * p.T), Zeta23.mu τ|
            + |∑ k ∈ Finset.range p.d, GPi k| + |∑ k ∈ Finset.range p.d, GP k| := by
          refine (abs_add_le _ _).trans (add_le_add ((abs_add_le _ _).trans
            (add_le_add (abs_add_le _ _) le_rfl)) le_rfl)
      _ ≤ _ := by linarith [h1.trans e1, h2, h3.trans e3, h4]
  -- divide by L and pass to tr G̃
  have htr : trGtA p F - F.a * p.L * ∫ τ in p.T..(2 * p.T), Zeta23.mu τ
      = p.L⁻¹ * (∑ k ∈ Finset.range p.d, GentryA p F k k
          - F.a * p.L ^ 2 * ∫ τ in p.T..(2 * p.T), Zeta23.mu τ) := by
    simp only [trGtA, hsumFin]; field_simp
  -- final arithmetic: everything ≤ C · L√X
  set S := p.L * Real.sqrt p.X with hS
  have hS8 : 8 ≤ S := by nlinarith
  have hS1 : 1 ≤ S := by linarith
  have hLS : p.L ≤ S := by nlinarith
  have hlS : p.l ≤ S / lam := by
    rw [le_div_iff₀ hlam.1]
    have : p.l * lam = p.L := by rw [← hplam]; simp only [Setting.L]; ring
    rw [this]; exact hLS
  have hlog2 : (0.6931471803 : ℝ) < Real.log 2 := Real.log_two_gt_d9
  have hlog2' : 0 < Real.log 2 := by linarith
  have t1 : K * I₁ + 10 * I₂ ≤ (8 * K + 2 * |cϱ| * K + 80 + 20 * cϱ ^ 2) * S := by
    rw [abs_of_nonneg hc0]
    have v1 : K * I₁ ≤ K * (8 + 2 * cϱ * p.L) := by gcongr
    have v2 : 10 * I₂ ≤ 10 * (8 + 2 * cϱ ^ 2) := by linarith
    have u1 : 8 * K ≤ 8 * K * S := le_mul_of_one_le_right (by positivity) hS1
    have u2 : 2 * cϱ * K * p.L ≤ 2 * cϱ * K * S :=
      mul_le_mul_of_nonneg_left hLS (by positivity)
    have u3 : (80:ℝ) ≤ 80 * S := by linarith
    have u4 : 20 * cϱ ^ 2 ≤ 20 * cϱ ^ 2 * S := le_mul_of_one_le_right (by positivity) hS1
    nlinarith [mul_nonneg hc0 hK0]
  have t2 : 4 * π * p.l ≤ (4 * π / lam) * S := by
    rw [div_mul_eq_mul_div, le_div_iff₀ hlam.1]
    have hls : p.l * lam ≤ S := by rw [← le_div_iff₀ hlam.1]; exact hlS
    calc 4 * π * p.l * lam = 4 * π * (p.l * lam) := by ring
      _ ≤ 4 * π * S := by gcongr
      _ = 4 * π * S := rfl
  have t3 : (6 * Real.sqrt p.X) * (2 * π * p.L) + (12 * Real.sqrt p.X) * I₂
      ≤ (160 + 24 * cϱ ^ 2) * S := by
    have e : (6 * Real.sqrt p.X) * (2 * π * p.L) = 12 * π * S := by rw [hS]; ring
    have f : (12 * Real.sqrt p.X) * I₂ ≤ 12 * (8 + 2 * cϱ ^ 2) * S := by
      calc (12 * Real.sqrt p.X) * I₂ ≤ (12 * Real.sqrt p.X) * (8 + 2 * cϱ ^ 2) := by gcongr
        _ = 12 * (8 + 2 * cϱ ^ 2) * (1 * Real.sqrt p.X) := by ring
        _ ≤ 12 * (8 + 2 * cϱ ^ 2) * (p.L * Real.sqrt p.X) := by gcongr; linarith
        _ = 12 * (8 + 2 * cϱ ^ 2) * S := by rw [hS]
    have hS0 : 0 ≤ S := by linarith
    have g : 12 * π * S ≤ 48 * S :=
      mul_le_mul_of_nonneg_right (by linarith [Real.pi_lt_four]) hS0
    rw [e]; linarith
  have t4 : p.L / Real.log 2 * (3 * Real.sqrt p.X) ≤ 5 * S := by
    rw [hS, div_mul_eq_mul_div, div_le_iff₀ hlog2']
    have h5 : 3 * (p.L * Real.sqrt p.X) ≤ 5 * Real.log 2 * (p.L * Real.sqrt p.X) :=
      mul_le_mul_of_nonneg_right (by linarith) (mul_nonneg hL.le hsX)
    linarith
  calc |trGtA p F - F.a * p.L * ∫ τ in p.T..(2 * p.T), Zeta23.mu τ|
      = p.L⁻¹ * |∑ k ∈ Finset.range p.d, GentryA p F k k
          - F.a * p.L ^ 2 * ∫ τ in p.T..(2 * p.T), Zeta23.mu τ| := by
        rw [htr, abs_mul, abs_of_pos (inv_pos.2 hL)]
    _ ≤ p.L⁻¹ * (p.L * (K * I₁ + 10 * I₂) + 4 * π * p.L * p.l
        + p.L * ((6 * Real.sqrt p.X) * (2 * π * p.L) + (12 * Real.sqrt p.X) * I₂)
        + p.L ^ 2 / Real.log 2 * (3 * Real.sqrt p.X)) := by gcongr
    _ = (K * I₁ + 10 * I₂) + 4 * π * p.l
        + ((6 * Real.sqrt p.X) * (2 * π * p.L) + (12 * Real.sqrt p.X) * I₂)
        + p.L / Real.log 2 * (3 * Real.sqrt p.X) := by field_simp
    _ ≤ (8 * K + 2 * |cϱ| * K + 80 + 20 * cϱ ^ 2) * S + (4 * π / lam) * S
        + (160 + 24 * cϱ ^ 2) * S + 5 * S := by linarith
    _ = (8 * K + 2 * |cϱ| * K + 44 * cϱ ^ 2 + 4 * π / lam + 245) * S := by ring

/-- **[prop:trace]** (§5.2, verbatim): `tr G̃ = aL·N(T,2T) + O(L√X)`.
Here `N` is an abstract real standing for `N(T,2T)` and the two hypotheses are exactly what the
paper's proof uses to pass from `∫_T^{2T}μ` to `N(T,2T)`: [eq:muints] (field `int_mu` of
`Zeta23.GammaFacts`) and [eq:RvM] `N(T,2T) = Tℓ₁/2π + O(l)` with constant `A` (hypothesis `hRvM`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant875110e1b07165135691d1e65351953e97035464c74656972eae6d839b3e9c3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant875110e1b07165135691d1e65351953e97035464c74656972eae6d839b3e9c3d.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66b0bed8d9dc070a0ef838a776018fb829537088` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

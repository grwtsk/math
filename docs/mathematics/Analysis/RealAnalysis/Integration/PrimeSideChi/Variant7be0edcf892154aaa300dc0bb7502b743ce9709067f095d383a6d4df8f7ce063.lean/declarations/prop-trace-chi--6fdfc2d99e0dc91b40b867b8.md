# prop_trace_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7759ce27-6676-d106-d776-31c1ef5a39b9",
  "kind": "theorem",
  "lexical_name": "prop_trace_chi",
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
  "slug": "prop-trace-chi--6fdfc2d99e0dc91b40b867b8",
  "source": {
    "blob": "b7f058ea3d12e02b6f34456557fc66c69d693d9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1129,
    "line": 828,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fdfc2d99e0dc91b40b867b83e031203563095ef7964d9a2220ca6d784dd72f6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7759ce27-6676-d106-d776-31c1ef5a39b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 828–1129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prop_trace_chi (hΓq : GammaFactsChi κ q) (hcheb : ChebyshevMertens)
    (hc : CoeffOK q c) (hlam : 0 < lam ∧ lam ≤ 1) (A : ℝ) (hq : 1 ≤ q) :
    ∃ C : ℝ, EventuallyAtCore cϱ lam (fun p F => ∀ N : ℝ,
      |N - p.T / (2 * Real.pi) * ell1q q p.T| ≤ A * Real.log p.T →
      |trGtChiA κ q c p F - F.a * p.L * N| ≤ C * (p.L * Real.sqrt p.X)) := by
  obtain ⟨K, hK0, hK⟩ := muq_increment_bound hΓq hq
  obtain ⟨x₀, hx₀⟩ := hcheb.cheb1b
  obtain ⟨Cml, T₁, hCml0, hCml⟩ := muq_abs_le κ q hΓq hq
  obtain ⟨τ₀, hτ₀0, hτ₀⟩ := muq_nonneg_eventually hΓq hq
  obtain ⟨Cμ, T₂, hCμ⟩ := hΓq.int_mu
  refine ⟨K * (16 + 2 * cϱ + 2 * cϱ ^ 2) + 4 * π * Cml / lam + 5 + |Cμ| + 8 * |A| / lam,
    max (max T₁ 4) (max (2 * π * Real.exp (|x₀| / lam)) (max (τ₀ + 1) (max T₂ 1))),
    fun p F hplam hT hF => ?_⟩
  intro N hN
  have hTa : max T₁ 4 ≤ p.T := (le_max_left _ _).trans hT
  have hTb : max (2 * π * Real.exp (|x₀| / lam)) (max (τ₀ + 1) (max T₂ 1)) ≤ p.T :=
    (le_max_right _ _).trans hT
  have hT₁' : T₁ ≤ p.T := (le_max_left _ _).trans hTa
  have hT4 : 4 ≤ p.T := (le_max_right _ _).trans hTa
  have hTx : 2 * π * Real.exp (|x₀| / lam) ≤ p.T := (le_max_left _ _).trans hTb
  have hTτ : τ₀ + 1 ≤ p.T := ((le_max_left _ _).trans (le_max_right _ _)).trans hTb
  have hT2 : T₂ ≤ p.T := (((le_max_left _ _).trans (le_max_right _ _)).trans
    (le_max_right _ _)).trans hTb
  have hT0 : (0:ℝ) < p.T := by linarith
  have hL := hF.L_pos
  have hL8 := hF.eight_le_L
  have hc4 := hF.four_le_cϱ
  have hc0 : (0:ℝ) ≤ cϱ := by linarith
  have hlam0 : 0 < p.lam := hplam ▸ hlam.1
  have hX : x₀ ≤ p.X := Setting.le_X_of_T hlam0 (by rw [hplam]; exact hTx)
  have hX1 : 1 ≤ Real.sqrt p.X := by
    rw [Real.le_sqrt' one_pos, one_pow]
    exact Real.one_le_exp hL.le |>.trans_eq rfl
  have hsX : 0 ≤ Real.sqrt p.X := Real.sqrt_nonneg _
  have hh0 : 0 < p.h := by
    simp only [Setting.h]
    positivity
  have hl1 : (1:ℝ) ≤ Zeta23.l p.T := hF.one_le_l
  have ha1 := hF.a_le_one
  have ha0 := hF.a_pos.le
  set I₁ := ∫ r, F.phiHat r ^ 2 * |r| with hI₁def
  set I₂ := ∫ r, F.phiHat r ^ 2 * r ^ 2 with hI₂def
  have hI₁0 : 0 ≤ I₁ := MeasureTheory.integral_nonneg fun r => by positivity
  have hI₂0 : 0 ≤ I₂ := MeasureTheory.integral_nonneg fun r => by positivity
  have hI₁ : I₁ ≤ 8 + 2 * cϱ * p.L := by
    refine hF.integral_phiHat_sq_mul_abs_le.trans ?_
    have h1 : Real.log (cϱ * p.L / (4 * p.w)) ≤ cϱ * p.L / (4 * p.w) :=
      Real.log_le_self (by have := hF.one_le_w; positivity)
    have h2 : cϱ * p.L / (4 * p.w) ≤ cϱ * p.L / 4 := by
      apply div_le_div_of_nonneg_left (by positivity) (by norm_num)
      linarith [hF.one_le_w]
    linarith
  have hI₂ : I₂ ≤ 8 + 2 * cϱ ^ 2 := by
    refine hF.integral_phiHat_sq_mul_sq_le.trans ?_
    have h3 : (cϱ / p.w) ^ 2 ≤ cϱ ^ 2 := by
      rw [div_pow]
      exact div_le_self (sq_nonneg _) (by nlinarith [hF.one_le_w])
    linarith
  have hsumFin : ∑ k : Fin p.d, GentryChiA κ q c p F k k
      = ∑ k ∈ Finset.range p.d, GentryChiA κ q c p F k k :=
    Fin.sum_univ_eq_sum_range (fun k => GentryChiA κ q c p F k k) p.d
  have hτg : ∀ k ∈ Finset.range p.d, p.T ≤ p.tau k ∧ p.tau k ≤ 2 * p.T := fun k hk =>
    p.tau_mem hL hT0.le hk
  set Gμ : ℕ → ℝ := fun k => ∫ r, F.phiHat r ^ 2 * muq κ q (p.tau k + r) with hGμ
  set GP : ℕ → ℝ := fun k => ∫ r, F.phiHat r ^ 2 * PXc c p.X (p.tau k + r) with hGP
  have hdecomp : ∑ k ∈ Finset.range p.d, GentryChiA κ q c p F k k
      = ∑ k ∈ Finset.range p.d, Gμ k + ∑ k ∈ Finset.range p.d, GP k := by
    rw [← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun k hk => ?_
    exact GentryChiA_diag_eq hΓq hq hF.toCoreW hc k (by linarith [(hτg k hk).1])
  have h1 : |∑ k ∈ Finset.range p.d, Gμ k - 2 * π * F.a * p.L * ∑ k ∈ Finset.range p.d,
      muq κ q (p.tau k)| ≤ p.d * (K * (I₁ + I₂) / p.T) := by
    rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
    refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
    have hbd : ∀ k ∈ Finset.range p.d, |Gμ k - 2 * π * F.a * p.L * muq κ q (p.tau k)|
        ≤ K * (I₁ + I₂) / p.T := by
      intro k hk
      have ht2 : 2 ≤ p.tau k := by linarith [(hτg k hk).1]
      refine (muq_part_bound hΓq hq hF.toCoreW hK0 hK ht2).trans ?_
      exact div_le_div_of_nonneg_left (by positivity) hT0 (hτg k hk).1
    refine (Finset.sum_le_sum hbd).trans ?_
    rw [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
  have hhT : p.h ≤ p.T := by
    simp only [Setting.h]
    rw [div_le_iff₀ hL]
    nlinarith [Real.pi_lt_four]
  have hh1 : p.h ≤ 1 := by
    simp only [Setting.h]
    rw [div_le_one hL]
    nlinarith [Real.pi_lt_four]
  have h2 : |2 * π * F.a * p.L * ∑ k ∈ Finset.range p.d, muq κ q (p.tau k)
      - F.a * p.L ^ 2 * ∫ τ in p.T..(2 * p.T), muq κ q τ|
      ≤ 4 * π * Cml * p.L * Zeta23.l p.T := by
    have hR := riemann_sum_monotone (μ := muq κ q) (T := p.T) hh0 hhT
      (hΓq.monotoneOn.mono (fun x hx => by
        simp only [Set.mem_Ici] at hx ⊢
        linarith))
      (fun x hx => hτ₀ x (by linarith))
    rw [← p.d_eq_floor hL] at hR
    have hsum2 : ∑ k ∈ Finset.range p.d, muq κ q (p.tau k)
        = ∑ k ∈ Finset.range p.d, muq κ q (p.T + k * p.h) := by
      refine Finset.sum_congr rfl fun k _ => by rw [Setting.tau_natCast]
    rw [hsum2]
    have hid : 2 * π * F.a * p.L * ∑ k ∈ Finset.range p.d, muq κ q (p.T + k * p.h)
        - F.a * p.L ^ 2 * ∫ τ in p.T..(2 * p.T), muq κ q τ
        = F.a * p.L ^ 2 * (p.h * ∑ k ∈ Finset.range p.d, muq κ q (p.T + k * p.h)
            - ∫ τ in p.T..(2 * p.T), muq κ q τ) := by
      simp only [Setting.h]
      field_simp
    rw [hid, abs_mul, abs_of_nonneg (by positivity)]
    have hμ2T : muq κ q (2 * p.T) ≤ Cml * Zeta23.l p.T := by
      have hv := hCml p hT₁' (2 * p.T) ⟨by linarith, le_rfl⟩
      exact (le_abs_self _).trans hv
    have hμ2T0 : 0 ≤ muq κ q (2 * p.T) := hτ₀ _ (by linarith)
    calc F.a * p.L ^ 2 * |p.h * ∑ k ∈ Finset.range p.d, muq κ q (p.T + k * p.h)
          - ∫ τ in p.T..(2 * p.T), muq κ q τ|
        ≤ F.a * p.L ^ 2 * (2 * p.h * muq κ q (2 * p.T)) := by gcongr
      _ ≤ 1 * p.L ^ 2 * (2 * p.h * (Cml * Zeta23.l p.T)) := by gcongr
      _ = 4 * π * Cml * p.L * Zeta23.l p.T := by
          simp only [Setting.h]
          field_simp
          ring
  have h4 : |∑ k ∈ Finset.range p.d, GP k| ≤ p.L ^ 2 / Real.log 2 * (3 * Real.sqrt p.X) := by
    refine (sum_P_part_chi_bound hF.toCoreW hc).trans ?_
    have hconv : ∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊, (Λ n : ℝ) * (n : ℝ) ^ (-(1/2 : ℝ))
        = ∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊, Λ n / Real.sqrt n := by
      refine Finset.sum_congr rfl fun n hn => ?_
      have hn0 : 0 < n := (Finset.mem_Ioc.1 hn).1
      rw [Real.rpow_neg (Nat.cast_nonneg n), ← Real.sqrt_eq_rpow, div_eq_mul_inv]
    rw [hconv]
    have hnn : (0:ℝ) ≤ p.L ^ 2 / Real.log 2 := by
      have hlog2'' : (0:ℝ) < Real.log 2 := Real.log_pos one_lt_two
      positivity
    exact mul_le_mul_of_nonneg_left (hx₀ p.X hX) hnn
  have hcomb : |∑ k ∈ Finset.range p.d, GentryChiA κ q c p F k k
      - F.a * p.L ^ 2 * ∫ τ in p.T..(2 * p.T), muq κ q τ|
      ≤ p.d * (K * (I₁ + I₂) / p.T) + 4 * π * Cml * p.L * Zeta23.l p.T
        + p.L ^ 2 / Real.log 2 * (3 * Real.sqrt p.X) := by
    rw [hdecomp]
    calc |∑ k ∈ Finset.range p.d, Gμ k + ∑ k ∈ Finset.range p.d, GP k
          - F.a * p.L ^ 2 * ∫ τ in p.T..(2 * p.T), muq κ q τ|
        = |(∑ k ∈ Finset.range p.d, Gμ k
            - 2 * π * F.a * p.L * ∑ k ∈ Finset.range p.d, muq κ q (p.tau k))
          + (2 * π * F.a * p.L * ∑ k ∈ Finset.range p.d, muq κ q (p.tau k)
            - F.a * p.L ^ 2 * ∫ τ in p.T..(2 * p.T), muq κ q τ)
          + ∑ k ∈ Finset.range p.d, GP k| := by ring_nf
      _ ≤ |∑ k ∈ Finset.range p.d, Gμ k
            - 2 * π * F.a * p.L * ∑ k ∈ Finset.range p.d, muq κ q (p.tau k)|
          + |2 * π * F.a * p.L * ∑ k ∈ Finset.range p.d, muq κ q (p.tau k)
            - F.a * p.L ^ 2 * ∫ τ in p.T..(2 * p.T), muq κ q τ|
          + |∑ k ∈ Finset.range p.d, GP k| := abs_add_three _ _ _
      _ ≤ _ := by linarith
  set S := p.L * Real.sqrt p.X with hS
  have hS8 : 8 ≤ S := by nlinarith
  have hS1 : 1 ≤ S := by linarith
  have hS0 : 0 ≤ S := by linarith
  have hLS : p.L ≤ S := by nlinarith
  have hlX : Zeta23.l p.T ≤ 2 / lam * Real.sqrt p.X := by
    have he : Real.sqrt p.X = Real.exp (p.lam * Zeta23.l p.T / 2) := by
      rw [show p.X = Real.exp (p.L) from rfl, ← Real.exp_half]
      rfl
    rw [he, div_mul_eq_mul_div, le_div_iff₀ hlam.1]
    have h1 := Real.add_one_le_exp (p.lam * Zeta23.l p.T / 2)
    rw [hplam] at *
    nlinarith [hlam.1]
  have hlog2 : (0.6931471803 : ℝ) < Real.log 2 := Real.log_two_gt_d9
  have hlog2' : (0:ℝ) < Real.log 2 := by linarith
  have hd : (p.d : ℝ) ≤ p.L * p.T / (2 * π) := p.d_le (by positivity)
  have hπ1 : (1:ℝ) ≤ 2 * π := by nlinarith [Real.pi_gt_three]
  have t1 : (p.d : ℝ) * (K * (I₁ + I₂) / p.T)
      ≤ p.L * (K * (16 + 2 * cϱ + 2 * cϱ ^ 2) * S) := by
    have e1 : (p.d : ℝ) * (K * (I₁ + I₂) / p.T)
        ≤ p.L * p.T / (2 * π) * (K * (I₁ + I₂) / p.T) := by
      gcongr
    have e2 : p.L * p.T / (2 * π) * (K * (I₁ + I₂) / p.T)
        = p.L * (K * (I₁ + I₂)) / (2 * π) := by
      field_simp
    have e3 : I₁ + I₂ ≤ (16 + 2 * cϱ + 2 * cϱ ^ 2) * p.L := by
      have u1 : (16:ℝ) ≤ 16 * p.L := by nlinarith
      have u3 : 2 * cϱ ^ 2 ≤ 2 * cϱ ^ 2 * p.L := by nlinarith [sq_nonneg cϱ]
      nlinarith
    calc (p.d : ℝ) * (K * (I₁ + I₂) / p.T) ≤ p.L * (K * (I₁ + I₂)) / (2 * π) := by
          rw [← e2]
          exact e1
      _ ≤ p.L * (K * (I₁ + I₂)) := by
          apply div_le_self (by positivity)
          exact hπ1
      _ ≤ p.L * (K * ((16 + 2 * cϱ + 2 * cϱ ^ 2) * p.L)) := by gcongr
      _ = p.L * (K * (16 + 2 * cϱ + 2 * cϱ ^ 2)) * p.L := by ring
      _ ≤ p.L * (K * (16 + 2 * cϱ + 2 * cϱ ^ 2)) * S := by
          have hnn : (0:ℝ) ≤ p.L * (K * (16 + 2 * cϱ + 2 * cϱ ^ 2)) := by positivity
          exact mul_le_mul_of_nonneg_left hLS hnn
      _ = p.L * (K * (16 + 2 * cϱ + 2 * cϱ ^ 2) * S) := by ring
  have t2 : 4 * π * Cml * p.L * Zeta23.l p.T ≤ p.L * (4 * π * Cml / lam * S) := by
    have e1 : Zeta23.l p.T ≤ S / lam := by
      rw [le_div_iff₀ hlam.1]
      calc Zeta23.l p.T * lam ≤ (2 / lam * Real.sqrt p.X) * lam := by
            gcongr
            exact hlam.1.le
        _ = 2 * Real.sqrt p.X := by
            have hne := hlam.1.ne'
            field_simp
        _ ≤ p.L * Real.sqrt p.X := by
            exact mul_le_mul_of_nonneg_right (by linarith) hsX
        _ = S := hS.symm
    calc 4 * π * Cml * p.L * Zeta23.l p.T ≤ 4 * π * Cml * p.L * (S / lam) := by
          gcongr
      _ = p.L * (4 * π * Cml / lam * S) := by
          have hne := hlam.1.ne'
          field_simp
  have t4 : p.L ^ 2 / Real.log 2 * (3 * Real.sqrt p.X) ≤ p.L * (5 * S) := by
    have e1 : p.L ^ 2 / Real.log 2 * (3 * Real.sqrt p.X) = p.L * ((3 / Real.log 2) * S) := by
      rw [hS]
      field_simp
    rw [e1]
    gcongr
    rw [div_le_iff₀ hlog2']
    nlinarith
  have hmu_form : |trGtChiA κ q c p F - F.a * p.L * ∫ τ in p.T..(2 * p.T), muq κ q τ|
      ≤ (K * (16 + 2 * cϱ + 2 * cϱ ^ 2) + 4 * π * Cml / lam + 5) * S := by
    have htr : trGtChiA κ q c p F - F.a * p.L * ∫ τ in p.T..(2 * p.T), muq κ q τ
        = p.L⁻¹ * (∑ k ∈ Finset.range p.d, GentryChiA κ q c p F k k
            - F.a * p.L ^ 2 * ∫ τ in p.T..(2 * p.T), muq κ q τ) := by
      simp only [trGtChiA, hsumFin]
      field_simp
    rw [htr, abs_mul, abs_of_pos (inv_pos.2 hL)]
    calc p.L⁻¹ * |∑ k ∈ Finset.range p.d, GentryChiA κ q c p F k k
          - F.a * p.L ^ 2 * ∫ τ in p.T..(2 * p.T), muq κ q τ|
        ≤ p.L⁻¹ * (p.L * (K * (16 + 2 * cϱ + 2 * cϱ ^ 2) * S)
            + p.L * (4 * π * Cml / lam * S) + p.L * (5 * S)) := by
          gcongr
          refine hcomb.trans ?_
          linarith
      _ = (K * (16 + 2 * cϱ + 2 * cϱ ^ 2) + 4 * π * Cml / lam + 5) * S := by
          field_simp
  have hT1' : (1:ℝ) ≤ p.T := by linarith
  have hμint := hCμ p.T hT2
  have e2' : |F.a * p.L * ((∫ τ in p.T..(2 * p.T), muq κ q τ) - p.T * ell1q q p.T / (2 * π))|
      ≤ |Cμ| * S := by
    rw [abs_mul, abs_of_nonneg (mul_nonneg ha0 hL.le)]
    have hi : |(∫ τ in p.T..(2 * p.T), muq κ q τ) - p.T * ell1q q p.T / (2 * π)| ≤ |Cμ| := by
      refine hμint.trans ?_
      calc Cμ / p.T ≤ |Cμ| / p.T := by gcongr; exact le_abs_self _
        _ ≤ |Cμ| / 1 := by
            apply div_le_div_of_nonneg_left (abs_nonneg _) one_pos
            exact hT1'
        _ = |Cμ| := div_one _
    calc F.a * p.L * |(∫ τ in p.T..(2 * p.T), muq κ q τ) - p.T * ell1q q p.T / (2 * π)|
        ≤ 1 * p.L * |Cμ| := by gcongr
      _ = p.L * |Cμ| := by ring
      _ ≤ S * |Cμ| := mul_le_mul_of_nonneg_right hLS (abs_nonneg _)
      _ = |Cμ| * S := by ring
  have e3' : |F.a * p.L * (p.T * ell1q q p.T / (2 * π) - N)| ≤ 8 * |A| / lam * S := by
    rw [abs_mul, abs_of_nonneg (mul_nonneg ha0 hL.le), abs_sub_comm]
    have hlogT : Real.log p.T ≤ Zeta23.l p.T + 3 := by
      have e1 : Zeta23.l p.T = Real.log p.T - Real.log (2 * π) := by
        rw [Zeta23.l, Real.log_div (ne_of_gt hT0) (by positivity)]
      have hlog2π : Real.log (2 * π) ≤ 3 := by
        rw [show (3:ℝ) = Real.log (Real.exp 3) by rw [Real.log_exp]]
        apply Real.log_le_log (by nlinarith [Real.pi_gt_three])
        have he1 := Real.exp_one_gt_d9
        have he3 : Real.exp 3 = Real.exp 1 * Real.exp 1 * Real.exp 1 := by
          rw [← Real.exp_add, ← Real.exp_add]
          norm_num
        have hp2 : (7.3:ℝ) ≤ Real.exp 1 * Real.exp 1 := by nlinarith
        have hp3 : (19:ℝ) ≤ Real.exp 1 * Real.exp 1 * Real.exp 1 := by nlinarith
        rw [he3]
        nlinarith [Real.pi_lt_four]
      linarith
    have hwin : |N - p.T * ell1q q p.T / (2 * π)| ≤ |A| * (Zeta23.l p.T + 3) := by
      rw [show p.T * ell1q q p.T / (2 * π) = p.T / (2 * π) * ell1q q p.T by ring]
      refine hN.trans ?_
      have hlogT0 : (0:ℝ) ≤ Real.log p.T := Real.log_nonneg hT1'
      calc A * Real.log p.T ≤ |A| * Real.log p.T :=
            mul_le_mul_of_nonneg_right (le_abs_self A) hlogT0
        _ ≤ |A| * (Zeta23.l p.T + 3) := mul_le_mul_of_nonneg_left hlogT (abs_nonneg A)
    calc F.a * p.L * |N - p.T * ell1q q p.T / (2 * π)|
        ≤ 1 * p.L * (|A| * (Zeta23.l p.T + 3)) := by gcongr
      _ = p.L * (|A| * (Zeta23.l p.T + 3)) := by ring
      _ ≤ p.L * (|A| * (4 * Zeta23.l p.T)) := by
          gcongr
          linarith
      _ ≤ p.L * (|A| * (4 * (2 / lam * Real.sqrt p.X))) := by gcongr
      _ = 8 * |A| / lam * (p.L * Real.sqrt p.X) := by
          have hne := hlam.1.ne'
          field_simp
          ring
      _ = 8 * |A| / lam * S := by rw [hS]
  calc |trGtChiA κ q c p F - F.a * p.L * N|
      = |(trGtChiA κ q c p F - F.a * p.L * ∫ τ in p.T..(2 * p.T), muq κ q τ)
          + F.a * p.L * ((∫ τ in p.T..(2 * p.T), muq κ q τ) - p.T * ell1q q p.T / (2 * π))
          + F.a * p.L * (p.T * ell1q q p.T / (2 * π) - N)| := by ring_nf
    _ ≤ |trGtChiA κ q c p F - F.a * p.L * ∫ τ in p.T..(2 * p.T), muq κ q τ|
          + |F.a * p.L * ((∫ τ in p.T..(2 * p.T), muq κ q τ) - p.T * ell1q q p.T / (2 * π))|
          + |F.a * p.L * (p.T * ell1q q p.T / (2 * π) - N)| := abs_add_three _ _ _
    _ ≤ (K * (16 + 2 * cϱ + 2 * cϱ ^ 2) + 4 * π * Cml / lam + 5 + |Cμ| + 8 * |A| / lam) * S := by
        linarith [hmu_form, e2', e3']


set_option linter.unusedVariables false in
/-- **[eq:Msplit] for L(s,χ)**: three terms only (`Π_X ≡ 0`):
`𝓜 = 𝓜[μ_χ,μ_χ] + 𝓜[P,P] + 2𝓜[μ_χ,P]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean#L828).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7f058ea3d12e02b6f34456557fc66c69d693d9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# reZeroSet_card_le_of_growth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85d41320-69bd-fa9d-8491-e720bc1d8f39",
  "kind": "theorem",
  "lexical_name": "reZeroSet_card_le_of_growth",
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
  "slug": "rezeroset-card-le-of-growth--a89607c57cb1291dbbb380e5",
  "source": {
    "blob": "c3544fe670aa3734da7c10f647de6dd749755068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 109,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a89607c57cb1291dbbb380e506610649ef589931f46f66e24ef263f146fdc0c3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85d41320-69bd-fa9d-8491-e720bc1d8f39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reZeroSet_card_le_of_growth {A C : ℝ} (hC : 0 < C)
    (hgrowth : ∀ s : ℂ, (0.15 : ℝ) ≤ s.re → 1 ≤ ‖s - 1‖ →
      ‖riemannZeta s‖ ≤ C * (|s.im| + 3) ^ A) :
    ∀ T : ℝ, 4 ≤ T → (reZeroSet T).Finite ∧ ((reZeroSet T).ncard : ℝ)
      ≤ (1 / Real.log ((0.9 : ℝ) / 0.8) * (|Real.log (6 * C)| + 2 * max A 0)) * Real.log T := by
  set A' : ℝ := max A 0 with hA'
  have hA'0 : 0 ≤ A' := le_max_right _ _
  set r : ℝ := 0.8 with hr
  set R : ℝ := 0.9 with hR
  have hlogRr : 0 < Real.log (R / r) := Real.log_pos (by norm_num [hr, hR])
  intro T hT
  set κ : ℂ := ((19/10 : ℝ) : ℂ) with hκ
  have hκ0 : κ ≠ 0 := by simp [hκ]
  have hnormκ : ‖κ‖ = 1.9 := by simp [hκ]; norm_num
  -- the centre value g_T(2) = Re ζ(2+iT) ≥ 2 − π²/6 > 1/3
  have hne2 : (2:ℂ) + T * I ≠ 1 := by
    have := ne_one_of_im_large (T := T) (z := 0) hT (by norm_num)
    simpa using this.1
  have hsub1 := norm_riemannZeta_sub_one_le (s := 2 + T * I) (by simp)
  have hre2 : 2 - Real.pi ^ 2 / 6 ≤ (riemannZeta (2 + T * I)).re := by
    have h2 : |(riemannZeta (2 + T * I) - 1).re| ≤ Real.pi ^ 2 / 6 - 1 :=
      (Complex.abs_re_le_norm _).trans hsub1
    have h3 : (riemannZeta (2 + T * I) - 1).re = (riemannZeta (2 + T * I)).re - 1 := by simp
    rw [h3] at h2
    linarith [(abs_le.mp h2).1]
  have hthird := one_third_lt_two_sub_pi_sq_div_six
  have hg2 : symZeta T 2 = (((riemannZeta ((2:ℂ) + T * I)).re : ℝ) : ℂ) := by
    have h := symZeta_ofReal (T := T) 2 (by push_cast; exact hne2)
    push_cast at h ⊢
    exact h
  have hg2ne : symZeta T 2 ≠ 0 := by
    rw [hg2]
    simp only [ne_eq, Complex.ofReal_eq_zero]
    linarith
  set u : ℂ := (symZeta T 2)⁻¹ with hu
  have hu0 : u ≠ 0 := inv_ne_zero hg2ne
  have hnu : ‖u‖ ≤ 3 := by
    rw [hu, norm_inv, inv_le_comm₀ (by positivity) (by norm_num)]
    rw [hg2, Complex.norm_real, Real.norm_eq_abs, abs_of_pos (by linarith)]
    linarith
  set G : ℂ → ℂ := fun w => symZeta T (2 + κ * w) * u with hG
  have hGanalytic : ∀ w : ℂ, ‖w‖ ≤ 1.05 → AnalyticAt ℂ G w := by
    intro w hw
    have hκw : ‖κ * w‖ ≤ 2 := by
      rw [norm_mul, hnormκ]; nlinarith [norm_nonneg w]
    obtain ⟨h1, h2⟩ := ne_one_of_im_large (z := κ * w) hT hκw
    have hs : AnalyticAt ℂ (symZeta T) (2 + κ * w) := by
      apply symZeta_analyticAt
      · rw [show (2:ℂ) + κ * w + T * I = κ * w + 2 + T * I by ring]; exact h1
      · rw [show (2:ℂ) + κ * w - T * I = κ * w + 2 - T * I by ring]; exact h2
    exact ((hs.comp_of_eq (by fun_prop : AnalyticAt ℂ (fun w : ℂ => 2 + κ * w) w) rfl).mul
      analyticAt_const)
  have hG0 : G 0 = 1 := by
    simp only [hG, mul_zero, add_zero, hu]
    exact mul_inv_cancel₀ hg2ne
  -- finiteness of the unit-ball zeros
  have hball : AnalyticOnNhd ℂ G (Metric.ball 0 1.05) := by
    intro w hw
    rw [Metric.mem_ball, dist_zero_right] at hw
    exact hGanalytic w hw.le
  have hfin : (SetOfZeros 1 G).Finite := by
    have h := finite_zeros_closedBall (f := G) (R := 1.05) (r := 1) (by norm_num) hball
      (z₀ := 0) (by simp; norm_num) (by rw [hG0]; exact one_ne_zero)
    exact h.subset (by intro z hz; exact hz)
  -- growth bound on ‖w‖ ≤ R
  set B : ℝ := 6 * C * (T + 5) ^ A' with hB
  have hBpos : 0 < B := by positivity
  have hκre : κ.re = 1.9 := by rw [hκ]; norm_num [Complex.ofReal_re]
  have hκim : κ.im = 0 := by rw [hκ]; simp
  have hfz : ∀ w : ℂ, ‖w‖ ≤ R → ‖G w‖ ≤ B := by
    intro w hw
    have hwre := abs_le.mp ((Complex.abs_re_le_norm w).trans hw)
    have hwim := abs_le.mp ((Complex.abs_im_le_norm w).trans hw)
    rw [hR] at hwre hwim
    have hκwre : (κ * w).re = 1.9 * w.re := by
      rw [Complex.mul_re, hκre, hκim]; ring
    have hκwim : (κ * w).im = 1.9 * w.im := by
      rw [Complex.mul_im, hκre, hκim]; ring
    have hzeta : ∀ ε : ℝ, ε = 1 ∨ ε = -1 →
        ‖riemannZeta (2 + κ * w + ε * T * I)‖ ≤ C * (T + 5) ^ A' := by
      intro ε hε
      set s : ℂ := 2 + κ * w + ε * T * I with hs
      have hsre : s.re = 2 + 1.9 * w.re := by
        rw [hs]
        simp only [Complex.add_re, Complex.mul_re, Complex.I_re, Complex.I_im,
          Complex.ofReal_re, Complex.ofReal_im, Complex.re_ofNat, Complex.mul_im, hκre, hκim]
        ring
      have hsim : s.im = 1.9 * w.im + ε * T := by
        rw [hs]
        simp only [Complex.add_im, Complex.mul_im, Complex.I_re, Complex.I_im,
          Complex.ofReal_re, Complex.ofReal_im, Complex.im_ofNat, Complex.mul_re, hκre, hκim]
        ring
      have hεT : T - 1.71 ≤ |1.9 * w.im + ε * T| := by
        rcases hε with rfl | rfl
        · rw [abs_of_pos (by nlinarith)]; nlinarith
        · rw [abs_of_neg (by nlinarith)]; nlinarith
      have h1 : (0.15:ℝ) ≤ s.re := by rw [hsre]; nlinarith
      have h2 : 1 ≤ ‖s - 1‖ := by
        have := Complex.abs_im_le_norm (s - 1)
        have : |(s - 1).im| ≤ ‖s - 1‖ := this
        have him : (s - 1).im = s.im := by simp
        rw [him, hsim] at this
        linarith [hεT.trans this]
      have h3 := hgrowth s h1 h2
      have hbase1 : (1:ℝ) ≤ |s.im| + 3 := by linarith [abs_nonneg s.im]
      have hA'A : (|s.im| + 3) ^ A ≤ (|s.im| + 3) ^ A' :=
        Real.rpow_le_rpow_of_exponent_le hbase1 (le_max_left _ _)
      have hbase : |s.im| + 3 ≤ T + 5 := by
        rw [hsim]
        have h4 := abs_add_le (1.9 * w.im) (ε * T)
        have h5 : |1.9 * w.im| ≤ 1.71 := by
          rw [abs_mul, abs_of_pos (by norm_num : (0:ℝ) < 1.9)]
          have : |w.im| ≤ 0.9 := abs_le.mpr ⟨hwim.1, hwim.2⟩
          nlinarith
        have h6 : |ε * T| = T := by
          rcases hε with rfl | rfl <;> rw [abs_mul] <;>
            simp [abs_of_pos (by linarith : (0:ℝ) < T)]
        linarith
      have hmono : (|s.im| + 3) ^ A' ≤ (T + 5) ^ A' :=
        Real.rpow_le_rpow (by positivity) hbase hA'0
      calc ‖riemannZeta s‖ ≤ C * (|s.im| + 3) ^ A := h3
        _ ≤ C * (T + 5) ^ A' := by
            exact mul_le_mul_of_nonneg_left (hA'A.trans hmono) hC.le
    have hgb : ‖symZeta T (2 + κ * w)‖ ≤ C * (T + 5) ^ A' := by
      have e1 : (2:ℂ) + κ * w + (1:ℝ) * T * I = 2 + κ * w + T * I := by push_cast; ring
      have e2 : (2:ℂ) + κ * w + (-1:ℝ) * T * I = 2 + κ * w - T * I := by push_cast; ring
      have ha := hzeta 1 (Or.inl rfl)
      have hb := hzeta (-1) (Or.inr rfl)
      rw [e1] at ha
      rw [e2] at hb
      unfold symZeta
      calc ‖(riemannZeta (2 + κ * w + T * I) + riemannZeta (2 + κ * w - T * I)) / 2‖
          = ‖riemannZeta (2 + κ * w + T * I) + riemannZeta (2 + κ * w - T * I)‖ / 2 := by
            rw [norm_div]; norm_num
        _ ≤ (‖riemannZeta (2 + κ * w + T * I)‖ + ‖riemannZeta (2 + κ * w - T * I)‖) / 2 := by
            gcongr
            exact norm_add_le _ _
        _ ≤ C * (T + 5) ^ A' := by linarith
    calc ‖G w‖ = ‖symZeta T (2 + κ * w)‖ * ‖u‖ := by rw [hG]; exact norm_mul _ _
      _ ≤ (C * (T + 5) ^ A') * 3 := by
          apply mul_le_mul hgb hnu (norm_nonneg _) (by positivity)
      _ ≤ B := by
          rw [hB]
          nlinarith [Real.rpow_nonneg (by linarith : (0:ℝ) ≤ T + 5) A']
  -- apply the ported ZerosBound
  have hfAnalytic : AnalyticOnNhd ℂ G (Metric.closedBall (0:ℂ) 1) := by
    intro w hw
    rw [Metric.mem_closedBall, dist_zero_right] at hw
    exact hGanalytic w (hw.trans (by norm_num))
  have hrlt1 : r < 1 := by norm_num [hr]
  have hZ := ZerosBound (B := B) (r := r) (R := R) (by norm_num [hr]) hrlt1
    (by norm_num [hr, hR]) (by norm_num [hR]) hfAnalytic hG0 hfin hfz
  set Z : Finset ℂ := (finiteSetOfZeros_mono hrlt1 hfin).toFinset with hZdef
  have horder : ∀ ρ ∈ Z, 1 ≤ analyticOrderNatAt G ρ := by
    intro ρ hρ
    rw [hZdef, Set.Finite.mem_toFinset] at hρ
    obtain ⟨hρr, hρ0⟩ := hρ
    have hρr' : ‖ρ‖ ≤ r := hρr
    have han : AnalyticAt ℂ G ρ := hGanalytic ρ (by rw [hr] at hρr'; linarith)
    have hne0 : analyticOrderAt G ρ ≠ 0 := han.analyticOrderAt_ne_zero.mpr hρ0
    have hnetop : analyticOrderAt G ρ ≠ ⊤ := by
      refine hball.analyticOrderAt_ne_top_of_isPreconnected (convex_ball _ _).isPreconnected
        (x := 0) ?_ ?_ ?_
      · rw [Metric.mem_ball, dist_zero_right]; simp; norm_num
      · rw [Metric.mem_ball, dist_zero_right]; rw [hr] at hρr'; linarith
      · rw [(hGanalytic 0 (by norm_num)).analyticOrderAt_eq_zero.mpr
          (by rw [hG0]; exact one_ne_zero)]
        exact ENat.zero_ne_top
    unfold analyticOrderNatAt
    obtain ⟨n, hn⟩ := ENat.ne_top_iff_exists.mp hnetop
    rw [← hn] at hne0 ⊢
    simp only [ENat.toNat_coe, ne_eq, Nat.cast_eq_zero] at hne0 ⊢
    omega
  -- the real zeros inject into Z
  set φ : ℝ → ℂ := fun σ => ((σ - 2 : ℝ) : ℂ) / κ with hφ
  have hφinj : Set.InjOn φ (reZeroSet T) := by
    intro a _ b _ h
    simp only [hφ] at h
    have h' : ((a - 2 : ℝ) : ℂ) = ((b - 2 : ℝ) : ℂ) := by
      have := congrArg (fun z => z * κ) h
      simpa [div_mul_cancel₀ _ hκ0] using this
    have := Complex.ofReal_inj.mp h'
    linarith
  have hmem : ∀ σ ∈ reZeroSet T, φ σ ∈ SetOfZeros r G := by
    rintro σ ⟨hσI, hσ0⟩
    have hσ1 : (1/2:ℝ) ≤ σ := hσI.1
    have hσ2 : σ ≤ 2 := hσI.2
    constructor
    · show ‖((σ - 2 : ℝ) : ℂ) / κ‖ ≤ r
      rw [norm_div, hnormκ, Complex.norm_real, Real.norm_eq_abs, hr]
      rw [abs_of_nonpos (by linarith)]
      rw [div_le_iff₀ (by norm_num)]
      linarith
    · show G (φ σ) = 0
      have hfix : (2:ℂ) + κ * φ σ = (σ:ℂ) := by
        simp only [hφ]
        field_simp
        push_cast
        ring
      have hne1 : (σ:ℂ) + T * I ≠ 1 := by
        intro h
        have := congrArg Complex.im h
        simp at this
        linarith
      simp only [hG, hfix]
      rw [symZeta_ofReal σ hne1, hσ0]
      simp
  have himg : φ '' (reZeroSet T) ⊆ (↑Z : Set ℂ) := by
    rintro _ ⟨σ, hσ, rfl⟩
    rw [hZdef]
    simp only [Set.Finite.coe_toFinset]
    exact hmem σ hσ
  have hfinRe : (reZeroSet T).Finite :=
    Set.Finite.of_finite_image (Z.finite_toSet.subset himg) hφinj
  refine ⟨hfinRe, ?_⟩
  have hcard : ((reZeroSet T).ncard : ℝ) ≤ (Z.card : ℝ) := by
    have h1 : (reZeroSet T).ncard = (φ '' reZeroSet T).ncard :=
      (hφinj.ncard_image).symm
    have h2 : (φ '' reZeroSet T).ncard ≤ (↑Z : Set ℂ).ncard :=
      Set.ncard_le_ncard himg Z.finite_toSet
    rw [Set.ncard_coe_finset] at h2
    exact_mod_cast h1 ▸ h2
  have hsum : (Z.card : ℝ) ≤ ((∑ ρ ∈ Z, analyticOrderNatAt G ρ : ℕ) : ℝ) := by
    have h := (Finset.card_eq_sum_ones Z).le.trans (Finset.sum_le_sum horder)
    exact_mod_cast h
  have hlogT : 1 ≤ Real.log T := by
    rw [← Real.log_exp 1]
    apply Real.log_le_log (Real.exp_pos 1)
    have := Real.exp_one_lt_d9; linarith
  have hlog5 : Real.log (T + 5) ≤ 2 * Real.log T := by
    rw [← Real.log_rpow (by linarith : (0:ℝ) < T), Real.rpow_two]
    apply Real.log_le_log (by linarith)
    nlinarith
  have hlogB : Real.log B ≤ (|Real.log (6 * C)| + 2 * A') * Real.log T := by
    rw [hB, Real.log_mul (by positivity) (by positivity),
      Real.log_rpow (by linarith : (0:ℝ) < T + 5)]
    have h1 := le_abs_self (Real.log (6 * C))
    have h2 : |Real.log (6 * C)| ≤ |Real.log (6 * C)| * Real.log T :=
      le_mul_of_one_le_right (abs_nonneg _) hlogT
    have h3 : A' * Real.log (T + 5) ≤ A' * (2 * Real.log T) :=
      mul_le_mul_of_nonneg_left hlog5 hA'0
    linarith
  calc ((reZeroSet T).ncard : ℝ) ≤ (Z.card : ℝ) := hcard
    _ ≤ _ := hsum
    _ ≤ 1 / Real.log (R / r) * Real.log B := by exact_mod_cast hZ
    _ ≤ 1 / Real.log (R / r) * ((|Real.log (6 * C)| + 2 * A') * Real.log T) :=
        mul_le_mul_of_nonneg_left hlogB (by positivity)
    _ = _ := by ring

/-- **(J) the Jensen half of Backlund's bound**: #{σ ∈ [1/2,2] : Re ζ(σ+iT) = 0} ≪ log T. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3544fe670aa3734da7c10f647de6dd749755068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

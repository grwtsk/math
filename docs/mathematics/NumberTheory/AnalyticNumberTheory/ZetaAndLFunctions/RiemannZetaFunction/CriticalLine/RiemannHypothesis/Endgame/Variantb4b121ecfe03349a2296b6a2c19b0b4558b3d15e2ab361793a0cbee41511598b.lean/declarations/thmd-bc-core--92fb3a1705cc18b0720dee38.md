# thmD_BC_core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf1f28a2-568b-e33e-d18f-2370826b1003",
  "kind": "theorem",
  "lexical_name": "thmD_BC_core",
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
  "slug": "thmd-bc-core--92fb3a1705cc18b0720dee38",
  "source": {
    "blob": "703aede5f80c64d8db061d84412ac27e903e78d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 216,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variantb4b121ecfe03349a2296b6a2c19b0b4558b3d15e2ab361793a0cbee41511598b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92fb3a1705cc18b0720dee38fe28a16c09ed6a9ba98e65bf3b07d026484650d9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variantb4b121ecfe03349a2296b6a2c19b0b4558b3d15e2ab361793a0cbee41511598b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf1f28a2-568b-e33e-d18f-2370826b1003`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thmD_BC_core (Z : ZeroConfig) (H : PaperInputs Z) (P : Params) (hP : P.Valid)
    (hlam : P.lam < 1)
    (aT bT JT trG trG2 : ℝ → ℝ)
    (hTr : TracesBoundsD P aT bT JT trG trG2 (fun T => (Z.N T (2 * T) : ℝ)))
    {c : ℝ} (hc0 : 0 < c)
    (hc : Tendsto (fun T => cRatio (P.lam1 T) (aT T) (bT T) (JT T)) atTop (𝓝 c))
    (ha : ∀ᶠ T in atTop, 1 / 2 ≤ aT T ∧ aT T ≤ 1)
    (hBlock : ∀ᶠ T in atTop, BlockInputs Z (P.atD T) T)
    (θ₀ : ℝ → ℝ) (hTail : ∀ᶠ T in atTop, TailInputs Z (P.atD T) T (θ₀ T))
    (hθ₀ : ∃ C : ℝ, ∀ᶠ T in atTop, θ₀ T ≤ C * l T * T ^ (P.lam / 2 - 1))
    (hNII : ∃ C : ℝ, ∀ᶠ T in atTop, (NII Z T : ℝ) ≤ C * Real.sqrt T * l T)
    (hGzGp : ∀ᶠ T in atTop, Z.Gz (P.atD T) T = (P.atD T).Gp T)
    (hId : ∀ᶠ T in atTop, (P.atD T).trGtilde T = trG T ∧ (P.atD T).trGtildeSq T = trG2 T ∧
      (P.atD T).a T = aT T) :
    ∃ R : ℝ → ℝ, R =o[atTop] (fun T => (Z.N T (2 * T) : ℝ)) ∧
      ∀ᶠ T in atTop,
        (2 * c - 1) * (Z.N T (2 * T) : ℝ) - 2 * R T ≤ Z.N0s T (2 * T) ∧
        c * (Z.N T (2 * T) : ℝ) - R T ≤ Z.Nd T (2 * T) := by
  have hlam0 := hP.lam_pos
  have hlam1 : P.lam ≤ 1 := hlam.le
  have hcalE := calE_tendsto_zero P hlam0 hlam1 (zero_le_one.trans hP.one_le_w)
  obtain ⟨C₃, hC₃, T₃, hratio⟩ := hTr.ratio
  obtain ⟨C₄, hC₄, T₄, htr1⟩ := hTr.tr1
  obtain ⟨Cθ, hθ⟩ := hθ₀
  obtain ⟨CII, hII⟩ := hNII
  set N : ℝ → ℝ := fun T => (Z.N T (2 * T) : ℝ) with hNdef
  set cT : ℝ → ℝ := fun T => cRatio (P.lam1 T) (aT T) (bT T) (JT T) with hcT
  set x : ℝ → ℝ := fun T => θ₀ T * (P.d T : ℝ) / trG T with hxdef
  set R : ℝ → ℝ := fun T => (C₃ * P.calE T * (cT T * N T)
      + 2 * x T * ((1 + C₃ * P.calE T) * (cT T * N T)))
      + (NII Z T : ℝ) + |cT T - c| * N T with hRdef
  have hNtop : Tendsto N atTop atTop := tendsto_N_atTop Z H.RvM
  have hcE0 : Tendsto (fun T => C₃ * P.calE T) atTop (𝓝 0) := by simpa using hcalE.const_mul C₃
  -- √X ≤ N/(4C₄) eventually (√X = o(Tl) = o(N))
  have hsqrtX : ∀ᶠ T in atTop, C₄ * Real.sqrt (P.X T) ≤ N T / 4 := by
    have ho := isLittleO_N_of_isLittleO_Tl Z H.RvM (isLittleO_sqrtX_Tl P hlam0 hlam1)
    have h := ho.def (show (0:ℝ) < 1 / (4 * C₄) by positivity)
    filter_upwards [h] with T hT
    rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_of_nonneg (Real.sqrt_nonneg _),
      abs_of_nonneg (Nat.cast_nonneg _)] at hT
    have : C₄ * Real.sqrt (P.X T) ≤ C₄ * (1 / (4 * C₄) * N T) :=
      mul_le_mul_of_nonneg_left hT hC₄.le
    calc C₄ * Real.sqrt (P.X T) ≤ C₄ * (1 / (4 * C₄) * N T) := this
      _ = N T / 4 := by field_simp
  -- Step 0: eventually tr G̃ ≥ L N / 4 > 0 and x ≤ 8(|Cθ|+1) T^{λ/2−1} (so θ₀ d < tr G̃ and x → 0).
  have hx : ∀ᶠ T in atTop, 0 < trG T ∧ 0 ≤ x T ∧
      x T ≤ 8 * (|Cθ| + 1) * T ^ (P.lam / 2 - 1) ∧ θ₀ T * (P.d T : ℝ) < trG T := by
    filter_upwards [hTail, hθ, ha, eventually_ge_atTop T₄, eventually_N_ge Z H.RvM, eventually_l_pos,
      eventually_gt_atTop (0:ℝ), hsqrtX,
      (tendsto_rpow_halflam_sub_one P hlam1).eventually
        (eventually_lt_nhds (show (0:ℝ) < 1 / (16 * (|Cθ| + 1)) by positivity))]
      with T hTl hθT ha2 hT₄ hNge hl hT0 hsX hTs
    have hLpos : 0 < P.L T := by simp only [Params.L]; positivity
    have h1 := (abs_le.mp (by simpa only using htr1 T hT₄)).1
    have hN0 : 0 ≤ N T := Nat.cast_nonneg _
    have hLN : 0 < P.L T * N T := by
      have : 0 < T * l T / (4 * Real.pi) := by positivity
      exact mul_pos hLpos (this.trans_le hNge)
    have htrG : P.L T * N T / 4 ≤ trG T := by
      -- trG ≥ a L N − C₄ L √X ≥ L N/2 − L N/4
      have e1 : aT T * P.L T * N T ≥ 1 / 2 * (P.L T * N T) := by nlinarith [ha2.1, hLN.le]
      have e2 : C₄ * (P.L T * Real.sqrt (P.X T)) ≤ P.L T * (N T / 4) := by
        have := mul_le_mul_of_nonneg_left hsX hLpos.le
        linarith [this]
      simp only [hNdef] at h1 e1 e2 ⊢
      nlinarith [h1, e1, e2]
    have htrGpos : 0 < trG T := lt_of_lt_of_le (by positivity) htrG
    have hd : (P.d T : ℝ) ≤ P.L T * T / (2 * Real.pi) := d_le P (by positivity)
    have hθ' : θ₀ T ≤ (|Cθ| + 1) * l T * T ^ (P.lam / 2 - 1) := by
      refine hθT.trans ?_
      have : Cθ ≤ |Cθ| + 1 := by linarith [le_abs_self Cθ]
      gcongr
    have hθ0 := hTl.theta_nonneg
    have hnum : θ₀ T * (P.d T : ℝ)
        ≤ ((|Cθ| + 1) * l T * T ^ (P.lam / 2 - 1)) * (P.L T * T / (2 * Real.pi)) :=
      mul_le_mul hθ' hd (Nat.cast_nonneg _) (hθ0.trans hθ')
    have hden : P.L T * (T * l T / (4 * Real.pi)) / 4 ≤ trG T :=
      le_trans (by gcongr) htrG
    have hxle : x T ≤ 8 * (|Cθ| + 1) * T ^ (P.lam / 2 - 1) := by
      simp only [hxdef]
      rw [div_le_iff₀ htrGpos]
      calc θ₀ T * (P.d T : ℝ)
          ≤ ((|Cθ| + 1) * l T * T ^ (P.lam / 2 - 1)) * (P.L T * T / (2 * Real.pi)) := hnum
        _ = 8 * (|Cθ| + 1) * T ^ (P.lam / 2 - 1) * (P.L T * (T * l T / (4 * Real.pi)) / 4) := by
          ring
        _ ≤ 8 * (|Cθ| + 1) * T ^ (P.lam / 2 - 1) * trG T := by gcongr
    refine ⟨htrGpos, div_nonneg (mul_nonneg hθ0 (Nat.cast_nonneg _)) htrGpos.le, hxle, ?_⟩
    have hx1 : x T < 1 := by
      refine hxle.trans_lt ?_
      have := (lt_div_iff₀ (show (0:ℝ) < 16 * (|Cθ| + 1) by positivity)).mp hTs
      nlinarith [abs_nonneg Cθ, Real.rpow_nonneg hT0.le (P.lam / 2 - 1)]
    simp only [hxdef] at hx1
    rwa [div_lt_one htrGpos] at hx1
  -- cT is eventually in [0, c+1]
  have hcT_bd : ∀ᶠ T in atTop, 0 ≤ cT T ∧ cT T ≤ c + 1 := by
    filter_upwards [hc.eventually (eventually_ge_nhds hc0),
      hc.eventually (eventually_le_nhds (show c < c + 1 by linarith))] with T h1 h2
    exact ⟨h1, h2⟩
  refine ⟨R, ?_, ?_⟩
  ------------------------------------------------------------------
  -- R = o(N)
  ------------------------------------------------------------------
  · have hFN : (fun T => cT T * N T) =O[atTop] N := by
      refine IsBigO.of_bound (c + 1) ?_
      filter_upwards [hcT_bd] with T hb
      rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_mul, abs_of_nonneg hb.1]
      exact mul_le_mul_of_nonneg_right hb.2 (abs_nonneg _)
    have o1 : (fun T => C₃ * P.calE T * (cT T * N T)) =o[atTop] N := by
      have := ((isLittleO_one_iff ℝ).2 hcE0).mul_isBigO hFN
      simpa using this
    have hxto : Tendsto x atTop (𝓝 0) := by
      refine tendsto_of_tendsto_of_tendsto_of_le_of_le' tendsto_const_nhds
        (by simpa using (tendsto_rpow_halflam_sub_one P hlam1).const_mul (8 * (|Cθ| + 1)))
        (hx.mono fun T h => h.2.1) (hx.mono fun T h => h.2.2.1)
    have o2 : (fun T => 2 * x T * ((1 + C₃ * P.calE T) * (cT T * N T))) =o[atTop] N := by
      have h2x : Tendsto (fun T => 2 * x T) atTop (𝓝 0) := by simpa using hxto.const_mul 2
      have hK : (fun T => 1 + C₃ * P.calE T) =O[atTop] (fun _ => (1:ℝ)) := by
        refine isBigO_one_of_abs_le (C := 2) ?_
        filter_upwards [hcE0.eventually (eventually_ge_nhds (show (-1:ℝ) < 0 by norm_num)),
          hcE0.eventually (eventually_le_nhds (show (0:ℝ) < 1 by norm_num))] with T h1 h2
        rw [abs_of_nonneg (by linarith)]; linarith
      have := ((isLittleO_one_iff ℝ).2 h2x).mul_isBigO (hK.mul hFN)
      simpa using this
    have o3 : (fun T => (NII Z T : ℝ)) =o[atTop] N := by
      have hO : (fun T => (NII Z T : ℝ)) =O[atTop] (fun T => Real.sqrt T * l T) := by
        refine IsBigO.of_bound CII ?_
        filter_upwards [hII, eventually_l_pos] with T h hl
        rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_of_nonneg (Nat.cast_nonneg _),
          abs_of_nonneg (by positivity)]
        simpa [mul_assoc] using h
      exact hO.trans_isLittleO (isLittleO_N_of_isLittleO_Tl Z H.RvM isLittleO_sqrt_mul_l_Tl)
    have o4 : (fun T => |cT T - c| * N T) =o[atTop] N := by
      refine isLittleO_of_tendsto_zero_mul ?_
      have : Tendsto (fun T => cT T - c) atTop (𝓝 0) := by
        simpa using hc.sub_const c
      simpa using this.abs
    exact ((o1.add o2).add o3).add o4
  ------------------------------------------------------------------
  -- the inequalities, eventually
  ------------------------------------------------------------------
  · filter_upwards [hBlock, hTail, hGzGp, hId, hx, eventually_ge_atTop T₃,
      eventually_ge_atTop (0:ℝ), eventually_l_pos,
      eventually_calE_nonneg P hlam0 (zero_le_one.trans hP.one_le_w)]
      with T hBl hTl hGG hid hxT hT₃ hT0 hl hE0
    obtain ⟨hidtr, hidfr, hida⟩ := hid
    have hGt : ((P.atD T).tilde T (Z.Gz (P.atD T) T)).IsHermitian := by
      rw [hGG]; exact isHermitian_tilde _ _ (Gp_isHermitian _ _)
    -- [eq:zeroside2]
    have hZ := seamA_BC hT0 hBl hTl le_rfl hGt
    -- lem:CS, [eq:nplus-lower]
    have hθ0 := hTl.theta_nonneg
    have hrt : rtrace ((P.atD T).tilde T (Z.Gz (P.atD T) T)) = trG T := by
      rw [hGG, rtrace_tilde_Gp, hidtr]
    have hfr : frobSq ((P.atD T).tilde T (Z.Gz (P.atD T) T)) = trG2 T := by
      rw [hGG, frobSq_tilde_Gp, hidfr]
    have htr' : θ₀ T * (Fintype.card (Fin ((P.atD T).d T)) : ℝ)
        < rtrace ((P.atD T).tilde T (Z.Gz (P.atD T) T)) := by
      rw [card_fin_d, hrt]; exact hxT.2.2.2
    have hCS₀ := nplus_lower hGt hθ0 htr'
    rw [card_fin_d, hrt, hfr] at hCS₀
    have hCS : (trG T - θ₀ T * (P.d T : ℝ)) ^ 2 / trG2 T ≤ (posIndexAbove hGt (θ₀ T) : ℝ) := hCS₀
    have hratio' : |trG T ^ 2 / trG2 T - cT T * N T| ≤ C₃ * P.calE T * (cT T * N T) := by
      have := hratio T hT₃; simp only at this; rw [← mul_assoc] at this; exact this
    have htrG2 : 0 ≤ trG2 T := by rw [← hfr]; exact frobSq_nonneg _
    have hnp := nplus_ge_explicit hCS hxT.1 (mul_nonneg hθ0 (Nat.cast_nonneg _)) htrG2 hratio'
    -- c N − |cT − c| N ≤ cT N
    have hN0 : 0 ≤ N T := Nat.cast_nonneg _
    have hcd : c * N T - |cT T - c| * N T ≤ cT T * N T := by
      have h1 := mul_le_mul_of_nonneg_right (neg_abs_le (cT T - c)) hN0
      linarith [h1]
    simp only [hRdef, hxdef, hNdef] at hnp hcd hZ ⊢
    constructor <;> linarith [hZ.1, hZ.2, hnp, hcd]

/-- **Theorem D, Thm-B line** (fixed λ, abstract): N₀ˢ(T,2T) ≥ (2c∞ − 1 − ε) N(T,2T) eventually. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variantb4b121ecfe03349a2296b6a2c19b0b4558b3d15e2ab361793a0cbee41511598b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variantb4b121ecfe03349a2296b6a2c19b0b4558b3d15e2ab361793a0cbee41511598b.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `703aede5f80c64d8db061d84412ac27e903e78d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

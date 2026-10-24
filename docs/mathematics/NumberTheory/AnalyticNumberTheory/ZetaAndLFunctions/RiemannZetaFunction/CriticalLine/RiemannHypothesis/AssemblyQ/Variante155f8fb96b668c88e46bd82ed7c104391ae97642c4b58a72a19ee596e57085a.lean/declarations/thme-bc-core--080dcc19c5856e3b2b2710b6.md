# thmE_BC_core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97133fcbca06259ea84eb596e061c03b52f484d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 419,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:73978010-11d3-d1e1-40cc-8e530cc41c3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce584c8e-e119-2f07-eb2b-35ed7dbcbe1d",
  "kind": "theorem",
  "lexical_name": "thmE_BC_core",
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
  "slug": "thme-bc-core--080dcc19c5856e3b2b2710b6",
  "source": {
    "blob": "97133fcbca06259ea84eb596e061c03b52f484d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 419,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variante155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:080dcc19c5856e3b2b2710b6b0e5c321835fe9b87eb5cd2a008a7bc34d500be2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variante155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce584c8e-e119-2f07-eb2b-35ed7dbcbe1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thmE_BC_core (Z : ZeroConfig) (κ : ℕ) {q : ℕ} (hq : 1 ≤ q) (cf : ℕ → ℂ)
    (P : Params) (hP : P.Valid) (hlam : P.lam < 1)
    (hRvM : RiemannVonMangoldtChi q Z)
    (hTr : ThmTracesHypChi P κ q cf Z)
    (hBlock : ∀ᶠ T in atTop, BlockInputs Z P T)
    (θ₀ : ℝ → ℝ) (hTail : ∀ᶠ T in atTop, TailInputs Z P T (θ₀ T))
    (hθ₀ : ∃ C : ℝ, ∀ᶠ T in atTop, θ₀ T ≤ C * l T * T ^ (P.lam / 2 - 1))
    (hNII : ∃ C : ℝ, ∀ᶠ T in atTop, (NII Z T : ℝ) ≤ C * Real.sqrt T * l T)
    (hGzGp : ∀ᶠ T in atTop, Z.Gz P T = GpChi P κ q cf T)
    (hcalE : Tendsto P.calE atTop (𝓝 0)) :
    ∃ R : ℝ → ℝ, R =o[atTop] (fun T => (Z.N T (2 * T) : ℝ)) ∧
      ∀ᶠ T in atTop,
        (2 * Ffun P.lam - 1) * (Z.N T (2 * T) : ℝ) - 2 * R T ≤ Z.N0s T (2 * T) ∧
        Ffun P.lam * (Z.N T (2 * T) : ℝ) - R T ≤ Z.Nd T (2 * T) := by
  have hlam0 := hP.lam_pos
  have hlam1 : P.lam ≤ 1 := hlam.le
  obtain ⟨C₃, hC₃, T₃, hratio⟩ := hTr.ratio
  obtain ⟨C₄, hC₄, T₄, htr1'⟩ := hTr.tr1'
  obtain ⟨Cθ, hθ⟩ := hθ₀
  obtain ⟨CII, hII⟩ := hNII
  set N : ℝ → ℝ := fun T => (Z.N T (2 * T) : ℝ) with hNdef
  set x : ℝ → ℝ := fun T => θ₀ T * (P.d T : ℝ) / trGtildeChi P κ q cf T with hxdef
  set R : ℝ → ℝ := fun T => (C₃ * P.calE T * (Ffun (lam1q P q T) * N T)
      + 2 * x T * ((1 + C₃ * P.calE T) * (Ffun (lam1q P q T) * N T)))
      + (NII Z T : ℝ) + cq q / l T * N T with hRdef
  have hNtop : Tendsto N atTop atTop := tendsto_N_atTop_chi q Z hq hRvM
  have hcE0 : Tendsto (fun T => C₃ * P.calE T) atTop (𝓝 0) := by simpa using hcalE.const_mul C₃
  have hcE4 : Tendsto (fun T => C₄ * P.calE T) atTop (𝓝 0) := by simpa using hcalE.const_mul C₄
  have hx : ∀ᶠ T in atTop, 0 < trGtildeChi P κ q cf T ∧ 0 ≤ x T ∧
      x T ≤ 4 * (|Cθ| + 1) * T ^ (P.lam / 2 - 1) ∧
      θ₀ T * (P.d T : ℝ) < trGtildeChi P κ q cf T := by
    filter_upwards [hTail, hθ, eventually_ge_atTop T₄, eventually_N_ge_chi q Z hq hRvM,
      eventually_l_pos, eventually_gt_atTop (0:ℝ),
      hcE4.eventually (eventually_lt_nhds (show (0:ℝ) < 1/2 by norm_num)),
      (tendsto_rpow_halflam_sub_one P hlam1).eventually
        (eventually_lt_nhds (show (0:ℝ) < 1 / (8 * (|Cθ| + 1)) by positivity))]
      with T hTl hθT hT₄ hNge hl hT0 hcE hTs
    have hLpos : 0 < P.L T := by simp only [Params.L]; positivity
    have h1 := (abs_le.mp (by simpa only using htr1' T hT₄)).1
    have hLN : 0 < P.L T * N T := by
      have : 0 < T * l T / (4 * Real.pi) := by positivity
      exact mul_pos hLpos (this.trans_le hNge)
    have htrG : P.L T * N T / 2 ≤ trGtildeChi P κ q cf T := by
      have : C₄ * P.calE T * (P.L T * N T) ≤ 1 / 2 * (P.L T * N T) :=
        mul_le_mul_of_nonneg_right hcE.le hLN.le
      simp only [hNdef] at this h1 ⊢; linarith
    have htrGpos : 0 < trGtildeChi P κ q cf T := lt_of_lt_of_le (by positivity) htrG
    have hd : (P.d T : ℝ) ≤ P.L T * T / (2 * Real.pi) := d_le P (by positivity)
    have hθ' : θ₀ T ≤ (|Cθ| + 1) * l T * T ^ (P.lam / 2 - 1) := by
      refine hθT.trans ?_
      have : Cθ ≤ |Cθ| + 1 := by linarith [le_abs_self Cθ]
      gcongr
    have hθ0 := hTl.theta_nonneg
    have hnum : θ₀ T * (P.d T : ℝ)
        ≤ ((|Cθ| + 1) * l T * T ^ (P.lam / 2 - 1)) * (P.L T * T / (2 * Real.pi)) :=
      mul_le_mul hθ' hd (Nat.cast_nonneg _) (hθ0.trans hθ')
    have hden : P.L T * (T * l T / (4 * Real.pi)) / 2 ≤ trGtildeChi P κ q cf T :=
      le_trans (by gcongr) htrG
    have hxle : x T ≤ 4 * (|Cθ| + 1) * T ^ (P.lam / 2 - 1) := by
      simp only [hxdef]
      rw [div_le_iff₀ htrGpos]
      calc θ₀ T * (P.d T : ℝ)
          ≤ ((|Cθ| + 1) * l T * T ^ (P.lam / 2 - 1)) * (P.L T * T / (2 * Real.pi)) := hnum
        _ = 4 * (|Cθ| + 1) * T ^ (P.lam / 2 - 1) * (P.L T * (T * l T / (4 * Real.pi)) / 2) := by
            ring
        _ ≤ 4 * (|Cθ| + 1) * T ^ (P.lam / 2 - 1) * trGtildeChi P κ q cf T := by gcongr
    refine ⟨htrGpos, div_nonneg (mul_nonneg hθ0 (Nat.cast_nonneg _)) htrGpos.le, hxle, ?_⟩
    have hx1 : x T < 1 := by
      refine hxle.trans_lt ?_
      have := (lt_div_iff₀ (show (0:ℝ) < 8 * (|Cθ| + 1) by positivity)).mp hTs
      nlinarith [abs_nonneg Cθ, Real.rpow_nonneg hT0.le (P.lam / 2 - 1)]
    simp only [hxdef] at hx1
    rwa [div_lt_one htrGpos] at hx1
  refine ⟨R, ?_, ?_⟩
  · have hFN : (fun T => Ffun (lam1q P q T) * N T) =O[atTop] N := by
      refine IsBigO.of_bound 1 ?_
      filter_upwards [eventually_l_pos, eventually_gt_atTop 0] with T hl hT0
      have hb := Ffun_bounds (lam1q_pos P hq hT0 hlam0 hl).le
        ((lam1q_le P hq hT0 hlam0.le hl).trans hlam1)
      rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_mul, abs_of_nonneg hb.1, one_mul]
      exact mul_le_of_le_one_left (abs_nonneg _) hb.2
    have o1 : (fun T => C₃ * P.calE T * (Ffun (lam1q P q T) * N T)) =o[atTop] N := by
      have := ((isLittleO_one_iff ℝ).2 hcE0).mul_isBigO hFN
      simpa using this
    have hxto : Tendsto x atTop (𝓝 0) := by
      refine tendsto_of_tendsto_of_tendsto_of_le_of_le' tendsto_const_nhds
        (by simpa using (tendsto_rpow_halflam_sub_one P hlam1).const_mul (4 * (|Cθ| + 1)))
        (hx.mono fun T h => h.2.1) (hx.mono fun T h => h.2.2.1)
    have o2 : (fun T => 2 * x T * ((1 + C₃ * P.calE T) * (Ffun (lam1q P q T) * N T)))
        =o[atTop] N := by
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
      exact hO.trans_isLittleO
        (isLittleO_N_of_isLittleO_Tl_chi q Z hq hRvM isLittleO_sqrt_mul_l_Tl)
    have o4 : (fun T => cq q / l T * N T) =o[atTop] N :=
      isLittleO_of_tendsto_zero_mul (tendsto_const_nhds.div_atTop tendsto_l_atTop)
    exact ((o1.add o2).add o3).add o4
  · filter_upwards [hBlock, hTail, hGzGp, hx, eventually_ge_atTop T₃, eventually_gt_atTop (0:ℝ),
      eventually_l_pos, eventually_calE_nonneg P hlam0 (zero_le_one.trans hP.one_le_w)]
      with T hB hTl hGG hxT hT₃ hT0 hl hE0
    have hGt : (P.tilde T (Z.Gz P T)).IsHermitian := by
      rw [hGG]; exact isHermitian_tilde P T (GpChi_isHermitian P κ q cf T)
    have hZ := seamA_BC hT0.le hB hTl le_rfl hGt
    have hθ0 := hTl.theta_nonneg
    have hrt : RHLinalg.rtrace (P.tilde T (Z.Gz P T)) = trGtildeChi P κ q cf T := by
      rw [hGG, rtrace_tilde_GpChi]
    have hfr : RHLinalg.frobSq (P.tilde T (Z.Gz P T)) = trGtildeSqChi P κ q cf T := by
      rw [hGG, frobSq_tilde_GpChi]
    have htr' : θ₀ T * (Fintype.card (Fin (P.d T)) : ℝ) < RHLinalg.rtrace (P.tilde T (Z.Gz P T)) := by
      rw [card_fin_d, hrt]; exact hxT.2.2.2
    have hCS := nplus_lower hGt hθ0 htr'
    rw [card_fin_d, hrt, hfr] at hCS
    have hratio' : |trGtildeChi P κ q cf T ^ 2 / trGtildeSqChi P κ q cf T
        - Ffun (lam1q P q T) * N T| ≤ C₃ * P.calE T * (Ffun (lam1q P q T) * N T) := by
      have := hratio T hT₃; simp only at this; rw [← mul_assoc] at this; exact this
    have htrG2 : 0 ≤ trGtildeSqChi P κ q cf T := by rw [← hfr]; exact frobSq_nonneg _
    have hnp := nplus_ge_explicit hCS hxT.1 (mul_nonneg hθ0 (Nat.cast_nonneg _)) htrG2 hratio'
    have hF := Ffun_lam1q_ge P hq hT0 hlam0 hlam1 hl
    have hN0 : 0 ≤ N T := Nat.cast_nonneg _
    have hFN : (Ffun P.lam - cq q / l T) * N T ≤ Ffun (lam1q P q T) * N T :=
      mul_le_mul_of_nonneg_right hF hN0
    simp only [hRdef, hxdef, hNdef] at hnp hFN hZ ⊢
    constructor <;> nlinarith [hZ.1, hZ.2, hnp, hFN]

end MainBCChi

end ThmE
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variante155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variante155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97133fcbca06259ea84eb596e061c03b52f484d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

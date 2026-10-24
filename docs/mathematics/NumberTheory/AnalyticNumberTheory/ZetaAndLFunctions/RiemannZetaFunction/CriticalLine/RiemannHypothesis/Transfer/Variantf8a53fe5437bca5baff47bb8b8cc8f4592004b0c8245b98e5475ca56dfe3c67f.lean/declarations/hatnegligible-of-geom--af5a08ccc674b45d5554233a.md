# hatNegligible_of_geom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "469a31ec055d6db903e9095cdca737f5b904f019",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 588,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f14b78c-b554-e6d7-2009-70c05a5548f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1907013e-c1a9-dbc5-a1bf-e6a3b45da201",
  "kind": "theorem",
  "lexical_name": "hatNegligible_of_geom",
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
  "slug": "hatnegligible-of-geom--af5a08ccc674b45d5554233a",
  "source": {
    "blob": "469a31ec055d6db903e9095cdca737f5b904f019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 786,
    "line": 588,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af5a08ccc674b45d5554233af6a086ce582394f33a1e9434b568a5d9f9b1ba8d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1907013e-c1a9-dbc5-a1bf-e6a3b45da201`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 588–786.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hatNegligible_of_geom (Z : ZeroConfig) (Pf : ℝ → Params)
    (P : Params) (hP : P.Valid) (hlam1 : P.lam < 1) (hPf : ∀ T, (Pf T).lam = P.lam ∧ (Pf T).w = P.w)
    {cϱ : ℝ} (hcore : ∃ T₁ : ℝ, ∀ T : ℝ, T₁ ≤ T → LocalHypsCore cϱ ((Pf T).toSetting T) ((Pf T).localFun T))
    (ha : ∃ a₀ : ℝ, 0 < a₀ ∧ ∀ᶠ T in atTop, a₀ ≤ (Pf T).a T)
    (hR : RiemannVonMangoldt Z)
    {Λ₀ : ℝ → ℂ} {c : ℝ → ℕ → ℂ} {e : ℝ → ℕ → ℕ → ℂ} {ρ₀ A T₀ : ℝ} (hρ₀ : 0 ≤ ρ₀) (hA : 0 ≤ A)
    (hG : ReexpansionGeom Pf Λ₀ c e ρ₀ A T₀)
    (D : (T : ℝ) → Matrix (Fin ((Pf T).d T)) (Fin ((Pf T).d T)) ℂ)
    (hD : ∀ T : ℝ, 0 < T → LocalHypsCore cϱ ((Pf T).toSetting T) ((Pf T).localFun T) →
      D T = fun (k l' : Fin ((Pf T).d T)) => ((GentryNu (Pc ((Pf T).toSetting T).X
        (fun N => xiCoeff (Λ₀ T + (((Pf T).deltaKL T k l' : ℝ) : ℂ)) N - c T N))
        ((Pf T).toSetting T) ((Pf T).localFun T) k l' : ℝ) : ℂ)) :
    HatNegligible Z Pf D := by
  obtain ⟨T₁, hcore⟩ := hcore
  obtain ⟨a₀, ha₀, ha⟩ := ha
  intro η hη
  have hlog2 : 0 < Real.log 2 := Real.log_pos one_lt_two
  have hπ3 := Real.pi_gt_three
  -- thresholds
  set κtr : ℝ := 2 / Real.log 2 * A * ρ₀ / a₀ with hκtr      -- |tr D̂| ≤ κtr √X
  have hκtr0 : 0 ≤ κtr := by positivity
  set ε : ℝ := a₀ ^ 2 * η ^ 2 / (32 * π * (A + 1)) with hεdef
  have hε : 0 < ε := by positivity
  have hsmallX : ∀ᶠ T : ℝ in atTop, l T ^ 4 * P.X T / T ≤ ε :=
    (tendsto_lpow_mul_X_div P hlam1 4).eventually (eventually_le_nhds hε)
  have hsmall0 : ∀ᶠ T : ℝ in atTop, l T ^ 4 * 1 / T ≤ ε := by
    have : Tendsto (fun T => l T ^ 4 * 1 / T) atTop (𝓝 0) := by
      refine squeeze_zero' ?_ ?_ (tendsto_lpow_mul_X_div P hlam1 4)
      · filter_upwards [Assembly.eventually_l_pos, eventually_gt_atTop (0:ℝ)] with T hl hT
        positivity
      · filter_upwards [Assembly.eventually_l_pos, eventually_gt_atTop (0:ℝ)] with T hl hT
        have hX1 : 1 ≤ P.X T := by
          unfold Params.X; exact Real.one_le_exp (by unfold Params.L; nlinarith [hP.lam_pos])
        gcongr
    exact this.eventually (eventually_le_nhds hε)
  have hLtop := Assembly.tendsto_L_atTop P hP.lam_pos
  filter_upwards [eventually_ge_atTop T₀, eventually_ge_atTop T₁, eventually_gt_atTop (0:ℝ), ha,
    Assembly.eventually_N_ge Z hR, Assembly.eventually_one_le_l, hLtop.eventually_ge_atTop 1,
    hsmallX, hsmall0, eventually_ge_atTop ((4 * π * κtr / η) ^ 2),
    Assembly.tendsto_l_atTop.eventually_ge_atTop (ρ₀ + 32 * π * A * ρ₀ ^ 2 / (a₀ ^ 2 * η ^ 2))]
    with T hT₀ hT₁ hT haT hN hl1 hL1 hsX hs0 hTbig hlbig
  set P' := Pf T with hP'
  set p := P'.toSetting T with hp
  set Fn := P'.localFun T with hFn
  have hF : LocalHypsCore cϱ p Fn := hcore T hT₁
  have hLf : P'.L T = P.L T := fam_L hPf T
  have hXf : P'.X T = P.X T := fam_X hPf T
  have hL0 : 0 < P.L T := by linarith
  have hX0 : 0 < P.X T := by unfold Params.X; exact Real.exp_pos _
  have hh0 : 0 ≤ P'.hgrid T := by unfold Params.hgrid; rw [hLf]; positivity
  have hl0 : 0 < l T := by linarith
  have hbig0 : (0:ℝ) ≤ 32 * π * A * ρ₀ ^ 2 / (a₀ ^ 2 * η ^ 2) := by positivity
  set ρ : ℝ := ρ₀ / l T with hρ
  have hρ0 : 0 ≤ ρ := by positivity
  have hρ1 : ρ ≤ 1 := by rw [hρ, div_le_one hl0]; linarith
  set g : ℕ → ℕ → ℕ → ℂ := fun k l' N => xiCoeff (Λ₀ T + ((P'.deltaKL T k l' : ℝ) : ℂ)) N - c T N with hg
  -- δ ≥ 0 for all indices; capped weights
  have hδnn : ∀ k l' : ℕ, 0 ≤ P'.deltaKL T k l' := by
    intro k l'
    have := tau_ge_T P' T (k := k) hh0
    have := tau_ge_T P' T (k := l') hh0
    simp only [Params.deltaKL, Params.tauStar]
    have : 1 ≤ (P'.tau T k + P'.tau T l') / 2 / T := by rw [le_div_iff₀ hT]; linarith
    have := Real.log_nonneg this
    linarith
  set δm : ℕ → ℕ → ℝ := fun k l' => min (P'.deltaKL T k l') (1 / 2) with hδm
  have hδm0 : ∀ k l', 0 ≤ δm k l' := fun k l' => le_min (hδnn k l') (by norm_num)
  have hδm1 : ∀ k l', δm k l' ≤ 1 / 2 := fun k l' => min_le_right _ _
  have hδm_eq : ∀ k, k < P'.d T → ∀ l', l' < P'.d T → δm k l' = P'.deltaKL T k l' := by
    intro k hk l' hl'
    exact min_eq_left (deltaKL_mem P' T hk hl' (by rw [hLf]; exact hL0) hT).2
  have hδv_mono : Monotone (fun k : ℕ => δm k k) :=
    fun a b hab => min_le_min_right _ (deltaKL_diag_monotone P' T hT hh0 hab)
  -- entries of D
  have hDeq : D T = fun (k l' : Fin (P'.d T)) => ((GentryNu (Pc p.X (g k l')) p Fn k l' : ℝ) : ℂ) :=
    hD T hT hF
  -- expansions at the entries
  have hexp2 : ∀ k, k < p.d → ∀ l', l' < p.d → ∀ N ∈ Finset.Ioc 0 ⌊p.X⌋₊,
      HasSum (fun r : ℕ => e T (r + 1) N * (δm k l' : ℂ) ^ (r + 1)) (g k l' N) := by
    intro k hk l' hl' N hN
    have hmem := deltaKL_mem P' T hk hl' (by rw [hLf]; exact hL0) hT
    have := hG.expand T hT₀ _ hmem N hN
    rw [hδm_eq k hk l' hl', hg]
    exact this
  -- S1 and sumSq inputs
  set σ : ℝ := A * (Real.sqrt (P.X T) * l T) with hσ
  have hσ0 : 0 ≤ σ := by positivity
  have hS1 : ∀ r : ℕ, 1 ≤ r → S1 (e T r) p.X ≤ σ * ρ ^ r := by
    intro r hr
    calc S1 (e T r) p.X = S1 (e T r) (P'.X T) := rfl
      _ ≤ A * (ρ₀ / l T) ^ r * (Real.sqrt (P'.X T) * l T) := hG.S1_le T hT₀ r hr
      _ = σ * ρ ^ r := by rw [hXf, hσ, hρ]; ring
  set K₁ : ℝ := A * (P.L T ^ 4 * T * l T ^ 2) with hK₁
  set K₀ : ℝ := A * (P.L T ^ 3 * l T ^ 4 * (1 + P.X T)) with hK₀
  have hK₁0 : 0 ≤ K₁ := by positivity
  have hK₀0 : 0 ≤ K₀ := by positivity
  have hQ : ∀ r : ℕ, 1 ≤ r → (∑ k ∈ Finset.range p.d, ∑ l' ∈ Finset.range p.d,
      GentryNu (Pc p.X (e T r)) p Fn k l' ^ 2) ≤ K₁ * ρ ^ (2 * r) + K₀ := by
    intro r hr
    calc _ = (∑ k ∈ Finset.range (P'.d T), ∑ l' ∈ Finset.range (P'.d T),
          GentryNu (Pc (P'.X T) (e T r)) (P'.toSetting T) (P'.localFun T) k l' ^ 2) := rfl
      _ ≤ A * (ρ₀ / l T) ^ (2 * r) * (P'.L T ^ 4 * T * l T ^ 2)
          + A * (P'.L T ^ 3 * l T ^ 4 * (1 + P'.X T)) := hG.sumSq_le T hT₀ r hr
      _ = K₁ * ρ ^ (2 * r) + K₀ := by rw [hLf, hXf, hK₁, hK₀, hρ]; ring
  -- the two fixed-T conclusions
  have hfrob := Transfer.dependence_frob hF (e := e T) (g := g) (δm := δm)
    hδm0 hδm1 hexp2 hK₁0 hK₀0 hρ0 hρ1 hQ
  have htrace := Transfer.dependence_trace hF (e := e T) (hG.e_one T) (g := fun k => g k k)
    (δv := fun k => δm k k) (fun k => hδm0 k k) (fun k => hδm1 k k) hδv_mono
    (fun k hk => hexp2 k hk k hk) hσ0 hρ0 hρ1 hS1
  -- hat units
  have haT0 : 0 < P'.a T := ha₀.trans_le haT
  have haL : 0 < P'.a T * P'.L T ^ 2 := by rw [hLf]; positivity
  have ha₀L : 0 < a₀ * P.L T ^ 2 := by positivity
  have hinv : (P'.a T * P'.L T ^ 2)⁻¹ ≤ (a₀ * P.L T ^ 2)⁻¹ := by
    rw [hLf]; exact inv_anti₀ ha₀L (by gcongr)
  have hXT : P.X T ≤ T := by
    have h1 : P.X T ≤ Real.exp (l T) := by
      unfold Params.X Params.L
      exact Real.exp_le_exp.2 (by nlinarith [hP.lam_le_one])
    rw [l, Real.exp_log (by positivity)] at h1
    have : T / (2 * π) ≤ T := div_le_self hT.le (by linarith)
    linarith
  constructor
  · -- trace
    rw [rtrace_hat', abs_mul, abs_of_pos (inv_pos.2 haL)]
    have htrD : rtrace (D T)
        = ∑ k ∈ Finset.range p.d, GentryNu (Pc p.X (g k k)) p Fn k k := by
      rw [hDeq]
      unfold rtrace
      simp only [Matrix.trace, Matrix.diag_apply, map_sum, RCLike.re_to_complex, Complex.ofReal_re]
      exact Fin.sum_univ_eq_sum_range (fun k => GentryNu (Pc p.X (g k k)) p Fn k k) _
    rw [htrD]
    have hsqT : 4 * π * κtr / η ≤ Real.sqrt T := by
      calc 4 * π * κtr / η = Real.sqrt ((4 * π * κtr / η) ^ 2) := (Real.sqrt_sq (by positivity)).symm
        _ ≤ Real.sqrt T := Real.sqrt_le_sqrt hTbig
    calc (P'.a T * P'.L T ^ 2)⁻¹ * |∑ k ∈ Finset.range p.d, GentryNu (Pc p.X (g k k)) p Fn k k|
        ≤ (a₀ * P.L T ^ 2)⁻¹ * (2 / Real.log 2 * p.L ^ 2 * σ * ρ) :=
          mul_le_mul hinv htrace (abs_nonneg _) (inv_nonneg.2 ha₀L.le)
      _ = κtr * Real.sqrt (P.X T) := by
          rw [show p.L = P'.L T from rfl, hLf, hκtr, hσ, hρ]; field_simp
      _ ≤ κtr * Real.sqrt T := by gcongr
      _ = η / (4 * π) * (4 * π * κtr / η) * Real.sqrt T := by field_simp
      _ ≤ η / (4 * π) * Real.sqrt T * Real.sqrt T := by gcongr
      _ = η * (T / (4 * π)) := by rw [mul_assoc, Real.mul_self_sqrt hT.le]; ring
      _ ≤ η * (T * l T / (4 * π)) := by
          gcongr
          exact le_mul_of_one_le_right hT.le hl1
      _ ≤ η * (Z.N T (2 * T) : ℝ) := by gcongr
  · -- Frobenius
    rw [frobSq_hat']
    have hfrD : frobSq (D T)
        = ∑ k ∈ Finset.range p.d, ∑ l' ∈ Finset.range p.d, GentryNu (Pc p.X (g k l')) p Fn k l' ^ 2 := by
      rw [hDeq]
      exact Transfer.frobSq_ofReal_fin _ (fun k l' => GentryNu (Pc p.X (g k l')) p Fn k l')
    rw [hfrD]
    have hinv2 : ((P'.a T * P'.L T ^ 2)⁻¹) ^ 2 ≤ ((a₀ * P.L T ^ 2)⁻¹) ^ 2 :=
      pow_le_pow_left₀ (inv_nonneg.2 haL.le) hinv 2
    -- the two smallness facts
    have hsX' : l T ^ 4 * P.X T ≤ ε * T := by
      have := (div_le_iff₀ hT).1 hsX; linarith
    have hs0' : l T ^ 4 ≤ ε * T := by
      have := (div_le_iff₀ hT).1 hs0; linarith
    have i1 : 2 * A * ρ₀ ^ 2 / a₀ ^ 2 * T ≤ η ^ 2 / (8 * π) * (T * l T) := by
      -- l ≥ 16πAρ₀²/(a₀²η²)
      have hl' : 16 * π * A * ρ₀ ^ 2 / (a₀ ^ 2 * η ^ 2) ≤ l T := by
        have : 16 * π * A * ρ₀ ^ 2 / (a₀ ^ 2 * η ^ 2) ≤ 32 * π * A * ρ₀ ^ 2 / (a₀ ^ 2 * η ^ 2) := by
          gcongr; norm_num
        linarith
      have h2 : 2 * A * ρ₀ ^ 2 / a₀ ^ 2 = η ^ 2 / (8 * π) * (16 * π * A * ρ₀ ^ 2 / (a₀ ^ 2 * η ^ 2)) := by
        field_simp; ring
      rw [h2, mul_assoc]
      gcongr η ^ 2 / (8 * π) * ?_
      rw [mul_comm]
      gcongr
    have i2 : 2 * A / a₀ ^ 2 * (l T ^ 4 * (1 + P.X T) / P.L T) ≤ η ^ 2 / (8 * π) * (T * l T) := by
      have h1 : l T ^ 4 * (1 + P.X T) / P.L T ≤ l T ^ 4 * (1 + P.X T) :=
        div_le_self (by positivity) hL1
      have h2 : l T ^ 4 * (1 + P.X T) ≤ 2 * ε * T := by nlinarith
      have h3 : 2 * A / a₀ ^ 2 * (2 * ε * T) = A / (A + 1) * (η ^ 2 / (8 * π) * T) := by
        rw [hεdef]; field_simp; ring
      have h4 : A / (A + 1) ≤ 1 := by rw [div_le_one (by positivity)]; linarith
      calc 2 * A / a₀ ^ 2 * (l T ^ 4 * (1 + P.X T) / P.L T)
          ≤ 2 * A / a₀ ^ 2 * (2 * ε * T) := by gcongr; exact h1.trans h2
        _ = A / (A + 1) * (η ^ 2 / (8 * π) * T) := h3
        _ ≤ 1 * (η ^ 2 / (8 * π) * T) := by gcongr
        _ = η ^ 2 / (8 * π) * (T * 1) := by ring
        _ ≤ η ^ 2 / (8 * π) * (T * l T) := by gcongr
    calc ((P'.a T * P'.L T ^ 2)⁻¹) ^ 2
          * ∑ k ∈ Finset.range p.d, ∑ l' ∈ Finset.range p.d, GentryNu (Pc p.X (g k l')) p Fn k l' ^ 2
        ≤ ((a₀ * P.L T ^ 2)⁻¹) ^ 2 * (2 * (K₁ * ρ ^ 2 + K₀)) :=
          mul_le_mul hinv2 hfrob (by positivity) (sq_nonneg _)
      _ = 2 * A * ρ₀ ^ 2 / a₀ ^ 2 * T + 2 * A / a₀ ^ 2 * (l T ^ 4 * (1 + P.X T) / P.L T) := by
          rw [hK₁, hK₀, hρ]; field_simp
      _ ≤ η ^ 2 / (8 * π) * (T * l T) + η ^ 2 / (8 * π) * (T * l T) := add_le_add i1 i2
      _ = η ^ 2 * (T * l T / (4 * π)) := by ring
      _ ≤ η ^ 2 * (Z.N T (2 * T) : ℝ) := by gcongr

/-- **[XF′ Lemma 6.1]** for ξ′: D = M − Mᵀ (Gp1 vs GpC, base L_T) is HatNegligible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean#L588).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `469a31ec055d6db903e9095cdca737f5b904f019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

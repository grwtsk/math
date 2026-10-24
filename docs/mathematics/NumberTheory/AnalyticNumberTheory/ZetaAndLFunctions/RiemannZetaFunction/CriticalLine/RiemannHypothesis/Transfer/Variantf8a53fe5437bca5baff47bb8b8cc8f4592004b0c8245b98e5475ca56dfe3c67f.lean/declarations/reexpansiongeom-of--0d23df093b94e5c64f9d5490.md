# reexpansionGeom_of

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
      "line": 822,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85e847a3-61ce-a32c-2458-bce6d6e9041f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:881efa37-6221-9be6-5569-4a99591f37fc",
  "kind": "theorem",
  "lexical_name": "reexpansionGeom_of",
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
  "slug": "reexpansiongeom-of--0d23df093b94e5c64f9d5490",
  "source": {
    "blob": "469a31ec055d6db903e9095cdca737f5b904f019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1005,
    "line": 822,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d23df093b94e5c64f9d549019f2256cd94b1a5de3e64701d3e37d13defc21ae",
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

Occurrence: `result:881efa37-6221-9be6-5569-4a99591f37fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 822–1005.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reexpansionGeom_of (Pf : ℝ → Params) (P : Params) (hP : P.Valid)
    (hPf : ∀ T, (Pf T).lam = P.lam ∧ (Pf T).w = P.w)
    {cϱ : ℝ} (hcore : ∃ T₁ : ℝ, ∀ T : ℝ, T₁ ≤ T → LocalHypsCore cϱ ((Pf T).toSetting T) ((Pf T).localFun T))
    {Λ₀ : ℝ → ℂ} {c : ℝ → ℕ → ℂ} {e : ℝ → ℕ → ℕ → ℂ} {ρ₀ A T₀ : ℝ} (hρ₀ : 0 ≤ ρ₀)
    (hE : ReexpansionAt Λ₀ c e ρ₀ A T₀) (hPP : PPUpper cϱ P.lam) :
    ∃ A' T₀' : ℝ, 0 ≤ A' ∧ ReexpansionGeom Pf Λ₀ c e ρ₀ A' T₀' := by
  obtain ⟨T₁, hcore⟩ := hcore
  obtain ⟨C, T₂, hPP⟩ := hPP
  set C' := max C 1 with hC'
  set A₁ := max A 1 with hA₁
  have hC'1 : 1 ≤ C' := le_max_right _ _
  have hA₁1 : 1 ≤ A₁ := le_max_right _ _
  have hCC' : C ≤ C' := le_max_left _ _
  have hAA₁ : A ≤ A₁ := le_max_left _ _
  have hC'0 : 0 ≤ C' := by linarith
  have hA₁0 : 0 ≤ A₁ := by linarith
  have hA₁sq : A₁ ≤ A₁ ^ 2 := by nlinarith
  set A' := 4 * C' * A₁ ^ 2 with hA'
  have hA'0 : 0 ≤ A' := by positivity
  have hA₁A' : A₁ ≤ A' := by
    rw [hA']; nlinarith [mul_nonneg hC'0 (sq_nonneg A₁)]
  have hAA' : A ≤ A' := hAA₁.trans hA₁A'
  have hLtop := Assembly.tendsto_L_atTop P hP.lam_pos
  have hXtop : Tendsto (fun T => P.X T) atTop atTop := Real.tendsto_exp_atTop.comp hLtop
  have hev : ∀ᶠ T in atTop, T₀ ≤ T ∧ T₁ ≤ T ∧ T₂ ≤ T ∧ 0 < T ∧ 1 ≤ l T ∧ ρ₀ ≤ l T ∧ 1 ≤ P.L T ∧
      2 ≤ P.X T := by
    filter_upwards [eventually_ge_atTop T₀, eventually_ge_atTop T₁, eventually_ge_atTop T₂,
      eventually_gt_atTop (0:ℝ), Assembly.eventually_one_le_l,
      Assembly.tendsto_l_atTop.eventually_ge_atTop ρ₀, hLtop.eventually_ge_atTop 1,
      hXtop.eventually_ge_atTop 2] with T h0 h1 h2 h3 h4 h5 h6 h7
    exact ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
  obtain ⟨T₀', hT₀'⟩ := Filter.eventually_atTop.1 hev
  refine ⟨A', T₀', hA'0, ?_⟩
  have hXexp : ∀ T, 0 ≤ l T → P.X T ≤ Real.exp (l T) := by
    intro T hl
    unfold Params.X Params.L
    exact Real.exp_le_exp.2 (by nlinarith [hP.lam_le_one, hl])
  constructor
  · intro T hT δ hδ N _
    exact hE.expand T (hT₀' T hT).1 δ hδ N
  · exact hE.e_one
  · intro T hT r hr
    obtain ⟨h0, -, -, hTpos, hl1, hρl, hL1, hX2⟩ := hT₀' T hT
    have hXf : (Pf T).X T = P.X T := fam_X hPf T
    rw [hXf]
    have H1 := hE.H1 T h0 r hr (P.X T) hX2 (hXexp T (by linarith))
    have hρr : 0 ≤ (ρ₀ / l T) ^ r := by positivity
    calc S1 (e T r) (P.X T) ≤ A * (ρ₀ / l T) ^ r * Real.sqrt (P.X T) * l T := H1
      _ ≤ A' * (ρ₀ / l T) ^ r * Real.sqrt (P.X T) * l T := by gcongr
      _ = A' * (ρ₀ / l T) ^ r * (Real.sqrt (P.X T) * l T) := by ring
  · intro T hT r hr
    obtain ⟨h0, h1, h2, hTpos, hl1, hρl, hL1, hX2⟩ := hT₀' T hT
    have hXe := hXexp T (by linarith)
    have hXT : P.X T ≤ T := by
      have := hXe
      rw [l, Real.exp_log (by positivity)] at this
      have : T / (2 * π) ≤ T := div_le_self hTpos.le (by linarith [Real.pi_gt_three])
      linarith
    have hLf : (Pf T).L T = P.L T := fam_L hPf T
    have hXf : (Pf T).X T = P.X T := fam_X hPf T
    have hF := hcore T h1
    have hpp0 := hPP ((Pf T).toSetting T) ((Pf T).localFun T) (e T r) (hPf T).1 h2 hF (hE.e_one T r)
    have hpp := (sum_fin_fin_eq ((Pf T).toSetting T).d (fun k l =>
      GentryNu (Pc ((Pf T).toSetting T).X (e T r)) ((Pf T).toSetting T) ((Pf T).localFun T) k l ^ 2)).symm.trans_le
      hpp0
    have H3 := hE.H3 T h0 r hr (P.X T) hX2 hXe
    have H2 := hE.H2 T h0 r hr (P.X T) hX2 hXe
    have H1 := hE.H1 T h0 r hr (P.X T) hX2 hXe
    have hlogX : Real.log (P.X T) = P.L T := by unfold Params.X; exact Real.log_exp _
    rw [hlogX] at H3
    -- abstract scalars → concrete
    have eL : ((Pf T).toSetting T).L = P.L T := hLf
    have eX : ((Pf T).toSetting T).X = P.X T := hXf
    have el : ((Pf T).toSetting T).l = l T := rfl
    have eT : ((Pf T).toSetting T).T = T := rfl
    have ed : ((Pf T).toSetting T).d = (Pf T).d T := rfl
    rw [eL, eX, el, eT, ed] at hpp
    rw [hLf, hXf]
    refine hpp.trans ?_
    set Xr := P.X T with hXr
    set Lr := P.L T with hLr
    set lr := l T with hlr
    set ρ' : ℝ := (ρ₀ / lr) ^ (2 * r) with hρ'
    set S := S1 (e T r) Xr with hS
    set Ssq := ∑ N ∈ Finset.Ioc 0 ⌊Xr⌋₊, ‖e T r N‖ ^ 2 with hSsq
    set Sdiv := ∑ N ∈ Finset.Ioc 0 ⌊Xr⌋₊, ‖e T r N‖ ^ 2 / N with hSdiv
    have hρ'0 : 0 ≤ ρ' := by positivity
    have hlr0 : 0 < lr := by linarith
    have hρle : ρ₀ / lr ≤ 1 := by rw [div_le_one hlr0]; exact hρl
    have hρq0 : 0 ≤ ρ₀ / lr := by positivity
    have hρr1 : (ρ₀ / lr) ^ r ≤ 1 := pow_le_one₀ hρq0 hρle
    have hρ'eq : ((ρ₀ / lr) ^ r) ^ 2 = ρ' := by rw [hρ', ← pow_mul, mul_comm]
    have hS0 : 0 ≤ S := S1_nonneg _ _
    have hSsq0 : 0 ≤ Ssq := Finset.sum_nonneg fun _ _ => by positivity
    have hSdiv0 : 0 ≤ Sdiv := Finset.sum_nonneg fun _ _ => by positivity
    have hX0 : 0 ≤ Xr := by linarith
    have hsX : Real.sqrt Xr ^ 2 = Xr := Real.sq_sqrt hX0
    have hlogl : Real.log lr ≤ lr := by
      have := Real.log_le_sub_one_of_pos hlr0; linarith
    have hlogl0 : 0 ≤ Real.log lr := Real.log_nonneg hl1
    -- the four coefficient inputs with A ↦ A₁
    have H2' : Ssq ≤ A₁ * ρ' * Xr * lr ^ 2 :=
      calc Ssq ≤ A * ρ' * Xr * lr ^ 2 := H2
        _ ≤ A₁ * ρ' * Xr * lr ^ 2 := by gcongr
    have H3' : Sdiv ≤ A₁ * ρ' * lr ^ 2 * (1 + Lr) :=
      calc Sdiv ≤ A * ρ' * lr ^ 2 * (1 + Lr) := H3
        _ ≤ A₁ * ρ' * lr ^ 2 * (1 + Lr) := by gcongr
    have hS1' : S ≤ A₁ * (ρ₀ / lr) ^ r * Real.sqrt Xr * lr :=
      calc S ≤ A * (ρ₀ / lr) ^ r * Real.sqrt Xr * lr := H1
        _ ≤ A₁ * (ρ₀ / lr) ^ r * Real.sqrt Xr * lr := by gcongr
    have hSsq' : S ^ 2 ≤ A₁ ^ 2 * ρ' * Xr * lr ^ 2 :=
      calc S ^ 2 ≤ (A₁ * (ρ₀ / lr) ^ r * Real.sqrt Xr * lr) ^ 2 := pow_le_pow_left₀ hS0 hS1' 2
        _ = A₁ ^ 2 * ((ρ₀ / lr) ^ r) ^ 2 * Real.sqrt Xr ^ 2 * lr ^ 2 := by ring
        _ = A₁ ^ 2 * ρ' * Xr * lr ^ 2 := by rw [hρ'eq, hsX]
    have hSle : S ≤ A₁ * Real.sqrt Xr * lr :=
      calc S ≤ A₁ * (ρ₀ / lr) ^ r * Real.sqrt Xr * lr := hS1'
        _ ≤ A₁ * 1 * Real.sqrt Xr * lr := by gcongr
        _ = A₁ * Real.sqrt Xr * lr := by ring
    have hend : (lr + S) ^ 2 ≤ 2 * A₁ ^ 2 * lr ^ 2 * (1 + Xr) := by
      have h1 : (lr + S) ^ 2 ≤ 2 * lr ^ 2 + 2 * S ^ 2 := by nlinarith only [sq_nonneg (lr - S)]
      have h2 : S ^ 2 ≤ A₁ ^ 2 * Xr * lr ^ 2 :=
        calc S ^ 2 ≤ (A₁ * Real.sqrt Xr * lr) ^ 2 := pow_le_pow_left₀ hS0 hSle 2
          _ = A₁ ^ 2 * Xr * lr ^ 2 := by rw [mul_pow, mul_pow, hsX]
      have h3 : lr ^ 2 ≤ A₁ ^ 2 * lr ^ 2 := by
        have : 1 ≤ A₁ ^ 2 := by nlinarith only [hA₁1]
        nlinarith only [this, sq_nonneg lr]
      have e : 2 * A₁ ^ 2 * lr ^ 2 * (1 + Xr) = 2 * (A₁ ^ 2 * lr ^ 2) + 2 * (A₁ ^ 2 * Xr * lr ^ 2) := by
        ring
      linarith only [h1, h2, h3, e]
    -- C ↦ C'
    have hbr0 : 0 ≤ T * Lr * Sdiv + Lr * Ssq + Lr * S ^ 2 + Lr * lr * Real.log lr * (lr + S) ^ 2 := by
      positivity
    have step1 : C * Lr ^ 2 * (T * Lr * Sdiv + Lr * Ssq + Lr * S ^ 2 + Lr * lr * Real.log lr * (lr + S) ^ 2)
        ≤ C' * Lr ^ 2 * (T * Lr * Sdiv + Lr * Ssq + Lr * S ^ 2 + Lr * lr * Real.log lr * (lr + S) ^ 2) := by
      gcongr
    refine step1.trans ?_
    -- the four terms
    have b1 : T * Lr * Sdiv ≤ T * Lr * (A₁ * ρ' * lr ^ 2 * (1 + Lr)) := by gcongr
    have b2 : Lr * Ssq ≤ Lr * (A₁ * ρ' * Xr * lr ^ 2) := by gcongr
    have b3 : Lr * S ^ 2 ≤ Lr * (A₁ ^ 2 * ρ' * Xr * lr ^ 2) := by gcongr
    have b4 : Lr * lr * Real.log lr * (lr + S) ^ 2 ≤ Lr * lr * lr * (2 * A₁ ^ 2 * lr ^ 2 * (1 + Xr)) := by
      gcongr
    have hsum : T * Lr * Sdiv + Lr * Ssq + Lr * S ^ 2 + Lr * lr * Real.log lr * (lr + S) ^ 2
        ≤ T * Lr * (A₁ * ρ' * lr ^ 2 * (1 + Lr)) + Lr * (A₁ * ρ' * Xr * lr ^ 2)
          + Lr * (A₁ ^ 2 * ρ' * Xr * lr ^ 2) + Lr * lr * lr * (2 * A₁ ^ 2 * lr ^ 2 * (1 + Xr)) := by
      linarith only [b1, b2, b3, b4]
    -- main ≤ A' ρ' L⁴ T l², end ≤ A' L³ l⁴ (1+X)
    have hXLT : Xr ≤ Lr * T := by nlinarith only [hXT, hL1, hTpos]
    have i1 : A₁ * (T * (1 + Lr)) ≤ A₁ * (T * (2 * Lr)) := by gcongr; linarith
    have i2 : (A₁ + A₁ ^ 2) * Xr ≤ (A₁ + A₁ ^ 2) * (Lr * T) := by gcongr
    have i3 : A₁ * (T * (1 + Lr)) + (A₁ + A₁ ^ 2) * Xr ≤ 4 * A₁ ^ 2 * (Lr * T) :=
      calc A₁ * (T * (1 + Lr)) + (A₁ + A₁ ^ 2) * Xr
          ≤ A₁ * (T * (2 * Lr)) + (A₁ + A₁ ^ 2) * (Lr * T) := add_le_add i1 i2
        _ = (3 * A₁ + A₁ ^ 2) * (Lr * T) := by ring
        _ ≤ (3 * A₁ ^ 2 + A₁ ^ 2) * (Lr * T) := by gcongr
        _ = 4 * A₁ ^ 2 * (Lr * T) := by ring
    have hpre : 0 ≤ C' * ρ' * lr ^ 2 * Lr ^ 3 := by positivity
    have main : C' * Lr ^ 2 * (T * Lr * (A₁ * ρ' * lr ^ 2 * (1 + Lr)) + Lr * (A₁ * ρ' * Xr * lr ^ 2)
        + Lr * (A₁ ^ 2 * ρ' * Xr * lr ^ 2)) ≤ A' * ρ' * (Lr ^ 4 * T * lr ^ 2) :=
      calc C' * Lr ^ 2 * (T * Lr * (A₁ * ρ' * lr ^ 2 * (1 + Lr)) + Lr * (A₁ * ρ' * Xr * lr ^ 2)
            + Lr * (A₁ ^ 2 * ρ' * Xr * lr ^ 2))
          = C' * ρ' * lr ^ 2 * Lr ^ 3 * (A₁ * (T * (1 + Lr)) + (A₁ + A₁ ^ 2) * Xr) := by ring
        _ ≤ C' * ρ' * lr ^ 2 * Lr ^ 3 * (4 * A₁ ^ 2 * (Lr * T)) := mul_le_mul_of_nonneg_left i3 hpre
        _ = A' * ρ' * (Lr ^ 4 * T * lr ^ 2) := by rw [hA']; ring
    have hpre2 : 0 ≤ C' * A₁ ^ 2 * (Lr ^ 3 * lr ^ 4 * (1 + Xr)) := by positivity
    have endt : C' * Lr ^ 2 * (Lr * lr * lr * (2 * A₁ ^ 2 * lr ^ 2 * (1 + Xr)))
        ≤ A' * (Lr ^ 3 * lr ^ 4 * (1 + Xr)) :=
      calc C' * Lr ^ 2 * (Lr * lr * lr * (2 * A₁ ^ 2 * lr ^ 2 * (1 + Xr)))
          = 2 * (C' * A₁ ^ 2 * (Lr ^ 3 * lr ^ 4 * (1 + Xr))) := by ring
        _ ≤ 4 * (C' * A₁ ^ 2 * (Lr ^ 3 * lr ^ 4 * (1 + Xr))) := by linarith only [hpre2]
        _ = A' * (Lr ^ 3 * lr ^ 4 * (1 + Xr)) := by rw [hA']; ring
    have hCL : 0 ≤ C' * Lr ^ 2 := by positivity
    calc C' * Lr ^ 2 * (T * Lr * Sdiv + Lr * Ssq + Lr * S ^ 2 + Lr * lr * Real.log lr * (lr + S) ^ 2)
        ≤ C' * Lr ^ 2 * (T * Lr * (A₁ * ρ' * lr ^ 2 * (1 + Lr)) + Lr * (A₁ * ρ' * Xr * lr ^ 2)
            + Lr * (A₁ ^ 2 * ρ' * Xr * lr ^ 2) + Lr * lr * lr * (2 * A₁ ^ 2 * lr ^ 2 * (1 + Xr))) :=
          mul_le_mul_of_nonneg_left hsum hCL
      _ = C' * Lr ^ 2 * (T * Lr * (A₁ * ρ' * lr ^ 2 * (1 + Lr)) + Lr * (A₁ * ρ' * Xr * lr ^ 2)
            + Lr * (A₁ ^ 2 * ρ' * Xr * lr ^ 2))
          + C' * Lr ^ 2 * (Lr * lr * lr * (2 * A₁ ^ 2 * lr ^ 2 * (1 + Xr))) := by ring
      _ ≤ A' * ρ' * (Lr ^ 4 * T * lr ^ 2) + A' * (Lr ^ 3 * lr ^ 4 * (1 + Xr)) := add_le_add main endt

/-! ## §5. The main theorem of this file -/

/-- **XiTraceTransfer** [XF′ Lemma 5.1 + Lemma 6.1] from the named inputs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean#L822).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `469a31ec055d6db903e9095cdca737f5b904f019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

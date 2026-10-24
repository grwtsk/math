# moments_of_traces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bd20b64-38c0-7dc3-7567-157b6637b14a",
  "kind": "theorem",
  "lexical_name": "moments_of_traces",
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
  "slug": "moments-of-traces--df863a1bf2f73480f0e6ee29",
  "source": {
    "blob": "b55723b0b130f5138e7c367b4781f055baf103ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df863a1bf2f73480f0e6ee2944e44f99add7fe68c9717d59f76091e9cfd0de5e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bd20b64-38c0-7dc3-7567-157b6637b14a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moments_of_traces :
    (∀ δ > (0:ℝ), ∀ᶠ T in atTop, (1 - δ) * (Z.N T (2 * T) : ℝ) ≤ rtrace (P.hat T (Z.Gz P T))) ∧
    (∀ δ > (0:ℝ), ∀ᶠ T in atTop,
      frobSq (P.hat T (Z.Gz P T)) ≤ (kfun P.lam + δ) * (Z.N T (2 * T) : ℝ)) := by
  have hlam0 := hP.lam_pos
  have hlam1 : P.lam ≤ 1 := hlam.le
  have hw0 : 0 ≤ P.w := zero_le_one.trans hP.one_le_w
  have hcalE := calE_tendsto_zero P hlam0 hlam1 hw0
  have hTrE := hTr.toE
  obtain ⟨C₁, hC₁, T₁, htr1⟩ := hTrE.tr1
  obtain ⟨C₂, hC₂, T₂, htr2⟩ := hTrE.tr2
  obtain ⟨CN, T₃, hRvM⟩ := H.RvM.main
  set N : ℝ → ℝ := fun T => (Z.N T (2 * T) : ℝ) with hNdef
  set cl : ℝ → ℝ := fun T => 1 / P.lam1 T + P.lam1 T / 3 with hcl
  set K : ℝ → ℝ := fun T => (1 + C₂ * P.calE T) / P.a T ^ 2 with hK
  set R₁ : ℝ → ℝ := fun T => C₁ * Real.sqrt (P.X T) / P.a T with hR₁
  set R₂ : ℝ → ℝ := fun T => cl T * ((K T - 1) * N T + K T * (|CN| * Real.log T)) with hR₂
  have hLtop := tendsto_L_atTop P hlam0
  have ha1 := tendsto_a_one P hlam0 ha
  have hapos : ∀ᶠ T in atTop, 1 / 2 ≤ P.a T := by
    filter_upwards [ha, hLtop.eventually_ge_atTop (4 * P.w)] with T h hL4
    have hw := hP.one_le_w
    have hLpos : 0 < P.L T := by linarith
    have : 2 * P.w / P.L T ≤ 1 / 2 := by rw [div_le_iff₀ hLpos]; linarith
    linarith [h.1]
  have hcE0 : Tendsto (fun T => C₂ * P.calE T) atTop (𝓝 0) := by
    simpa using hcalE.const_mul C₂
  have hKto : Tendsto K atTop (𝓝 1) := by
    have h1 : Tendsto (fun T => 1 + C₂ * P.calE T) atTop (𝓝 1) := by
      simpa using tendsto_const_nhds.add hcE0
    have h2 : Tendsto (fun T => P.a T ^ 2) atTop (𝓝 1) := by simpa using ha1.pow 2
    simpa [hK, Pi.div_def] using h1.div h2 one_ne_zero
  -- pointwise: seam B at every large T
  have hpt : ∀ᶠ T in atTop, |rtrace (P.hat T (Z.Gz P T)) - N T| ≤ R₁ T ∧
      frobSq (P.hat T (Z.Gz P T)) ≤ cl T * N T + R₂ T := by
    filter_upwards [hGzGp, hapos, eventually_ge_atTop T₁, eventually_ge_atTop T₂,
      eventually_ge_atTop T₃, eventually_gt_atTop (0:ℝ), eventually_l_pos, eventually_log_nonneg,
      hcE0.eventually (eventually_gt_nhds (show (-1:ℝ) < 0 by norm_num))]
      with T hGG ha2 hT₁ hT₂ hT₃ hT0 hl hlog hcE
    have hapos' : 0 < P.a T := by linarith
    have hLpos : 0 < P.L T := by simp only [Params.L]; positivity
    have hℓ₁ := ell1_pos hl
    have hKnn : 0 ≤ 1 + C₂ * P.calE T := by linarith
    have htr2' : P.trGtildeSq T - P.mainTr2 T ≤ C₂ * P.calE T * P.mainTr2 T := by
      have := htr2 T hT₂
      simp only at this
      rw [← mul_assoc] at this
      exact (le_abs_self _).trans this
    have htr1' : |P.trGtilde T - P.a T * P.L T * (Z.N T (2 * T) : ℝ)|
        ≤ C₁ * (P.L T * Real.sqrt (P.X T)) := by
      have := htr1 T hT₁; simpa only using this
    have hRvM' : T * ell1 T / (2 * Real.pi) ≤ N T + |CN| * Real.log T := by
      have h1 := (abs_le.mp (hRvM T hT₃)).1
      have h2 : CN * Real.log T ≤ |CN| * Real.log T :=
        mul_le_mul_of_nonneg_right (le_abs_self _) hlog
      have h3 : T / (2 * Real.pi) * ell1 T = T * ell1 T / (2 * Real.pi) := by ring
      simp only [hNdef]; linarith
    have hSB := seamB hGG hapos' hLpos hℓ₁ htr1' hKnn htr2' hRvM'
    refine ⟨?_, ?_⟩
    · simpa only [hR₁, hNdef] using hSB.1
    · have := hSB.2
      simp only [hR₂, hcl, hK, hNdef] at this ⊢
      linarith
  -- R₁, R₂ = o(N)  (as in Assembly.thmA_abstract_err)
  have hR := H.RvM
  have o1 : R₁ =o[atTop] N := by
    have hbd : (fun T => C₁ / P.a T) =O[atTop] (fun _ => (1:ℝ)) := by
      refine isBigO_one_of_abs_le (C := 2 * C₁) ?_
      filter_upwards [hapos] with T ha2
      rw [abs_of_nonneg (div_nonneg hC₁.le (by linarith))]
      rw [div_le_iff₀ (by linarith)]; nlinarith
    have := isLittleO_of_bdd_mul hbd
      (isLittleO_N_of_isLittleO_Tl Z hR (isLittleO_sqrtX_Tl P hlam0 hlam1))
    exact this.congr_left fun T => by simp only [hR₁]; ring
  have o2 : R₂ =o[atTop] N := by
    have hclO : cl =O[atTop] (fun _ => (1:ℝ)) := by
      refine isBigO_one_of_abs_le (C := 2 / P.lam + 1 / 3) ?_
      filter_upwards [eventually_clam_bounds P hlam0 hlam1] with T h
      rw [abs_of_nonneg h.1]; exact h.2
    have hK1 : Tendsto (fun T => K T - 1) atTop (𝓝 0) := by simpa using hKto.sub_const 1
    have hKO : K =O[atTop] (fun _ => (1:ℝ)) := by
      refine isBigO_one_of_abs_le (C := 2) ?_
      filter_upwards [hKto.eventually (eventually_ge_nhds (show (0:ℝ) < 1 by norm_num)),
        hKto.eventually (eventually_le_nhds (show (1:ℝ) < 2 by norm_num))] with T h1 h2
      rw [abs_of_nonneg h1]; exact h2
    have i1 : (fun T => (K T - 1) * N T) =o[atTop] N := isLittleO_of_tendsto_zero_mul hK1
    have i2 : (fun T => K T * (|CN| * Real.log T)) =o[atTop] N :=
      isLittleO_of_bdd_mul hKO ((isLittleO_N_of_isLittleO_Tl Z hR isLittleO_log_Tl).const_mul_left _)
    exact isLittleO_of_bdd_mul hclO (i1.add i2)
  -- cl → κ(λ)
  have hclto : Tendsto cl atTop (𝓝 (kfun P.lam)) := by
    have hl1 := ThmD.tendsto_lam1 (P := P) hlam0
    simp only [hcl, kfun]
    exact ((tendsto_const_nhds.div hl1 hlam0.ne')).add (hl1.div_const 3)
  have hNtop : Tendsto N atTop atTop := tendsto_N_atTop Z hR
  refine ⟨fun δ hδ => ?_, fun δ hδ => ?_⟩
  · filter_upwards [hpt, o1.def hδ, hNtop.eventually_ge_atTop 0] with T h h1 hN0
    rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_of_nonneg hN0] at h1
    have := (abs_le.mp h.1).1
    have : R₁ T ≤ δ * N T := (le_abs_self _).trans h1
    simp only [hNdef] at *
    linarith
  · have hδ2 : 0 < δ / 2 := by linarith
    filter_upwards [hpt, o2.def hδ2, hNtop.eventually_ge_atTop 0,
      hclto.eventually (eventually_le_nhds (show kfun P.lam < kfun P.lam + δ / 2 by linarith))]
      with T h h2 hN0 hcl2
    rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_of_nonneg hN0] at h2
    have hR₂ : R₂ T ≤ δ / 2 * N T := (le_abs_self _).trans h2
    have hclN : cl T * N T ≤ (kfun P.lam + δ / 2) * N T := mul_le_mul_of_nonneg_right hcl2 hN0
    simp only [hNdef] at *
    linarith [h.2]

end Moments

/-! ## The multiplicity-aware theorems at fixed λ < 1, abstract zero configuration -/

section Abstract

variable (Z : ZeroConfig) (H : PaperInputs Z) (P : Params) (hP : P.Valid) (hlam : P.lam < 1)
  (hTr : ThmTracesHyp P Z)

include H hP hlam hTr in
/-- **multiplicity-aware Theorem B at fixed λ ∈ (0,1)**: N₀ˢ(T,2T) ≥ (H(λ) − ε)·N(T,2T). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b55723b0b130f5138e7c367b4781f055baf103ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

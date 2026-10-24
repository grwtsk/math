# concreteFactsD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8092bef6bbccba1b112de5e1c7f83dc8c767c04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/598031d2f3f4e8365223119df64092145aa60a7e8ad834f4045a8b2ae1f92336.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:336d4a78-d9e3-085f-0520-b8ef8cc9a787",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46e3262c-2a01-b0a8-cee7-8d468bf763b2",
  "kind": "theorem",
  "lexical_name": "concreteFactsD",
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
  "slug": "concretefactsd--f77143119784f505816fefde",
  "source": {
    "blob": "e8092bef6bbccba1b112de5e1c7f83dc8c767c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 100,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant598031d2f3f4e8365223119df64092145aa60a7e8ad834f4045a8b2ae1f92336.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f77143119784f505816fefde7d088f521af95fbad2ece48dba42d0944401b38c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant598031d2f3f4e8365223119df64092145aa60a7e8ad834f4045a8b2ae1f92336.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46e3262c-2a01-b0a8-cee7-8d468bf763b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem concreteFactsD {Z : ZeroConfig} (hP : P.Valid) (inp : PaperInputs Z)
    (hLoc : LocalHypsCoreDEventually P) : FactsD (concreteDataD P Z) := by
  have hlam : 0 < P.lam ∧ P.lam ≤ 1 := ⟨hP.lam_pos, hP.lam_le_one⟩
  have hΓ := inp.Gamma
  have hcheb := inp.cheb
  set cϱD := cDT P.ϱ P.lam with hcD
  have hreg : ∀ᶠ T in atTop, 0 ≤ T ∧ 0 ≤ l T ∧ 0 ≤ Real.log (l T) ∧ 0 ≤ P.L T ∧ 0 ≤ P.X T := by
    filter_upwards [eventually_ge_atTop 1, eventually_l_ge 1, eventually_log_l_ge 1,
      eventually_L_ge P hP.lam_pos 1, eventually_one_le_X P hP.lam_pos] with T h1 h2 h3 h4 h5
    exact ⟨by linarith, by linarith, by linarith, by linarith, by linarith⟩
  obtain ⟨T₀, hT₀⟩ := id hLoc
  have e_ends := evBound_of_eventuallyAtCoreD hLoc
    (PrimeSide.lem_ends cϱD P.lam hΓ hcheb hlam) (by
    filter_upwards [hreg] with T ⟨hT, hl, hlog, hL, hX⟩
    exact mul_nonneg (mul_nonneg (mul_nonneg hL hl) hlog) (add_nonneg (sq_nonneg _) hX))
  have e_mumu := evBound_of_eventuallyAtCoreD hLoc
    (PrimeSide.prop_mumu cϱD P.lam hΓ hcheb hlam) (by
    filter_upwards [hreg, eventually_L_ge P hP.lam_pos 1] with T ⟨hT, hl, hlog, hL, hX⟩ hL1
    exact mul_nonneg (sq_nonneg _) (Real.log_nonneg hL1))
  have e_PP := evBound_of_eventuallyAtCoreD hLoc
    (PrimeSide.prop_PP (cϱ := cϱD) (lam := P.lam) hcheb inp.MV hlam) (by
    filter_upwards [hreg] with T ⟨hT, hl, hlog, hL, hX⟩
    exact mul_nonneg (sq_nonneg _) hX)
  have e_muP := evBound_of_eventuallyAtCoreD hLoc
    (PrimeSide.prop_cross_muP cϱD P.lam hΓ hcheb hlam) (by
    filter_upwards [hreg] with T ⟨hT, hl, hlog, hL, hX⟩
    exact mul_nonneg hl (Real.sqrt_nonneg _))
  have e_muPi := evBound_of_eventuallyAtCoreD hLoc
    (PrimeSide.prop_cross_muPi cϱD P.lam hΓ hcheb hlam) (by
    filter_upwards [hreg] with T ⟨hT, hl, hlog, hL, hX⟩
    exact mul_nonneg (mul_nonneg hl hL) (Real.sqrt_nonneg _))
  have e_PPi := evBound_of_eventuallyAtCoreD hLoc
    (PrimeSide.prop_cross_PPi cϱD P.lam hΓ hcheb hlam) (by
    filter_upwards [hreg] with T ⟨hT, hl, hlog, hL, hX⟩
    exact mul_nonneg hL hX)
  have e_PiPi := evBound_of_eventuallyAtCoreD hLoc
    (PrimeSide.prop_cross_PiPi cϱD P.lam hΓ hcheb hlam) (by
    filter_upwards [hreg] with T ⟨hT, hl, hlog, hL, hX⟩
    exact div_nonneg (mul_nonneg hL hX) hT)
  refine ⟨hP.lam_pos, hP.lam_le_one, hP.one_le_w, ?ab_range, rvm_evBound inp.RvM, ?muints2,
    ?prop_trace, e_ends, ?Msplit, e_mumu, e_PP, ?sumJ, e_muP, e_muPi, e_PPi, e_PiPi⟩
  case ab_range =>
    filter_upwards [eventually_ge_atTop T₀, eventually_L_ge P hP.lam_pos 8,
      eventually_L_ge P hP.lam_pos (2 * P.w)] with T hT hL8 hLw
    have hF := hT₀ T hT
    have hL0 : 0 < P.L T := by linarith
    refine ⟨hF.b_ge_half, hF.b_le_a, hF.a_le_one, ?_, ?_⟩
    · apply mul_nonneg (by positivity)
      apply intervalIntegral.integral_nonneg (by linarith : (0:ℝ) ≤ P.L T)
      intro y hy
      exact mul_nonneg (hF.g_nonneg y) hy.1
    · have hgcont : Continuous (P.localFunD T).g := by
        have hw0 : 0 < P.w := by linarith [hP.one_le_w]
        have hg := gD_deriv_facts hP.taper hP.lam_pos hP.lam_le_one hw0 hLw
        exact hg.1.continuous
      have hgle : ∀ y ∈ Set.Icc (0:ℝ) (P.L T), (P.localFunD T).g y * y ≤ P.L T * y := by
        intro y hy
        apply mul_le_mul_of_nonneg_right _ hy.1
        calc (P.localFunD T).g y ≤ (P.localFunD T).Aphi y := hF.g_le_Aphi y
          _ ≤ max ((P.toSetting T).L - |y|) 0 := hF.Aphi_le y
          _ ≤ P.L T := by
              apply max_le _ hL0.le
              have := abs_nonneg y
              show (P.toSetting T).L - |y| ≤ P.L T
              have e : (P.toSetting T).L = P.L T := rfl
              rw [e]
              linarith
      have hIle : ∫ y in (0:ℝ)..(P.L T), (P.localFunD T).g y * y
          ≤ ∫ y in (0:ℝ)..(P.L T), P.L T * y := by
        apply intervalIntegral.integral_mono_on (by linarith : (0:ℝ) ≤ P.L T) ?_ ?_ hgle
        · exact (hgcont.mul continuous_id).intervalIntegrable 0 (P.L T)
        · exact (continuous_const.mul continuous_id).intervalIntegrable 0 (P.L T)
      have hIval : ∫ y in (0:ℝ)..(P.L T), P.L T * y = P.L T ^ 3 / 2 := by
        rw [intervalIntegral.integral_const_mul, integral_id]
        ring
      calc 2 / P.L T ^ 3 * ∫ y in (0:ℝ)..(P.L T), (P.localFunD T).g y * y
          ≤ 2 / P.L T ^ 3 * (P.L T ^ 3 / 2) := by
            apply mul_le_mul_of_nonneg_left _ (by positivity)
            rw [← hIval]
            exact hIle
        _ = 1 := by field_simp
  case muints2 =>
    obtain ⟨C, T₁, hC⟩ := hΓ.int_mu_sq
    refine ⟨max C 1, by positivity, max T₁ 0, fun T hT =>
      (hC T ((le_max_left _ _).trans hT)).trans ?_⟩
    have hT0 : 0 ≤ T := (le_max_right _ _).trans hT
    rw [mul_div_assoc]
    refine mul_le_mul_of_nonneg_right (le_max_left _ _) ?_
    exact div_nonneg (div_nonneg (mul_nonneg hT0 (sq_nonneg _)) (by positivity)) (sq_nonneg _)
  case prop_trace =>
    obtain ⟨A, hA, T₁, hN⟩ := rvm_evBound inp.RvM
    obtain ⟨C, T₂, hC⟩ := PrimeSide.prop_trace cϱD P.lam hΓ hcheb hlam A
    refine ⟨max C 1, by positivity, max T₀ (max T₁ T₂), fun T hT => ?_⟩
    have h0 : T₀ ≤ T := (le_max_left _ _).trans hT
    have h1 : T₁ ≤ T := ((le_max_left _ _).trans (le_max_right _ _)).trans hT
    have h2 : T₂ ≤ T := ((le_max_right _ _).trans (le_max_right _ _)).trans hT
    have hF := hT₀ T h0
    have := hC (P.toSetting T) (P.localFunD T) rfl h2 hF (Z.N T (2 * T) : ℝ) (hN T h1)
    refine this.trans (mul_le_mul_of_nonneg_right (le_max_left _ _) ?_)
    exact mul_nonneg hF.L_pos.le (Real.sqrt_nonneg _)
  case Msplit =>
    filter_upwards [eventually_ge_atTop T₀] with T hT
    exact eq_Msplit cϱD hΓ (P.toSetting T) (P.localFunD T) (hT₀ T hT)
  case sumJ =>
    obtain ⟨C, hC0, hC⟩ := ThmD.sumA2g_close hcheb
    refine ⟨C, hC0, ?_⟩
    obtain ⟨T₁, hT₁⟩ := eventually_atTop.mp (eventually_L_ge P hP.lam_pos 8)
    obtain ⟨T₂, hT₂⟩ := eventually_atTop.mp (eventually_L_ge P hP.lam_pos (2 * P.w))
    refine ⟨max T₀ (max T₁ T₂), fun T hT => ?_⟩
    have h1 : T₁ ≤ T := ((le_max_left _ _).trans (le_max_right _ _)).trans hT
    have h2 : T₂ ≤ T := ((le_max_right _ _).trans (le_max_right _ _)).trans hT
    have hL8 : 8 ≤ P.L T := hT₁ T h1
    have hLw : 2 * P.w ≤ P.L T := hT₂ T h2
    have hw0 : 0 < P.w := by linarith [hP.one_le_w]
    have hL0 : 0 < P.L T := by linarith
    have hg := gD_deriv_facts hP.taper hP.lam_pos hP.lam_le_one hw0 hLw
    have hgsupp : ∀ y : ℝ, P.L T ≤ y → (P.localFunD T).g y = 0 := by
      intro y hy
      show Params.autocorr (fun u => phiD P.ϱ P.lam (P.L T) P.w u ^ 2) y = 0
      apply autocorr_eq_zero_of_support (M := P.L T / 2) ?_ ?_ (by linarith)
      · intro u hu
        rw [phiD_eq_zero hP.taper hw0 hu, zero_pow two_ne_zero]
      · rw [abs_of_nonneg (by linarith : (0:ℝ) ≤ y)]
        linarith
    have key := hC (P.L T) (P.X T) (P.localFunD T).g hL8 (by
        show P.X T = Real.exp (P.L T)
        rfl) hg.1 hg.2.1 hg.2.2 hgsupp
    have e : P.L T ^ 3 / 2 * ((concreteDataD P Z).JT T)
        = ∫ y in (0:ℝ)..(P.L T), (P.localFunD T).g y * y := by
      show P.L T ^ 3 / 2 * (2 / P.L T ^ 3 * ∫ y in (0:ℝ)..(P.L T), (P.localFunD T).g y * y) = _
      field_simp
    show |sumA2g (P.X T) (P.localFunD T).g - P.L T ^ 3 / 2 * ((concreteDataD P Z).JT T)|
      ≤ C * P.L T ^ 2
    rw [e]
    exact key

/-- **TracesBoundsD for the concrete Montgomery–Taylor window.** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant598031d2f3f4e8365223119df64092145aa60a7e8ad834f4045a8b2ae1f92336.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant598031d2f3f4e8365223119df64092145aa60a7e8ad834f4045a8b2ae1f92336.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8092bef6bbccba1b112de5e1c7f83dc8c767c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

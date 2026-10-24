# concreteFactsChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27944502232eac80c7f2ae0c95bbd1998c72d40a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 347,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdad9870-c33a-9659-7f8a-3ecf4984deb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4269eee4-4cf0-b58f-0b73-df35d3882abe",
  "kind": "theorem",
  "lexical_name": "concreteFactsChi",
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
  "slug": "concretefactschi--588e634fbc36db9a00360b28",
  "source": {
    "blob": "27944502232eac80c7f2ae0c95bbd1998c72d40a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 347,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:588e634fbc36db9a00360b28e3e3ed35cc2d05631ce7cb4882e289307c2cdbce",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4269eee4-4cf0-b58f-0b73-df35d3882abe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem concreteFactsChi {cϱ : ℝ} {Z : ZeroConfig} (hP : P.Valid) (hq : 1 ≤ q)
    (hcu : CoeffUnimodular q c) (inp : PaperInputsChi κ q c Z)
    (hLoc : LocalHypsEventually cϱ P) : FactsChi q (concreteDataChi P κ q c Z) := by
  have hlam : 0 < P.lam ∧ P.lam ≤ 1 := ⟨hP.lam_pos, hP.lam_le_one⟩
  have hΓq := inp.Gamma
  have hcheb := inp.cheb
  have hc : CoeffOK q c := hcu.toCoeffOK
  have hreg : ∀ᶠ T in atTop, 0 ≤ T ∧ 0 ≤ Zeta23.l T ∧ 0 ≤ Real.log (Zeta23.l T) ∧ 0 ≤ P.L T
      ∧ 0 ≤ P.X T := by
    filter_upwards [eventually_ge_atTop 1, eventually_l_ge 1, eventually_log_l_ge 1,
      eventually_L_ge P hP.lam_pos 1, eventually_one_le_X P hP.lam_pos] with T h1 h2 h3 h4 h5
    exact ⟨by linarith, by linarith, by linarith, by linarith, by linarith⟩
  obtain ⟨T₀, hT₀⟩ := id hLoc
  have e_ends := evBound_of_eventuallyAt hLoc
    ((lem_ends_chi (κ := κ) (q := q) (c := c) (cϱ := cϱ) (lam := P.lam) hΓq hcheb hc hlam hq).imp
      fun _ h => h.to_eventuallyAt) (by
    filter_upwards [hreg] with T ⟨hT, hl, hlog, hL, hX⟩
    exact mul_nonneg (mul_nonneg (mul_nonneg hL hl) hlog) (add_nonneg (sq_nonneg _) hX))
  have e_mumu := evBound_of_eventuallyAt hLoc
    ((prop_mumu_chi (cϱ := cϱ) (lam := P.lam) hΓq hc hq hlam).imp
      fun _ h => h.to_eventuallyAt) (by
    filter_upwards [hreg, eventually_L_ge P hP.lam_pos 1] with T ⟨hT, hl, hlog, hL, hX⟩ hL1
    exact mul_nonneg (sq_nonneg _) (Real.log_nonneg hL1))
  have e_PP := evBound_of_eventuallyAt hLoc
    ((prop_PP_chi (cϱ := cϱ) (lam := P.lam) hcheb inp.MV hcu hlam).imp
      fun _ h => h.to_eventuallyAt) (by
    filter_upwards [hreg] with T ⟨hT, hl, hlog, hL, hX⟩
    exact mul_nonneg (sq_nonneg _) hX)
  have e_muP := evBound_of_eventuallyAt hLoc
    ((prop_cross_muP_chi_proved (cϱ := cϱ) (lam := P.lam) hΓq hcheb hc hq hlam).imp
      fun _ h => h.to_eventuallyAt) (by
    filter_upwards [hreg] with T ⟨hT, hl, hlog, hL, hX⟩
    exact mul_nonneg hl (Real.sqrt_nonneg _))
  refine ⟨hP.lam_pos, hP.lam_le_one, hP.one_le_w, hq, ?abdef, rvm_evBound_chi inp.RvM, ?muints2,
    ?prop_trace, ?lem_ends, ?Msplit, ?prop_mumu, ?prop_PP, ?sum_lower, ?sum_upper, ?cross_muP⟩
  case abdef =>
    filter_upwards [eventually_ge_atTop T₀] with T hT
    have hF := hT₀ T hT
    exact ⟨hF.b_lower, hF.b_le_a, hF.a_le_one⟩
  case muints2 =>
    obtain ⟨C, T₁, hC⟩ := hΓq.int_mu_sq
    refine ⟨max C 1, by positivity, max T₁ 0, fun T hT =>
      (hC T ((le_max_left _ _).trans hT)).trans ?_⟩
    have hT0 : 0 ≤ T := (le_max_right _ _).trans hT
    rw [mul_div_assoc]
    refine mul_le_mul_of_nonneg_right (le_max_left _ _) ?_
    exact div_nonneg (div_nonneg (mul_nonneg hT0 (sq_nonneg _)) (by positivity)) (sq_nonneg _)
  case prop_trace =>
    obtain ⟨A, hA, T₁, hN⟩ := rvm_evBound_chi inp.RvM
    obtain ⟨C, T₂, hC⟩ := prop_trace_chi (κ := κ) (q := q) (c := c) (cϱ := cϱ) (lam := P.lam) hΓq hcheb hc hlam A hq
    refine ⟨max C 1, by positivity, max (max T₀ 1) (max T₁ T₂), fun T hT => ?_⟩
    have h0 : T₀ ≤ T := ((le_max_left _ _).trans (le_max_left _ _)).trans hT
    have hT1' : (1:ℝ) ≤ T := ((le_max_right _ _).trans (le_max_left _ _)).trans hT
    have h1 : T₁ ≤ T := ((le_max_left _ _).trans (le_max_right _ _)).trans hT
    have h2 : T₂ ≤ T := ((le_max_right _ _).trans (le_max_right _ _)).trans hT
    have hF := hT₀ T h0
    have hT0' : (0:ℝ) < T := by linarith
    have hNT : |(Z.N T (2 * T) : ℝ) - T / (2 * π) * ell1q q T| ≤ A * Real.log T := by
      have hl : Zeta23.l T ≤ Real.log T := by
        unfold Zeta23.l
        rw [Real.log_div hT0'.ne' (by positivity)]
        have : 0 ≤ Real.log (2 * π) := Real.log_nonneg (by nlinarith [Real.pi_gt_three])
        linarith
      have hN' := hN T h1
      simp only at hN'
      rw [show T * ell1q q T / (2 * π) = T / (2 * π) * ell1q q T by ring] at hN'
      calc |(Z.N T (2 * T) : ℝ) - T / (2 * π) * ell1q q T| ≤ A * Zeta23.l T := hN'
        _ ≤ A * Real.log T := mul_le_mul_of_nonneg_left hl hA.le
    have key := hC (P.toSetting T) (P.localFun T) rfl h2 hF.toCore (Z.N T (2 * T) : ℝ) hNT
    rw [trGtChiA_concrete] at key
    refine key.trans (mul_le_mul_of_nonneg_right (le_max_left _ _) ?_)
    exact mul_nonneg hF.L_pos.le (Real.sqrt_nonneg _)
  case lem_ends =>
    exact e_ends.congr_left (Eventually.of_forall fun T => by
      show trGtildeSqChi P κ q c T - _ = _
      rw [← trGt2ChiA_concrete]
      rfl)
  case Msplit =>
    obtain ⟨T₁, hT₁⟩ := eq_Msplit_chi (κ := κ) (q := q) (c := c) (cϱ := cϱ) (lam := P.lam) hΓq hc hlam
    filter_upwards [eventually_ge_atTop T₀, eventually_ge_atTop T₁] with T h0 h1
    exact hT₁ (P.toSetting T) (P.localFun T) rfl h1 (hT₀ T h0).toCore
  case prop_mumu => exact e_mumu
  case prop_PP => exact e_PP
  case sum_lower =>
    obtain ⟨C, T₁, hC⟩ := sumA2gCoprime_lower (cϱ := cϱ) (lam := P.lam) (q := q) inp.chebq hlam
    refine ⟨max C 1, by positivity, max T₀ T₁, fun T hT => ?_⟩
    have h0 : T₀ ≤ T := (le_max_left _ _).trans hT
    have h1 : T₁ ≤ T := (le_max_right _ _).trans hT
    have key := hC (P.toSetting T) (P.localFun T) rfl h1 (hT₀ T h0)
    simp only [Params.toSetting_L, Params.toSetting_X, Params.toSetting_w, Params.localFun_g] at key
    show |min (sumA2gCoprime q (P.X T) (P.g T) - (P.L T - 2 * P.w) ^ 3 / 6) 0| ≤ max C 1 * P.L T ^ 2
    rw [abs_of_nonpos (min_le_right _ _)]
    have hCL : C * P.L T ^ 2 ≤ max C 1 * P.L T ^ 2 :=
      mul_le_mul_of_nonneg_right (le_max_left _ _) (sq_nonneg _)
    have hpos : 0 ≤ max C 1 * P.L T ^ 2 := by positivity
    rcases min_cases (sumA2gCoprime q (P.X T) (P.g T) - (P.L T - 2 * P.w) ^ 3 / 6) 0 with
      ⟨h, _⟩ | ⟨h, _⟩
    · rw [h]; linarith
    · rw [h]; simpa using hpos
  case sum_upper =>
    obtain ⟨C, T₁, hC⟩ := sumA2gCoprime_upper (cϱ := cϱ) (lam := P.lam) (q := q) inp.chebq hlam
    refine ⟨max C 1, by positivity, max T₀ T₁, fun T hT => ?_⟩
    have h0 : T₀ ≤ T := (le_max_left _ _).trans hT
    have h1 : T₁ ≤ T := (le_max_right _ _).trans hT
    have key := hC (P.toSetting T) (P.localFun T) rfl h1 (hT₀ T h0).toCore
    simp only [Params.toSetting_L, Params.toSetting_X, Params.localFun_g] at key
    show |max (sumA2gCoprime q (P.X T) (P.g T) - P.L T ^ 3 / 6) 0| ≤ max C 1 * P.L T ^ 2
    rw [abs_of_nonneg (le_max_right _ _)]
    have hCL : C * P.L T ^ 2 ≤ max C 1 * P.L T ^ 2 :=
      mul_le_mul_of_nonneg_right (le_max_left _ _) (sq_nonneg _)
    have hpos : 0 ≤ max C 1 * P.L T ^ 2 := by positivity
    exact max_le (by linarith) hpos
  case cross_muP => exact e_muP

/-- **[thm:traces] for L(s,χ), concrete.** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27944502232eac80c7f2ae0c95bbd1998c72d40a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

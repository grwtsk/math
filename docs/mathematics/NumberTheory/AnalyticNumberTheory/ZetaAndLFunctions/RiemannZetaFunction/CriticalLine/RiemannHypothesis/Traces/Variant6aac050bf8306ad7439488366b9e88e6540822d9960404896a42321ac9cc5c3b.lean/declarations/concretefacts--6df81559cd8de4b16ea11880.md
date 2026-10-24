# concreteFacts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69edbb47e546d3d15e15be67cc1cce5684e873d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6aac050bf8306ad7439488366b9e88e6540822d9960404896a42321ac9cc5c3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54137b7f-c3e4-b01e-aa3c-f574fbea6849",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a91f79b3-981b-b13c-b79f-cc7b36182db4",
  "kind": "theorem",
  "lexical_name": "concreteFacts",
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
  "slug": "concretefacts--6df81559cd8de4b16ea11880",
  "source": {
    "blob": "69edbb47e546d3d15e15be67cc1cce5684e873d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 96,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant6aac050bf8306ad7439488366b9e88e6540822d9960404896a42321ac9cc5c3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6df81559cd8de4b16ea1188000850dd272e86128c811cdfcec7b49b82755955b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant6aac050bf8306ad7439488366b9e88e6540822d9960404896a42321ac9cc5c3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a91f79b3-981b-b13c-b79f-cc7b36182db4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem concreteFacts {cϱ : ℝ} {Z : ZeroConfig} (hP : P.Valid) (inp : PaperInputs Z)
    (hLoc : LocalHypsEventually cϱ P) : Facts (concreteData P Z) := by
  have hlam : 0 < P.lam ∧ P.lam ≤ 1 := ⟨hP.lam_pos, hP.lam_le_one⟩
  have hΓ := inp.Gamma
  have hcheb := inp.cheb
  -- the regime, for majorant nonnegativity
  have hreg : ∀ᶠ T in atTop, 0 ≤ T ∧ 0 ≤ l T ∧ 0 ≤ Real.log (l T) ∧ 0 ≤ P.L T ∧ 0 ≤ P.X T := by
    filter_upwards [eventually_ge_atTop 1, eventually_l_ge 1, eventually_log_l_ge 1,
      eventually_L_ge P hP.lam_pos 1, eventually_one_le_X P hP.lam_pos] with T h1 h2 h3 h4 h5
    exact ⟨by linarith, by linarith, by linarith, by linarith, by linarith⟩
  obtain ⟨T₀, hT₀⟩ := id hLoc
  -- the §5 sub-results, specialised to the concrete data (EventuallyAt → EvBound)
  have e_ends := evBound_of_eventuallyAt hLoc ((PrimeSide.lem_ends cϱ P.lam hΓ hcheb hlam).imp fun _ h => h.to_eventuallyAt) (by
    filter_upwards [hreg] with T ⟨hT, hl, hlog, hL, hX⟩
    exact mul_nonneg (mul_nonneg (mul_nonneg hL hl) hlog) (add_nonneg (sq_nonneg _) hX))
  have e_mumu := evBound_of_eventuallyAt hLoc ((PrimeSide.prop_mumu cϱ P.lam hΓ hcheb hlam).imp fun _ h => h.to_eventuallyAt) (by
    filter_upwards [hreg, eventually_L_ge P hP.lam_pos 1] with T ⟨hT, hl, hlog, hL, hX⟩ hL1
    exact mul_nonneg (sq_nonneg _) (Real.log_nonneg hL1))
  have e_PP := evBound_of_eventuallyAt hLoc
    ((PrimeSide.prop_PP (cϱ := cϱ) (lam := P.lam) hcheb inp.MV hlam).imp fun _ h => h.to_eventuallyAt) (by
    filter_upwards [hreg] with T ⟨hT, hl, hlog, hL, hX⟩
    exact mul_nonneg (sq_nonneg _) hX)
  have e_muP := evBound_of_eventuallyAt hLoc ((PrimeSide.prop_cross_muP cϱ P.lam hΓ hcheb hlam).imp fun _ h => h.to_eventuallyAt) (by
    filter_upwards [hreg] with T ⟨hT, hl, hlog, hL, hX⟩
    exact mul_nonneg hl (Real.sqrt_nonneg _))
  have e_muPi := evBound_of_eventuallyAt hLoc ((PrimeSide.prop_cross_muPi cϱ P.lam hΓ hcheb hlam).imp fun _ h => h.to_eventuallyAt) (by
    filter_upwards [hreg] with T ⟨hT, hl, hlog, hL, hX⟩
    exact mul_nonneg (mul_nonneg hl hL) (Real.sqrt_nonneg _))
  have e_PPi := evBound_of_eventuallyAt hLoc ((PrimeSide.prop_cross_PPi cϱ P.lam hΓ hcheb hlam).imp fun _ h => h.to_eventuallyAt) (by
    filter_upwards [hreg] with T ⟨hT, hl, hlog, hL, hX⟩
    exact mul_nonneg hL hX)
  have e_PiPi := evBound_of_eventuallyAt hLoc ((PrimeSide.prop_cross_PiPi cϱ P.lam hΓ hcheb hlam).imp fun _ h => h.to_eventuallyAt) (by
    filter_upwards [hreg] with T ⟨hT, hl, hlog, hL, hX⟩
    exact div_nonneg (mul_nonneg hL hX) hT)
  refine ⟨hP.lam_pos, hP.lam_le_one, hP.one_le_w, ?abdef, rvm_evBound inp.RvM, ?muints2,
    ?prop_trace, ?lem_ends, ?Msplit, ?prop_mumu, ?prop_PP, ?sum_lower, ?sum_upper,
    ?cross_muP, ?cross_muPi, ?cross_PPi, ?cross_PiPi⟩
  case abdef =>
    filter_upwards [eventually_ge_atTop T₀] with T hT
    have hF := hT₀ T hT
    exact ⟨hF.b_lower, hF.b_le_a, hF.a_le_one⟩
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
    obtain ⟨C, T₂, hC⟩ := PrimeSide.prop_trace cϱ P.lam hΓ hcheb hlam A
    refine ⟨max C 1, by positivity, max T₀ (max T₁ T₂), fun T hT => ?_⟩
    have h0 : T₀ ≤ T := (le_max_left _ _).trans hT
    have h1 : T₁ ≤ T := ((le_max_left _ _).trans (le_max_right _ _)).trans hT
    have h2 : T₂ ≤ T := ((le_max_right _ _).trans (le_max_right _ _)).trans hT
    have hF := hT₀ T h0
    have := hC (P.toSetting T) (P.localFun T) rfl h2 hF.toCore (Z.N T (2 * T) : ℝ) (hN T h1)
    rw [trGtA_concrete] at this
    refine this.trans (mul_le_mul_of_nonneg_right (le_max_left _ _) ?_)
    exact mul_nonneg hF.L_pos.le (Real.sqrt_nonneg _)
  case lem_ends =>
    exact e_ends.congr_left (Eventually.of_forall fun T => by
      show P.trGtildeSq T - _ = _; rw [← trGt2A_concrete]; rfl)
  case Msplit =>
    filter_upwards [eventually_ge_atTop T₀] with T hT
    exact eq_Msplit cϱ hΓ (P.toSetting T) (P.localFun T) (hT₀ T hT).toCore
  case prop_mumu => exact e_mumu
  case prop_PP => exact e_PP
  case sum_lower =>
    obtain ⟨C, T₁, hC⟩ := PrimeSide.sum_a2g_lower (cϱ := cϱ) (lam := P.lam) hcheb hlam
    refine ⟨max C 1, by positivity, max T₀ T₁, fun T hT => ?_⟩
    have h0 : T₀ ≤ T := (le_max_left _ _).trans hT
    have h1 : T₁ ≤ T := (le_max_right _ _).trans hT
    have key := hC (P.toSetting T) (P.localFun T) rfl h1 (hT₀ T h0)
    simp only [Params.toSetting_L, Params.toSetting_X, Params.toSetting_w, Params.localFun_g] at key
    show |min (sumA2g (P.X T) (P.g T) - (P.L T - 2 * P.w) ^ 3 / 6) 0| ≤ max C 1 * P.L T ^ 2
    rw [abs_of_nonpos (min_le_right _ _)]
    have hCL : C * P.L T ^ 2 ≤ max C 1 * P.L T ^ 2 :=
      mul_le_mul_of_nonneg_right (le_max_left _ _) (sq_nonneg _)
    have hpos : 0 ≤ max C 1 * P.L T ^ 2 := by positivity
    rcases min_cases (sumA2g (P.X T) (P.g T) - (P.L T - 2 * P.w) ^ 3 / 6) 0 with ⟨h, _⟩ | ⟨h, _⟩
    · rw [h]; linarith
    · rw [h]; simpa using hpos
  case sum_upper =>
    obtain ⟨C, T₁, hC⟩ := PrimeSide.sum_a2g_upper (cϱ := cϱ) (lam := P.lam) hcheb hlam
    refine ⟨max C 1, by positivity, max T₀ T₁, fun T hT => ?_⟩
    have h0 : T₀ ≤ T := (le_max_left _ _).trans hT
    have h1 : T₁ ≤ T := (le_max_right _ _).trans hT
    have key := hC (P.toSetting T) (P.localFun T) rfl h1 (hT₀ T h0).toCore
    simp only [Params.toSetting_L, Params.toSetting_X, Params.localFun_g] at key
    show |max (sumA2g (P.X T) (P.g T) - P.L T ^ 3 / 6) 0| ≤ max C 1 * P.L T ^ 2
    rw [abs_of_nonneg (le_max_right _ _)]
    have hCL : C * P.L T ^ 2 ≤ max C 1 * P.L T ^ 2 :=
      mul_le_mul_of_nonneg_right (le_max_left _ _) (sq_nonneg _)
    have hpos : 0 ≤ max C 1 * P.L T ^ 2 := by positivity
    exact max_le (by linarith) hpos
  case cross_muP => exact e_muP
  case cross_muPi => exact e_muPi
  case cross_PPi => exact e_PPi
  case cross_PiPi => exact e_PiPi

/-- **[thm:traces] for the concrete prime-side data**: the hypothesis `ThmTracesHyp P Z` of
`PrimeSideTemp.lean` follows from `P.Valid`, the published inputs `PaperInputs Z`, and the taper
facts for the concrete φ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant6aac050bf8306ad7439488366b9e88e6540822d9960404896a42321ac9cc5c3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant6aac050bf8306ad7439488366b9e88e6540822d9960404896a42321ac9cc5c3b.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69edbb47e546d3d15e15be67cc1cce5684e873d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# measure_preimage_isMulLeftInvariant_eq_smul_of_hasCompactSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31ec501e-ddef-9f1d-073e-5085398582c5",
  "kind": "lemma",
  "lexical_name": "measure_preimage_isMulLeftInvariant_eq_smul_of_hasCompactSupport",
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
  "slug": "measure-preimage-ismulleftinvariant-eq-smul-of-hascompactsupport--fc1e49d43659f1d92a340b26",
  "source": {
    "blob": "cce80fab2e4f45ea1fa455657fb5e19d16580bfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 485,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variant80d234fce120d4f31262adfea4921442acf182da143fea8b4ef5de13292445ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc1e49d43659f1d92a340b26a46fe70327ce13c76f7abbabf36f5fc0f2659621",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Unique/Variant80d234fce120d4f31262adfea4921442acf182da143fea8b4ef5de13292445ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31ec501e-ddef-9f1d-073e-5085398582c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_preimage_isMulLeftInvariant_eq_smul_of_hasCompactSupport
    (μ' μ : Measure G) [IsHaarMeasure μ] [IsFiniteMeasureOnCompacts μ'] [IsMulLeftInvariant μ']
    {f : G → ℝ} (hf : Continuous f) (h'f : HasCompactSupport f) :
    μ' (f ⁻¹' {1}) = haarScalarFactor μ' μ • μ (f ⁻¹' {1}) := by
  /- This follows from the fact that the two measures integrate in the same way continuous
  functions, by approximating the indicator function of `f ⁻¹' {1}` by continuous functions
  (namely `vₙ ∘ f` where `vₙ` is equal to `1` at `1`, and `0` outside of a small neighborhood
  `(1 - uₙ, 1 + uₙ)` where `uₙ` is a sequence tending to `0`).
  We use `vₙ = thickenedIndicator uₙ {1}` to take advantage of existing lemmas. -/
  obtain ⟨u, -, u_mem, u_lim⟩ : ∃ u, StrictAnti u ∧ (∀ (n : ℕ), u n ∈ Ioo 0 1)
    ∧ Tendsto u atTop (𝓝 0) := exists_seq_strictAnti_tendsto' (zero_lt_one : (0 : ℝ) < 1)
  let v : ℕ → ℝ → ℝ := fun n x ↦ thickenedIndicator (u_mem n).1 ({1} : Set ℝ) x
  have vf_cont n : Continuous ((v n) ∘ f) := by
    apply Continuous.comp (continuous_induced_dom.comp ?_) hf
    exact BoundedContinuousFunction.continuous (thickenedIndicator (u_mem n).left {1})
  have I : ∀ (ν : Measure G), IsFiniteMeasureOnCompacts ν →
      Tendsto (fun n ↦ ∫ x, v n (f x) ∂ν) atTop
      (𝓝 (∫ x, Set.indicator ({1} : Set ℝ) (fun _ ↦ 1) (f x) ∂ν)) := by
    intro ν hν
    apply tendsto_integral_of_dominated_convergence
        (bound := (tsupport f).indicator (fun (_ : G) ↦ (1 : ℝ)))
    · exact fun n ↦ (vf_cont n).aestronglyMeasurable
    · apply IntegrableOn.integrable_indicator _ (isClosed_tsupport f).measurableSet
      simpa using IsCompact.measure_lt_top h'f
    · refine fun n ↦ Eventually.of_forall (fun x ↦ ?_)
      by_cases hx : x ∈ tsupport f
      · simp only [v, Real.norm_eq_abs, NNReal.abs_eq, hx, indicator_of_mem]
        norm_cast
        exact thickenedIndicator_le_one _ _ _
      · simp only [v, Real.norm_eq_abs, NNReal.abs_eq, hx, not_false_eq_true, indicator_of_notMem]
        rw [thickenedIndicator_zero]
        · simp
        · simpa [image_eq_zero_of_notMem_tsupport hx] using (u_mem n).2.le
    · filter_upwards with x
      have T := tendsto_pi_nhds.1 (thickenedIndicator_tendsto_indicator_closure
        (fun n ↦ (u_mem n).1) u_lim ({1} : Set ℝ)) (f x)
      simp only [thickenedIndicator_apply, closure_singleton] at T
      convert! NNReal.tendsto_coe.2 T
      simp
  have M n : ∫ (x : G), v n (f x) ∂μ' = ∫ (x : G), v n (f x) ∂(haarScalarFactor μ' μ • μ) := by
    apply integral_isMulLeftInvariant_eq_smul_of_hasCompactSupport μ' μ (vf_cont n)
    apply h'f.comp_left
    simp only [v, thickenedIndicator_apply, NNReal.coe_eq_zero]
    rw [thickenedIndicatorAux_zero (u_mem n).1]
    · simp only [ENNReal.toNNReal_zero]
    · simpa using (u_mem n).2.le
  have I1 := I μ' (by infer_instance)
  simp_rw [M] at I1
  have J1 : ∫ (x : G), indicator {1} (fun _ ↦ (1 : ℝ)) (f x) ∂μ'
      = ∫ (x : G), indicator {1} (fun _ ↦ 1) (f x) ∂(haarScalarFactor μ' μ • μ) :=
    tendsto_nhds_unique I1 (I (haarScalarFactor μ' μ • μ) (by infer_instance))
  have J2 : μ'.real (f ⁻¹' {1})
      = (haarScalarFactor μ' μ • μ).real (f ⁻¹' {1}) := by
    have : (fun x ↦ indicator {1} (fun _ ↦ (1 : ℝ)) (f x)) =
        (fun x ↦ indicator (f ⁻¹' {1}) (fun _ ↦ (1 : ℝ)) x) := by
      ext x
      exact (indicator_comp_right f (s := ({1} : Set ℝ)) (g := (fun _ ↦ (1 : ℝ))) (x := x)).symm
    have mf : MeasurableSet (f ⁻¹' {1}) := (isClosed_singleton.preimage hf).measurableSet
    simpa only [this, mf, integral_indicator_const, smul_eq_mul, mul_one, Pi.smul_apply,
      nnreal_smul_coe_apply, ENNReal.toReal_mul, ENNReal.coe_toReal] using J1
  have C : IsCompact (f ⁻¹' {1}) := h'f.isCompact_preimage hf isClosed_singleton (by simp)
  rw [measureReal_eq_measureReal_iff C.measure_lt_top.ne C.measure_lt_top.ne] at J2
  simpa using J2

/-- If an invariant measure is inner regular, then it gives less mass to sets with compact closure
than any other invariant measure, up to the scalar `haarScalarFactor μ' μ`.

Auxiliary lemma in the proof of the more general
`measure_isMulInvariant_eq_smul_of_isCompact_closure`, which gives equality for any
set with compact closure. -/
@[to_additive smul_measure_isAddInvariant_le_of_isCompact_closure
/-- If an invariant measure is inner regular, then it gives less mass to sets with compact closure
than any other invariant measure, up to the scalar `addHaarScalarFactor μ' μ`.

Auxiliary lemma in the proof of the more general
`measure_isAddInvariant_eq_smul_of_isCompact_closure`, which gives equality for any
set with compact closure. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Unique/Variant80d234fce120d4f31262adfea4921442acf182da143fea8b4ef5de13292445ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variant80d234fce120d4f31262adfea4921442acf182da143fea8b4ef5de13292445ed.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cce80fab2e4f45ea1fa455657fb5e19d16580bfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

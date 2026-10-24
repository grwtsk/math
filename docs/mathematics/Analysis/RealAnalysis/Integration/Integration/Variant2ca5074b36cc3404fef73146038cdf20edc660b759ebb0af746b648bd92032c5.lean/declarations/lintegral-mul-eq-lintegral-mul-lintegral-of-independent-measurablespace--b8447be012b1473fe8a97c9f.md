# lintegral_mul_eq_lintegral_mul_lintegral_of_independent_measurableSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa2058d4-070c-f161-582f-283957217475",
  "kind": "theorem",
  "lexical_name": "lintegral_mul_eq_lintegral_mul_lintegral_of_independent_measurableSpace",
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
  "slug": "lintegral-mul-eq-lintegral-mul-lintegral-of-independent-measurablespace--b8447be012b1473fe8a97c9f",
  "source": {
    "blob": "5edd8198d106bc7fd22755b47176bd2b6c14f355",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8447be012b1473fe8a97c9f19e6396f5c905e649b766f81c4c5036308af75a7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa2058d4-070c-f161-582f-283957217475`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_mul_eq_lintegral_mul_lintegral_of_independent_measurableSpace
    {Mf Mg mΩ : MeasurableSpace Ω} {μ : Measure Ω} (hMf : Mf ≤ mΩ) (hMg : Mg ≤ mΩ)
    (h_ind : Indep Mf Mg μ) (h_meas_f : Measurable[Mf] f) (h_meas_g : Measurable[Mg] g) :
    ∫⁻ ω, f ω * g ω ∂μ = (∫⁻ ω, f ω ∂μ) * ∫⁻ ω, g ω ∂μ := by
  revert g
  have h_measM_f : Measurable f := h_meas_f.mono hMf le_rfl
  apply @Measurable.ennreal_induction _ Mg
  · intro c s h_s
    apply lintegral_mul_indicator_eq_lintegral_mul_lintegral_indicator hMf _ (hMg _ h_s) _ h_meas_f
    apply indepSets_of_indepSets_of_le_right h_ind
    rwa [singleton_subset_iff]
  · intro f' g _ h_measMg_f' _ h_ind_f' h_ind_g'
    have h_measM_f' : Measurable f' := h_measMg_f'.mono hMg le_rfl
    simp_rw [Pi.add_apply, left_distrib]
    rw [lintegral_add_left h_measM_f', lintegral_add_left (h_measM_f.mul h_measM_f'), left_distrib,
      h_ind_f', h_ind_g']
  · intro f' h_meas_f' h_mono_f' h_ind_f'
    have h_measM_f' : ∀ n, Measurable (f' n) := fun n => (h_meas_f' n).mono hMg le_rfl
    simp_rw [ENNReal.mul_iSup]
    rw [lintegral_iSup, lintegral_iSup h_measM_f' h_mono_f', ENNReal.mul_iSup]
    · simp_rw [← h_ind_f']
    · exact fun n => h_measM_f.mul (h_measM_f' n)
    · exact fun n m (h_le : n ≤ m) a => mul_le_mul_left' (h_mono_f' h_le a) _
#align probability_theory.lintegral_mul_eq_lintegral_mul_lintegral_of_independent_measurable_space ProbabilityTheory.lintegral_mul_eq_lintegral_mul_lintegral_of_independent_measurableSpace

/-- If `f` and `g` are independent random variables with values in `ℝ≥0∞`,
   then `E[f * g] = E[f] * E[g]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5edd8198d106bc7fd22755b47176bd2b6c14f355` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# scaleRemainder_energy_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:737c19fc-2ae3-d5da-f44d-f2a3523bd853",
  "kind": "theorem",
  "lexical_name": "scaleRemainder_energy_tendsto",
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
  "slug": "scaleremainder-energy-tendsto--ff71abb68a2a3241336a2cc9",
  "source": {
    "blob": "57b7a9a151c8aa59b1ea690e00cc6a27e2b92739",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 442,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/114FormalResearchRiemannHypothesisSourceScaleDerivative/Variant6f47eb6b2372ce188a7c7f27c80582ed9f20ddfd36a32fbc3df89ae73600cabb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff71abb68a2a3241336a2cc927c85c6152ba0294be53d6e821b904adfa696729",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/114FormalResearchRiemannHypothesisSourceScaleDerivative/Variant6f47eb6b2372ce188a7c7f27c80582ed9f20ddfd36a32fbc3df89ae73600cabb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:737c19fc-2ae3-d5da-f44d-f2a3523bd853`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaleRemainder_energy_tendsto {A : ℝ} (hA : 0 < A) :
    Tendsto (fun B => ∫ x : ℝ, scaleRemainder A B x ^ 2) (nhds A) (nhds 0) := by
  obtain ⟨K, hK, hbound⟩ := local_scaleDerivative_bound hA
  let bound : ℝ → ℝ := (Icc (-2 * A) (2 * A)).indicator (fun _ => (2 * K) ^ 2)
  have hbint : Integrable bound (volume : Measure ℝ) :=
    (integrable_indicator_iff measurableSet_Icc).2
      (integrableOn_const isCompact_Icc.measure_ne_top)
  have hmeas : ∀ᶠ B in nhds A,
      AEStronglyMeasurable (fun x : ℝ => scaleRemainder A B x ^ 2) volume := by
    filter_upwards [eventually_gt_nhds hA] with B hB
    have hqB := (normalizedTest_contDiff B hB).continuous
    have hqA := (normalizedTest_contDiff A hA).continuous
    have hpA := scaleDerivative_continuous hA
    apply Continuous.aestronglyMeasurable
    unfold scaleRemainder
    fun_prop
  have hdom : ∀ᶠ B in nhds A, ∀ᵐ x ∂volume, ‖scaleRemainder A B x ^ 2‖ ≤ bound x := by
    filter_upwards [Ioo_mem_nhds (by linarith : A / 2 < A)
      (by linarith : A < 3 * A / 2)] with B hB
    apply Filter.Eventually.of_forall
    intro x
    have hBm : B ∈ Icc (A / 2) (3 * A / 2) := ⟨hB.1.le, hB.2.le⟩
    by_cases hx : x ∈ Icc (-2 * A) (2 * A)
    · have hr := local_scaleRemainder_bound hA hK hbound hBm x
      change ‖scaleRemainder A B x ^ 2‖ ≤
        (Icc (-2 * A) (2 * A)).indicator (fun _ => (2 * K) ^ 2) x
      rw [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _), indicator_of_mem hx]
      simpa only [sq_abs] using
        (sq_le_sq₀ (abs_nonneg (scaleRemainder A B x)) (by positivity : 0 ≤ 2 * K)).2 hr
    · have habs : 2 * A ≤ |x| := by
        simp only [mem_Icc, not_and_or, not_le] at hx
        rcases hx with hx | hx
        · have hn : x < 0 := by linarith
          rw [abs_of_neg hn]
          linarith
        · exact hx.le.trans (le_abs_self _)
      rw [local_scaleRemainder_zero hA hBm habs]
      rw [show ‖(0 : ℝ) ^ 2‖ = 0 by norm_num]
      exact indicator_nonneg (fun (_ : ℝ) _ => sq_nonneg (2 * K)) x
  have hlim : ∀ᵐ x ∂(volume : Measure ℝ),
      Tendsto (fun B => scaleRemainder A B x ^ 2) (nhds A) (nhds ((0 : ℝ → ℝ) x)) :=
    Filter.Eventually.of_forall (scaleRemainder_sq_tendsto hA)
  simpa using tendsto_integral_filter_of_dominated_convergence bound hmeas hdom hbint hlim

/-- Actual Hilbert-norm scale differentiation of the unchanged normalized source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/114FormalResearchRiemannHypothesisSourceScaleDerivative/Variant6f47eb6b2372ce188a7c7f27c80582ed9f20ddfd36a32fbc3df89ae73600cabb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/114FormalResearchRiemannHypothesisSourceScaleDerivative/Variant6f47eb6b2372ce188a7c7f27c80582ed9f20ddfd36a32fbc3df89ae73600cabb.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57b7a9a151c8aa59b1ea690e00cc6a27e2b92739` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

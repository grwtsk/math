# weighted_integral_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:519802c2-3ee8-94b6-4de0-839d5b368e8f",
  "kind": "theorem",
  "lexical_name": "weighted_integral_tendsto",
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
  "slug": "weighted-integral-tendsto--f2a7a3727632a49323f5dda6",
  "source": {
    "blob": "4d62234dd52486b18705bce054cfb11be2920917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variant6ba8284eb7307508b88917d02c7d3540f012b5581669f90dfc413d47f26eb121.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2a7a3727632a49323f5dda668bb6a46c6afa313b3b852554bbb93b772d6c120",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variant6ba8284eb7307508b88917d02c7d3540f012b5581669f90dfc413d47f26eb121.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:519802c2-3ee8-94b6-4de0-839d5b368e8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_integral_tendsto {ι : Type*} {l : Filter ι} [l.IsCountablyGenerated]
    (A : ℝ) (hA : 1 ≤ A) {w : ℝ → ℝ} (hw : Continuous w)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ ∫ x, w x * smoothedTest A (ε i) (hε i) x) l
      (𝓝 (∫ x, w x * actualTest A x)) := by
  obtain ⟨M, hM, _, hsm⟩ := exists_common_bound A hA
  obtain ⟨C, hC⟩ := isCompact_Icc.exists_bound_of_continuousOn
    (hw.continuousOn : ContinuousOn w (Icc (-A - 1) (A + 1)))
  let W := max C 0
  let bound : ℝ → ℝ := (Icc (-A - 1) (A + 1)).indicator (fun _ ↦ W * M)
  have hb : Integrable bound volume :=
    (continuous_const.integrableOn_Icc).integrable_indicator measurableSet_Icc
  have hsmall : ∀ᶠ i in l, ε i ≤ 1 :=
    ((tendsto_order.1 hlim).2 1 (by norm_num)).mono fun _ h ↦ h.le
  have hmeas : ∀ᶠ i in l,
      AEStronglyMeasurable (fun x ↦ w x * smoothedTest A (ε i) (hε i) x) volume :=
    Eventually.of_forall fun i ↦ (smoothed_weighted_integrable A (ε i) hA (hε i) hw).1
  have hdom : ∀ᶠ i in l, ∀ᵐ x ∂volume,
      ‖w x * smoothedTest A (ε i) (hε i) x‖ ≤ bound x := by
    filter_upwards [hsmall] with i hi
    exact Eventually.of_forall fun x ↦ by
      by_cases hx : x ∈ Icc (-A - 1) (A + 1)
      · simp only [bound, indicator_of_mem hx, norm_mul]
        exact mul_le_mul ((hC x hx).trans (le_max_left C 0))
          (hsm (ε i) (hε i) x) (norm_nonneg _) (le_max_right C 0)
      · rw [smoothedTest_zero_outside_common A (ε i) hA (hε i) hi x hx,
          mul_zero, norm_zero]
        simp only [bound, indicator_of_notMem hx, le_refl]
  have hpoint : ∀ᵐ x ∂volume,
      Tendsto (fun i ↦ w x * smoothedTest A (ε i) (hε i) x) l
        (𝓝 (w x * actualTest A x)) :=
    Eventually.of_forall fun x ↦
      tendsto_const_nhds.mul (smoothedTest_tendsto A hA ε hε hlim x)
  exact tendsto_integral_filter_of_dominated_convergence bound hmeas hdom hb hpoint

/-- Both signs of the source pole moments, with genuine integrability before the limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variant6ba8284eb7307508b88917d02c7d3540f012b5581669f90dfc413d47f26eb121.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variant6ba8284eb7307508b88917d02c7d3540f012b5581669f90dfc413d47f26eb121.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d62234dd52486b18705bce054cfb11be2920917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

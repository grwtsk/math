# actual_density_fixed_scaled_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc6c7efa-9a92-b47d-073e-3adcf689f1dc",
  "kind": "theorem",
  "lexical_name": "actual_density_fixed_scaled_window",
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
  "slug": "actual-density-fixed-scaled-window--d7a079cdd9fe68389fd1e2fa",
  "source": {
    "blob": "4be62d5ae1a61061ba5c1a1892e7a16927b1fb0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 395,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant642162c19478d1cd869511dcbd13990041620f5a3c5154e2d1546a2d0b605722.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7a079cdd9fe68389fd1e2fa9e8c7f749a4b55237b67727da4dcc0460be90e99",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant642162c19478d1cd869511dcbd13990041620f5a3c5154e2d1546a2d0b605722.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc6c7efa-9a92-b47d-073e-3adcf689f1dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_density_fixed_scaled_window :
    ∃ r c : ℝ, 0 < r ∧ r ≤ 1 / 4 ∧ 0 < c ∧
      ∀ A : ℝ, 1 ≤ A → ∀ u : ℝ, |u| ≤ r → c ≤ JointPhaseScaling.rescaledDensity A u := by
  have hc : Continuous JointPhaseScaling.bumpDensity :=
    (Complex.continuous_normSq.comp
      (BridgeFourier.sourceFourier_continuous JointPhaseScaling.source_bump_integrable)).div_const _
  have hn : {u : ℝ | JointPhaseScaling.bumpDensity 0 / 2 <
      JointPhaseScaling.bumpDensity u} ∈ 𝓝 (0 : ℝ) :=
    hc.continuousAt.preimage_mem_nhds (Ioi_mem_nhds (by linarith [bump_density_at_zero_pos]))
  obtain ⟨δ, hδ, hd⟩ := Metric.mem_nhds_iff.mp hn
  let r : ℝ := min (δ / 2) (1 / 4)
  let c : ℝ := (JointPhaseScaling.bumpDensity 0 / 2) / (16 * sourceNormalization 1)
  have hr : 0 < r := lt_min (by linarith) (by norm_num)
  refine ⟨r, c, hr, min_le_right _ _, by
    dsimp [c]
    exact div_pos (by linarith [bump_density_at_zero_pos])
      (mul_pos (by norm_num) (source_normalization_pos 1 (by norm_num))), ?_⟩
  intro A hA u hu
  have huδ : |u| < δ := by
    have hrd : r ≤ δ / 2 := min_le_left _ _
    linarith
  have hb : JointPhaseScaling.bumpDensity 0 / 2 < JointPhaseScaling.bumpDensity u :=
    hd (by simpa only [Metric.mem_ball, Real.dist_eq, sub_zero] using huδ)
  exact (div_le_div_of_nonneg_right hb.le (by
    positivity [source_normalization_pos 1 (by norm_num)])).trans
      (rescaled_density_fixed_lower A u hA)

/-- The complete multiplier's canonical negative part has unbounded expectation on the actual
normalized source. Signed cancellation can still bound the assembled quadratic value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant642162c19478d1cd869511dcbd13990041620f5a3c5154e2d1546a2d0b605722.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant642162c19478d1cd869511dcbd13990041620f5a3c5154e2d1546a2d0b605722.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4be62d5ae1a61061ba5c1a1892e7a16927b1fb0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

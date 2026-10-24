# actual_density_fixed_scaled_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12ab86063897381fe485ab3c4b941308d99fd919",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 387,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4f421b6-2aa9-dc4b-6aeb-5f80bc8f86bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3cf44863-b6a4-ce17-15f8-a2a05e9b6d40",
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
  "slug": "actual-density-fixed-scaled-window--1897a26444e77b6b01678625",
  "source": {
    "blob": "12ab86063897381fe485ab3c4b941308d99fd919",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 387,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daffFullQuadraticObs/Variant24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1897a26444e77b6b0167862574b61902785f2e804f7e9e183a6d189bdc56989a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daffFullQuadraticObs/Variant24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cf44863-b6a4-ce17-15f8-a2a05e9b6d40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–415.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daffFullQuadraticObs/Variant24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daffFullQuadraticObs/Variant24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12ab86063897381fe485ab3c4b941308d99fd919` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

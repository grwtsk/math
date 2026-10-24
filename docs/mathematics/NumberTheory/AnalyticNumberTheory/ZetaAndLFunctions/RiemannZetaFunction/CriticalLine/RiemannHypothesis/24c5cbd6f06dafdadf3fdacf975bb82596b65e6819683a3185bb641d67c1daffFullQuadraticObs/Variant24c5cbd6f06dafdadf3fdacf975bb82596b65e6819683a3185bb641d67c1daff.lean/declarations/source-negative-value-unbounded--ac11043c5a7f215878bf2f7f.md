# source_negative_value_unbounded

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
      "line": 416,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57ac84e8-d8f4-5d70-4848-6d5eb9e905ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:651613fe-1a4a-1cb6-6a1f-e0b81bef5aa6",
  "kind": "theorem",
  "lexical_name": "source_negative_value_unbounded",
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
  "slug": "source-negative-value-unbounded--ac11043c5a7f215878bf2f7f",
  "source": {
    "blob": "12ab86063897381fe485ab3c4b941308d99fd919",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 416,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daffFullQuadraticObs/Variant24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac11043c5a7f215878bf2f7f51cdf3b67d6a015c4bf619aafafbb5636313d66d",
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

Occurrence: `result:651613fe-1a4a-1cb6-6a1f-e0b81bef5aa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_negative_value_unbounded (B : ℝ) :
    ∃ A : ℝ, 1 ≤ A ∧ B < sourceNegativeValue A := by
  obtain ⟨r, c, hr, hrsmall, hc, hwindow⟩ := actual_density_fixed_scaled_window
  let d : ℝ := (|B| + 1) / (2 * r * c)
  have hd : 0 < d := div_pos (by positivity) (by positivity)
  obtain ⟨A, hA, hW⟩ := total_weight_unbounded (archimedeanMultiplier 0 + 6 + d)
  have hbound : (∫ u, (Icc (-r) r).indicator (fun _ ↦ d * c) u) ≤
      ∫ u, negativeMultiplier A (u / A) * JointPhaseScaling.rescaledDensity A u := by
    apply integral_mono (Realization.integrable_zeroExtension _ continuous_const _ _)
      (rescaled_source_negative_integrable A hA)
    intro u
    by_cases hu : u ∈ Icc (-r) r
    · rw [indicator_of_mem hu]
      have habs : |u| ≤ r := abs_le.mpr hu
      have hm := full_multiplier_small_scaled_upper A u hA (habs.trans hrsmall)
      have hn : d ≤ negativeMultiplier A (u / A) := by
        have hmax := le_max_right 0 (-spectralMultiplier A (u / A))
        unfold negativeMultiplier
        linarith
      exact mul_le_mul hn (hwindow A hA u habs) hc.le (negative_multiplier_nonneg A (u / A))
    · rw [indicator_of_notMem hu]
      exact mul_nonneg (negative_multiplier_nonneg A (u / A))
        (JointPhaseScaling.rescaled_density_nonneg A u hA)
  have hmass : (∫ u, (Icc (-r) r).indicator (fun _ ↦ d * c) u) = |B| + 1 := by
    rw [Realization.zeroExtension_integral _ _ _ (by linarith),
      intervalIntegral.integral_const, smul_eq_mul]
    dsimp [d]
    field_simp
    ring
  rw [hmass, ← source_negative_eq_rescaled A hA] at hbound
  refine ⟨A, hA, ?_⟩
  linarith [le_abs_self B]

/-- The scalar negative expectation is exactly the canonical actual Hilbert source overlap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daffFullQuadraticObs/Variant24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daffFullQuadraticObs/Variant24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12ab86063897381fe485ab3c4b941308d99fd919` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

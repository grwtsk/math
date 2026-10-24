# positive_trace_eventual_seam_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:960a2841-430d-d156-7a99-3ae4fb354b25",
  "kind": "theorem",
  "lexical_name": "positive_trace_eventual_seam_lower_bound",
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
  "slug": "positive-trace-eventual-seam-lower-bound--cd762a09ededf0d17b12f6d1",
  "source": {
    "blob": "63d9feb552a72dbe58083abf333535767d5de6e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 53,
    "path": "GRWTSK/Analysis/Integration/TranslationSeamLowerBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd762a09ededf0d17b12f6d1370df032b0aff2659c546a56ba80d2a35e6f48e4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TranslationSeamLowerBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:960a2841-430d-d156-7a99-3ae4fb354b25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_trace_eventual_seam_lower_bound {g p : ℝ → ℝ} {a b : ℝ}
    (intervalPositive : a < b) (interiorContinuous : ContinuousAt p b)
    (tracePositive : 0 < p b)
    (interior : ∀ y : ℝ, a < y → y < b → g y = p y)
    (outside : ∀ x : ℝ, b < x → g x = 0)
    (energyIntegrable : ∀ h : ℝ,
      Integrable (fun x : ℝ ↦ (g x - g (x - h)) ^ 2)) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ h : ℝ, 0 < h → h < ε →
      (p b / 2) ^ 2 * h ≤ ∫ x : ℝ, (g x - g (x - h)) ^ 2 := by
  have nearTrace : ∀ᶠ y in 𝓝 b, p b / 2 < p y :=
    interiorContinuous.eventually (Ioi_mem_nhds (by linarith : p b / 2 < p b))
  obtain ⟨δ, positiveδ, near⟩ := Metric.eventually_nhds_iff.mp nearTrace
  refine ⟨min δ (b - a), lt_min positiveδ (by linarith), ?_⟩
  intro h shiftPositive short
  have hδ : h < δ := (lt_min_iff.mp short).1
  have hInterval : h < b - a := (lt_min_iff.mp short).2
  apply right_seam_lower_bound shiftPositive (by linarith : 0 ≤ p b / 2)
    outside ?_ (energyIntegrable h)
  intro y lower upper
  have distance : dist y b < δ := by
    rw [Real.dist_eq, abs_of_neg (by linarith : y - b < 0)]
    linarith
  have trace := near distance
  rw [interior y (by linarith) upper]
  exact trace.le.trans (le_abs_self _)

end

end GRWTSK.Analysis.Integration.TranslationSeamLowerBound
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/TranslationSeamLowerBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Integration/TranslationSeamLowerBound.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63d9feb552a72dbe58083abf333535767d5de6e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

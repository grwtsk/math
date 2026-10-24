# exists_null_frontier_thickening

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f6bf5d2-448d-63d2-bbdf-2aeda5247a69",
  "kind": "theorem",
  "lexical_name": "exists_null_frontier_thickening",
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
  "slug": "exists-null-frontier-thickening--acacea845e231f53b33dde6d",
  "source": {
    "blob": "14bfefe7634f73bf560897022dc579d3b9efc875",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 382,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acacea845e231f53b33dde6d6e085a0137f9160f661262fc709fe73c35a9c41e",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f6bf5d2-448d-63d2-bbdf-2aeda5247a69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_null_frontier_thickening (μ : Measure Ω) [SFinite μ] (s : Set Ω) {a b : ℝ}
    (hab : a < b) : ∃ r ∈ Ioo a b, μ (frontier (Metric.thickening r s)) = 0 := by
  have mbles : ∀ r : ℝ, MeasurableSet (frontier (Metric.thickening r s)) :=
    fun r ↦ isClosed_frontier.measurableSet
  have disjs := Metric.frontier_thickening_disjoint s
  have key := Measure.countable_meas_pos_of_disjoint_iUnion (μ := μ) mbles disjs
  have aux := measure_diff_null (s := Ioo a b) (Set.Countable.measure_zero key volume)
  have len_pos : 0 < ENNReal.ofReal (b - a) := by simp only [hab, ENNReal.ofReal_pos, sub_pos]
  rw [← Real.volume_Ioo, ← aux] at len_pos
  rcases nonempty_of_measure_ne_zero len_pos.ne.symm with ⟨r, ⟨r_in_Ioo, hr⟩⟩
  refine ⟨r, r_in_Ioo, ?_⟩
  simpa only [mem_setOf_eq, not_lt, le_zero_iff] using hr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14bfefe7634f73bf560897022dc579d3b9efc875` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

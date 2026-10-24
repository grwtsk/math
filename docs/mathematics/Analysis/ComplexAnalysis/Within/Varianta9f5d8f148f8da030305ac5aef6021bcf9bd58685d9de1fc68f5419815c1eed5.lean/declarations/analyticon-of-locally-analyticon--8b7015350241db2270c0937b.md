# analyticOn_of_locally_analyticOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:012bd392-3a37-e5dd-6300-f0835bc6f9a7",
  "kind": "lemma",
  "lexical_name": "analyticOn_of_locally_analyticOn",
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
  "slug": "analyticon-of-locally-analyticon--8b7015350241db2270c0937b",
  "source": {
    "blob": "93e118cb5c6ccf34007d09b324d2b1a45ed573ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 68,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b7015350241db2270c0937b9751763e7ab6bf4e16ffaee62182f394b0bbe644",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:012bd392-3a37-e5dd-6300-f0835bc6f9a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma analyticOn_of_locally_analyticOn {f : E → F} {s : Set E}
    (h : ∀ x ∈ s, ∃ u, IsOpen u ∧ x ∈ u ∧ AnalyticOn 𝕜 f (s ∩ u)) :
    AnalyticOn 𝕜 f s := by
  intro x m
  rcases h x m with ⟨u, ou, xu, fu⟩
  rcases Metric.mem_nhds_iff.mp (ou.mem_nhds xu) with ⟨r, r0, ru⟩
  rcases fu x ⟨m, xu⟩ with ⟨p, t, fp⟩
  exact ⟨p, min (.ofReal r) t,
    { r_pos := lt_min (by positivity) fp.r_pos
      r_le := min_le_of_right_le fp.r_le
      hasSum := by
        intro y ys yr
        simp only [EMetric.mem_ball, lt_min_iff, edist_lt_ofReal, dist_zero_right] at yr
        apply fp.hasSum
        · simp only [mem_insert_iff, add_eq_left] at ys
          rcases ys with rfl | ys
          · simp
          · simp only [mem_insert_iff, add_eq_left, mem_inter_iff, ys, true_and]
            apply Or.inr (ru ?_)
            simp only [Metric.mem_ball, dist_self_add_left, yr]
        · simp only [EMetric.mem_ball, yr] }⟩

/-- On open sets, `AnalyticOnNhd` and `AnalyticOn` coincide -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93e118cb5c6ccf34007d09b324d2b1a45ed573ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

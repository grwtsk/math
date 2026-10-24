# IsUpperSet.exists_subset_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa84bd90-fa8e-1de4-1b1b-e49321c805d0",
  "kind": "theorem",
  "lexical_name": "IsUpperSet.exists_subset_ball",
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
  "slug": "isupperset-exists-subset-ball--10a0e8de846b3552a9aa2609",
  "source": {
    "blob": "1c22adc63de5354f1081f4b6effdbcb06f55d18c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 156,
    "path": "GRWTSK/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10a0e8de846b3552a9aa2609e16605fc374b142054b37bef3c20aeab999ca235",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa84bd90-fa8e-1de4-1b1b-e49321c805d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsUpperSet.exists_subset_ball (hs : IsUpperSet s) (hx : x ∈ closure s) (hδ : 0 < δ) :
    ∃ y, closedBall y (δ / 4) ⊆ closedBall x δ ∧ closedBall y (δ / 4) ⊆ interior s := by
  refine ⟨x + const _ (3 / 4 * δ), closedBall_subset_closedBall' ?_, ?_⟩
  · rw [dist_self_add_left]
    refine (add_le_add_left (pi_norm_const_le <| 3 / 4 * δ) _).trans_eq ?_
    simp only [norm_mul, norm_div, Real.norm_eq_abs]
    simp only [gt_iff_lt, zero_lt_three, abs_of_pos, zero_lt_four, abs_of_pos hδ]
    ring
  obtain ⟨y, hy, hxy⟩ := Metric.mem_closure_iff.1 hx _ (div_pos hδ zero_lt_four)
  refine fun z hz => hs.mem_interior_of_forall_lt (subset_closure hy) fun i => ?_
  rw [mem_closedBall, dist_eq_norm'] at hz
  rw [dist_eq_norm] at hxy
  replace hxy := (norm_le_pi_norm _ i).trans hxy.le
  replace hz := (norm_le_pi_norm _ i).trans hz
  dsimp at hxy hz
  rw [abs_sub_le_iff] at hxy hz
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c22adc63de5354f1081f4b6effdbcb06f55d18c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

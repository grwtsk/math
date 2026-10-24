# IsOpen.analyticOn_iff_analyticOnNhd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2eb0051745641c17b3e86f2298d5a5fd7eff0ac2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afb38cf2-edab-0368-824c-d9344fe65de4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55d99ff4-2519-6678-b293-fd70d18893db",
  "kind": "lemma",
  "lexical_name": "IsOpen.analyticOn_iff_analyticOnNhd",
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
  "slug": "isopen-analyticon-iff-analyticonnhd--66b8534002f056f3e8944a85",
  "source": {
    "blob": "2eb0051745641c17b3e86f2298d5a5fd7eff0ac2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 83,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66b8534002f056f3e8944a854c2f9f2e4e9c8bdad57f5af34bd23cabb9870439",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55d99ff4-2519-6678-b293-fd70d18893db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsOpen.analyticOn_iff_analyticOnNhd {f : E → F} {s : Set E} (hs : IsOpen s) :
    AnalyticOn 𝕜 f s ↔ AnalyticOnNhd 𝕜 f s := by
  refine ⟨?_, AnalyticOnNhd.analyticOn⟩
  intro hf x m
  rcases Metric.mem_nhds_iff.mp (hs.mem_nhds m) with ⟨r, r0, rs⟩
  rcases hf x m with ⟨p, t, fp⟩
  exact ⟨p, min (.ofReal r) t,
  { r_pos := lt_min (by positivity) fp.r_pos
    r_le := min_le_of_right_le fp.r_le
    hasSum := by
      intro y ym
      simp only [EMetric.mem_ball, lt_min_iff, edist_lt_ofReal, dist_zero_right] at ym
      refine fp.hasSum ?_ ym.2
      apply mem_insert_of_mem
      apply rs
      simp only [Metric.mem_ball, dist_self_add_left, ym.1] }⟩

/-!
### Equivalence to analyticity of a local extension

We show that `HasFPowerSeriesWithinOnBall`, `HasFPowerSeriesWithinAt`, and `AnalyticWithinAt` are
equivalent to the existence of a local extension with full analyticity.  We do not yet show a
result for `AnalyticOn`, as this requires a bit more work to show that local extensions can
be stitched together.
-/

set_option linter.style.multiGoal false in
/-- `f` has power series `p` at `x` iff some local extension of `f` has that series -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2eb0051745641c17b3e86f2298d5a5fd7eff0ac2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

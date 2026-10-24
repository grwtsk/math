# cmp_dist_eq_cmp_dist_coe_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf578e3075f1ab6422d151a74b5b5be1e77ba982",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80f5c5e946096f9822987e752f3485fd17119c142a0f68401aa2991549ccbfd5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a638847-bd68-3a19-d0c1-a7f4c4a1b8ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:836aa0d1-a8ad-91fb-0c75-5e38ad69ade0",
  "kind": "theorem",
  "lexical_name": "cmp_dist_eq_cmp_dist_coe_center",
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
  "slug": "cmp-dist-eq-cmp-dist-coe-center--4f31bb80c1f907e7021c003b",
  "source": {
    "blob": "cf578e3075f1ab6422d151a74b5b5be1e77ba982",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 156,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant80f5c5e946096f9822987e752f3485fd17119c142a0f68401aa2991549ccbfd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f31bb80c1f907e7021c003b037cf295824fe17308843ca45dbb91b21294de80",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Metric/Variant80f5c5e946096f9822987e752f3485fd17119c142a0f68401aa2991549ccbfd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:836aa0d1-a8ad-91fb-0c75-5e38ad69ade0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cmp_dist_eq_cmp_dist_coe_center (z w : ℍ) (r : ℝ) :
    cmp (dist z w) r = cmp (dist (z : ℂ) (w.center r)) (w.im * Real.sinh r) := by
  let := metricSpaceAux
  rcases lt_or_ge r 0 with hr₀ | hr₀
  · trans Ordering.gt
    exacts [(hr₀.trans_le dist_nonneg).cmp_eq_gt,
      ((mul_neg_of_pos_of_neg w.im_pos (sinh_neg_iff.2 hr₀)).trans_le dist_nonneg).cmp_eq_gt.symm]
  have hr₀' : 0 ≤ w.im * Real.sinh r := by positivity
  have hzw₀ : 0 < 2 * z.im * w.im := by positivity
  simp only [← cosh_strictMonoOn.cmp_map_eq dist_nonneg hr₀,
    ← (pow_left_strictMonoOn₀ (M₀ := ℝ) two_ne_zero).cmp_map_eq dist_nonneg hr₀',
    dist_coe_center_sq]
  rw [← cmp_mul_pos_left hzw₀, ← cmp_sub_zero, ← mul_sub, ← cmp_add_right, zero_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant80f5c5e946096f9822987e752f3485fd17119c142a0f68401aa2991549ccbfd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant80f5c5e946096f9822987e752f3485fd17119c142a0f68401aa2991549ccbfd5.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf578e3075f1ab6422d151a74b5b5be1e77ba982` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

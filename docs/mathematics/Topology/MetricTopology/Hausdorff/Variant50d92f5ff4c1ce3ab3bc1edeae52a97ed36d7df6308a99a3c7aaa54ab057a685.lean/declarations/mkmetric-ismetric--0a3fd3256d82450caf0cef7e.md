# mkMetric'_isMetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "68e1819bc363c5422395f0e9c695aca6b0f85b97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 324,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3585084a-92f5-1e01-ba48-b53b065f68a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3a2b263-8b1c-5d04-6856-87e6138eb325",
  "kind": "theorem",
  "lexical_name": "mkMetric'_isMetric",
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
  "slug": "mkmetric-ismetric--0a3fd3256d82450caf0cef7e",
  "source": {
    "blob": "68e1819bc363c5422395f0e9c695aca6b0f85b97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 324,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a3fd3256d82450caf0cef7e34eed8866f78702355a8cb2895e0ec6b042a7850",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3a2b263-8b1c-5d04-6856-87e6138eb325`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mkMetric'_isMetric (m : Set X → ℝ≥0∞) : (mkMetric' m).IsMetric := by
  rintro s t ⟨r, r0, hr⟩
  refine' tendsto_nhds_unique_of_eventuallyEq
    (mkMetric'.tendsto_pre _ _) ((mkMetric'.tendsto_pre _ _).add (mkMetric'.tendsto_pre _ _)) _
  rw [← pos_iff_ne_zero] at r0
  filter_upwards [Ioo_mem_nhdsWithin_Ioi ⟨le_rfl, r0⟩]
  rintro ε ⟨_, εr⟩
  refine' boundedBy_union_of_top_of_nonempty_inter _
  rintro u ⟨x, hxs, hxu⟩ ⟨y, hyt, hyu⟩
  have : ε < diam u := εr.trans_le ((hr x hxs y hyt).trans <| edist_le_diam_of_mem hxu hyu)
  exact iInf_eq_top.2 fun h => (this.not_le h).elim
#align measure_theory.outer_measure.mk_metric'_is_metric MeasureTheory.OuterMeasure.mkMetric'_isMetric

/-- If `c ∉ {0, ∞}` and `m₁ d ≤ c * m₂ d` for `d < ε` for some `ε > 0`
(we use `≤ᶠ[𝓝[≥] 0]` to state this), then `mkMetric m₁ hm₁ ≤ c • mkMetric m₂ hm₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68e1819bc363c5422395f0e9c695aca6b0f85b97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

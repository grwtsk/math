# tendsto_measure_cthickening

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc87fc8d0dce51c415a65b6641cffb2814ec11a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e4814b4-97ff-6571-2a05-a27fb1d1bbd9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4e9602ba-f60f-ddb8-a5e7-4f89ab10d24d",
  "kind": "theorem",
  "lexical_name": "tendsto_measure_cthickening",
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
  "slug": "tendsto-measure-cthickening--3d73143aab2af1ecead54f87",
  "source": {
    "blob": "bc87fc8d0dce51c415a65b6641cffb2814ec11a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 125,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d73143aab2af1ecead54f874f3eab8c1dee52d4dfaeedb51d34a8a390e03808",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e9602ba-f60f-ddb8-a5e7-4f89ab10d24d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_measure_cthickening {μ : Measure α} {s : Set α}
    (hs : ∃ R > 0, μ (cthickening R s) ≠ ∞) :
    Tendsto (fun r => μ (cthickening r s)) (𝓝 0) (𝓝 (μ (closure s))) := by
  have A : Tendsto (fun r => μ (cthickening r s)) (𝓝[Ioi 0] 0) (𝓝 (μ (closure s))) := by
    rw [closure_eq_iInter_cthickening]
    exact
      tendsto_measure_biInter_gt (fun r _ => isClosed_cthickening.nullMeasurableSet)
        (fun i j _ ij => cthickening_mono ij _) hs
  have B : Tendsto (fun r => μ (cthickening r s)) (𝓝[Iic 0] 0) (𝓝 (μ (closure s))) := by
    apply Tendsto.congr' _ tendsto_const_nhds
    filter_upwards [self_mem_nhdsWithin (α := ℝ)] with _ hr
    rw [cthickening_of_nonpos hr]
  convert B.sup A
  exact (nhdsLE_sup_nhdsGT 0).symm

/-- If a closed set has a closed thickening with finite measure, then the measure of its closed
`r`-thickenings converge to its measure as `r` tends to `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc87fc8d0dce51c415a65b6641cffb2814ec11a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

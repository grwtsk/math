# squaredNorm_total_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "159c1e60d3f543b774b6bce6ba688ad85ef00949",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/Analysis/Complex/HolomorphicLineMetric.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1dd012ef-cb69-a48a-3785-4ec22b363976",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07799e66-3b67-20bc-6ada-dc247112aeed",
  "kind": "theorem",
  "lexical_name": "squaredNorm_total_continuous",
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
  "slug": "squarednorm-total-continuous--98739527628c90eebfd75ffe",
  "source": {
    "blob": "159c1e60d3f543b774b6bce6ba688ad85ef00949",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 181,
    "path": "GRWTSK/Analysis/Complex/HolomorphicLineMetric.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98739527628c90eebfd75ffe8fc2442beecd787b282312357bcaa7048235dc05",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicLineMetric.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07799e66-3b67-20bc-6ada-dc247112aeed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squaredNorm_total_continuous (M : MetricWeights C) (hOpen : D.IsOpenCover) :
    Continuous (fun p : (C.vectorBundleCore hOpen).TotalSpace =>
      M.squaredNorm hOpen p.proj p.snd) := by
  apply continuous_iff_continuousAt.mpr
  intro p
  let i := D.select p.proj
  have hi : p.proj.1 ∈ (D.U i).carrier := D.select_mem p.proj
  have hChart : IsOpen (Cocycle.chartSet D i) :=
    (hOpen.member_open i).preimage continuous_subtype_val
  have hProj := (C.vectorBundleCore hOpen).continuous_proj.continuousAt (x := p)
  have hCoord : ContinuousAt
      (fun q : (C.vectorBundleCore hOpen).TotalSpace =>
        ((C.vectorBundleCore hOpen).localTriv i q).2) p := by
    exact ((FiberBundle.continuousAt_totalSpace (F := ℂ)
      (fun q : (C.vectorBundleCore hOpen).TotalSpace => q)).mp continuousAt_id).2
  have hWeight : ContinuousAt
      (fun q : (C.vectorBundleCore hOpen).TotalSpace => M.chartWeight i q.proj) p :=
    ((M.chartWeight_continuousOn i).continuousAt (hChart.mem_nhds hi)).comp hProj
  apply (hWeight.mul (normSq_continuous.continuousAt.comp hCoord)).congr_of_eventuallyEq
  have hmem : {q : (C.vectorBundleCore hOpen).TotalSpace |
      q.proj ∈ Cocycle.chartSet D i} ∈ 𝓝 p :=
    (hChart.preimage (C.vectorBundleCore hOpen).continuous_proj).mem_nhds hi
  filter_upwards [hmem] with q hq
  rw [M.squaredNorm_in_chart hOpen i q.proj hq, M.chartWeight_apply i q.proj hq]

/-- The identity cocycle has a concrete positive compatible metric. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicLineMetric.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicLineMetric.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `159c1e60d3f543b774b6bce6ba688ad85ef00949` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# ChartedSpace.sumOfNonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c99aa8c22e0347b43403d858b4a1532402a73790b35a0039b3af57140abaea5f",
  "kind": "def",
  "lexical_name": "ChartedSpace.sumOfNonempty",
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
  "slug": "chartedspace-sumofnonempty--e51149b1eef8b72c59a53803",
  "source": {
    "blob": "44a556dc586e598f467c7fe57c0da87ee2b18238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 514,
    "path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant8139e412d5ca3904171c7a7d9706a557e8dd602fdedea87c968397cb56993058.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e51149b1eef8b72c59a53803737156d9b11418a617f476df6f998ccff5b753c6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ChartedSpace/Variant8139e412d5ca3904171c7a7d9706a557e8dd602fdedea87c968397cb56993058.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c99aa8c22e0347b43403d858b4a1532402a73790b35a0039b3af57140abaea5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ChartedSpace.sumOfNonempty [Nonempty H] : ChartedSpace H (M ⊕ M') where
  atlas := ((fun e ↦ e.lift_openEmbedding IsOpenEmbedding.inl) '' cm.atlas) ∪
    ((fun e ↦ e.lift_openEmbedding IsOpenEmbedding.inr) '' cm'.atlas)
  -- At `x : M`, the chart is the chart in `M`; at `x' ∈ M'`, it is the chart in `M'`.
  chartAt := Sum.elim (fun x ↦ (cm.chartAt x).lift_openEmbedding IsOpenEmbedding.inl)
    (fun x ↦ (cm'.chartAt x).lift_openEmbedding IsOpenEmbedding.inr)
  mem_chart_source p := by
    cases p with
    | inl x =>
      rw [Sum.elim_inl, lift_openEmbedding_source,
        ← OpenPartialHomeomorph.lift_openEmbedding_source _ IsOpenEmbedding.inl]
      use x, cm.mem_chart_source x
    | inr x =>
      rw [Sum.elim_inr, lift_openEmbedding_source,
        ← OpenPartialHomeomorph.lift_openEmbedding_source _ IsOpenEmbedding.inr]
      use x, cm'.mem_chart_source x
  chart_mem_atlas p := by
    cases p with
    | inl x =>
      rw [Sum.elim_inl]
      left
      use ChartedSpace.chartAt x, cm.chart_mem_atlas x
    | inr x =>
      rw [Sum.elim_inr]
      right
      use ChartedSpace.chartAt x, cm'.chart_mem_atlas x

@[deprecated (since := "2026-07-26")]
alias ChartedSpace.sum_of_nonempty := ChartedSpace.sumOfNonempty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ChartedSpace/Variant8139e412d5ca3904171c7a7d9706a557e8dd602fdedea87c968397cb56993058.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant8139e412d5ca3904171c7a7d9706a557e8dd602fdedea87c968397cb56993058.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44a556dc586e598f467c7fe57c0da87ee2b18238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

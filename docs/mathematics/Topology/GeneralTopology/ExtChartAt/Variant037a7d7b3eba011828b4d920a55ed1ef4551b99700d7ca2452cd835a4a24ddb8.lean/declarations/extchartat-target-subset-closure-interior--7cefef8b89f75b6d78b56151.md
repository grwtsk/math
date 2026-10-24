# extChartAt_target_subset_closure_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d4279f0-622d-bbc4-9c5b-6b8bcbcd5b09",
  "kind": "lemma",
  "lexical_name": "extChartAt_target_subset_closure_interior",
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
  "slug": "extchartat-target-subset-closure-interior--7cefef8b89f75b6d78b56151",
  "source": {
    "blob": "8502555daa720e5e330ba3ce074e4182e3241a26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 576,
    "path": "GRWTSK/Topology/GeneralTopology/ExtChartAt/Variant037a7d7b3eba011828b4d920a55ed1ef4551b99700d7ca2452cd835a4a24ddb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cefef8b89f75b6d78b56151930b2c541c7f16a736675c9b7964170db5bec166",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtChartAt/Variant037a7d7b3eba011828b4d920a55ed1ef4551b99700d7ca2452cd835a4a24ddb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d4279f0-622d-bbc4-9c5b-6b8bcbcd5b09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 576–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extChartAt_target_subset_closure_interior {x : M} :
    (extChartAt I x).target ⊆ closure (interior (extChartAt I x).target) := by
  intro y hy
  rw [mem_closure_iff_nhds]
  intro t ht
  have A : t ∩ ((extChartAt I x).target ∪ (range I)ᶜ) ∈ 𝓝 y :=
    inter_mem ht (extChartAt_target_union_compl_range_mem_nhds_of_mem hy)
  have B : y ∈ closure (interior (range I)) := by
    apply I.range_subset_closure_interior (extChartAt_target_subset_range x hy)
  obtain ⟨z, ⟨tz, h'z⟩, hz⟩ :
      (t ∩ ((extChartAt I x).target ∪ (range ↑I)ᶜ) ∩ interior (range I)).Nonempty :=
    mem_closure_iff_nhds.1 B _ A
  refine ⟨z, ⟨tz, ?_⟩⟩
  have h''z : z ∈ (extChartAt I x).target := by simpa [interior_subset hz] using h'z
  exact (extChartAt_target_eventuallyEq_of_mem h''z).symm.mem_interior hz

variable (I) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtChartAt/Variant037a7d7b3eba011828b4d920a55ed1ef4551b99700d7ca2452cd835a4a24ddb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtChartAt/Variant037a7d7b3eba011828b4d920a55ed1ef4551b99700d7ca2452cd835a4a24ddb8.lean#L576).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8502555daa720e5e330ba3ce074e4182e3241a26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# tendsto_indicator_const_apply_iff_eventually'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ef0295c04d5702b638e35e2f526bf281926de95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3745bbd9c3f2fe19e235f96c8b61d36abec5a73cec85d9f79c424812d995adb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3d27cba-30e9-2171-04d2-d2a47b8926aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:571e413f-0fc5-5f33-6d5c-f27dfaf7bb63",
  "kind": "lemma",
  "lexical_name": "tendsto_indicator_const_apply_iff_eventually'",
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
  "slug": "tendsto-indicator-const-apply-iff-eventually--f7a294b11db97e6a5aa00d46",
  "source": {
    "blob": "7ef0295c04d5702b638e35e2f526bf281926de95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/IndicatorConstPointwise/Variantc3745bbd9c3f2fe19e235f96c8b61d36abec5a73cec85d9f79c424812d995adb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7a294b11db97e6a5aa00d461ea2337fdd9d6518e0966058e39c58df52a80771",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IndicatorConstPointwise/Variantc3745bbd9c3f2fe19e235f96c8b61d36abec5a73cec85d9f79c424812d995adb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:571e413f-0fc5-5f33-6d5c-f27dfaf7bb63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_indicator_const_apply_iff_eventually' (b : β)
    (nhds_b : {0}ᶜ ∈ 𝓝 b) (nhds_o : {b}ᶜ ∈ 𝓝 0) (x : α) :
    Tendsto (fun i ↦ (As i).indicator (fun (_ : α) ↦ b) x) L (𝓝 (A.indicator (fun (_ : α) ↦ b) x))
      ↔ ∀ᶠ i in L, (x ∈ As i ↔ x ∈ A) := by
  classical
  have heart := @tendsto_ite ι L β (fun i ↦ x ∈ As i) _ (x ∈ A) _ b 0 (𝓝 b) (𝓝 (0 : β))
                nhds_o nhds_b ?_ ?_
  · convert heart
    by_cases hxA : x ∈ A <;> simp [hxA]
  · simp only [principal_singleton, le_def, mem_pure]
    exact fun s s_nhds ↦ mem_of_mem_nhds s_nhds
  · simp only [principal_singleton, le_def, mem_pure]
    exact fun s s_nhds ↦ mem_of_mem_nhds s_nhds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IndicatorConstPointwise/Variantc3745bbd9c3f2fe19e235f96c8b61d36abec5a73cec85d9f79c424812d995adb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IndicatorConstPointwise/Variantc3745bbd9c3f2fe19e235f96c8b61d36abec5a73cec85d9f79c424812d995adb.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ef0295c04d5702b638e35e2f526bf281926de95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

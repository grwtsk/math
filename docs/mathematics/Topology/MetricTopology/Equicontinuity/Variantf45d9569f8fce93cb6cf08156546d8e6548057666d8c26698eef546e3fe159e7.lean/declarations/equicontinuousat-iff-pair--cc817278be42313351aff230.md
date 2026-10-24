# equicontinuousAt_iff_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6eb1be3e684196a8c374c8e424b6ab768ea10bad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea664cc6-b7bd-4fe9-9481-f64b1dea5799",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac7f7571-fc84-cac5-2ed0-6bf10da3bad3",
  "kind": "theorem",
  "lexical_name": "equicontinuousAt_iff_pair",
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
  "slug": "equicontinuousat-iff-pair--cc817278be42313351aff230",
  "source": {
    "blob": "6eb1be3e684196a8c374c8e424b6ab768ea10bad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 58,
    "path": "GRWTSK/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc817278be42313351aff2300f19991c3b93f88a717acee1a9578042b0aa601d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac7f7571-fc84-cac5-2ed0-6bf10da3bad3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem equicontinuousAt_iff_pair {ι : Type*} [TopologicalSpace β] {F : ι → β → α}
    {x₀ : β} :
    EquicontinuousAt F x₀ ↔
      ∀ ε > 0, ∃ U ∈ 𝓝 x₀, ∀ x ∈ U, ∀ x' ∈ U, ∀ i, dist (F i x) (F i x') < ε := by
  rw [equicontinuousAt_iff_pair]
  constructor <;> intro H
  · intro ε hε
    exact H _ (dist_mem_uniformity hε)
  · intro U hU
    rcases mem_uniformity_dist.mp hU with ⟨ε, hε, hεU⟩
    refine' Exists.imp (fun V => And.imp_right fun h => _) (H _ hε)
    exact fun x hx x' hx' i => hεU (h _ hx _ hx' i)
#align metric.equicontinuous_at_iff_pair Metric.equicontinuousAt_iff_pair

/-- Characterization of uniform equicontinuity for families of functions taking values in a
(pseudo) metric space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb1be3e684196a8c374c8e424b6ab768ea10bad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

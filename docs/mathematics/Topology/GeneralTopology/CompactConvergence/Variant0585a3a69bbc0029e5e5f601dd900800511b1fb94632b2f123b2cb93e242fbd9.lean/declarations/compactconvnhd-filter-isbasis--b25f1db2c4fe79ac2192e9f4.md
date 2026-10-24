# compactConvNhd_filter_isBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73701979-8e21-027a-9529-3d321ae4dec3",
  "kind": "theorem",
  "lexical_name": "compactConvNhd_filter_isBasis",
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
  "slug": "compactconvnhd-filter-isbasis--b25f1db2c4fe79ac2192e9f4",
  "source": {
    "blob": "0788ac245737c102988379e8f3697a91ffdef77f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 147,
    "path": "GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b25f1db2c4fe79ac2192e9f47847d47f8795297626d79353ae8e70fe803fabdb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73701979-8e21-027a-9529-3d321ae4dec3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compactConvNhd_filter_isBasis :
    Filter.IsBasis (fun KV : Set α × Set (β × β) => IsCompact KV.1 ∧ KV.2 ∈ 𝓤 β) fun KV =>
      compactConvNhd KV.1 KV.2 f :=
  { nonempty := compactConvNhd_compact_entourage_nonempty
    inter := by
      rintro ⟨K₁, V₁⟩ ⟨K₂, V₂⟩ ⟨hK₁, hV₁⟩ ⟨hK₂, hV₂⟩
      exact
        ⟨⟨K₁ ∪ K₂, V₁ ∩ V₂⟩, ⟨hK₁.union hK₂, Filter.inter_mem hV₁ hV₂⟩,
          compactConvNhd_subset_inter f K₁ K₂ V₁ V₂⟩ }
#align continuous_map.compact_conv_nhd_filter_is_basis ContinuousMap.compactConvNhd_filter_isBasis

/-- A filter basis for the neighbourhood filter of a point in the compact-convergence topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0788ac245737c102988379e8f3697a91ffdef77f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

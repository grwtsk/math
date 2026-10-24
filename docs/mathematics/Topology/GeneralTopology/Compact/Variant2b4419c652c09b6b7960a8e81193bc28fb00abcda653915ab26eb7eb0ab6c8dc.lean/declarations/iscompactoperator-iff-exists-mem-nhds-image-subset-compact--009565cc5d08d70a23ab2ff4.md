# isCompactOperator_iff_exists_mem_nhds_image_subset_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d734fbd-2130-9c40-09a6-df9c16d9f6c2",
  "kind": "theorem",
  "lexical_name": "isCompactOperator_iff_exists_mem_nhds_image_subset_compact",
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
  "slug": "iscompactoperator-iff-exists-mem-nhds-image-subset-compact--009565cc5d08d70a23ab2ff4",
  "source": {
    "blob": "a092fcc377f7e54eb29c593926656c7c86bb3acf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 82,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:009565cc5d08d70a23ab2ff48d539be6f7a8808e9cb27cfc9e79b3ccfe78116c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d734fbd-2130-9c40-09a6-df9c16d9f6c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompactOperator_iff_exists_mem_nhds_image_subset_compact (f : M₁ → M₂) :
    IsCompactOperator f ↔ ∃ V ∈ (𝓝 0 : Filter M₁), ∃ K : Set M₂, IsCompact K ∧ f '' V ⊆ K :=
  ⟨fun ⟨K, hK, hKf⟩ => ⟨f ⁻¹' K, hKf, K, hK, image_preimage_subset _ _⟩, fun ⟨_, hV, K, hK, hVK⟩ =>
    ⟨K, hK, mem_of_superset hV (image_subset_iff.mp hVK)⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a092fcc377f7e54eb29c593926656c7c86bb3acf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# compactConvNhd_mem_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3240f22e93d7462b3ec97d0ddc704ac9d515fb66",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8658f795-e00d-9ea7-6e12-d593f708efb7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42d0f1cd-13d2-e0c0-9246-871b436c1126",
  "kind": "theorem",
  "lexical_name": "compactConvNhd_mem_comp",
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
  "slug": "compactconvnhd-mem-comp--804f6f7854dd0f087d054835",
  "source": {
    "blob": "3240f22e93d7462b3ec97d0ddc704ac9d515fb66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 111,
    "path": "GRWTSK/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:804f6f7854dd0f087d0548355378d926d7c9ba3f1fff96f44696f56076981d4d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42d0f1cd-13d2-e0c0-9246-871b436c1126`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compactConvNhd_mem_comp {g₁ g₂ : C(α, β)} {V' : Set (β × β)}
    (hg₁ : g₁ ∈ compactConvNhd K V f) (hg₂ : g₂ ∈ compactConvNhd K V' g₁) :
    g₂ ∈ compactConvNhd K (V ○ V') f := fun x hx => ⟨g₁ x, hg₁ x hx, hg₂ x hx⟩
#align continuous_map.compact_conv_nhd_mem_comp ContinuousMap.compactConvNhd_mem_comp

/-- A key property of `ContinuousMap.compactConvNhd`. It allows us to apply
`TopologicalSpace.nhds_mkOfNhds_filterBasis` below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3240f22e93d7462b3ec97d0ddc704ac9d515fb66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

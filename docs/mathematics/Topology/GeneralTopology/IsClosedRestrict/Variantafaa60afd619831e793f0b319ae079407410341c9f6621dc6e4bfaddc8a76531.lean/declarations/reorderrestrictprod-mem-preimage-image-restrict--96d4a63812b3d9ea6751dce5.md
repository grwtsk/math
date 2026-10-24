# reorderRestrictProd_mem_preimage_image_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a2f8db97317b60738697d767e025ac4aa411474",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2eb5c6b5-2869-a72c-fef3-bc988bcf4949",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8060a665-b4d0-8f05-836a-a83049b35cf7",
  "kind": "lemma",
  "lexical_name": "reorderRestrictProd_mem_preimage_image_restrict",
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
  "slug": "reorderrestrictprod-mem-preimage-image-restrict--96d4a63812b3d9ea6751dce5",
  "source": {
    "blob": "4a2f8db97317b60738697d767e025ac4aa411474",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 71,
    "path": "GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96d4a63812b3d9ea6751dce5cbd1a9176aa733ae856e8619804c11d533a2a363",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8060a665-b4d0-8f05-836a-a83049b35cf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reorderRestrictProd_mem_preimage_image_restrict (p : Sᶜ.domRestrict '' s × (Π i : S, α i)) :
    reorderRestrictProd S s p ∈ Sᶜ.domRestrict ⁻¹' Sᶜ.domRestrict '' s := by
  obtain ⟨y, hy_mem_s, hy_eq⟩ := p.1.2
  exact ⟨y, hy_mem_s, hy_eq.trans (restrict_compl_reorderRestrictProd p).symm⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a2f8db97317b60738697d767e025ac4aa411474` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

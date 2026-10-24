# hasBasis_nhdsSet_Iic_Iio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "120b0f2f29753f5aed51a14c643de59efd1ec518",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:343e7dbc-3742-ea46-9b46-c7606c8a7b3b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a131ce0d-25cd-4e8f-6dbf-2fe6b53ff9dc",
  "kind": "theorem",
  "lexical_name": "hasBasis_nhdsSet_Iic_Iio",
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
  "slug": "hasbasis-nhdsset-iic-iio--86dabb7087a6d933efdd9313",
  "source": {
    "blob": "120b0f2f29753f5aed51a14c643de59efd1ec518",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 169,
    "path": "GRWTSK/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86dabb7087a6d933efdd9313830f48c1062dc3cafced40aa5799436467a01cec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a131ce0d-25cd-4e8f-6dbf-2fe6b53ff9dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasBasis_nhdsSet_Iic_Iio (a : α) [h : Nonempty (Ioi a)] :
    HasBasis (𝓝ˢ (Iic a)) (a < ·) Iio := by
  refine ⟨fun s ↦ ⟨fun hs ↦ ?_, fun ⟨b, hab, hb⟩ ↦ mem_of_superset (Iio_mem_nhdsSet_Iic hab) hb⟩⟩
  rw [nhdsSet_Iic, mem_sup, mem_principal] at hs
  rcases exists_Ico_subset_of_mem_nhds hs.1 (Set.nonempty_coe_sort.1 h) with ⟨b, hab, hbs⟩
  exact ⟨b, hab, Iio_subset_Iio_union_Ico.trans (union_subset hs.2 hbs)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `120b0f2f29753f5aed51a14c643de59efd1ec518` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

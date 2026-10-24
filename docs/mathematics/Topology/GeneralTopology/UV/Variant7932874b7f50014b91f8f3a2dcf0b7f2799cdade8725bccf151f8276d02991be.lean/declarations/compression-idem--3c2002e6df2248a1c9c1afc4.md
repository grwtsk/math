# compression_idem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b87145e41254080ec6ed450fc06b2055f19cbb81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/7932874b7f50014b91f8f3a2dcf0b7f2799cdade8725bccf151f8276d02991be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c14faf2-b066-7ebf-8955-48d87c57462a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26a50e55-f7be-1c50-07e2-a748469ec41c",
  "kind": "theorem",
  "lexical_name": "compression_idem",
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
  "slug": "compression-idem--3c2002e6df2248a1c9c1afc4",
  "source": {
    "blob": "b87145e41254080ec6ed450fc06b2055f19cbb81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 192,
    "path": "GRWTSK/Topology/GeneralTopology/UV/Variant7932874b7f50014b91f8f3a2dcf0b7f2799cdade8725bccf151f8276d02991be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c2002e6df2248a1c9c1afc45956000a9fd255e9fce26233c4d37d857c2bcb13",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UV/Variant7932874b7f50014b91f8f3a2dcf0b7f2799cdade8725bccf151f8276d02991be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26a50e55-f7be-1c50-07e2-a748469ec41c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compression_idem (u v : α) (s : Finset α) :
  𝓒 u v (𝓒 u v s) = 𝓒 u v s := by
  have h : filter (fun a => compress u v a ∉ 𝓒 u v s) (𝓒 u v s) = ∅ :=
    filter_false_of_mem fun a ha h => h <| compress_mem_compression_of_mem_compression ha
  rw [compression, image_filter]
  simp_rw [Function.comp]
  rw [h, image_empty, ← h]
  exact filter_union_filter_neg_eq _ (compression u v s)
#align uv.compression_idem UV.compression_idem

/-- Compressing a family doesn't change its size. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UV/Variant7932874b7f50014b91f8f3a2dcf0b7f2799cdade8725bccf151f8276d02991be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UV/Variant7932874b7f50014b91f8f3a2dcf0b7f2799cdade8725bccf151f8276d02991be.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b87145e41254080ec6ed450fc06b2055f19cbb81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

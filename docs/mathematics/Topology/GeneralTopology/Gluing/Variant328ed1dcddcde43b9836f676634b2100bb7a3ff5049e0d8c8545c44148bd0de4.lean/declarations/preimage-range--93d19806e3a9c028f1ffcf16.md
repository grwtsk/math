# preimage_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fd25bdc23a1a0eb0820f4c246448e1762c34d94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dbe06f13-a531-8438-0848-f0ee05ae4148",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f6b3651-559c-8a47-5b2f-0849b7ffe2eb",
  "kind": "theorem",
  "lexical_name": "preimage_range",
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
  "slug": "preimage-range--93d19806e3a9c028f1ffcf16",
  "source": {
    "blob": "1fd25bdc23a1a0eb0820f4c246448e1762c34d94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 232,
    "path": "GRWTSK/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93d19806e3a9c028f1ffcf16fa57539246c4a34d295fb6069bcb29f056b8e514",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f6b3651-559c-8a47-5b2f-0849b7ffe2eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_range (i j : D.J) : 𝖣.ι j ⁻¹' Set.range (𝖣.ι i) = Set.range (D.f j i) := by
  rw [← Set.preimage_image_eq (Set.range (D.f j i)) (D.ι_injective j), ← Set.image_univ, ←
    Set.image_univ, ← Set.image_comp, ← coe_comp, Set.image_univ, Set.image_univ, ← image_inter,
    Set.preimage_range_inter]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fd25bdc23a1a0eb0820f4c246448e1762c34d94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# OpenEmbedding.isQuasiSeparated_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a8f0b96184d0c8c27252a6604ab489945e5a7c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72fd45a7-7f9a-36a5-06ca-ce01a38943af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f0f48bd-455e-3c99-1596-2021bfb57faa",
  "kind": "theorem",
  "lexical_name": "OpenEmbedding.isQuasiSeparated_iff",
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
  "slug": "openembedding-isquasiseparated-iff--f96c7543ac8ac15e477eb079",
  "source": {
    "blob": "5a8f0b96184d0c8c27252a6604ab489945e5a7c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f96c7543ac8ac15e477eb079e95cfc21d4eeb032544887ec5447c49a49e4225d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f0f48bd-455e-3c99-1596-2021bfb57faa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OpenEmbedding.isQuasiSeparated_iff (h : OpenEmbedding f) {s : Set α} :
    IsQuasiSeparated s ↔ IsQuasiSeparated (f '' s) := by
  refine' ⟨fun hs => hs.image_of_embedding h.toEmbedding, _⟩
  intro H U V hU hU' hU'' hV hV' hV''
  rw [h.toEmbedding.isCompact_iff_isCompact_image, Set.image_inter h.inj]
  exact
    H (f '' U) (f '' V) (Set.image_subset _ hU) (h.isOpenMap _ hU') (hU''.image h.continuous)
      (Set.image_subset _ hV) (h.isOpenMap _ hV') (hV''.image h.continuous)
#align open_embedding.is_quasi_separated_iff OpenEmbedding.isQuasiSeparated_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a8f0b96184d0c8c27252a6604ab489945e5a7c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

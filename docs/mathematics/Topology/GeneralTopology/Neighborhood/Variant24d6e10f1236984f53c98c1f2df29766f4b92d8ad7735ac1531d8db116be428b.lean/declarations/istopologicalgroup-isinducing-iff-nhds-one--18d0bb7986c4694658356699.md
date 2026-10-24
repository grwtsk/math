# IsTopologicalGroup.isInducing_iff_nhds_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f001740a81132036b29324daefca70a9d5e64e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24d6e10f1236984f53c98c1f2df29766f4b92d8ad7735ac1531d8db116be428b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e1795ad-ec63-21dd-872b-2eccc34b809d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f02d6753-0041-745d-66bf-4a4de356941c",
  "kind": "lemma",
  "lexical_name": "IsTopologicalGroup.isInducing_iff_nhds_one",
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
  "slug": "istopologicalgroup-isinducing-iff-nhds-one--18d0bb7986c4694658356699",
  "source": {
    "blob": "9f001740a81132036b29324daefca70a9d5e64e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 134,
    "path": "GRWTSK/Topology/GeneralTopology/Neighborhood/Variant24d6e10f1236984f53c98c1f2df29766f4b92d8ad7735ac1531d8db116be428b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18d0bb7986c469465835669984df97fb86328d963be3b126b45339648ea6e5dd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Neighborhood/Variant24d6e10f1236984f53c98c1f2df29766f4b92d8ad7735ac1531d8db116be428b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f02d6753-0041-745d-66bf-4a4de356941c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsTopologicalGroup.isInducing_iff_nhds_one
    {H : Type*} [Group H] [TopologicalSpace H] [IsTopologicalGroup H] {F : Type*}
    [FunLike F G H] [MonoidHomClass F G H] {f : F} :
    Topology.IsInducing f ↔ 𝓝 (1 : G) = (𝓝 (1 : H)).comap f := by
  rw [Topology.isInducing_iff_nhds]
  refine ⟨(map_one f ▸ · 1), fun hf x ↦ ?_⟩
  rw [← nhds_translation_mul_inv, ← nhds_translation_mul_inv (f x), Filter.comap_comap, hf,
    Filter.comap_comap]
  congr 1
  ext; simp

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Neighborhood/Variant24d6e10f1236984f53c98c1f2df29766f4b92d8ad7735ac1531d8db116be428b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Neighborhood/Variant24d6e10f1236984f53c98c1f2df29766f4b92d8ad7735ac1531d8db116be428b.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f001740a81132036b29324daefca70a9d5e64e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

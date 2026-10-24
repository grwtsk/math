# boundedSpace_induced_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf91b61dc9731f6cd2afa4c121b75df261572977",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6355f83-d1a1-735a-61a8-f212222abb0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a81747d3-81d0-623e-bc98-7fe95c6846dc",
  "kind": "theorem",
  "lexical_name": "boundedSpace_induced_iff",
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
  "slug": "boundedspace-induced-iff--c5dd306c8711a1fcefdf5f1c",
  "source": {
    "blob": "bf91b61dc9731f6cd2afa4c121b75df261572977",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 156,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5dd306c8711a1fcefdf5f1c9372d9a9e997859b441d05f5d7537c60b061dd5c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a81747d3-81d0-623e-bc98-7fe95c6846dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundedSpace_induced_iff {α β : Type*} [Bornology β] {f : α → β} :
    @BoundedSpace α (Bornology.induced f) ↔ IsBounded (range f) := by
  rw [← @isBounded_univ _ (Bornology.induced f), isBounded_induced, image_univ]
-- porting note: had to explicitly provided the bornology to `isBounded_univ`.
#align bounded_space_induced_iff boundedSpace_induced_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf91b61dc9731f6cd2afa4c121b75df261572977` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# DescriptorRegistry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b911b48eaffa47813b1295fa5219a38c9bbf1449744773d92ad280175ed29bcb",
  "kind": "structure",
  "lexical_name": "DescriptorRegistry",
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
  "slug": "descriptorregistry--00c377f2f14dcce6b3267762",
  "source": {
    "blob": "d3b3412bd53be0461049cd2229a30cbbd8b6d9a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 20,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorRegistry/Variant4cbeeecf9eb295be3fd5eda0241253ded83324b57bcf42f8f29574038477a88a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00c377f2f14dcce6b3267762dd1de4f217cb6cfbfc1d5b422986c7beb8272159",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorRegistry/Variant4cbeeecf9eb295be3fd5eda0241253ded83324b57bcf42f8f29574038477a88a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b911b48eaffa47813b1295fa5219a38c9bbf1449744773d92ad280175ed29bcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DescriptorRegistry where
  registryId : StableId
  pointIds : List ElementId
  point_ids_unique : pointIds.Nodup
  descriptorInventory : List DescriptorId
  descriptor_inventory_unique : descriptorInventory.Nodup
  descriptors : List Descriptor
  descriptor_ids_unique :
    (descriptors.map Descriptor.descriptorId).Nodup
  inventoryCoverage :
    ∀ descriptorId,
      descriptorId ∈ descriptorInventory ↔
        ∃ descriptor ∈ descriptors,
          descriptor.descriptorId = descriptorId
  pointReferencesResolve :
    ∀ descriptor ∈ descriptors,
      ∀ pointId ∈ descriptor.disposition.pointReferences,
        pointId ∈ pointIds
  registryDigest : Digest

namespace DescriptorRegistry

/-- No inventoried label occurrence may disappear. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorRegistry/Variant4cbeeecf9eb295be3fd5eda0241253ded83324b57bcf42f8f29574038477a88a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorRegistry/Variant4cbeeecf9eb295be3fd5eda0241253ded83324b57bcf42f8f29574038477a88a.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3b3412bd53be0461049cd2229a30cbbd8b6d9a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

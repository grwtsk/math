# UniverseManifest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac66e486d16186642988e07d9fec2620c721350c524a6b67a82e4636e32ef6f7",
  "kind": "structure",
  "lexical_name": "UniverseManifest",
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
  "slug": "universemanifest--b0673308bb4412abc1766fd3",
  "source": {
    "blob": "1a51111a0c4bb1eb9fa0f09f85db7c5120b4e780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 94,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variantb95450ff8f02198693323c4a11a5d9d3e24d25b44dbbf4ac3c321d4fb3da9a15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0673308bb4412abc1766fd39d28cd9a248042aaf8d6f8ae6dde666d618a7338",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Manifest/Variantb95450ff8f02198693323c4a11a5d9d3e24d25b44dbbf4ac3c321d4fb3da9a15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac66e486d16186642988e07d9fec2620c721350c524a6b67a82e4636e32ef6f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure UniverseManifest where
  schemaVersion : Nat
  sourceTreeDigest : Digest
  toolchainDigest : Digest
  snapshotId : SnapshotId
  nodes : Finset TerrainNode
  edges : Finset TerrainEdgeDescriptor
  higherCells : Finset TerrainCellDescriptor
  theoremCells : Finset TheoremCellDescriptor
  foldData : Finset FoldDescriptor
  runtimeBindings : Finset RuntimeBindingDescriptor
  externalAuthorities : Finset ExternalAuthorityDescriptor
  closedUnderReferences :
    ReferencesClosed nodes edges higherCells theoremCells foldData runtimeBindings
  identityInjective : NodeIdentityInjective nodes

namespace UniverseManifest

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Manifest/Variantb95450ff8f02198693323c4a11a5d9d3e24d25b44dbbf4ac3c321d4fb3da9a15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variantb95450ff8f02198693323c4a11a5d9d3e24d25b44dbbf4ac3c321d4fb3da9a15.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a51111a0c4bb1eb9fa0f09f85db7c5120b4e780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

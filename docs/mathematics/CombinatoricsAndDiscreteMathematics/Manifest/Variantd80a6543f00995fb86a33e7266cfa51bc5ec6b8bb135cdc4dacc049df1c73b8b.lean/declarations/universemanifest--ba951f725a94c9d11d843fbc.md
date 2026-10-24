# UniverseManifest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c2e491be05629077870bf0fedcd1b64288a32949714bfcd3bd79cdefae9cc89",
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
  "slug": "universemanifest--ba951f725a94c9d11d843fbc",
  "source": {
    "blob": "c3f52e17ef6d6ecef9531c9783bb7163e35a9d61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variantd80a6543f00995fb86a33e7266cfa51bc5ec6b8bb135cdc4dacc049df1c73b8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba951f725a94c9d11d843fbcace1e42ea9d995f8590930f5b8857e1492435967",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Manifest/Variantd80a6543f00995fb86a33e7266cfa51bc5ec6b8bb135cdc4dacc049df1c73b8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c2e491be05629077870bf0fedcd1b64288a32949714bfcd3bd79cdefae9cc89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–72.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Manifest/Variantd80a6543f00995fb86a33e7266cfa51bc5ec6b8bb135cdc4dacc049df1c73b8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variantd80a6543f00995fb86a33e7266cfa51bc5ec6b8bb135cdc4dacc049df1c73b8b.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3f52e17ef6d6ecef9531c9783bb7163e35a9d61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

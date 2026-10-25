# StructuralPacketV1.WellFormed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:632fb06a6388ebf6333d4c8e4c72fdfea18998795556afa2a0e2642f903f4b95",
  "kind": "def",
  "lexical_name": "StructuralPacketV1.WellFormed",
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
  "slug": "structuralpacketv1-wellformed--4cd335910fc1a0f7fba0baf9",
  "source": {
    "blob": "0e14939cb27f7097329953daf8c8292cb36a9e30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Packet/Variant032bbf23525bf556145b61be79f7a83f10fb1fc8b343c84ccf893de6007c4b33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cd335910fc1a0f7fba0baf9d4afc17b5d84bb5595afcab98ee23e719562fd33",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Packet/Variant032bbf23525bf556145b61be79f7a83f10fb1fc8b343c84ccf893de6007c4b33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:632fb06a6388ebf6333d4c8e4c72fdfea18998795556afa2a0e2642f903f4b95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def StructuralPacketV1.WellFormed (packet : StructuralPacketV1) : Prop :=
  packet.header.Valid packet.language ∧
    packet.parserFingerprint.Valid ∧
    packet.parserFingerprint.language = packet.language ∧
    packet.parserAuthority ≠ .invalid ∧
    packet.sourceLayout.Valid ∧
    packet.sourceLayout.sourceByteLength = packet.header.sourceByteLength ∧
    packet.header.nodeCount = packet.nodes.length ∧
    packet.header.edgeCount = orderedForestEdgeCount packet.orderedForest ∧
    packet.header.tokenCount = packet.tokens.length ∧
    packet.header.bracketWordCount = (bracketProjection packet.orderedForest).length ∧
    packet.header.sectionCount = packet.sections.length ∧
    packet.nodes.map (fun node => node.nodeId.value) = List.range packet.nodes.length ∧
    orderedForestPreorderIndices packet.orderedForest = List.range packet.nodes.length ∧
    (∀ node ∈ packet.nodes,
      node.RuntimeFieldsFit ∧
      node.sourceSpan.Valid packet.sourceLayout ∧
      node.IndicesValid packet.nodes.length packet.tokens.length packet.stringTable.length
        packet.declarations.length packet.stableSemanticAnchorCount) ∧
    ParentRelationAcyclic packet.nodes ∧
    (∀ token ∈ packet.tokens, token.Valid packet.sourceLayout packet.stringTable.length) ∧
    (∀ declaration ∈ packet.declarations,
      declaration.Valid packet.nodes.length packet.stringTable.length) ∧
    (∀ reference ∈ packet.references,
      reference.Valid packet.sourceLayout packet.nodes.length packet.stringTable.length
        packet.declarations.length) ∧
    (∀ module ∈ packet.modules, module.moduleNameHash.Valid) ∧
    (∀ record ∈ packet.imports,
      record.Valid packet.nodes.length packet.stringTable.length packet.modules.length) ∧
    (∀ diagnostic ∈ packet.diagnostics,
      diagnostic.Valid packet.sourceLayout packet.stringTable.length) ∧
    (packet.sections.map SectionDirectoryEntry.sectionKind).Nodup ∧
    RequiredSectionsPresent packet.sections ∧
    (∀ entry ∈ packet.sections, entry.Valid packet.header.totalBytes) ∧
    SectionsDisjoint packet.sections ∧
    BalancedBracketProjection (bracketProjection packet.orderedForest) ∧
    (bracketToNodeMap packet.orderedForest).length =
      (bracketProjection packet.orderedForest).length

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Packet/Variant032bbf23525bf556145b61be79f7a83f10fb1fc8b343c84ccf893de6007c4b33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Packet/Variant032bbf23525bf556145b61be79f7a83f10fb1fc8b343c84ccf893de6007c4b33.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e14939cb27f7097329953daf8c8292cb36a9e30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

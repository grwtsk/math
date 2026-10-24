# canonicalMaterial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee64114c6ebe7837543b68a4d3fa3e76630f9a11ce93b645cbd1e072cc24d86b",
  "kind": "def",
  "lexical_name": "canonicalMaterial",
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
  "slug": "canonicalmaterial--577c3a6e121a62f93bb217db",
  "source": {
    "blob": "5117dbdaf270c56e520714e54b1bc68dffd54545",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 68,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Contract/Variant162763def0a3e4aca07a97cfac93da4930486170c387779586c6b2d8785af88b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:577c3a6e121a62f93bb217dbf476d32c9f095bdc0e1416f09531d54beae2fa60",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Contract/Variant162763def0a3e4aca07a97cfac93da4930486170c387779586c6b2d8785af88b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee64114c6ebe7837543b68a4d3fa3e76630f9a11ce93b645cbd1e072cc24d86b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def canonicalMaterial
    (contract : TransportContract Host EdgeId) : CanonicalBytes :=
  encodeLengthPrefixedUtf8 "surface.transport.contract.v1" ++
  encodeU32LE contract.schemaVersion ++
  encodeU32LE contract.serializationVersion ++
  encodeU32LE contract.revisionWidth ++
  encodeU32LE contract.routing.schemaVersion ++
  encodeU32LE contract.routing.algorithmVersion ++
  encodeU32LE contract.routing.serializationVersion ++
  encodeU8 (traversalModeCode contract.routing.traversalMode) ++
  encodeI32LE contract.routing.tensionMin ++
  encodeI32LE contract.routing.tensionMax ++
  encodeU32LE contract.routing.tieBreakBound ++
  encodeLengthPrefixedUtf8 contract.payloadDescriptor.schemaId ++
  encodeU32LE contract.payloadDescriptor.schemaVersion ++
  encodeLengthPrefixedUtf8 contract.payloadDescriptor.algorithmId ++
  encodeU32LE contract.payloadDescriptor.algorithmVersion ++
  encodeLengthPrefixedUtf8 contract.payloadDescriptor.invariantId ++
  encodeU32LE contract.payloadDescriptor.serializationVersion ++
  encodeLengthPrefixedUtf8 contract.payloadDescriptor.mergeSemanticsId ++
  encodeU32LE (Fintype.card Host) ++
  contract.hostTableMaterial ++
  encodeU32LE contract.routing.edges.card ++
  contract.edgeTableMaterial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Contract/Variant162763def0a3e4aca07a97cfac93da4930486170c387779586c6b2d8785af88b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Contract/Variant162763def0a3e4aca07a97cfac93da4930486170c387779586c6b2d8785af88b.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5117dbdaf270c56e520714e54b1bc68dffd54545` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

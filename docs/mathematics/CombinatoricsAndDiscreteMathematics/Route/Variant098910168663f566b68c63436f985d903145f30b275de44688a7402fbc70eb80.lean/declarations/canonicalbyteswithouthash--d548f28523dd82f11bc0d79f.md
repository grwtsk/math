# canonicalBytesWithoutHash

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3982c84937dd051abde0d63567e15a79daa5c8139e178d50363aa2cfab457780",
  "kind": "def",
  "lexical_name": "canonicalBytesWithoutHash",
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
  "slug": "canonicalbyteswithouthash--d548f28523dd82f11bc0d79f",
  "source": {
    "blob": "23a049199a7e7604c4445deaf158c55006f1b421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1094,
    "line": 1075,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant098910168663f566b68c63436f985d903145f30b275de44688a7402fbc70eb80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d548f28523dd82f11bc0d79f0c2cdb14a5d798d5181fdbbc3e4d7521be40449f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variant098910168663f566b68c63436f985d903145f30b275de44688a7402fbc70eb80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3982c84937dd051abde0d63567e15a79daa5c8139e178d50363aa2cfab457780`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1075–1094.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def canonicalBytesWithoutHash
    (contract : RoutingContract Host EdgeId) : CanonicalBytes :=
  encodeUtf8 "SXYZCON1" ++
  encodeU32LE contract.schemaVersion ++
  encodeU32LE contract.algorithmVersion ++
  encodeU32LE contract.serializationVersion ++
  encodeTraversalMode contract.traversalMode ++
  encodeU32LE (Fintype.card Host) ++
  (contract.sortedHosts.flatMap contract.encodeHostCode) ++
  encodeU32LE contract.edges.card ++
  (contract.sortedCanonicalEdges.flatMap contract.encodeEdgeRow) ++
  encodeI32LE contract.tensionMin ++
  encodeI32LE contract.tensionMax ++
  encodeU64LE contract.tieBreakBound ++
  encodeFixedFormat contract.fixedFormat ++
  encodeLengthPrefixedUtf8 xyzRevisionFormatV1Id ++
  encodeLengthPrefixedUtf8 contract.invariantId ++
  encodeLengthPrefixedUtf8 contract.expectedUpdateId

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variant098910168663f566b68c63436f985d903145f30b275de44688a7402fbc70eb80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant098910168663f566b68c63436f985d903145f30b275de44688a7402fbc70eb80.lean#L1075).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23a049199a7e7604c4445deaf158c55006f1b421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

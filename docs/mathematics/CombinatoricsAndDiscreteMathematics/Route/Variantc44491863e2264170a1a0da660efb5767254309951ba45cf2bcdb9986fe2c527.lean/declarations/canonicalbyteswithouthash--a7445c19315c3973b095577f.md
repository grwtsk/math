# canonicalBytesWithoutHash

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:912ebc26a1558bd5cf9c511b867ccdb8dbe023b7202b065087b244c1dd601efb",
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
  "slug": "canonicalbyteswithouthash--a7445c19315c3973b095577f",
  "source": {
    "blob": "57f42551be9d9e407bafcb65a02d55d15d5a59ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1086,
    "line": 1067,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantc44491863e2264170a1a0da660efb5767254309951ba45cf2bcdb9986fe2c527.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7445c19315c3973b095577f9c74a7101b891d0abf3eeae6d546ff2b9fea3cd8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variantc44491863e2264170a1a0da660efb5767254309951ba45cf2bcdb9986fe2c527.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:912ebc26a1558bd5cf9c511b867ccdb8dbe023b7202b065087b244c1dd601efb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1067–1086.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variantc44491863e2264170a1a0da660efb5767254309951ba45cf2bcdb9986fe2c527.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantc44491863e2264170a1a0da660efb5767254309951ba45cf2bcdb9986fe2c527.lean#L1067).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57f42551be9d9e407bafcb65a02d55d15d5a59ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

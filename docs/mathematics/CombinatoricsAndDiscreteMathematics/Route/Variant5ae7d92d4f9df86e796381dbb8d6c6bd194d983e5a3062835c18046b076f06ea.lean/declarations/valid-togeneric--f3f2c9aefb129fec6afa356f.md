# valid_toGeneric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9648f7f1cea307e94c477fc2b801dac62f3fb4ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5ae7d92d4f9df86e796381dbb8d6c6bd194d983e5a3062835c18046b076f06ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9caf7ef-84d4-7051-b8df-bf4d07ec1a2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f340f0f-bdb7-5322-b763-a54c9ce0c3ff",
  "kind": "theorem",
  "lexical_name": "valid_toGeneric",
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
  "slug": "valid-togeneric--f3f2c9aefb129fec6afa356f",
  "source": {
    "blob": "9648f7f1cea307e94c477fc2b801dac62f3fb4ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 292,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant5ae7d92d4f9df86e796381dbb8d6c6bd194d983e5a3062835c18046b076f06ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3f2c9aefb129fec6afa356fb43a0a632f3717982ec2fbed96cdd6b22f2be572",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variant5ae7d92d4f9df86e796381dbb8d6c6bd194d983e5a3062835c18046b076f06ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f340f0f-bdb7-5322-b763-a54c9ce0c3ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem valid_toGeneric
    (contract : RoutingContract Host EdgeId)
    (valid : contract.Valid) : contract.toGeneric.Valid := by
  rcases valid with ⟨schema, algorithm, serialization, traversal,
    _fixed, _invariant, _expected, tensionBounds, tensionMinFits,
    tensionMaxFits, tieBreakPositive, tieBreakFits, hostCountFits,
    edgeIdCountFits, edgeCountFits, edgeRowsFit, edgeIdsUnique,
    edgeTieBreakStable, sourceTieBreakUnique, sourceKeyUnique,
    hashValid⟩
  exact ⟨
    by simpa [RoutingContract.toGeneric, xyzRoutingSchemaVersionV1,
      Surface.Core.Transport.routingSchemaVersionV1] using schema,
    by simpa [RoutingContract.toGeneric, xyzRoutingAlgorithmVersionV1,
      Surface.Core.Transport.routingAlgorithmVersionV1] using algorithm,
    by simpa [RoutingContract.toGeneric, xyzRoutingSerializationVersionV1,
      Surface.Core.Transport.routingSerializationVersionV1] using serialization,
    traversal,
    tensionBounds,
    by simpa [RoutingContract.toGeneric,
      Surface.Core.Transport.FitsSignedBits,
      Surface.Core.Transport.signedHalfRange, FitsSignedBits,
      signedHalfRange] using tensionMinFits,
    by simpa [RoutingContract.toGeneric,
      Surface.Core.Transport.FitsSignedBits,
      Surface.Core.Transport.signedHalfRange, FitsSignedBits,
      signedHalfRange] using tensionMaxFits,
    tieBreakPositive,
    tieBreakFits,
    hostCountFits,
    edgeIdCountFits,
    edgeCountFits,
    by simpa [RoutingContract.sortedCanonicalEdges,
      RoutingContract.toGeneric, Surface.Core.Transport.FitsSignedBits,
      Surface.Core.Transport.signedHalfRange, FitsSignedBits,
      signedHalfRange] using edgeRowsFit,
    by simpa [RoutingContract.sortedCanonicalEdges,
      RoutingContract.toGeneric] using edgeIdsUnique,
    by simpa [RoutingContract.sortedCanonicalEdges,
      RoutingContract.toGeneric] using edgeTieBreakStable,
    by simpa [RoutingContract.sortedCanonicalEdges,
      RoutingContract.toGeneric] using sourceTieBreakUnique,
    by simpa [RoutingContract.sortedCanonicalEdges,
      RoutingContract.edgeKey, RoutingContract.toGeneric] using sourceKeyUnique,
    by simpa [RoutingContract.hashMatches,
      RoutingContract.toGeneric,
      Surface.Core.Transport.RoutingContract.hashMatches] using hashValid⟩

/-! ## Deterministically ordered outgoing edges -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variant5ae7d92d4f9df86e796381dbb8d6c6bd194d983e5a3062835c18046b076f06ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant5ae7d92d4f9df86e796381dbb8d6c6bd194d983e5a3062835c18046b076f06ea.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9648f7f1cea307e94c477fc2b801dac62f3fb4ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# valid_toGeneric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6ebf085-0786-b7f8-38a6-90a1d57dbdc1",
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
  "slug": "valid-togeneric--205d0f5b02b095123eb0ec5f",
  "source": {
    "blob": "d14dbc1ecd1709267e04021348e696aa2b6ca36a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 300,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantae82f5ec5f8422e055e8c36045d235c239379fcec129599894424b805260ccbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:205d0f5b02b095123eb0ec5fdec64ad0fa037c3aa32afb66d38b2e67b44297b7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variantae82f5ec5f8422e055e8c36045d235c239379fcec129599894424b805260ccbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6ebf085-0786-b7f8-38a6-90a1d57dbdc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–348.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variantae82f5ec5f8422e055e8c36045d235c239379fcec129599894424b805260ccbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantae82f5ec5f8422e055e8c36045d235c239379fcec129599894424b805260ccbd.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d14dbc1ecd1709267e04021348e696aa2b6ca36a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

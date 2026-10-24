# tao_kakeya_smoothing_if_supplied

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f26fcfa9-c716-f8f2-c7bb-fb0a8ed34e25",
  "kind": "theorem",
  "lexical_name": "tao_kakeya_smoothing_if_supplied",
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
  "slug": "tao-kakeya-smoothing-if-supplied--0dbd666b5682b8b60824e474",
  "source": {
    "blob": "987236eac438b856f6d400b969eb65770d8168c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 156,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/TaoKakeyaSmoothing/Variantbb1bf56b9f1dbcd671cb3a6b316164ceefdd5c9b5856cb2e772401bfac4cf69b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dbd666b5682b8b60824e474bc88730378c168f51c39402451ba903c1023f3f0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/TaoKakeyaSmoothing/Variantbb1bf56b9f1dbcd671cb3a6b316164ceefdd5c9b5856cb2e772401bfac4cf69b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f26fcfa9-c716-f8f2-c7bb-fb0a8ed34e25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tao_kakeya_smoothing_if_supplied
    (T : TaoKakeyaNonStickySmoothing) :
    T.polynomialNonStickySmoothing :=
  T.polynomialNonStickySmoothing_certified
    T.tao.criticalNormBounded_certified
    T.tao.preservesTrueNonlinearity_certified
    T.tao.quantitativeRegularity_certified
    T.kakeya.fullDimensionalVolume_certified
    T.kakeya.needleRoutingRoom_certified
    T.kakeya.stickyBoundaryExcluded_certified
    T.bridge.bitComplexityToCriticalNormPolynomial_certified
    T.bridge.volumeToRoutingMovesPolynomial_certified
    T.bridge.preservesVerifierSemantics_certified
    T.closure.preservesVerifier_certified
    T.closure.preservesDecompressionCorrectness_certified
    T.closure.ruleGrowthPolynomial_certified

end Complexity
end GrandChallenge
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/TaoKakeyaSmoothing/Variantbb1bf56b9f1dbcd671cb3a6b316164ceefdd5c9b5856cb2e772401bfac4cf69b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/TaoKakeyaSmoothing/Variantbb1bf56b9f1dbcd671cb3a6b316164ceefdd5c9b5856cb2e772401bfac4cf69b.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `987236eac438b856f6d400b969eb65770d8168c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

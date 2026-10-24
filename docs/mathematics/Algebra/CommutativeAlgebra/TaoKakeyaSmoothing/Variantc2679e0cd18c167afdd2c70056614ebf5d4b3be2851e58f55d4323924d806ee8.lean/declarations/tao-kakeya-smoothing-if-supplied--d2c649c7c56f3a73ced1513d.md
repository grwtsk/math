# tao_kakeya_smoothing_if_supplied

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5e9732837ebd2f58d7b32bd3c390bb3515d6dfe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2679e0cd18c167afdd2c70056614ebf5d4b3be2851e58f55d4323924d806ee8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db5d92f1-0a99-119f-8be6-07ad713ba058",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c086e889-c5db-5f7d-2bce-ab16897e1e06",
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
  "slug": "tao-kakeya-smoothing-if-supplied--d2c649c7c56f3a73ced1513d",
  "source": {
    "blob": "c5e9732837ebd2f58d7b32bd3c390bb3515d6dfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 148,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/TaoKakeyaSmoothing/Variantc2679e0cd18c167afdd2c70056614ebf5d4b3be2851e58f55d4323924d806ee8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2c649c7c56f3a73ced1513d55da36a531c4b6f6149ae34fbc4265582989ff38",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/TaoKakeyaSmoothing/Variantc2679e0cd18c167afdd2c70056614ebf5d4b3be2851e58f55d4323924d806ee8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c086e889-c5db-5f7d-2bce-ab16897e1e06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–167.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/TaoKakeyaSmoothing/Variantc2679e0cd18c167afdd2c70056614ebf5d4b3be2851e58f55d4323924d806ee8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/TaoKakeyaSmoothing/Variantc2679e0cd18c167afdd2c70056614ebf5d4b3be2851e58f55d4323924d806ee8.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5e9732837ebd2f58d7b32bd3c390bb3515d6dfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

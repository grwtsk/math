# CrossedProductConnector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8551f6c5334bb41f22d75c07f7413fad0b84222ab8df3c8e65c104c478dc01b9",
  "kind": "structure",
  "lexical_name": "CrossedProductConnector",
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
  "slug": "crossedproductconnector--f86b2a45832547e702420fa8",
  "source": {
    "blob": "45058dceeeaf64937c5170c47ce7d44e2e98ad5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 53,
    "path": "GRWTSK/Algebra/CrossedProductConnector/Variant142443a7793917aa9577f59c0b5ef45a386353de49f9d69fbe4f4106f872e7d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f86b2a45832547e702420fa83d616cc81db3634ec64e81e7076b06d729f8a6f8",
  "verification": {
    "reference": "docs/verification/Algebra/CrossedProductConnector/Variant142443a7793917aa9577f59c0b5ef45a386353de49f9d69fbe4f4106f872e7d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8551f6c5334bb41f22d75c07f7413fad0b84222ab8df3c8e65c104c478dc01b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CrossedProductConnector
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (low high :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) where
  coefficientPullback :
    CoefficientAlgebra low →
      CoefficientAlgebra high
  groupLift :
    low.Automorphism →
      high.Automorphism
  groupLiftIdentity :
    groupLift 1 = 1
  groupLiftMultiplication :
    ∀ left right,
      groupLift (left * right) =
        groupLift left * groupLift right
  groupLiftInjective :
    Function.Injective groupLift
  fiberEmbedding :
    FiberAlgebra low →
      FiberAlgebra high
  fiberEmbeddingUnit :
    fiberEmbedding 1 = 1
  fiberEmbeddingMultiplication :
    ∀ left right,
      fiberEmbedding (left * right) =
        fiberEmbedding left *
          fiberEmbedding right
  fiberEmbeddingStar :
    ∀ operator,
      fiberEmbedding operatorᴴ =
        (fiberEmbedding operator)ᴴ
  fiberEmbeddingInjective :
    Function.Injective fiberEmbedding
  fiberTracePreserving :
    ∀ operator,
      normalizedMatrixTrace
          (fiberEmbedding operator) =
        normalizedMatrixTrace operator
  coefficientCovariant : Prop
  covarianceProof :
    coefficientCovariant
  crossedProductMap :
    low.Algebra → high.Algebra
  inducedByCoefficientGroupAndFiber : Prop
  inductionProof :
    inducedByCoefficientGroupAndFiber
  mapUnit :
    crossedProductMap
        (finiteCrossedProductStableTrace low).unit =
      (finiteCrossedProductStableTrace high).unit
  mapMultiply :
    ∀ left right,
      crossedProductMap
          ((finiteCrossedProductStableTrace low).multiply
            left right) =
        (finiteCrossedProductStableTrace high).multiply
          (crossedProductMap left)
          (crossedProductMap right)
  mapStar :
    ∀ observable,
      crossedProductMap
          ((finiteCrossedProductStableTrace low).star
            observable) =
        (finiteCrossedProductStableTrace high).star
          (crossedProductMap observable)
  mapInjective :
    Function.Injective crossedProductMap
  stableTracePreserving :
    ∀ observable,
      (finiteCrossedProductStableTrace high).trace
          (crossedProductMap observable) =
        (finiteCrossedProductStableTrace low).trace
          observable

end Mathematics.StratifiedBoundary.Trace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CrossedProductConnector/Variant142443a7793917aa9577f59c0b5ef45a386353de49f9d69fbe4f4106f872e7d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CrossedProductConnector/Variant142443a7793917aa9577f59c0b5ef45a386353de49f9d69fbe4f4106f872e7d1.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45058dceeeaf64937c5170c47ce7d44e2e98ad5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

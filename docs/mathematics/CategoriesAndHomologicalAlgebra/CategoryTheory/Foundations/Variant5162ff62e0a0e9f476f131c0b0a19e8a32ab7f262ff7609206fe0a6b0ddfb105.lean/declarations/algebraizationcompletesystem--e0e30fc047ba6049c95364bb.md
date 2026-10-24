# AlgebraizationCompleteSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:366b0707e4416331875c9321cbb56c2dafa4580ccb5105ecae8af9c88086d03e",
  "kind": "structure",
  "lexical_name": "AlgebraizationCompleteSystem",
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
  "slug": "algebraizationcompletesystem--e0e30fc047ba6049c95364bb",
  "source": {
    "blob": "593da8fc92f7327e8788edca415a525b29e74cce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 659,
    "line": 573,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Variant5162ff62e0a0e9f476f131c0b0a19e8a32ab7f262ff7609206fe0a6b0ddfb105.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0e30fc047ba6049c95364bb000d3a36802e366bf35a4b081b0b5fcca3cf7ef8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Variant5162ff62e0a0e9f476f131c0b0a19e8a32ab7f262ff7609206fe0a6b0ddfb105.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:366b0707e4416331875c9321cbb56c2dafa4580ccb5105ecae8af9c88086d03e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–659.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AlgebraizationCompleteSystem
    (S : AlgebraizationSystem) : Prop where
  polarizedEquivalence :
    EquivalenceWitness S.functors.PolAn
  polarizedQuasiInverse :
    QuasiInverseData
      S.functors.PolAn
      S.functors.PolAlg
  formalPolarizedEffectivity :
    ALG04Evidence S
  henselianImageCharacterization :
    ∀ Y : S.categories.CohHen.Obj,
      AlgebraicallyGenerated
        S.generators
        S.cohHenEpi
        Y ↔
      EssentialImage S.functors.HenPullback Y
  henselianGeneratorEquivalence :
    ∃ hObj :
        ∀ X : S.categories.CohAlg.Obj,
          AlgebraicallyGenerated
            S.generators
            S.cohHenEpi
            (S.functors.HenPullback.obj X),
      EquivalenceWitness
        (restrictCodomain
          S.functors.HenPullback
          (AlgebraicallyGenerated
            S.generators
            S.cohHenEpi)
          hObj)
  hsgCriterion :
    EssentiallySurjective S.functors.HenPullback ↔
    HenselianSerreGeneration
      S.generators
      S.cohHenEpi
  unrestrictedFromHSG :
    HenselianSerreGeneration
      S.generators
      S.cohHenEpi →
    EquivalenceWitness S.functors.HenPullback
  characteristicBoundary :
    S.P.characteristicZeroOrMixedProfile →
    S.P.knownRankTwoNonAlgebraizableObject →
      ¬ EssentiallySurjective S.functors.HenPullback
  algebraizationFibersCanonical :
    FibersUniquelyIsomorphic S.functors.HenPullback
  positiveCharacteristicAffineInput :
    S.P.positiveCharacteristicProfile →
      S.P.positiveCharacteristicAffineInput
  extensionNonclosureBoundary :
    S.P.characteristicZeroOrMixedProfile →
    S.P.knownNonAlgebraizableExtensionOfGenerated →
      ¬ S.P.generatedAmbientExtensionClosed
  effectiveTargetClosure :
    S.P.generatedKernelClosed ∧
    S.P.generatedCokernelClosed ∧
    S.P.generatedFiniteSumClosed ∧
    S.P.generatedTensorClosed ∧
    S.P.generatedDirectSummandClosed
  positiveCharacteristicRouteToHSG :
    S.P.positiveCharacteristicProfile →
    S.P.positiveCharacteristicAffineInput →
    PositiveCharacteristicRouteCertificate S →
      HenselianSerreGeneration
        S.generators
        S.cohHenEpi
  moduliObjectEffectivity :
    ModuliPipelineRule S
  moduliSemanticEquivalence :
    ∃ hObj : SemanticSourceEffective S,
      EquivalenceWitness
        (semanticPullbackEff S hObj)
  effectiveTannaka :
    EquivalenceWitness S.functors.TannakaEffective
  unrestrictedTannakaFromHSG :
    HenselianSerreGeneration
      S.generators
      S.cohHenEpi →
      EquivalenceWitness
        S.functors.TannakaUnrestricted
  commonGlobalProvenance :
    S.P.archimedeanAndNonarchCommonSource
  extensionImageCriterion :
    ExtensionImageCharacterization S.extensions

end FCRS.Algebraization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Variant5162ff62e0a0e9f476f131c0b0a19e8a32ab7f262ff7609206fe0a6b0ddfb105.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Variant5162ff62e0a0e9f476f131c0b0a19e8a32ab7f262ff7609206fe0a6b0ddfb105.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `593da8fc92f7327e8788edca415a525b29e74cce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

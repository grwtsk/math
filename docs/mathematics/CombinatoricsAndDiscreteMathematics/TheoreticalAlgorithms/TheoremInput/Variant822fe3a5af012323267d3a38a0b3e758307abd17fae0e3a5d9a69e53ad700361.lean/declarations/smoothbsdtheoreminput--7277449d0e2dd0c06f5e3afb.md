# SmoothBSDTheoremInput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a98a1adcbbae5d8e34db6cf09f2e5de0eadd62dbf39a6fd1aaa31bd7c6f7215d",
  "kind": "structure",
  "lexical_name": "SmoothBSDTheoremInput",
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
  "slug": "smoothbsdtheoreminput--7277449d0e2dd0c06f5e3afb",
  "source": {
    "blob": "625d88600494e21bf3064668d2f3d61d8682374b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremInput/Variant822fe3a5af012323267d3a38a0b3e758307abd17fae0e3a5d9a69e53ad700361.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7277449d0e2dd0c06f5e3afb678ebb7bb1f45de3523525a6febe4eaea1e1f4c2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremInput/Variant822fe3a5af012323267d3a38a0b3e758307abd17fae0e3a5d9a69e53ad700361.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a98a1adcbbae5d8e34db6cf09f2e5de0eadd62dbf39a6fd1aaa31bd7c6f7215d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SmoothBSDTheoremInput
    (C : LawfulShortWeierstrass.{u}) where
  baseNumberField : NumberFieldCertificate C.K
  baseNumberFieldCertifiedForBSD :
    baseNumberField.certifiedForBSD
  baseNumberFieldPlaceProductFormula :
    NumberFieldPlaceProductFormulaCertificate baseNumberField
  baseNumberFieldPlaceProductFormulaCertifiedForBSD :
    baseNumberFieldPlaceProductFormula.certifiedForBSD
  baseNumberFieldProjectiveHeight :
    NumberFieldProjectiveHeightCertificate baseNumberFieldPlaceProductFormula
  baseNumberFieldProjectiveHeightCertifiedForBSD :
    baseNumberFieldProjectiveHeight.certifiedForBSD
  baseNumberFieldNorthcott :
    NumberFieldNorthcottCertificate baseNumberFieldProjectiveHeight
  baseNumberFieldNorthcottCertifiedForBSD :
    baseNumberFieldNorthcott.certifiedForBSD
  smoothMW : SmoothMordellWeilInterface C
  smoothMWCertifiedForBSD :
    smoothMW.certifiedForBSD
  localHeightBasePlaceCompatibilityCertifiedForBSD :
    ∃ P : MordellWeilFiniteGenerationProvenanceCertificate smoothMW,
      P.certifiedForBSD ∧
      ∃ B : CanonicalHeightBasePlaceCompatibilityCertificate
        baseNumberField
        P.heightDescentProvenance.localHeightDecomposition,
        B.certifiedForBSD
  heightNorthcottCompatibilityCertifiedForBSD :
    ∃ P : MordellWeilFiniteGenerationProvenanceCertificate smoothMW,
      P.certifiedForBSD ∧
      ∃ B : CanonicalHeightBasePlaceCompatibilityCertificate
        baseNumberField
        P.heightDescentProvenance.localHeightDecomposition,
        B.certifiedForBSD ∧
        ∃ R : CanonicalHeightNorthcottCompatibilityCertificate
          baseNumberField
          baseNumberFieldPlaceProductFormula
          baseNumberFieldProjectiveHeight
          baseNumberFieldNorthcott
          B,
          R.certifiedForBSD
  L : HasseWeilLFunction C.K.field C.E
  lFunctionCertifiedForBSD :
    L.certifiedForBSD
  archimedeanGammaFactorsCertifiedForBSD :
    ∃ G : HasseWeilArchimedeanGammaFactorCertificate
      baseNumberField baseNumberFieldPlaceProductFormula L,
      G.certifiedForBSD
  completedFunctionalEquationCertifiedForBSD :
    ∃ FE : CompletedFunctionalEquationNormalizationCertificate
      baseNumberField baseNumberFieldPlaceProductFormula L,
      FE.certifiedForBSD
  analyticHasseWeilFunctionCertifiedForBSD :
    ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
      baseNumberField baseNumberFieldPlaceProductFormula L,
      A.certifiedForBSD
  analyticContinuationUniquenessCertifiedForBSD :
    ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
      baseNumberField baseNumberFieldPlaceProductFormula L,
      A.certifiedForBSD ∧
      ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L A,
        U.certifiedForBSD
  automorphicProvenanceCertifiedForBSD :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      baseNumberField baseNumberFieldPlaceProductFormula L,
      A.certifiedForBSD
  automorphicScopeCompatibilityCertifiedForBSD :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      baseNumberField baseNumberFieldPlaceProductFormula L,
      A.certifiedForBSD ∧
      ∃ S : HasseWeilAutomorphicScopeCompatibilityCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L A,
        S.certifiedForBSD
  automorphicObjectCompatibilityCertifiedForBSD :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      baseNumberField baseNumberFieldPlaceProductFormula L,
      A.certifiedForBSD ∧
      ∃ O : HasseWeilAutomorphicObjectCompatibilityCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L A,
        O.certifiedForBSD
  automorphicObjectKindCompatibilityCertifiedForBSD :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      baseNumberField baseNumberFieldPlaceProductFormula L,
      A.certifiedForBSD ∧
      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L A,
        Knd.certifiedForBSD
  automorphicAnalyticSourceCertifiedForBSD :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      baseNumberField baseNumberFieldPlaceProductFormula L,
      A.certifiedForBSD ∧
      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L A,
        Knd.certifiedForBSD ∧
        ∃ S : HasseWeilAutomorphicAnalyticSourceCompatibilityCertificate
          baseNumberField baseNumberFieldPlaceProductFormula L A Knd,
          S.certifiedForBSD
  automorphicAnalyticSourceKindCompatibilityCertifiedForBSD :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      baseNumberField baseNumberFieldPlaceProductFormula L,
      A.certifiedForBSD ∧
      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L A,
        Knd.certifiedForBSD ∧
        ∃ Src : HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate
          baseNumberField baseNumberFieldPlaceProductFormula L A Knd,
          Src.certifiedForBSD
  eulerProductCoverageCertifiedForBSD :
    ∃ EC : EulerProductCoverageCertificate L,
      EC.certifiedForBSD
  eulerProductDirichletSeriesCompatibleCertifiedForBSD :
    ∃ EC : EulerProductDirichletSeriesCompatibilityCertificate
      baseNumberField L,
      EC.certifiedForBSD
  localFactorsCompatibleWithBaseNumberField :
    ∀ F ∈ L.localFactors,
      ∃ LC : LocalEulerFactorFinitePlaceCertificate baseNumberField F,
        LC.certifiedForBSD
  localFactorsResidueNormCompatibleCertifiedForBSD :
    ∃ RC : HasseWeilResidueNormCompatibilityCertificate
      baseNumberField L,
      RC.certifiedForBSD
  localFactorsPointCountCompatibleCertifiedForBSD :
    ∃ PC : HasseWeilPointCountCompatibilityCertificate
      baseNumberField L,
      PC.certifiedForBSD
  badLocalFactorsArithmeticCompatibleCertifiedForBSD :
    ∃ BC : HasseWeilBadReductionCompatibilityCertificate
      baseNumberField L,
      BC.certifiedForBSD
  badLocalFactorsTypedShapeCompatibleCertifiedForBSD :
    ∃ TC : HasseWeilTypedBadReductionShapeCompatibilityCertificate
      baseNumberField L,
      TC.certifiedForBSD
  conductorLocalCompatibilityCertifiedForBSD :
    ∃ CC : ConductorLocalCompatibilityCertificate baseNumberField L,
      CC.certifiedForBSD
  globalConductorAssemblyCertifiedForBSD :
    ∃ GC : GlobalConductorAssemblyCertificate baseNumberField L,
      GC.certifiedForBSD
  conjecture : Conjecture L smoothMW.MW
  rankCertificateMatchesSmoothMW :
    conjecture.first.rankCertificate = smoothMW.finiteGeneration
  analyticContinuationAssumptionPresent :
    ∃ A : AnalyticContinuationCertificate L,
      conjecture.assumptions.analyticContinuation? = some A
  functionalEquationAssumptionPresent :
    ∃ F : FunctionalEquationCertificate L,
      conjecture.assumptions.functionalEquation? = some F
  analyticContinuationCertifiedForBSD :
    ∃ A : AnalyticContinuationCertificate L,
      conjecture.assumptions.analyticContinuation? = some A ∧
      A.certifiedForBSD
  functionalEquationCertifiedForBSD :
    ∃ F : FunctionalEquationCertificate L,
      conjecture.assumptions.functionalEquation? = some F ∧
      F.certifiedForBSD
  mordellWeilAssumptionMatchesSmoothMW :
    conjecture.assumptions.mordellWeil? =
      some smoothMW.finiteGeneration
  orderAssumptionMatchesFirstPart :
    conjecture.assumptions.orderCertificate? =
      some conjecture.first.orderCertificate
  orderCertificateAtSEqOne :
    conjecture.first.orderCertificate.point =
      SymbolicComplexVariable.sEqOne
  orderCertificateCertifiedForBSD :
    conjecture.first.orderCertificate.certifiedForBSD
  rootNumberParityCompatibilityCertifiedForBSD :
    ∃ R : BSDRootNumberParityCompatibilityCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture.first,
      R.certifiedForBSD
  firstPartAssemblyCertifiedForBSD :
    ∃ A : BSDFirstPartAssemblyCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture.first,
      A.certifiedForBSD
  secondPartComponentsSupplied :
    conjecture.second.componentsSupplied
  tamagawaProductCertifiedForBSD :
    ∃ TP : TamagawaProductCertificate
      baseNumberField L conjecture.second,
      TP.certifiedForBSD
  regulatorCertifiedForBSD :
    ∃ R : RegulatorCertificate smoothMW conjecture.second,
      R.certifiedForBSD
  regulatorCanonicalHeightCompatibilityCertifiedForBSD :
    ∃ P : MordellWeilFiniteGenerationProvenanceCertificate smoothMW,
      P.certifiedForBSD ∧
      ∃ R : RegulatorCertificate smoothMW conjecture.second,
        R.certifiedForBSD ∧
        ∃ Q : RegulatorCanonicalHeightCompatibilityCertificate
          smoothMW conjecture.second P R,
          Q.certifiedForBSD
  leadingCoefficientCertifiedForBSD :
    ∃ LC : LeadingCoefficientCertificate
      L smoothMW.MW conjecture.first conjecture.second,
      LC.certifiedForBSD
  leadingCoefficientAnalyticNormalizationCertifiedForBSD :
    ∃ LC : LeadingCoefficientCertificate
      L smoothMW.MW conjecture.first conjecture.second,
      LC.certifiedForBSD ∧
      ∃ A : LeadingCoefficientAnalyticNormalizationCertificate
        L smoothMW.MW conjecture.first conjecture.second
        baseNumberField baseNumberFieldPlaceProductFormula LC,
        A.certifiedForBSD
  periodProductCertifiedForBSD :
    ∃ PP : PeriodProductCertificate
      smoothMW baseNumberField conjecture.second,
      PP.certifiedForBSD
  tateShafarevichCertifiedForBSD :
    ∃ T : TateShafarevichComponentCertificate
      smoothMW conjecture.second,
      T.certifiedForBSD
  torsionOrderCertifiedForBSD :
    ∃ T : TorsionOrderCertificate
      smoothMW conjecture.second,
      T.certifiedForBSD
  secondPartAssemblyCertifiedForBSD :
    ∃ A : BSDSecondPartAssemblyCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture.first conjecture.second,
      A.certifiedForBSD
  input : BSDTheoremInput conjecture
  theoremAssemblyCertifiedForBSD :
    ∃ A : BSDTheoremAssemblyCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture input,
      A.certifiedForBSD
  theoremAnalyticObjectCoherenceCertifiedForBSD :
    ∃ T : BSDTheoremAssemblyCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L,
        A.certifiedForBSD ∧
        ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
          L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
          conjecture input T A,
          Q.certifiedForBSD
  theoremAnalyticContinuationUniquenessCoherenceCertifiedForBSD :
    ∃ T : BSDTheoremAssemblyCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          baseNumberField baseNumberFieldPlaceProductFormula L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
            conjecture input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
              conjecture input T A U Q,
              R.certifiedForBSD
  theoremAutomorphicProvenanceCoherenceCertifiedForBSD :
    ∃ T : BSDTheoremAssemblyCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          baseNumberField baseNumberFieldPlaceProductFormula L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
            conjecture input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
              conjecture input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                baseNumberField baseNumberFieldPlaceProductFormula L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                  conjecture input T A U Q R AP,
                  Z.certifiedForBSD
  theoremAutomorphicScopeCoherenceCertifiedForBSD :
    ∃ T : BSDTheoremAssemblyCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          baseNumberField baseNumberFieldPlaceProductFormula L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
            conjecture input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
              conjecture input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                baseNumberField baseNumberFieldPlaceProductFormula L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                  conjecture input T A U Q R AP,
                  Z.certifiedForBSD ∧
                  ∃ S : HasseWeilAutomorphicScopeCompatibilityCertificate
                    baseNumberField baseNumberFieldPlaceProductFormula L AP,
                    S.certifiedForBSD ∧
                    ∃ Y : BSDTheoremAutomorphicScopeCoherenceCertificate
                      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                      conjecture input T A U Q R AP Z S,
                      Y.certifiedForBSD
  theoremAutomorphicObjectCoherenceCertifiedForBSD :
    ∃ T : BSDTheoremAssemblyCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          baseNumberField baseNumberFieldPlaceProductFormula L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
            conjecture input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
              conjecture input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                baseNumberField baseNumberFieldPlaceProductFormula L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                  conjecture input T A U Q R AP,
                  Z.certifiedForBSD ∧
                  ∃ SC : HasseWeilAutomorphicScopeCompatibilityCertificate
                    baseNumberField baseNumberFieldPlaceProductFormula L AP,
                    SC.certifiedForBSD ∧
                    ∃ Y : BSDTheoremAutomorphicScopeCoherenceCertificate
                      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                      conjecture input T A U Q R AP Z SC,
                      Y.certifiedForBSD ∧
                      ∃ O : HasseWeilAutomorphicObjectCompatibilityCertificate
                        baseNumberField baseNumberFieldPlaceProductFormula L AP,
                        O.certifiedForBSD ∧
                        ∃ W : BSDTheoremAutomorphicObjectCoherenceCertificate
                          L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                          conjecture input T A U Q R AP Z SC Y O,
                          W.certifiedForBSD
  theoremAutomorphicObjectKindCoherenceCertifiedForBSD :
    ∃ T : BSDTheoremAssemblyCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          baseNumberField baseNumberFieldPlaceProductFormula L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
            conjecture input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
              conjecture input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                baseNumberField baseNumberFieldPlaceProductFormula L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                  conjecture input T A U Q R AP,
                  Z.certifiedForBSD ∧
                  ∃ SC : HasseWeilAutomorphicScopeCompatibilityCertificate
                    baseNumberField baseNumberFieldPlaceProductFormula L AP,
                    SC.certifiedForBSD ∧
                    ∃ Y : BSDTheoremAutomorphicScopeCoherenceCertificate
                      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                      conjecture input T A U Q R AP Z SC,
                      Y.certifiedForBSD ∧
                      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
                        baseNumberField baseNumberFieldPlaceProductFormula L AP,
                        Knd.certifiedForBSD ∧
                        ∃ W : BSDTheoremAutomorphicObjectCoherenceCertificate
                          L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                          conjecture input T A U Q R AP Z SC Y Knd.objectCompatibility,
                          W.certifiedForBSD ∧
                          ∃ V : BSDTheoremAutomorphicObjectKindCoherenceCertificate
                            L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                            conjecture input T A U Q R AP Z SC Y Knd W,
                            V.certifiedForBSD
  theoremAutomorphicAnalyticSourceKindCoherenceCertifiedForBSD :
    ∃ T : BSDTheoremAssemblyCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          baseNumberField baseNumberFieldPlaceProductFormula L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
            conjecture input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
              conjecture input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                baseNumberField baseNumberFieldPlaceProductFormula L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                  conjecture input T A U Q R AP,
                  Z.certifiedForBSD ∧
                  ∃ SC : HasseWeilAutomorphicScopeCompatibilityCertificate
                    baseNumberField baseNumberFieldPlaceProductFormula L AP,
                    SC.certifiedForBSD ∧
                    ∃ Y : BSDTheoremAutomorphicScopeCoherenceCertificate
                      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                      conjecture input T A U Q R AP Z SC,
                      Y.certifiedForBSD ∧
                      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
                        baseNumberField baseNumberFieldPlaceProductFormula L AP,
                        Knd.certifiedForBSD ∧
                        ∃ W : BSDTheoremAutomorphicObjectCoherenceCertificate
                          L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                          conjecture input T A U Q R AP Z SC Y Knd.objectCompatibility,
                          W.certifiedForBSD ∧
                          ∃ V : BSDTheoremAutomorphicObjectKindCoherenceCertificate
                            L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                            conjecture input T A U Q R AP Z SC Y Knd W,
                            V.certifiedForBSD ∧
                            ∃ Src : HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate
                              baseNumberField baseNumberFieldPlaceProductFormula L AP Knd,
                              Src.certifiedForBSD ∧
                              ∃ AS : BSDTheoremAutomorphicAnalyticSourceKindCoherenceCertificate
                                L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                                conjecture input T A U Q R AP Z SC Y Knd W V Src,
                                AS.certifiedForBSD
  boundary : List String

/-- Rank extracted from the smooth BSD input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremInput/Variant822fe3a5af012323267d3a38a0b3e758307abd17fae0e3a5d9a69e53ad700361.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremInput/Variant822fe3a5af012323267d3a38a0b3e758307abd17fae0e3a5d9a69e53ad700361.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `625d88600494e21bf3064668d2f3d61d8682374b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

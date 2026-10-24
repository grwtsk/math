# BSDTheoremAutomorphicProvenanceSharedData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10efd10a6cb842162b69bf9cc77a6ea7aa2a3e64a3a4a0c46a9d8316e70e591c",
  "kind": "structure",
  "lexical_name": "BSDTheoremAutomorphicProvenanceSharedData",
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
  "slug": "bsdtheoremautomorphicprovenanceshareddata--68f3a05bc1ace6e52b50d88f",
  "source": {
    "blob": "8ca0e495b74438b18232dd05503049d030b222bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 47,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantc52de2f880b93d91560cf81164c5a059cc221d8178541e6e5fb24205ea8f85fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68f3a05bc1ace6e52b50d88f3992335b3f9fcf95275ca7cc6b43fec2bd9c292e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantc52de2f880b93d91560cf81164c5a059cc221d8178541e6e5fb24205ea8f85fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10efd10a6cb842162b69bf9cc77a6ea7aa2a3e64a3a4a0c46a9d8316e70e591c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BSDTheoremAutomorphicProvenanceSharedData
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (A : HasseWeilAnalyticFunctionInterfaceCertificate N P L)
    (AP : HasseWeilAutomorphicProvenanceCertificate N P L) where
  analyticFunctionInterface :
    HasseWeilAnalyticFunctionInterfaceCertificate N P L
  analyticFunctionInterface_eq_assembly :
    analyticFunctionInterface = A
  analyticFunctionInterface_eq_automorphic :
    analyticFunctionInterface = AP.analyticFunctionInterface
  coefficientSystem :
    DirichletCoefficientSystemCertificate N L
  coefficientSystem_eq_assembly :
    coefficientSystem = A.coefficientSystem
  coefficientSystem_eq_automorphic :
    coefficientSystem = AP.analyticFunctionInterface.coefficientSystem
  eulerProductDirichletSeries :
    EulerProductDirichletSeriesCompatibilityCertificate N L
  eulerProductDirichletSeries_eq_assembly :
    eulerProductDirichletSeries = A.eulerProductDirichletSeries
  eulerProductDirichletSeries_eq_automorphic :
    eulerProductDirichletSeries =
      AP.analyticFunctionInterface.eulerProductDirichletSeries
  completedFunctionalEquation :
    CompletedFunctionalEquationNormalizationCertificate N P L
  completedFunctionalEquation_eq_assembly :
    completedFunctionalEquation = A.completedFunctionalEquation
  completedFunctionalEquation_eq_automorphic :
    completedFunctionalEquation =
      AP.analyticFunctionInterface.completedFunctionalEquation
  automorphicData :
    AutomorphicProvenanceObjectData N P L
  automorphicData_eq :
    automorphicData = AP.automorphicData
  centralGerm :
    CentralGermAtSEqOneData A.analyticObject
  centralGerm_eq_assembly :
    centralGerm = A.centralGerm
  boundary : List String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantc52de2f880b93d91560cf81164c5a059cc221d8178541e6e5fb24205ea8f85fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantc52de2f880b93d91560cf81164c5a059cc221d8178541e6e5fb24205ea8f85fc.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ca0e495b74438b18232dd05503049d030b222bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

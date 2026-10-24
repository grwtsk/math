# BSDTheoremAutomorphicProvenanceCoherenceCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d6bb1987993eb29dfb125e8be9558a3d09c19d89886e8b99fc6703d1e63d4f0",
  "kind": "structure",
  "lexical_name": "BSDTheoremAutomorphicProvenanceCoherenceCertificate",
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
  "slug": "bsdtheoremautomorphicprovenancecoherencecertificate--91bf3bfe1b97a48d786dbde2",
  "source": {
    "blob": "8ca0e495b74438b18232dd05503049d030b222bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 90,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantc52de2f880b93d91560cf81164c5a059cc221d8178541e6e5fb24205ea8f85fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91bf3bfe1b97a48d786dbde24e956c940cd699bd344cc0de2b8036057733318e",
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

Occurrence: `declaration:0d6bb1987993eb29dfb125e8be9558a3d09c19d89886e8b99fc6703d1e63d4f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BSDTheoremAutomorphicProvenanceCoherenceCertificate
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (X : Conjecture L M.MW)
    (I : BSDTheoremInput X)
    (T : BSDTheoremAssemblyCertificate L M N P X I)
    (A : HasseWeilAnalyticFunctionInterfaceCertificate N P L)
    (U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A)
    (Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A)
    (R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
      L M N P X I T A U Q)
    (AP : HasseWeilAutomorphicProvenanceCertificate N P L) where
  theoremAssemblyCertified :
    T.certifiedForBSD
  analyticFunctionCertified :
    A.certifiedForBSD
  analyticContinuationUniquenessCertified :
    U.certifiedForBSD
  theoremAnalyticObjectCoherenceCertified :
    Q.certifiedForBSD
  theoremAnalyticContinuationUniquenessCoherenceCertified :
    R.certifiedForBSD
  automorphicProvenanceCertified :
    AP.certifiedForBSD
  firstPartOrderUsesAutomorphicCentralGerm : Prop
  firstPartOrderUsesAutomorphicCentralGermCertified :
    firstPartOrderUsesAutomorphicCentralGerm
  secondPartLeadingCoefficientUsesAutomorphicCentralGerm : Prop
  secondPartLeadingCoefficientUsesAutomorphicCentralGermCertified :
    secondPartLeadingCoefficientUsesAutomorphicCentralGerm
  analyticContinuationInAssemblySuppliedByAutomorphicProvenance : Prop
  analyticContinuationInAssemblySuppliedByAutomorphicProvenanceCertified :
    analyticContinuationInAssemblySuppliedByAutomorphicProvenance
  functionalEquationInAssemblySuppliedByAutomorphicProvenance : Prop
  functionalEquationInAssemblySuppliedByAutomorphicProvenanceCertified :
    functionalEquationInAssemblySuppliedByAutomorphicProvenance
  sharedAutomorphicData :
    BSDTheoremAutomorphicProvenanceSharedData L N P A AP
  wrappedBSDCertificateUsesAutomorphicProvenance : Prop
  wrappedBSDCertificateUsesAutomorphicProvenanceCertified :
    wrappedBSDCertificateUsesAutomorphicProvenance
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
BSD theorem / automorphic-provenance coherence quality required by
theorem-facing smooth BSD input.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantc52de2f880b93d91560cf81164c5a059cc221d8178541e6e5fb24205ea8f85fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantc52de2f880b93d91560cf81164c5a059cc221d8178541e6e5fb24205ea8f85fc.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ca0e495b74438b18232dd05503049d030b222bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

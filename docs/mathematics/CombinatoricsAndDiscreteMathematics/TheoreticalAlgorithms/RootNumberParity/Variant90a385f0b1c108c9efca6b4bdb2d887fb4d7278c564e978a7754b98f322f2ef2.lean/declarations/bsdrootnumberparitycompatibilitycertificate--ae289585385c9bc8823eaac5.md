# BSDRootNumberParityCompatibilityCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d928efe2ee032e05ef5765018374bd8e550dd2d7c1eae8fbc5dd42df9599eec",
  "kind": "structure",
  "lexical_name": "BSDRootNumberParityCompatibilityCertificate",
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
  "slug": "bsdrootnumberparitycompatibilitycertificate--ae289585385c9bc8823eaac5",
  "source": {
    "blob": "e50a2716acefe6a6d4add8a477d8d066d11ff4c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 59,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90a385f0b1c108c9efca6b4bdb2d887fb4d7278c564e978a7754b98f322f2ef2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae289585385c9bc8823eaac5159725e71aa387772ae3de1da400f909d86de17d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90a385f0b1c108c9efca6b4bdb2d887fb4d7278c564e978a7754b98f322f2ef2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d928efe2ee032e05ef5765018374bd8e550dd2d7c1eae8fbc5dd42df9599eec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BSDRootNumberParityCompatibilityCertificate
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (F : FirstPartStatement L M.MW) where
  completedFunctionalEquation :
    CompletedFunctionalEquationNormalizationCertificate N P L
  completedFunctionalEquationCertified :
    completedFunctionalEquation.certifiedForBSD
  orderCertificateCertified :
    F.orderCertificate.certifiedForBSD
  completedCentralPointMatchesOrderPoint : Prop
  completedCentralPointMatchesOrderPointCertified :
    completedCentralPointMatchesOrderPoint
  parityData :
    BSDRootNumberParityData F
  orderParityMatchesRootNumberSign : Prop
  orderParityMatchesRootNumberSignCertified :
    orderParityMatchesRootNumberSign
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- BSD-facing quality predicate for root-number/order-parity compatibility. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90a385f0b1c108c9efca6b4bdb2d887fb4d7278c564e978a7754b98f322f2ef2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90a385f0b1c108c9efca6b4bdb2d887fb4d7278c564e978a7754b98f322f2ef2.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e50a2716acefe6a6d4add8a477d8d066d11ff4c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

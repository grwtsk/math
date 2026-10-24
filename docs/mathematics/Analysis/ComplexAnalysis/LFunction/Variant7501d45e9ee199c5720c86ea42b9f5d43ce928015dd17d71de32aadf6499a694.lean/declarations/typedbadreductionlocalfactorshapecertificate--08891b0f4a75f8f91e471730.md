# TypedBadReductionLocalFactorShapeCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0204037a21f1dd23c0445651ae0f6926ba8fe3b62e6297545dc232e0298b80fb",
  "kind": "structure",
  "lexical_name": "TypedBadReductionLocalFactorShapeCertificate",
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
  "slug": "typedbadreductionlocalfactorshapecertificate--08891b0f4a75f8f91e471730",
  "source": {
    "blob": "8019f6161736cbaa58e37f9667fe91c6ac2e91b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1359,
    "line": 1328,
    "path": "GRWTSK/Analysis/ComplexAnalysis/LFunction/Variant7501d45e9ee199c5720c86ea42b9f5d43ce928015dd17d71de32aadf6499a694.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08891b0f4a75f8f91e471730c3202688bf39f0fb803595ac71f9c96b737c0226",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/LFunction/Variant7501d45e9ee199c5720c86ea42b9f5d43ce928015dd17d71de32aadf6499a694.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0204037a21f1dd23c0445651ae0f6926ba8fe3b62e6297545dc232e0298b80fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1328–1359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TypedBadReductionLocalFactorShapeCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (F : LocalEulerFactor) where
  badArithmetic :
    BadReductionLocalFactorArithmeticCertificate (E := E) N F
  badArithmeticCertified :
    badArithmetic.certifiedForBSD
  reductionKind :
    BadReductionKind
  badEulerFactorShape :
    BadReductionEulerFactorShape
  placeholderShapeBoundary :
    F.shape = LocalEulerFactorShape.badReductionPlaceholder ∧
    F.goodReduction = false
  typedShapeMatchesReductionKind : Prop
  typedShapeMatchesReductionKindCertified :
    typedShapeMatchesReductionKind
  typedShapeMatchesConductorExponent : Prop
  typedShapeMatchesConductorExponentCertified :
    typedShapeMatchesConductorExponent
  typedShapeMatchesLocalFactorPolynomial : Prop
  typedShapeMatchesLocalFactorPolynomialCertified :
    typedShapeMatchesLocalFactorPolynomial
  typedShapeMatchesEulerProductTerm : Prop
  typedShapeMatchesEulerProductTermCertified :
    typedShapeMatchesEulerProductTerm
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Typed bad-reduction shape quality required by theorem-facing BSD input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/LFunction/Variant7501d45e9ee199c5720c86ea42b9f5d43ce928015dd17d71de32aadf6499a694.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/LFunction/Variant7501d45e9ee199c5720c86ea42b9f5d43ce928015dd17d71de32aadf6499a694.lean#L1328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8019f6161736cbaa58e37f9667fe91c6ac2e91b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

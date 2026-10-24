# BSDFirstPartAssemblyCertificate.certifiedForBSD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f473f3e6951ce8d63a5bb4ed2c2ed1308623c89ff0e48fddb37aad37541fd3f",
  "kind": "def",
  "lexical_name": "BSDFirstPartAssemblyCertificate.certifiedForBSD",
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
  "slug": "bsdfirstpartassemblycertificate-certifiedforbsd--2c7955b81dc1ef1eab2653c3",
  "source": {
    "blob": "b51ae97fd2cd8c18f689dae075d078fd52b42d26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c7955b81dc1ef1eab2653c3510be5e430a4836961c0e9a1acf910ed11f22f0f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f473f3e6951ce8d63a5bb4ed2c2ed1308623c89ff0e48fddb37aad37541fd3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BSDFirstPartAssemblyCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {S₁ : FirstPartStatement L M.MW}
    (A : BSDFirstPartAssemblyCertificate L M N P S₁) :
    Prop :=
  M.certifiedForBSD ∧
  (∃ FG : MordellWeilFiniteGenerationProvenanceCertificate M,
    FG.certifiedForBSD) ∧
  S₁.rankCertificate = M.finiteGeneration ∧
  M.finiteGeneration.certifiedForBSD ∧
  S₁.orderCertificate.certifiedForBSD ∧
  S₁.orderCertificate.point = SymbolicComplexVariable.sEqOne ∧
  (∃ AC : AnalyticContinuationCertificate L,
    AC.certifiedForBSD) ∧
  (∃ EC : EulerProductDirichletSeriesCompatibilityCertificate N L,
    EC.certifiedForBSD) ∧
  (∃ FE : CompletedFunctionalEquationNormalizationCertificate N P L,
    FE.certifiedForBSD) ∧
  A.algebraicRankUsesSmoothMordellWeilFreePart ∧
  A.analyticOrderUsesCentralTaylorGerm ∧
  A.orderCertificateUsesCoefficientSystemAnalyticGerm ∧
  A.rankOrderEqualityStatementMatchesFirstPart ∧
  A.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b51ae97fd2cd8c18f689dae075d078fd52b42d26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

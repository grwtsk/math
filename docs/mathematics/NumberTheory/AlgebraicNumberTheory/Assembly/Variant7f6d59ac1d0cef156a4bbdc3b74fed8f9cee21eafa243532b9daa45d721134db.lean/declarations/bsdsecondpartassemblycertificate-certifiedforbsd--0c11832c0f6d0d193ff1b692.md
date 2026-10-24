# BSDSecondPartAssemblyCertificate.certifiedForBSD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c8dbd5d6993814e8942bb54507410eb2d1f22fcb72a76cf90387feaf98dd58fc",
  "kind": "def",
  "lexical_name": "BSDSecondPartAssemblyCertificate.certifiedForBSD",
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
  "slug": "bsdsecondpartassemblycertificate-certifiedforbsd--0c11832c0f6d0d193ff1b692",
  "source": {
    "blob": "b51ae97fd2cd8c18f689dae075d078fd52b42d26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 216,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c11832c0f6d0d193ff1b692d64d644cda2f7f06e229450a5e31697044762d32",
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

Occurrence: `declaration:c8dbd5d6993814e8942bb54507410eb2d1f22fcb72a76cf90387feaf98dd58fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BSDSecondPartAssemblyCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {S₁ : FirstPartStatement L M.MW}
    {S₂ : SecondPartStatement L M.MW}
    (A : BSDSecondPartAssemblyCertificate L M N P S₁ S₂) :
    Prop :=
  (∃ LC : LeadingCoefficientCertificate L M.MW S₁ S₂,
    LC.certifiedForBSD ∧
    ∃ G : LeadingCoefficientAnalyticNormalizationCertificate
      L M.MW S₁ S₂ N P LC,
      G.certifiedForBSD) ∧
  (∃ PP : PeriodProductCertificate M N S₂,
    PP.certifiedForBSD) ∧
  (∃ R : RegulatorCertificate M S₂,
    R.certifiedForBSD ∧
    ∃ FG : MordellWeilFiniteGenerationProvenanceCertificate M,
      FG.certifiedForBSD ∧
      ∃ Q : RegulatorCanonicalHeightCompatibilityCertificate M S₂ FG R,
        Q.certifiedForBSD) ∧
  (∃ T : TateShafarevichComponentCertificate M S₂,
    T.certifiedForBSD) ∧
  (∃ TP : TamagawaProductCertificate N L S₂,
    TP.certifiedForBSD) ∧
  (∃ TO : TorsionOrderCertificate M S₂,
    TO.certifiedForBSD) ∧
  S₂.componentsSupplied ∧
  A.numeratorComponentsUseCommonNormalization ∧
  A.denominatorComponentsUseCommonNormalization ∧
  A.torsionAppearsSquaredInDenominator ∧
  A.tamagawaProductUsesSameFinitePlacesAsLFunction ∧
  A.periodAndRegulatorUseSameInvariantDifferentialNormalization ∧
  A.assembledIdentityMatchesSecondPartStatement ∧
  A.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b51ae97fd2cd8c18f689dae075d078fd52b42d26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

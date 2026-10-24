# PeriodProductCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b916d0948bd3325432e62bbf1e38b55a4df839765cda0e02c450cacf707d776",
  "kind": "structure",
  "lexical_name": "PeriodProductCertificate",
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
  "slug": "periodproductcertificate--2593dab10d8ac25917936d72",
  "source": {
    "blob": "650b69126001d078176620c3167af06dd98d5ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 339,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2593dab10d8ac25917936d72961e07a3120423578b72c64fc9ff17af808c3aa7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b916d0948bd3325432e62bbf1e38b55a4df839765cda0e02c450cacf707d776`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PeriodProductCertificate
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    {L : HasseWeilLFunction C.K.field C.E}
    (S : SecondPartStatement L M.MW) where
  differential :
    InvariantDifferentialCertificate M
  differentialCertified :
    differential.certifiedForBSD
  archimedeanPlaces :
    List (Sigma (fun _ : ArchimedeanPlaceDescriptor N => Unit))
  localPeriods :
    List (Sigma (fun V : ArchimedeanPlaceDescriptor N =>
      LocalPeriodCertificate (M := M) N V))
  localPeriodsCompatibleWithDifferential : Prop
  localPeriodsCompatibleWithDifferentialCertified :
    localPeriodsCompatibleWithDifferential
  PeriodProductValue : Type u
  periodProduct :
    PeriodProductValue
  periodProductUsesLocalPeriods : Prop
  periodProductUsesLocalPeriodsCertified :
    periodProductUsesLocalPeriods
  periodStatusSupplied :
    S.identityData.period =
      BSDComponentStatus.suppliedByCertificate
  periodProductMatchesSecondPart : Prop
  periodProductMatchesSecondPartCertified :
    periodProductMatchesSecondPart
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Period-product quality required by theorem-facing BSD input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `650b69126001d078176620c3167af06dd98d5ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# PeriodProductCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9483ec9576415a2bdadef5f2e3bcf04c97eaf57358765b68199110583a39038",
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
  "slug": "periodproductcertificate--5c5b407d50810f9d5da8bfb0",
  "source": {
    "blob": "a31099ca571e7a69a817f831ca5db6fd75beaa51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 331,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variantcc886458fe2d8b1a184f488f47ae5b107064378df2a065910b25dd342776c666.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c5b407d50810f9d5da8bfb0f4ee207ebf5bdc276b550eca48c7a218e304e34f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variantcc886458fe2d8b1a184f488f47ae5b107064378df2a065910b25dd342776c666.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9483ec9576415a2bdadef5f2e3bcf04c97eaf57358765b68199110583a39038`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–364.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variantcc886458fe2d8b1a184f488f47ae5b107064378df2a065910b25dd342776c666.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variantcc886458fe2d8b1a184f488f47ae5b107064378df2a065910b25dd342776c666.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a31099ca571e7a69a817f831ca5db6fd75beaa51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

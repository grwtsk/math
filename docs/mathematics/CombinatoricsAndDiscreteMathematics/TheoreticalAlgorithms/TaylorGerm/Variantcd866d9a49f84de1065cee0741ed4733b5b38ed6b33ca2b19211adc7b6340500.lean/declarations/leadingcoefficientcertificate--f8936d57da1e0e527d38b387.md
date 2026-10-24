# LeadingCoefficientCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34e299b8fd913b8c841d376a902583ad9337cf0b580056c0075b27bc90d29d5d",
  "kind": "structure",
  "lexical_name": "LeadingCoefficientCertificate",
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
  "slug": "leadingcoefficientcertificate--f8936d57da1e0e527d38b387",
  "source": {
    "blob": "51aa2880cbf91cc4a664a687171e2379260198b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8936d57da1e0e527d38b38786179ef255665cebecfb1d4aa78b9b5fad21af3a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34e299b8fd913b8c841d376a902583ad9337cf0b580056c0075b27bc90d29d5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LeadingCoefficientCertificate
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (MW : MordellWeilGroup.{u})
    (S₁ : FirstPartStatement L MW)
    (S₂ : SecondPartStatement L MW) where
  taylorExpansion :
    TaylorExpansionAtSEqOneCertificate L
  taylorExpansionCertified :
    taylorExpansion.certifiedForBSD
  orderCertificate :
    OrderOfVanishingCertificate L
  orderCertificateMatchesFirstPart :
    orderCertificate = S₁.orderCertificate
  orderCertificateCertified :
    orderCertificate.certifiedForBSD
  coefficientIndexMatchesOrder : Prop
  coefficientIndexMatchesOrderCertified :
    coefficientIndexMatchesOrder
  coefficientNonzero : Prop
  coefficientNonzeroCertified :
    coefficientNonzero
  leadingCoefficientStatusSupplied :
    S₂.identityData.leadingCoefficient =
      BSDComponentStatus.suppliedByCertificate
  coefficientMatchesSecondPart : Prop
  coefficientMatchesSecondPartCertified :
    coefficientMatchesSecondPart
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Leading-coefficient quality required by theorem-facing BSD input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51aa2880cbf91cc4a664a687171e2379260198b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

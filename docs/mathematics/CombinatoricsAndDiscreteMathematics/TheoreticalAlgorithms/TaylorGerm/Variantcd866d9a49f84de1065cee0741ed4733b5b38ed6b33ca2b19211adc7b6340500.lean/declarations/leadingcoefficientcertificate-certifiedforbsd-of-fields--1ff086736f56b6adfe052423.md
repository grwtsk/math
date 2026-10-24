# LeadingCoefficientCertificate.certifiedForBSD_of_fields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4777542d-8f39-9db0-c333-94139bd95de8",
  "kind": "theorem",
  "lexical_name": "LeadingCoefficientCertificate.certifiedForBSD_of_fields",
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
  "slug": "leadingcoefficientcertificate-certifiedforbsd-of-fields--1ff086736f56b6adfe052423",
  "source": {
    "blob": "51aa2880cbf91cc4a664a687171e2379260198b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 167,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ff086736f56b6adfe052423c86ac703178930d2728c08b8f862a552fb8f209d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4777542d-8f39-9db0-c333-94139bd95de8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LeadingCoefficientCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {MW : MordellWeilGroup.{u}}
    {S₁ : FirstPartStatement L MW}
    {S₂ : SecondPartStatement L MW}
    (LC : LeadingCoefficientCertificate L MW S₁ S₂)
    (hsource :
      LC.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    LC.certifiedForBSD := by
  constructor
  · exact LC.taylorExpansionCertified
  · constructor
    · exact LC.orderCertificateMatchesFirstPart
    · constructor
      · exact LC.orderCertificateCertified
      · constructor
        · exact LC.coefficientIndexMatchesOrderCertified
        · constructor
          · exact LC.coefficientNonzeroCertified
          · constructor
            · exact LC.leadingCoefficientStatusSupplied
            · constructor
              · exact LC.coefficientMatchesSecondPartCertified
              · exact hsource

end BSD
end EllipticCurve
end Surface.Arithmetic

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variantcd866d9a49f84de1065cee0741ed4733b5b38ed6b33ca2b19211adc7b6340500.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51aa2880cbf91cc4a664a687171e2379260198b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

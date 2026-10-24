# LeadingCoefficientCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ee62d4f7687dff907523b0881a37a263b0e487ac00ba2e7749fc3513b2a7ea4",
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
  "slug": "leadingcoefficientcertificate--dac35badd6569127939cfd13",
  "source": {
    "blob": "eb781171462fa9051f3da1a424f243f57ac88489",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 109,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variant7c6c215932492cdf31202bc42a151f74d95aabb018e166c95bc0687c26ab92b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dac35badd6569127939cfd13ee600245ded0c693c2f0cd4f648f03556bfffe2f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variant7c6c215932492cdf31202bc42a151f74d95aabb018e166c95bc0687c26ab92b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ee62d4f7687dff907523b0881a37a263b0e487ac00ba2e7749fc3513b2a7ea4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–140.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variant7c6c215932492cdf31202bc42a151f74d95aabb018e166c95bc0687c26ab92b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variant7c6c215932492cdf31202bc42a151f74d95aabb018e166c95bc0687c26ab92b7.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb781171462fa9051f3da1a424f243f57ac88489` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

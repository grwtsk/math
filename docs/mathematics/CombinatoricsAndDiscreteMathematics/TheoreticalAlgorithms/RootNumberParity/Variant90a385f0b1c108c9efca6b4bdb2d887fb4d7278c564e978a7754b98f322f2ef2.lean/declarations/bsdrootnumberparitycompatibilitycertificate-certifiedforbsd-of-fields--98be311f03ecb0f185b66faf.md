# BSDRootNumberParityCompatibilityCertificate.certifiedForBSD_of_fields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89b861ef-40db-3fd3-e3a9-1be8cb58324d",
  "kind": "theorem",
  "lexical_name": "BSDRootNumberParityCompatibilityCertificate.certifiedForBSD_of_fields",
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
  "slug": "bsdrootnumberparitycompatibilitycertificate-certifiedforbsd-of-fields--98be311f03ecb0f185b66faf",
  "source": {
    "blob": "e50a2716acefe6a6d4add8a477d8d066d11ff4c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 105,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90a385f0b1c108c9efca6b4bdb2d887fb4d7278c564e978a7754b98f322f2ef2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98be311f03ecb0f185b66faf9dccf7df6a48c37ecfe4c5aaed8ba5aa6ca0d406",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90a385f0b1c108c9efca6b4bdb2d887fb4d7278c564e978a7754b98f322f2ef2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89b861ef-40db-3fd3-e3a9-1be8cb58324d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BSDRootNumberParityCompatibilityCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {F : FirstPartStatement L M.MW}
    (R : BSDRootNumberParityCompatibilityCertificate L M N P F)
    (hsource :
      R.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    R.certifiedForBSD := by
  exact
    ⟨R.completedFunctionalEquationCertified,
      R.orderCertificateCertified,
      R.completedFunctionalEquation.centralPointIsSEqOneCertified,
      R.completedFunctionalEquation.rootNumber.sign_eq_functionalEquation,
      R.completedFunctionalEquation.rootNumber.unitNormCertified,
      R.completedCentralPointMatchesOrderPointCertified,
      R.parityData.signIsPlusOrMinusOneCertified,
      R.parityData.parity_eq_order_mod_two,
      R.orderParityMatchesRootNumberSignCertified,
      hsource⟩

end BSD
end EllipticCurve
end Surface.Arithmetic

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90a385f0b1c108c9efca6b4bdb2d887fb4d7278c564e978a7754b98f322f2ef2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90a385f0b1c108c9efca6b4bdb2d887fb4d7278c564e978a7754b98f322f2ef2.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e50a2716acefe6a6d4add8a477d8d066d11ff4c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

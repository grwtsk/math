# RegulatorCertificate.certifiedForBSD_of_fields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c288a75-a008-0a68-86de-25a8b1a20e47",
  "kind": "theorem",
  "lexical_name": "RegulatorCertificate.certifiedForBSD_of_fields",
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
  "slug": "regulatorcertificate-certifiedforbsd-of-fields--93960ef3b97287aab65058c7",
  "source": {
    "blob": "01fe32223178394340917538f9aac65d966b265b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 93,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantec6d028d9dd438c771e79e5b77869d96ece4fe7d35f7b2c977a89beb7c2d8dc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93960ef3b97287aab65058c712377778ac918161660e535f4ba0f9f5241737d9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantec6d028d9dd438c771e79e5b77869d96ece4fe7d35f7b2c977a89beb7c2d8dc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c288a75-a008-0a68-86de-25a8b1a20e47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RegulatorCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {L : HasseWeilLFunction C.K.field C.E}
    {S : SecondPartStatement L M.MW}
    (R : RegulatorCertificate M S)
    (hsource :
      R.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    R.certifiedForBSD := by
  constructor
  · exact R.heightPairingCertified
  · constructor
    · exact R.regulatorStatusSupplied
    · constructor
      · exact R.regulatorData.determinantConstructionAppliesToMatrixCertified
      · constructor
        · exact R.determinantMatchesHeightPairingCertified
        · constructor
          · exact R.regulatorMatchesSecondPartCertified
          · exact hsource

/--
Compatibility between the BSD regulator height pairing and the canonical height
used in Mordell-Weil height descent.

This is still an interface certificate. It does not construct the canonical
height, prove the Neron-Tate pairing formula, or compute the regulator
determinant.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantec6d028d9dd438c771e79e5b77869d96ece4fe7d35f7b2c977a89beb7c2d8dc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantec6d028d9dd438c771e79e5b77869d96ece4fe7d35f7b2c977a89beb7c2d8dc2.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01fe32223178394340917538f9aac65d966b265b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

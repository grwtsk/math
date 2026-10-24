# ChordTangentPicardProvenanceCertificate.certifiedForBSD_of_fields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "761140093e66cc83e6c64f13f018ada1046a2f3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 962,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2af90a9c-dafe-6a1c-51bf-748a0d8a8afe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15b46592-c548-6ac4-b122-593db026ffa2",
  "kind": "theorem",
  "lexical_name": "ChordTangentPicardProvenanceCertificate.certifiedForBSD_of_fields",
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
  "slug": "chordtangentpicardprovenancecertificate-certifiedforbsd-of-fields--929706ee757e7d205709ed09",
  "source": {
    "blob": "761140093e66cc83e6c64f13f018ada1046a2f3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 994,
    "line": 962,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:929706ee757e7d205709ed09a07a12a34905716d7c48869537ecd7f8d9df1731",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15b46592-c548-6ac4-b122-593db026ffa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 962–994.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ChordTangentPicardProvenanceCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    {P : ProjectiveWeierstrassClosureCertificate C}
    {I : ProjectiveLineCubicIntersectionCertificate C P}
    (Q : ChordTangentPicardProvenanceCertificate C G P I) :
    Q.certifiedForBSD := by
  constructor
  · exact Q.projectiveClosureCertified
  · constructor
    · exact Q.intersectionTheoryCertified
    · constructor
      · exact Q.divisorClassesCertified
      · constructor
        · exact Q.linePrincipalDivisorCompatibilityCertified
        · constructor
          · exact Q.tangentPrincipalDivisorCompatibilityCertified
          · constructor
            · exact Q.chordTangentAdditionMatchesPicardAdditionCertified
            · constructor
              · exact Q.inverseMatchesNegationInPicardZeroCertified
              · constructor
                · exact Q.suppliedGroupLawMatchesPicardTransportCertified
                · exact Q.exceptionalPicardCasesCoveredCertified

/--
Typed operation data for the chord-tangent construction.

This is still an interface certificate. It does not prove existence or
uniqueness of the third intersection or reflection from first principles. It
does, however, expose the actual line, tangent, intersection, and reflection
objects used by the theorem-facing group-law gate.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean#L962).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `761140093e66cc83e6c64f13f018ada1046a2f3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

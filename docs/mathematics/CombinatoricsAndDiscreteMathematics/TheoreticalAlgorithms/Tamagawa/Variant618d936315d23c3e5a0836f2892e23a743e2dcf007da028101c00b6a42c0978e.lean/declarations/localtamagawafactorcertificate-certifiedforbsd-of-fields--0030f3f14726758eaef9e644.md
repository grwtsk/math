# LocalTamagawaFactorCertificate.certifiedForBSD_of_fields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e90d3f06-3f71-98e4-2ec8-d06c90bcc8ec",
  "kind": "theorem",
  "lexical_name": "LocalTamagawaFactorCertificate.certifiedForBSD_of_fields",
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
  "slug": "localtamagawafactorcertificate-certifiedforbsd-of-fields--0030f3f14726758eaef9e644",
  "source": {
    "blob": "3a50072bbd56718f7c43ebb84536a9a503302b7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 120,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variant618d936315d23c3e5a0836f2892e23a743e2dcf007da028101c00b6a42c0978e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0030f3f14726758eaef9e6445905ac71cc4aa4ba234d7edcc7b40dec8289eddf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variant618d936315d23c3e5a0836f2892e23a743e2dcf007da028101c00b6a42c0978e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e90d3f06-3f71-98e4-2ec8-d06c90bcc8ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LocalTamagawaFactorCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    (T : LocalTamagawaFactorCertificate (E := E) N F)
    (hsource :
      T.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    T.certifiedForBSD := by
  constructor
  · exact T.finitePlaceCertified
  · constructor
    · exact T.componentGroup.componentGroupLawCertified
    · constructor
      · exact T.componentGroup.componentMapSurjectiveCertified
      · constructor
        · exact T.componentGroupFiniteCertified
        · constructor
          · exact T.componentGroup.tamagawaNumber_eq_listedComponents_length
          · constructor
            · exact T.tamagawaNumberPositiveCertified
            · constructor
              · exact T.tamagawaNumberMatchesComponentGroupCertified
              · constructor
                · exact T.componentGroup.compatibleWithMinimalModelProvenanceCertified
                · exact hsource

/--
Certificate that local Tamagawa factors assemble the Tamagawa component in the
BSD leading-coefficient identity.

This is still an interface certificate. It does not construct component groups
or prove the BSD product formula.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variant618d936315d23c3e5a0836f2892e23a743e2dcf007da028101c00b6a42c0978e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variant618d936315d23c3e5a0836f2892e23a743e2dcf007da028101c00b6a42c0978e.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a50072bbd56718f7c43ebb84536a9a503302b7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# MordellWeilTorsionSubgroupCertificate.certifiedForBSD_of_fields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a0d32c6bff8012eb26fafe59bdd9731b413721e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e26afc36-ffb3-5c1c-5aa1-5243885df565",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3cbac07c-760b-c878-bbb9-9bb5647b93ea",
  "kind": "theorem",
  "lexical_name": "MordellWeilTorsionSubgroupCertificate.certifiedForBSD_of_fields",
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
  "slug": "mordellweiltorsionsubgroupcertificate-certifiedforbsd-of-fields--6b992683636e4041504fdd67",
  "source": {
    "blob": "a0d32c6bff8012eb26fafe59bdd9731b413721e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 87,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b992683636e4041504fdd6730cfcfa9a47c9368f1996ca62063b155e9cc7148",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cbac07c-760b-c878-bbb9-9bb5647b93ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MordellWeilTorsionSubgroupCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (T : MordellWeilTorsionSubgroupCertificate M)
    (hsource :
      T.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    T.certifiedForBSD := by
  constructor
  · exact T.torsionData.torsionPredicateMatchesCarrierCertified
  · constructor
    · exact T.torsionSubgroupFiniteCertified
    · constructor
      · exact T.torsionGeneratorsMatchFiniteGenerationCertificateCertified
      · constructor
        · exact T.torsionSubgroupCompatibleWithSmoothGroupLawCertified
        · exact hsource

/--
Torsion-order certificate for the BSD second part.

This certificate ties the torsion-order metadata to the smooth Mordell-Weil
torsion subgroup and to the denominator appearing in the BSD leading-coefficient
identity.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0d32c6bff8012eb26fafe59bdd9731b413721e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

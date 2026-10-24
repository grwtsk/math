# NumberFieldNorthcottCertificate.certifiedForBSD_of_fields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9926a3bca42651438233aab0c20d077755569f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 512,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/942cdb024b30ebc7b6433c586da67d9114607c6aaa23cf0f57eaf91f64861736.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eed85735-171e-7ff5-e1ed-9df2aa8a719b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bbb1a31e-3db7-76d6-4679-708c20e6d68e",
  "kind": "theorem",
  "lexical_name": "NumberFieldNorthcottCertificate.certifiedForBSD_of_fields",
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
  "slug": "numberfieldnorthcottcertificate-certifiedforbsd-of-fields--6ce0a88a3d6f39123f0f40b8",
  "source": {
    "blob": "b9926a3bca42651438233aab0c20d077755569f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 512,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Field/Variant942cdb024b30ebc7b6433c586da67d9114607c6aaa23cf0f57eaf91f64861736.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ce0a88a3d6f39123f0f40b8df125cb29a49cdbd2b1092a4eee2960818fab7f0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Field/Variant942cdb024b30ebc7b6433c586da67d9114607c6aaa23cf0f57eaf91f64861736.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbb1a31e-3db7-76d6-4679-708c20e6d68e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NumberFieldNorthcottCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {H : NumberFieldProjectiveHeightCertificate P}
    (Q : NumberFieldNorthcottCertificate H)
    (hsource :
      Q.sourceStatus =
        NumberFieldArithmeticSourceStatus.suppliedByCertificate) :
    Q.certifiedForBSD := by
  exact
    ⟨Q.projectiveHeightCertified,
      Q.northcottData.boundedDegreeAndHeightCompleteCertified,
      Q.northcottData.rationalPointsOverBaseFieldHaveBoundedDegreeCertified,
      Q.northcottData.finiteHeightBallForBaseFieldRationalPointsCompleteCertified,
      hsource⟩

/-- A finite enumeration certificate used by counting definitions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Field/Variant942cdb024b30ebc7b6433c586da67d9114607c6aaa23cf0f57eaf91f64861736.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Field/Variant942cdb024b30ebc7b6433c586da67d9114607c6aaa23cf0f57eaf91f64861736.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9926a3bca42651438233aab0c20d077755569f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

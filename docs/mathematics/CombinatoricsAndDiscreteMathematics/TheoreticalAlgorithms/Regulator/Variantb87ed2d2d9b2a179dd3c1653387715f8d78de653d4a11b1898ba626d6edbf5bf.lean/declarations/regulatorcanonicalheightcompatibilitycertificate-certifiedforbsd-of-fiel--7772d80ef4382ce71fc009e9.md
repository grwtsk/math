# RegulatorCanonicalHeightCompatibilityCertificate.certifiedForBSD_of_fields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79f92e6ded6b351608553ab3cd412bceef929b03",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e525df6e-c99d-73c7-9c22-9a3357ec9f87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b0337c7-e016-3de8-47f4-b2ac174c4c95",
  "kind": "theorem",
  "lexical_name": "RegulatorCanonicalHeightCompatibilityCertificate.certifiedForBSD_of_fields",
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
  "slug": "regulatorcanonicalheightcompatibilitycertificate-certifiedforbsd-of-fiel--7772d80ef4382ce71fc009e9",
  "source": {
    "blob": "79f92e6ded6b351608553ab3cd412bceef929b03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 171,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7772d80ef4382ce71fc009e9ac39156a48f5fe8cf32a15045764098e04e0f9d2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b0337c7-e016-3de8-47f4-b2ac174c4c95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RegulatorCanonicalHeightCompatibilityCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {L : HasseWeilLFunction C.K.field C.E}
    {S : SecondPartStatement L M.MW}
    {P : MordellWeilFiniteGenerationProvenanceCertificate M}
    {R : RegulatorCertificate M S}
    (Q : RegulatorCanonicalHeightCompatibilityCertificate M S P R)
    (hsource :
      Q.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    Q.certifiedForBSD := by
  exact
    ⟨Q.finiteGenerationProvenanceCertified,
      Q.regulatorCertified,
      Q.canonicalHeightCertified,
      Q.regulatorHeightPairingCertified,
      Q.canonicalHeightMatchesPairingQuadraticFormCertified,
      Q.pairingBilinearizationMatchesCanonicalHeightCertified,
      Q.regulatorMatrixUsesGeneratedFreePartCertified,
      Q.determinantUsesCanonicalHeightPairingCertified,
      Q.compatibleWithFiniteGenerationRankCertified,
      hsource⟩
end BSD
end EllipticCurve
end Surface.Arithmetic

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79f92e6ded6b351608553ab3cd412bceef929b03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

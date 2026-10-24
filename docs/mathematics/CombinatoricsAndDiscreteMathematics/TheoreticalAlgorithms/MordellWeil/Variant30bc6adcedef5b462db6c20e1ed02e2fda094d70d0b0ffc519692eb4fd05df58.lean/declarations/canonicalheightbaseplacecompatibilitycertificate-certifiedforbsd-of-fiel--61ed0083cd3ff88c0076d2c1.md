# CanonicalHeightBasePlaceCompatibilityCertificate.certifiedForBSD_of_fields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "416768821aa54767a123cfa871d4c9afd63099de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 861,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:32d19245-640b-4f90-7345-514be2f70907",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e05cf85-c0d7-2c2a-8c77-75a42cf47c72",
  "kind": "theorem",
  "lexical_name": "CanonicalHeightBasePlaceCompatibilityCertificate.certifiedForBSD_of_fields",
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
  "slug": "canonicalheightbaseplacecompatibilitycertificate-certifiedforbsd-of-fiel--61ed0083cd3ff88c0076d2c1",
  "source": {
    "blob": "416768821aa54767a123cfa871d4c9afd63099de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 885,
    "line": 861,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variant30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61ed0083cd3ff88c0076d2c1f090e75ab91b1cee66e50e5f7e99384bde18999f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variant30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e05cf85-c0d7-2c2a-8c77-75a42cf47c72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 861–885.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CanonicalHeightBasePlaceCompatibilityCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {H : CanonicalHeightFunctionCertificate M}
    {L : CanonicalHeightLocalDecompositionCertificate H}
    (B : CanonicalHeightBasePlaceCompatibilityCertificate N L) :
    B.certifiedForBSD := by
  exact
    ⟨B.basePlacesCertified,
      B.localHeightDecompositionCertified,
      B.finiteLocalHeightsUseBaseFinitePlacesCertified,
      B.archimedeanLocalHeightsUseBaseArchimedeanPlacesCertified,
      B.allPlacesCoverageMatchesBasePlacesCertified,
      B.localHeightProductFormulaMatchesBaseProductFormulaCertified,
      B.localNaiveComparisonUsesNormalizedAbsoluteValuesCertified⟩

/--
Typed Weierstrass projective embedding data for the rational-point locus.

The projective target is the projective-space carrier from the base-field
height package.  The coordinate map and homogeneous equation predicate are
explicit data; the remaining fields certify their intended relationship to the
smooth affine curve.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variant30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variant30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58.lean#L861).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `416768821aa54767a123cfa871d4c9afd63099de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

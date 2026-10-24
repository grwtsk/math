# AutomorphicAnalyticSourceDescriptor.certifiedForBSD_of_fields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8019f6161736cbaa58e37f9667fe91c6ac2e91b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/7501d45e9ee199c5720c86ea42b9f5d43ce928015dd17d71de32aadf6499a694.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89c978c7-b413-8aeb-0504-4291e31ac122",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b289c56-00bd-f4f3-62a1-a953739a581b",
  "kind": "theorem",
  "lexical_name": "AutomorphicAnalyticSourceDescriptor.certifiedForBSD_of_fields",
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
  "slug": "automorphicanalyticsourcedescriptor-certifiedforbsd-of-fields--5eeb634d84f46e7717d0e7ca",
  "source": {
    "blob": "8019f6161736cbaa58e37f9667fe91c6ac2e91b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3273,
    "line": 3238,
    "path": "GRWTSK/Analysis/ComplexAnalysis/LFunction/Variant7501d45e9ee199c5720c86ea42b9f5d43ce928015dd17d71de32aadf6499a694.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5eeb634d84f46e7717d0e7ca5ac7243c040ede43879ea75c255a991ea4ae1ca8",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/LFunction/Variant7501d45e9ee199c5720c86ea42b9f5d43ce928015dd17d71de32aadf6499a694.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b289c56-00bd-f4f3-62a1-a953739a581b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3238–3273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AutomorphicAnalyticSourceDescriptor.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {A : HasseWeilAutomorphicProvenanceCertificate N P L}
    {Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L A}
    (D : AutomorphicAnalyticSourceDescriptor N P L A Knd)
    (hsource :
      D.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    D.certifiedForBSD := by
  exact
    ⟨D.automorphicProvenanceCertified,
      D.objectKindCompatibilityCertified,
      D.sourceStatementMatchesSourceKindCertified,
      D.sourceHypothesesTypeMatchesStatementCertified,
      D.sourceHypothesesMatchScopeCertified,
      D.sourceHypothesesMatchObjectKindCertified,
      D.curveSatisfiesSourceHypothesesCertified,
      D.sourceConclusionSuppliesAutomorphicObjectCertified,
      D.sourceConclusionSuppliesAnalyticContinuationCertified,
      D.sourceConclusionSuppliesFunctionalEquationCertified,
      D.sourceConclusionSuppliesLocalGlobalCompatibilityCertified,
      D.sourceNormalizationMatchesObjectDescriptorCertified,
      hsource⟩

/--
Compatibility between the Hasse-Weil automorphic package and the typed source
descriptor.

This is still an interface certificate. It does not prove modularity, automorphy,
analytic continuation, the functional equation, local Langlands compatibility,
or BSD.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/LFunction/Variant7501d45e9ee199c5720c86ea42b9f5d43ce928015dd17d71de32aadf6499a694.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/LFunction/Variant7501d45e9ee199c5720c86ea42b9f5d43ce928015dd17d71de32aadf6499a694.lean#L3238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8019f6161736cbaa58e37f9667fe91c6ac2e91b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

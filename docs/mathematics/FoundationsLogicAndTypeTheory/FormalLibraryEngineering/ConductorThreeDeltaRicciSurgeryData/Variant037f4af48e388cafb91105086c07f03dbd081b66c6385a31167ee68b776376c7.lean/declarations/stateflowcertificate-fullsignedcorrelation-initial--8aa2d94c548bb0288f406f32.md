# StateFlowCertificate.fullSignedCorrelation_initial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "760c4dd3808b1969696f47c87875be6fe9e0125a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 443,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/037f4af48e388cafb91105086c07f03dbd081b66c6385a31167ee68b776376c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88b8751d-99ae-0057-78fc-edc81e8b4d07",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78072bd6-4e07-9427-8e6d-44a2d7536df3",
  "kind": "theorem",
  "lexical_name": "StateFlowCertificate.fullSignedCorrelation_initial",
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
  "slug": "stateflowcertificate-fullsignedcorrelation-initial--8aa2d94c548bb0288f406f32",
  "source": {
    "blob": "760c4dd3808b1969696f47c87875be6fe9e0125a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 443,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variant037f4af48e388cafb91105086c07f03dbd081b66c6385a31167ee68b776376c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8aa2d94c548bb0288f406f32ebf796556228513652d42229a0e6f725d6ce04f0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variant037f4af48e388cafb91105086c07f03dbd081b66c6385a31167ee68b776376c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78072bd6-4e07-9427-8e6d-44a2d7536df3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StateFlowCertificate.fullSignedCorrelation_initial {N : ℕ}
    {scale : TypeIIScaleSurgeryData N}
    {parent : TypeIIBilinearSurgeryState scale}
    (certificate : StateFlowCertificate parent) (x : ℕ) :
    certificate.flow.fullSignedCorrelation 0 x = parent.signedPairing x := by
  rw [ResidualAwareCorrelationFlow.fullSignedCorrelation,
    certificate.left_initial, certificate.right_initial,
    certificate.incidence_initial, certificate.residual_initial]
  rfl

/-- The same exact correlation reaches the child at the certified endpoint. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variant037f4af48e388cafb91105086c07f03dbd081b66c6385a31167ee68b776376c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variant037f4af48e388cafb91105086c07f03dbd081b66c6385a31167ee68b776376c7.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `760c4dd3808b1969696f47c87875be6fe9e0125a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

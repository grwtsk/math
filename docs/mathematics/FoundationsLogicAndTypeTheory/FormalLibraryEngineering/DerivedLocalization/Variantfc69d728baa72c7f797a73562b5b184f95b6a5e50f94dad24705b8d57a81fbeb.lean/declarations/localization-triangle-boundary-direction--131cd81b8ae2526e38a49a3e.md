# localization_triangle_boundary_direction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44fb0d8ec2bc452066584e89f7bba7268ec8899f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc69d728baa72c7f797a73562b5b184f95b6a5e50f94dad24705b8d57a81fbeb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d09ecea9-3ea1-8c2b-0f2d-01ffee4a09c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c65fcd3c-c868-928e-a964-7feaeed40461",
  "kind": "theorem",
  "lexical_name": "localization_triangle_boundary_direction",
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
  "slug": "localization-triangle-boundary-direction--131cd81b8ae2526e38a49a3e",
  "source": {
    "blob": "44fb0d8ec2bc452066584e89f7bba7268ec8899f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivedLocalization/Variantfc69d728baa72c7f797a73562b5b184f95b6a5e50f94dad24705b8d57a81fbeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:131cd81b8ae2526e38a49a3eb884b9769ae0ea491d1156c2419a34972f28894a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivedLocalization/Variantfc69d728baa72c7f797a73562b5b184f95b6a5e50f94dad24705b8d57a81fbeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c65fcd3c-c868-928e-a964-7feaeed40461`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localization_triangle_boundary_direction :
    localizationTriangleSurface.leftTerm = "j_shriek_j_pullback_F" ∧
      localizationTriangleSurface.rightTerm = "i_pushforward_i_pullback_F" ∧
      localizationTriangleSurface.connectingMorphism =
        "i_pushforward_i_pullback_F_to_j_shriek_j_pullback_F_shift_1" ∧
      localizationTriangleSurface.shiftedOpenTerm =
        "j_shriek_j_pullback_F_shift_1" ∧
      localizationTriangleSurface.directionCorrect = true ∧
      localizationTriangleSurface.middleArrowConnectingClaim = false := by
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivedLocalization/Variantfc69d728baa72c7f797a73562b5b184f95b6a5e50f94dad24705b8d57a81fbeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivedLocalization/Variantfc69d728baa72c7f797a73562b5b184f95b6a5e50f94dad24705b8d57a81fbeb.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44fb0d8ec2bc452066584e89f7bba7268ec8899f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# compact_support_boundary_places_degree_zero_obstruction

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
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc69d728baa72c7f797a73562b5b184f95b6a5e50f94dad24705b8d57a81fbeb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4672aa5-3506-f63c-7b2b-17b6714f07cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ecb7961-611b-e902-a5e9-e62903beb6bd",
  "kind": "theorem",
  "lexical_name": "compact_support_boundary_places_degree_zero_obstruction",
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
  "slug": "compact-support-boundary-places-degree-zero-obstruction--3fbc285d960428575833a258",
  "source": {
    "blob": "44fb0d8ec2bc452066584e89f7bba7268ec8899f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivedLocalization/Variantfc69d728baa72c7f797a73562b5b184f95b6a5e50f94dad24705b8d57a81fbeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fbc285d960428575833a2588f2fe0ef9ec5ffa7e13b5e0e0d9fd3251dfdf51f",
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

Occurrence: `result:5ecb7961-611b-e902-a5e9-e62903beb6bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compact_support_boundary_places_degree_zero_obstruction :
    compactSupportBoundaryMapSurface.source =
        "H_c_q_X_i_pushforward_i_pullback_F" ∧
      compactSupportBoundaryMapSurface.target =
        "H_c_q_plus_1_X_j_shriek_j_pullback_F" ∧
      compactSupportBoundaryMapSurface.degreeZeroObstruction =
        "eta_p_in_H_c_0_X_i_pushforward_i_pullback_F" ∧
      compactSupportBoundaryMapSurface.absorbedCondition =
        "partial_0_eta_p_equals_zero" ∧
      compactSupportBoundaryMapSurface.residualCondition =
        "partial_0_eta_p_not_equal_zero" ∧
      compactSupportBoundaryMapSurface.analyticZeroClaim = false := by
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivedLocalization/Variantfc69d728baa72c7f797a73562b5b184f95b6a5e50f94dad24705b8d57a81fbeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivedLocalization/Variantfc69d728baa72c7f797a73562b5b184f95b6a5e50f94dad24705b8d57a81fbeb.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44fb0d8ec2bc452066584e89f7bba7268ec8899f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

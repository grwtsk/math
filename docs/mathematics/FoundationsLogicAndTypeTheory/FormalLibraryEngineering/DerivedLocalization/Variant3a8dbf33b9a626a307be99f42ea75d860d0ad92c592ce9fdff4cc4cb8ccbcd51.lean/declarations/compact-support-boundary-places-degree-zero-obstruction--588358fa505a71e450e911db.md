# compact_support_boundary_places_degree_zero_obstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d71435e4-f870-230d-ace1-6e68feafef03",
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
  "slug": "compact-support-boundary-places-degree-zero-obstruction--588358fa505a71e450e911db",
  "source": {
    "blob": "d62dba61a769397758c17e1cd5d180e348e0e36b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 118,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivedLocalization/Variant3a8dbf33b9a626a307be99f42ea75d860d0ad92c592ce9fdff4cc4cb8ccbcd51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:588358fa505a71e450e911db69b28cded845cd776f0d9c7e4587b79df4e807dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivedLocalization/Variant3a8dbf33b9a626a307be99f42ea75d860d0ad92c592ce9fdff4cc4cb8ccbcd51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d71435e4-f870-230d-ace1-6e68feafef03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–131.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivedLocalization/Variant3a8dbf33b9a626a307be99f42ea75d860d0ad92c592ce9fdff4cc4cb8ccbcd51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivedLocalization/Variant3a8dbf33b9a626a307be99f42ea75d860d0ad92c592ce9fdff4cc4cb8ccbcd51.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d62dba61a769397758c17e1cd5d180e348e0e36b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

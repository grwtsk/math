# has_filtered_colimits_of_has_cofiltered_limits_op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ecef1db-cce7-38ba-e319-ddeb47003577",
  "kind": "theorem",
  "lexical_name": "has_filtered_colimits_of_has_cofiltered_limits_op",
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
  "slug": "has-filtered-colimits-of-has-cofiltered-limits-op--8a4b4fdbebc297d85d1bfb51",
  "source": {
    "blob": "7e9e60ba7ece31a0a8b9f44a043c0b8a12382030",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 53,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant293361be2e61ef7b7937402abcda064ee026a5599d2f8663984c077662fa0c5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a4b4fdbebc297d85d1bfb513552c06a2d92d70077476100df1d5cf89ba6d737",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant293361be2e61ef7b7937402abcda064ee026a5599d2f8663984c077662fa0c5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ecef1db-cce7-38ba-e319-ddeb47003577`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem has_filtered_colimits_of_has_cofiltered_limits_op [HasCofilteredLimitsOfSize.{v₂, u₂} Cᵒᵖ] :
    HasFilteredColimitsOfSize.{v₂, u₂} C :=
  { HasColimitsOfShape := fun _ _ _ => hasColimitsOfShape_of_hasLimitsOfShape_op }

end CategoryTheory.Limits
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant293361be2e61ef7b7937402abcda064ee026a5599d2f8663984c077662fa0c5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant293361be2e61ef7b7937402abcda064ee026a5599d2f8663984c077662fa0c5c.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e9e60ba7ece31a0a8b9f44a043c0b8a12382030` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

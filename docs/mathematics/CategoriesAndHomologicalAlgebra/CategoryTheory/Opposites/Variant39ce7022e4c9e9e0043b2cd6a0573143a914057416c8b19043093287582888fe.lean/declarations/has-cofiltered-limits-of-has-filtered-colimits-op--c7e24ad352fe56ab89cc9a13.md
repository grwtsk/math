# has_cofiltered_limits_of_has_filtered_colimits_op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e6d310eba69f1e4ea275e1c46ded34303369668f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 370,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39ce7022e4c9e9e0043b2cd6a0573143a914057416c8b19043093287582888fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93edb39d-b683-1ac0-3c5d-370111afc88b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64e54b0a-1210-3be9-5e84-c6e9f922c992",
  "kind": "theorem",
  "lexical_name": "has_cofiltered_limits_of_has_filtered_colimits_op",
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
  "slug": "has-cofiltered-limits-of-has-filtered-colimits-op--c7e24ad352fe56ab89cc9a13",
  "source": {
    "blob": "e6d310eba69f1e4ea275e1c46ded34303369668f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 370,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant39ce7022e4c9e9e0043b2cd6a0573143a914057416c8b19043093287582888fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7e24ad352fe56ab89cc9a132c23adb765ae7c0175c1f01e22dd00281927fca9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant39ce7022e4c9e9e0043b2cd6a0573143a914057416c8b19043093287582888fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64e54b0a-1210-3be9-5e84-c6e9f922c992`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem has_cofiltered_limits_of_has_filtered_colimits_op [HasFilteredColimitsOfSize.{v₂, u₂} Cᵒᵖ] :
    HasCofilteredLimitsOfSize.{v₂, u₂} C :=
  { HasLimitsOfShape := fun _ _ _ => hasLimitsOfShape_of_hasColimitsOfShape_op }

/-- If `F.leftOp : Jᵒᵖ ⥤ C` has a limit, we can construct a colimit for `F : J ⥤ Cᵒᵖ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant39ce7022e4c9e9e0043b2cd6a0573143a914057416c8b19043093287582888fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant39ce7022e4c9e9e0043b2cd6a0573143a914057416c8b19043093287582888fe.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6d310eba69f1e4ea275e1c46ded34303369668f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# hasTerminal_of_isSeparating

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87cc9d0c11c5f75f12a5e615098d2941aae08780",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 308,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7469310e7cb78904642cd1ef75895738b4a6d2e3a4d914a0d3816c2ba1da018.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a566e23-437f-ec5e-6d09-9ef37c1f2f12",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2eb1be6b-c140-7e75-7474-a4495fdcfbeb",
  "kind": "theorem",
  "lexical_name": "hasTerminal_of_isSeparating",
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
  "slug": "hasterminal-of-isseparating--6fc7c725a3ce2ca42f6c650b",
  "source": {
    "blob": "87cc9d0c11c5f75f12a5e615098d2941aae08780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 308,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variantb7469310e7cb78904642cd1ef75895738b4a6d2e3a4d914a0d3816c2ba1da018.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fc7c725a3ce2ca42f6c650bd9e472c1e3898d30dd5427ea2ae947fa0e18e4c3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variantb7469310e7cb78904642cd1ef75895738b4a6d2e3a4d914a0d3816c2ba1da018.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2eb1be6b-c140-7e75-7474-a4495fdcfbeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasTerminal_of_isSeparating [WellPowered Cᵒᵖ] [HasColimits C] {𝒢 : Set C} [Small.{v₁} 𝒢]
    (h𝒢 : IsSeparating 𝒢) : HasTerminal C := by
  haveI : Small.{v₁} 𝒢.op := small_of_injective (Set.opEquiv_self 𝒢).injective
  haveI : HasInitial Cᵒᵖ := hasInitial_of_isCoseparating ((isCoseparating_op_iff _).2 h𝒢)
  exact hasTerminal_of_hasInitial_op
#align category_theory.has_terminal_of_is_separating CategoryTheory.hasTerminal_of_isSeparating

section WellPowered

namespace Subobject

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variantb7469310e7cb78904642cd1ef75895738b4a6d2e3a4d914a0d3816c2ba1da018.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variantb7469310e7cb78904642cd1ef75895738b4a6d2e3a4d914a0d3816c2ba1da018.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87cc9d0c11c5f75f12a5e615098d2941aae08780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# injective_stableUnderComposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31a34d7116ce5a7e60b857bcb68d3af29c717203",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 660,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d42a284ebaecc1c7d86a4dfeb38f6b62c042907859336e81f62d72df21e2acbe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:69fa5aa1-752e-1f80-52ae-80c9d2c6b4f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8fbaca6-bd07-46d3-a90e-8fc5d9a751fa",
  "kind": "theorem",
  "lexical_name": "injective_stableUnderComposition",
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
  "slug": "injective-stableundercomposition--265a773d0bf94ff2876c338c",
  "source": {
    "blob": "31a34d7116ce5a7e60b857bcb68d3af29c717203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 666,
    "line": 660,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantd42a284ebaecc1c7d86a4dfeb38f6b62c042907859336e81f62d72df21e2acbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:265a773d0bf94ff2876c338cd794cbc419a20a98c14ea014eed5d41a7a536b2f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantd42a284ebaecc1c7d86a4dfeb38f6b62c042907859336e81f62d72df21e2acbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8fbaca6-bd07-46d3-a90e-8fc5d9a751fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 660–666.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_stableUnderComposition : (MorphismProperty.injective C).StableUnderComposition :=
  fun X Y Z f g hf hg => by
  delta MorphismProperty.injective
  rw [coe_comp]
  exact hg.comp hf
#align category_theory.morphism_property.injective_stable_under_composition CategoryTheory.MorphismProperty.injective_stableUnderComposition

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantd42a284ebaecc1c7d86a4dfeb38f6b62c042907859336e81f62d72df21e2acbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantd42a284ebaecc1c7d86a4dfeb38f6b62c042907859336e81f62d72df21e2acbe.lean#L660).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31a34d7116ce5a7e60b857bcb68d3af29c717203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

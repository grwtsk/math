# functorEnriched_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "964746b1888763c4112af60a841300762aca73ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 405,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac64faee-3afd-57e7-1c2c-4c7252ac0b84",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c776970a-fbce-b491-896d-f02d3ba132b7",
  "kind": "lemma",
  "lexical_name": "functorEnriched_assoc",
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
  "slug": "functorenriched-assoc--e06dc8f9a3d3d47a475e469b",
  "source": {
    "blob": "964746b1888763c4112af60a841300762aca73ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 405,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e06dc8f9a3d3d47a475e469b5cbae5fb6c3c86a93053dfe4a1510239c38244b6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c776970a-fbce-b491-896d-f02d3ba132b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma functorEnriched_assoc [HasFunctorEnrichedHom V F₁ F₂] [HasFunctorEnrichedHom V F₂ F₃]
    [HasFunctorEnrichedHom V F₃ F₄] [HasFunctorEnrichedHom V F₁ F₃]
    [HasFunctorEnrichedHom V F₂ F₄] [HasFunctorEnrichedHom V F₁ F₄] :
    (α_ _ _ _).inv ≫ functorEnrichedComp V F₁ F₂ F₃ ▷ functorEnrichedHom V F₃ F₄ ≫
      functorEnrichedComp V F₁ F₃ F₄ =
        functorEnrichedHom V F₁ F₂ ◁ functorEnrichedComp V F₂ F₃ F₄ ≫
          functorEnrichedComp V F₁ F₂ F₄ := by
  ext j
  dsimp
  rw [enriched_assoc]

variable (J C) in
/-- If `C` is a `V`-enriched ordinary category, and `C` has suitable limits,
then `J ⥤ C` is also a `J ⥤ V`-enriched ordinary category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `964746b1888763c4112af60a841300762aca73ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Ind.exists_nonempty_arrow_mk_iso_ind_lim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "751f9abc3b40499b88b5eb0d51d8006dc535d9f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd203ecb-1458-c26e-7460-8e2d4e987ec1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51936e8f-0caf-9337-0512-4db572d46b8e",
  "kind": "theorem",
  "lexical_name": "Ind.exists_nonempty_arrow_mk_iso_ind_lim",
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
  "slug": "ind-exists-nonempty-arrow-mk-iso-ind-lim--b3a3be0cbbeb83a03625fa6a",
  "source": {
    "blob": "751f9abc3b40499b88b5eb0d51d8006dc535d9f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 283,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3a3be0cbbeb83a03625fa6ac6df9ba7f364660dc30204e7ac0c2b86c501c2fb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51936e8f-0caf-9337-0512-4db572d46b8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ind.exists_nonempty_arrow_mk_iso_ind_lim {A B : Ind C} {f : A ⟶ B} :
    ∃ (I : Type v) (_ : SmallCategory I) (_ : IsFiltered I) (F G : I ⥤ C) (φ : F ⟶ G),
      Nonempty (Arrow.mk f ≅ Arrow.mk ((Ind.lim _).map φ)) := by
  obtain ⟨P⟩ := nonempty_indParallelPairPresentation A.2 B.2
    (Ind.inclusion _ |>.map f) (Ind.inclusion _ |>.map f)
  refine ⟨P.I, inferInstance, inferInstance, P.F₁, P.F₂, P.φ, ⟨Arrow.isoMk ?_ ?_ ?_⟩⟩
  · exact P.parallelPairIsoParallelPairCompIndYoneda.app WalkingParallelPair.zero
  · exact P.parallelPairIsoParallelPairCompIndYoneda.app WalkingParallelPair.one
  · simpa using
      (P.parallelPairIsoParallelPairCompIndYoneda.hom.naturality WalkingParallelPairHom.left).symm

section Small

variable (C : Type u) [SmallCategory C] [HasFiniteColimits C]

/-- For small finitely cocomplete categories `C : Type u`, the category of Ind-objects `Ind C` is
equivalent to the category of left-exact functors `Cᵒᵖ ⥤ Type u` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `751f9abc3b40499b88b5eb0d51d8006dc535d9f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# tensorμ_comp_μ_tensorHom_μ_comp_μ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c766acf17579a146303021d1881a8c5ff462ae5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 773,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d616f4552e90691924fe41f4126ce5a61869ddc7e0f895067454c0c475d0c1c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64c31b3c-30b9-2c60-97ae-6335416be354",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28678a8f-5f75-d19e-7188-429d03aacf5d",
  "kind": "lemma",
  "lexical_name": "tensorμ_comp_μ_tensorHom_μ_comp_μ",
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
  "slug": "tensor-comp-tensorhom-comp--0999c025eb8d7c0927bda7c2",
  "source": {
    "blob": "c766acf17579a146303021d1881a8c5ff462ae5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 798,
    "line": 773,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd616f4552e90691924fe41f4126ce5a61869ddc7e0f895067454c0c475d0c1c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0999c025eb8d7c0927bda7c255bdfaf3b0e863f7b914607f360da87cb8dda1bc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd616f4552e90691924fe41f4126ce5a61869ddc7e0f895067454c0c475d0c1c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28678a8f-5f75-d19e-7188-429d03aacf5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 773–798.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tensorμ_comp_μ_tensorHom_μ_comp_μ (F : C ⥤ D) [F.LaxBraided] (W X Y Z : C) :
    tensorμ (F.obj W) (F.obj X) (F.obj Y) (F.obj Z) ≫
      (μ F W Y ⊗ₘ μ F X Z) ≫ μ F (W ⊗ Y) (X ⊗ Z) =
      (μ F W X ⊗ₘ μ F Y Z) ≫ μ F (W ⊗ X) (Y ⊗ Z) ≫ F.map (tensorμ W X Y Z) := by
  rw [tensorHom_def]
  simp only [tensorμ, Category.assoc]
  rw [whiskerLeft_μ_comp_μ,
    associator_inv_naturality_left_assoc, ← pentagon_inv_assoc,
    ← comp_whiskerRight_assoc, ← comp_whiskerRight_assoc, Category.assoc, μ_whiskerRight_comp_μ,
    whiskerLeft_hom_inv_assoc, Iso.inv_hom_id_assoc, comp_whiskerRight_assoc,
    comp_whiskerRight_assoc, μ_natural_left_assoc, associator_inv_naturality_middle_assoc,
    ← comp_whiskerRight_assoc, ← comp_whiskerRight_assoc, ← MonoidalCategory.whiskerLeft_comp,
    ← Functor.LaxBraided.braided,
    MonoidalCategory.whiskerLeft_comp_assoc, μ_natural_right, whiskerLeft_μ_comp_μ_assoc,
    comp_whiskerRight_assoc, comp_whiskerRight_assoc, comp_whiskerRight_assoc,
    comp_whiskerRight_assoc, pentagon_inv_assoc, μ_natural_left_assoc, μ_natural_left_assoc,
    Iso.hom_inv_id_assoc, ← associator_inv_naturality_left_assoc, μ_whiskerRight_comp_μ_assoc,
    Iso.inv_hom_id_assoc, ← tensorHom_def_assoc]
  simp only [← Functor.map_comp, whisker_assoc, Category.assoc, pentagon_inv_inv_hom_hom_inv,
    pentagon_inv_hom_hom_hom_inv_assoc]

end Tensor

end MonoidalCategory

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd616f4552e90691924fe41f4126ce5a61869ddc7e0f895067454c0c475d0c1c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd616f4552e90691924fe41f4126ce5a61869ddc7e0f895067454c0c475d0c1c5.lean#L773).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c766acf17579a146303021d1881a8c5ff462ae5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

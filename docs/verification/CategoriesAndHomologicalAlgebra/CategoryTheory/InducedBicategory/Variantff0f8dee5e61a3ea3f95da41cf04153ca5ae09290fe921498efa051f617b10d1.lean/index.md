# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InducedBicategory.Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21c43831875ac30fe5797c771ef7ab9f51b76fbc",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21c43831875ac30fe5797c771ef7ab9f51b76fbc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InducedBicategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean/declarations/inducedbicategory--33e369a39c2450e9edeb238f.md) | 47 | `declaration-track:33e369a39c2450e9edeb238f6a91e189eb3f66eb09f99ad4b1e70ebba10c4b24` |
| 2 | `instance` | [hasCoeToSort](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean/declarations/hascoetosort--1fd5dfb9aaeea4e4bb4cc66c.md) | 54 | `declaration-track:1fd5dfb9aaeea4e4bb4cc66c08013b1ad8403e2bfea36302ce5c9409191b25bb` |
| 3 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean/declarations/hom--f1e83cd6ef7c14539eadbb51.md) | 61 | `declaration-track:f1e83cd6ef7c14539eadbb51dcfb78e6d4e80baa383688cba2d9f9ae4ac5af6c` |
| 4 | `instance` | [categoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean/declarations/categorystruct--4ba1363c4e614075dbbd9260.md) | 67 | `declaration-track:4ba1363c4e614075dbbd92602b52157d8019b5af443f19cb9bca5d2ffb5dd15e` |
| 5 | `abbrev` | [mkHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean/declarations/mkhom--ab0680770525cb9c60db989a.md) | 73 | `declaration-track:ab0680770525cb9c60db989a4b48ca5fd5f44bba6f828ee6bee391be0b96c38b` |
| 6 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean/declarations/hom-ext--e446d3a8f847a4ad8045c95d.md) | 77 | `result-track:e446d3a8f847a4ad8045c95d546f3ddab62ffba0526c1ed703fe56c5ef1f24fb` |
| 7 | `structure` | [Hom₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean/declarations/hom--dd15e299d8c254bd02210888.md) | 85 | `declaration-track:dd15e299d8c254bd0221088817f3e812813d01a26753d7fdfee1db6fdfb9aff2` |
| 8 | `instance` | [Hom.category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean/declarations/hom-category--08182e1f7b04dde405785776.md) | 90 | `declaration-track:08182e1f7b04dde405785776f4f6ff55d483bc0f3f3e8c01599d453d84776102` |
| 9 | `lemma` | [hom₂_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean/declarations/hom-ext--49b5d0f294224e9cfa5ba2a0.md) | 96 | `result-track:49b5d0f294224e9cfa5ba2a0223c83f64727ac5a7d9ed61dbfbabc0af7a158fd` |
| 10 | `abbrev` | [mkHom₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean/declarations/mkhom--fadbb3de4e629e07c30ed2a3.md) | 102 | `declaration-track:fadbb3de4e629e07c30ed2a37c491067c0fce748d7e545d0e5e54643f225a11c` |
| 11 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean/declarations/isomk--c058332460cae0180bf72da3.md) | 107 | `declaration-track:c058332460cae0180bf72da3fb74a1e846897a99cfb86d4be9be4d63ae0c5862` |
| 12 | `instance` | [bicategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean/declarations/bicategory--e0d9619462c5af00223e65e7.md) | 112 | `declaration-track:e0d9619462c5af00223e65e7d22a1be7b6cb14e923d9dadb8335ed7498617d47` |
| 13 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean/declarations/forget--0e3118275cd0009e5cf13c76.md) | 128 | `declaration-track:0e3118275cd0009e5cf13c766e24c570048fee72764f07f1878362e5f60c980d` |
| 14 | `lemma` | [eqToHom_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean/declarations/eqtohom-hom--ef0bc56b5d78d12cb13bd21c.md) | 139 | `result-track:ef0bc56b5d78d12cb13bd21cc9235405d33ed2f0d1087e331227b91871e51710` |
| 15 | `lemma` | [mkHom_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean/declarations/mkhom-eqtohom--70c693346f07249fa93d6f3d.md) | 144 | `result-track:70c693346f07249fa93d6f3dbebe204f591b007b6148eb1b38e4dc7c6e31de9c` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantff0f8dee5e61a3ea3f95da41cf04153ca5ae09290fe921498efa051f617b10d1.lean/declarations/instance--442cc054f8fcb0f98942ca3e.md) | 153 | `declaration-track:442cc054f8fcb0f98942ca3e807fadc980eeacac4e5e3dd0cf10ba1550e6d9d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

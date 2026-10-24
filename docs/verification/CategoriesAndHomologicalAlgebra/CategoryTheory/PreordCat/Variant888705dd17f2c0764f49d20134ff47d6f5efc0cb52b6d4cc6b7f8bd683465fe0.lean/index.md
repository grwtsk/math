# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreordCat.Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4b2053b9e32c529b7b3308dbb9550eb3f0a072b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreordCat/Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreordCat/Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreordCat/Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4b2053b9e32c529b7b3308dbb9550eb3f0a072b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreordCat/Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PreordCat/Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Cat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Preorder` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.BundledHom` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PreordCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreordCat/Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0.lean/declarations/preordcat--1fb34239095b64ce33f8afd0.md) | 33 | `declaration-track:1fb34239095b64ce33f8afd01510748dfc34dcc3869c341495b1d58640ffb1a2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreordCat/Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0.lean/declarations/instance--6b4fc06da72ea9da7fe53190.md) | 40 | `declaration-track:6b4fc06da72ea9da7fe531905643c2fa1cdf552b0a97ce8ca52a535fcae1a50e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreordCat/Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0.lean/declarations/instance--7d4c1061ed39dfe12da17fb5.md) | 49 | `declaration-track:7d4c1061ed39dfe12da17fb5e909e553efb7d39eecc1a258d4ccfb78509adec0` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreordCat/Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0.lean/declarations/instance--19b178353653b7bdde1c15a2.md) | 52 | `declaration-track:19b178353653b7bdde1c15a2dd1cbf272e37870cdc6c663e67ad9f853bf299ac` |
| 5 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreordCat/Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0.lean/declarations/of--9c6acc9ab98cd3b7c1d882d1.md) | 56 | `declaration-track:9c6acc9ab98cd3b7c1d882d145e14832a52c2242720a04ae5d9e02e886d2a749` |
| 6 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreordCat/Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0.lean/declarations/coe-of--c95b88ee45359294dc99c028.md) | 62 | `result-track:c95b88ee45359294dc99c028ed85afc44de63ad96a75b6ac0c084060c97347c6` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreordCat/Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0.lean/declarations/instance--144157531a7c4d4a8df8c07b.md) | 67 | `declaration-track:144157531a7c4d4a8df8c07ba952ca21b0665400f2e46cfb357baf5c9894ed36` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreordCat/Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0.lean/declarations/instance--b3113136b984774ed94610c0.md) | 70 | `declaration-track:b3113136b984774ed94610c0574ea1cfd6dcac368afd2fc1fb3df86cebe14d1e` |
| 9 | `def` | [Iso.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreordCat/Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0.lean/declarations/iso-mk--eb23b64d17b035a5e935a532.md) | 75 | `declaration-track:eb23b64d17b035a5e935a532adf8d9a2eaa19fa14890ab415096136808a2985e` |
| 10 | `def` | [dual](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreordCat/Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0.lean/declarations/dual--d2e0932c4b98a3f0bc5db09f.md) | 89 | `declaration-track:d2e0932c4b98a3f0bc5db09f05510a2e6a779c69289210bf88cc31896961f4d1` |
| 11 | `def` | [dualEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreordCat/Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0.lean/declarations/dualequiv--7ac045446601123482f5301d.md) | 97 | `declaration-track:7ac045446601123482f5301d3585fc4f181a10859cf69af5e90bc4bce6b5c90a` |
| 12 | `def` | [preordCatToCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreordCat/Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0.lean/declarations/preordcattocat--751519dc3fafa61a9af1d7ed.md) | 110 | `declaration-track:751519dc3fafa61a9af1d7eddd1c09d19c7a8a34f895d74cbe2e24a06533c223` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreordCat/Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0.lean/declarations/instance--a2579e34a5d1064fe7aa0433.md) | 116 | `declaration-track:a2579e34a5d1064fe7aa04334ab1f16350ad1a078239514d910e0fd3e5511fe4` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreordCat/Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0.lean/declarations/instance--9dc37fc82c1cbcee981b8471.md) | 119 | `declaration-track:9dc37fc82c1cbcee981b8471bab0a666c1e7574ba4aa8bd0a94e9e90aa829413` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

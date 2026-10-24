# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ULift.Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5e9a5b1c056b3b74513f40416a30c88026cb621",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5e9a5b1c056b3b74513f40416a30c88026cb621`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Equivalence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ULift` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ULift.upFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/ulift-upfunctor--c23755079f5b2090b79ebd85.md) | 49 | `declaration-track:c23755079f5b2090b79ebd85e73c24a28161503e0b78cd6b5ba7c5629e34fe28` |
| 2 | `def` | [ULift.downFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/ulift-downfunctor--dd51d896407031f2963874a4.md) | 55 | `declaration-track:dd51d896407031f2963874a411321ee54e915867cf640257be163952a06d19ac` |
| 3 | `def` | [ULift.equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/ulift-equivalence--2e3d0abc52fade76f1978a60.md) | 61 | `declaration-track:2e3d0abc52fade76f1978a607b480019213515974213249c1b99ba2278f17bae` |
| 4 | `def` | [ULiftHom.](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/ulifthom--0cabb49007244efe59fa7844.md) | 76 | `declaration-track:0cabb49007244efe59fa784453b1c6db3058618c96c38d642a7de2b50cc4a26e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/instance--66bf9d2426da37849720dc36.md) | 80 | `declaration-track:66bf9d2426da37849720dc3650ced254a4be8d7c9a136e4a92b4cb8f57706247` |
| 6 | `def` | [ULiftHom.objDown](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/ulifthom-objdown--4e61bda2a9ab4affe0e65eaf.md) | 84 | `declaration-track:4e61bda2a9ab4affe0e65eaf12679e698f38425b18b660bd298f9659b3924ce9` |
| 7 | `def` | [ULiftHom.objUp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/ulifthom-objup--24fee8714d1c09aee5b926c4.md) | 88 | `declaration-track:24fee8714d1c09aee5b926c47d8ef641e950e7b4485ce27c66a4a9bb15242770` |
| 8 | `theorem` | [objDown_objUp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/objdown-objup--d739d92a048ab9355a1ab6b8.md) | 92 | `result-track:d739d92a048ab9355a1ab6b8c197ea48fdd704a334856e64b9f3e15eec06f522` |
| 9 | `theorem` | [objUp_objDown](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/objup-objdown--c3b39538f1435ddf35fa8569.md) | 96 | `result-track:c3b39538f1435ddf35fa8569b51dfa75cea396f7bcd1f6b97c5c8b757b954d66` |
| 10 | `instance` | [ULiftHom.category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/ulifthom-category--bea0e67608b2e381c03d07c6.md) | 99 | `declaration-track:bea0e67608b2e381c03d07c62a6fffaa5b90341ad6ce33e0a5fa2c51f7a97e07` |
| 11 | `def` | [ULiftHom.up](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/ulifthom-up--753380cda519cf6747508534.md) | 106 | `declaration-track:753380cda519cf67475085341c409ffe6c6062bad681e87227610cdc4122a560` |
| 12 | `def` | [ULiftHom.down](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/ulifthom-down--decf6a770aeaf8071d6060fc.md) | 112 | `declaration-track:decf6a770aeaf8071d6060fc8a358b855b58d52a14d13020a22ebc85376930f9` |
| 13 | `def` | [ULiftHom.equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/ulifthom-equiv--305a18ba3ecf8f71f5845928.md) | 117 | `declaration-track:305a18ba3ecf8f71f5845928d3e697b57551fcf3c86091646c7a3decee187cd9` |
| 14 | `def` | [AsSmall.](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/assmall--648a427cf79b9adbd218a495.md) | 136 | `declaration-track:648a427cf79b9adbd218a495a4ea529dbf4177bbf38cc08349469c1c09d13163` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/instance--4bf47093a45b1617c7598d00.md) | 138 | `declaration-track:4bf47093a45b1617c7598d00391dba22a2ae8743bd67c20381abd93b6c6acfe4` |
| 16 | `def` | [AsSmall.up](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/assmall-up--b2fb25989f2e99ff49a21cfa.md) | 145 | `declaration-track:b2fb25989f2e99ff49a21cfa7f7d265429e07b1a7fc12f3f68b4c76411e11faa` |
| 17 | `def` | [AsSmall.down](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/assmall-down--4e965871e481f12b8e7f2a9d.md) | 151 | `declaration-track:4e965871e481f12b8e7f2a9d27714f5563ecff5609de1c57a3a02bc89025739a` |
| 18 | `theorem` | [down_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/down-comp--6fdb147c06432dc1af08a3f3.md) | 156 | `result-track:6fdb147c06432dc1af08a3f3cc58b943ac0e1a4a3159addddc67584c1c62c5e3` |
| 19 | `theorem` | [eqToHom_down](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/eqtohom-down--1d3c7ce09447d595f0627def.md) | 160 | `result-track:1d3c7ce09447d595f0627def1325fa3b98cd63bf3c8f0bdb637310d927bd08c4` |
| 20 | `def` | [AsSmall.equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/assmall-equiv--8d801d9a5c6344e192e01263.md) | 167 | `declaration-track:8d801d9a5c6344e192e0126320ada05a911e63cb4ef1d43a435a2e547d16e0a6` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/instance--88a968f113e551d1b446564c.md) | 173 | `declaration-track:88a968f113e551d1b446564c4a28bfd67df5c5c869e38e92deef4075f684d967` |
| 22 | `def` | [ULiftHomULiftCategory.equiv.](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/declarations/ulifthomuliftcategory-equiv--dd4ff741614689106f6c3494.md) | 177 | `declaration-track:dd4ff741614689106f6c3494ccd5a7f5f5757308a3c233ec75b9e96ef4a9028f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

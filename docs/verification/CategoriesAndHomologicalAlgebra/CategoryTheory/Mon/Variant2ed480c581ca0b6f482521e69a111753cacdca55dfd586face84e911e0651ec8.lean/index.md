# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Mon.Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba776c5803c63ab7854ac0fd02e62a8d00c3f0f0",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba776c5803c63ab7854ac0fd02e62a8d00c3f0f0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Discrete` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.CoherenceLemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.PUnitInstances` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Mon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/mon--b2988e270a857f2543de874b.md) | 43 | `declaration-track:b2988e270a857f2543de874b2e644eab268ea0f9d6a585ad4fe5fa3658cbc809` |
| 2 | `def` | [trivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/trivial--e3e586cae2bd44b1274c637f.md) | 66 | `declaration-track:e3e586cae2bd44b1274c637f3b3e3d660d5d02ce8f550986f2902ddaf083fd6e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/instance--2dd3d6c8710d370ee06a5b76.md) | 74 | `declaration-track:2dd3d6c8710d370ee06a5b762e532cb2f8acf99a79bdf59e5552a42b5aaa29b8` |
| 4 | `theorem` | [one_mul_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/one-mul-hom--c99c7310a023246d619dd7f3.md) | 81 | `result-track:c99c7310a023246d619dd7f3bc054f146a33ed0eda810c07445fedaef1e48fde` |
| 5 | `theorem` | [mul_one_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/mul-one-hom--cf148b216bf2c1aa532d1d08.md) | 86 | `result-track:cf148b216bf2c1aa532d1d08de5781f86c1c32bf9bca55ace934ecb3857e1656` |
| 6 | `theorem` | [assoc_flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/assoc-flip--41da8e7c2f5337ade71c7b41.md) | 90 | `result-track:41da8e7c2f5337ade71c7b419bc37e811e419ed7d1f66fe9e7f203bbb56e0728` |
| 7 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/hom--8ae525cbd4a1f4d01aecc8d9.md) | 96 | `declaration-track:8ae525cbd4a1f4d01aecc8d95faddaf20dfc3476bd2058ffcd90b74850cbb695` |
| 8 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/id--f5447de074c3d81c0548e23d.md) | 106 | `declaration-track:f5447de074c3d81c0548e23d0b68926d72dd1e8e78c822d52180404e9c80685b` |
| 9 | `instance` | [homInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/hominhabited--23b3e349afa410f9d80c887b.md) | 110 | `declaration-track:23b3e349afa410f9d80c887b20c5ff2d65cb50501bf3cbba7debb93d7b92adec` |
| 10 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/comp--420ec8aa767fa4c617e2fb0d.md) | 116 | `declaration-track:420ec8aa767fa4c617e2fb0d2247c591a3361b7db5e9bc0fdffcbd7b117e6912` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/instance--911c1b49468c28c43f8772e9.md) | 120 | `declaration-track:911c1b49468c28c43f8772e914b808dea60c41c9d61691355cb9b47136a4ac3d` |
| 12 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/ext--ab1ffa925dc6df78941086a9.md) | 127 | `result-track:ab1ffa925dc6df78941086a9a054127b2bd53ea2a73dbbabdebc38a2ee35026a` |
| 13 | `theorem` | [id_hom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/id-hom--e750c2efa0f8c21cac847809.md) | 131 | `result-track:e750c2efa0f8c21cac8478095c39b8068de6835df75ef9fa882a54733966de30` |
| 14 | `theorem` | [comp_hom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/comp-hom--cc24af7bea7d07050e31c3d1.md) | 136 | `result-track:cc24af7bea7d07050e31c3d1d9aa638e6ed3dae489c13392a680b125ac47536c` |
| 15 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/forget--ca7f1ac1fa32fe5e061018d3.md) | 147 | `declaration-track:ca7f1ac1fa32fe5e061018d3c63d44c49e9efe54d8c37f50460c3dcc12a34bca` |
| 16 | `instance` | [forget_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/forget-faithful--cd7204f6c05cf840d3968a95.md) | 154 | `declaration-track:cd7204f6c05cf840d3968a95496688a6cdc8bf1a61705103526bac1e16eec55b` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/instance--2b545f45b4643fe54e2c9f73.md) | 157 | `declaration-track:2b545f45b4643fe54e2c9f7338fc8120dc79eaf0f1c281269cd6127a27c39594` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/instance--9bf13f55fb8a767c0fe200df.md) | 161 | `declaration-track:9bf13f55fb8a767c0fe200df26396b552d48e3cb9232b5b9c7915a774d045385` |
| 19 | `def` | [isoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/isoofiso--105f0235d012ccc12db81903.md) | 172 | `declaration-track:105f0235d012ccc12db81903b331206cba8e24926fb1582de9dcb5f42495c7dd` |
| 20 | `instance` | [uniqueHomFromTrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/uniquehomfromtrivial--50ea7f7857754d121084d969.md) | 187 | `declaration-track:50ea7f7857754d121084d969dc27c1349693f1da4d9d8d576029f490a36ef2e1` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/instance--6888aa553ebeac5b30a74662.md) | 200 | `declaration-track:6888aa553ebeac5b30a746629e541832e334073de30db53068b0635c7ba4e3eb` |
| 22 | `def` | [mapMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/mapmon--282c32ddf5fcc0a241c5da6b.md) | 215 | `declaration-track:282c32ddf5fcc0a241c5da6b190aed9025300b5698a5cf8663dd9a116d6f5bd0` |
| 23 | `def` | [mapMonFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/mapmonfunctor--58097c02f85635d604f6d15b.md) | 258 | `declaration-track:58097c02f85635d604f6d15b66e56ad2b1082e1cbde1efb088c643e1093f131f` |
| 24 | `def` | [laxMonoidalToMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/laxmonoidaltomon--4bae30f46382901c57d56dad.md) | 273 | `declaration-track:4bae30f46382901c57d56dad4c1a80255d9f087e84160940d7189e0215517985` |
| 25 | `def` | [monToLaxMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/montolaxmonoidal--ca39edb3fa71d5e44b1437df.md) | 280 | `declaration-track:ca39edb3fa71d5e44b1437df138cc1a1a4381fd42a615ce2d6cd72ce84369c81` |
| 26 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/unitiso--419b977111586c7d20d48503.md) | 302 | `declaration-track:419b977111586c7d20d4850320c6b42d1cb011c1b98ca166e6e4987839a60713` |
| 27 | `def` | [counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/counitiso--e9aa0a5f7f79aced4cb6b7a5.md) | 313 | `declaration-track:e9aa0a5f7f79aced4cb6b7a5c79a0b87a1965984d6b25df558710005ea6706ee` |
| 28 | `def` | [equivLaxMonoidalFunctorPUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/equivlaxmonoidalfunctorpunit--7ceabf2cbb79a270fba12225.md) | 331 | `declaration-track:7ceabf2cbb79a270fba12225a98e4001e659f6391653444b41c8b2fa86e72837` |
| 29 | `theorem` | [one_associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/one-associator--0ffb91b9aebacf2a19a2623b.md) | 388 | `result-track:0ffb91b9aebacf2a19a2623b26e2faf0be5725307d0fb318d865f0f5ae5eadf6` |
| 30 | `theorem` | [one_leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/one-leftunitor--2914622b70d1dd1e4fc867d4.md) | 401 | `result-track:2914622b70d1dd1e4fc867d4dc280e1234b36257f31e23a3bf20b5d8a97f43b8` |
| 31 | `theorem` | [one_rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/one-rightunitor--59fe9d949827286a05da0540.md) | 407 | `result-track:59fe9d949827286a05da054020e1575a850d8fe0b5d57c5a82643ac77de4242c` |
| 32 | `theorem` | [Mon_tensor_one_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/mon-tensor-one-mul--a47489270c812fcbb532eb09.md) | 415 | `result-track:a47489270c812fcbb532eb09aecc6a35d91caf35f03b2e7b0816c197f194902b` |
| 33 | `theorem` | [Mon_tensor_mul_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/mon-tensor-mul-one--589d658dff005dc8386694a3.md) | 426 | `result-track:589d658dff005dc8386694a3acdb811ee6428e746fd93c8b5d25de2c1f5d32b8` |
| 34 | `theorem` | [Mon_tensor_mul_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/mon-tensor-mul-assoc--cd3f110a24255d2c4d5d2930.md) | 437 | `result-track:cd3f110a24255d2c4d5d2930c4472c81116469272148da285bc086ab81a9fa33` |
| 35 | `theorem` | [mul_associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/mul-associator--6d7d48a9319f0a58e7b9fa5c.md) | 453 | `result-track:6d7d48a9319f0a58e7b9fa5c2d1b552ac21e8c8fb22f67d9c32df899cab41ca7` |
| 36 | `theorem` | [mul_leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/mul-leftunitor--f6ebe9e7ef1b013d6c8a8b99.md) | 468 | `result-track:f6ebe9e7ef1b013d6c8a8b9944d283852d235133d890087468ec983ae7fa8b95` |
| 37 | `theorem` | [mul_rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/mul-rightunitor--e60b8f3860277891f3cee1ef.md) | 477 | `result-track:e60b8f3860277891f3cee1ef8a784e56e155ff06c4d772459373c11815b018a4` |
| 38 | `instance` | [monMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/declarations/monmonoidal--e81d3266d395755b50962f62.md) | 486 | `declaration-track:e81d3266d395755b50962f62d531d4214fd9f9c4edf83388a84ba069ecb90710` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

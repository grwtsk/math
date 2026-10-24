# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SingleObj.Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24312d1b4f8b4cae86dd4d708228ff364f608549",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24312d1b4f8b4cae86dd4d708228ff364f608549`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Endomorphism` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Cat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.MonCat.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.SingleObj` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SingleObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/singleobj--81be258532a7ee4f10f6e1d9.md) | 55 | `declaration-track:81be258532a7ee4f10f6e1d97053c07de4753e6209fc56272882dcfa80d04d11` |
| 2 | `instance` | [categoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/categorystruct--afcbec59a1c0013c78fe2c04.md) | 64 | `declaration-track:afcbec59a1c0013c78fe2c0403d04fbf44696fbda4dbfacd103e7ffdcd0c6377` |
| 3 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/category--3c889be507dd821137b09a83.md) | 72 | `declaration-track:3c889be507dd821137b09a836d466777e29ac8bff671c46cf32b988dad792b45` |
| 4 | `theorem` | [id_as_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/id-as-one--607c005548c98b8be62e25fb.md) | 79 | `result-track:607c005548c98b8be62e25fb6095926e96d217ecbf024faa3ead2c6285798562` |
| 5 | `theorem` | [comp_as_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/comp-as-mul--fdea5112a057fc88d52ec36d.md) | 83 | `result-track:fdea5112a057fc88d52ec36de872177801a69fe268591217ca32742ef0161acc` |
| 6 | `instance` | [groupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/groupoid--73439e6b88bc766c2e0179a8.md) | 91 | `declaration-track:73439e6b88bc766c2e0179a829e1dda96a585108ad16a02b1b75a8ab6a8bbcb3` |
| 7 | `theorem` | [inv_as_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/inv-as-inv--9509e0dcea1eb535980f03ad.md) | 98 | `result-track:9509e0dcea1eb535980f03ad6355eb31c3862317c604fa532d9bd20e810619f3` |
| 8 | `abbrev` | [star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/star--738c81f8f240eb3b4f253914.md) | 106 | `declaration-track:738c81f8f240eb3b4f253914b1f5a0121307dbf0093d5a4072725481e9d6ffca` |
| 9 | `def` | [toEnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/toend--7d07bbe67fe00fbcb6780c16.md) | 112 | `declaration-track:7d07bbe67fe00fbcb6780c16b0586f7d40557599d45eefeb907576131ae1fb53` |
| 10 | `theorem` | [toEnd_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/toend-def--322ccc41e39987c0f2e45285.md) | 116 | `result-track:322ccc41e39987c0f2e45285ae35155f8498216621e1249ae43ead751b576506` |
| 11 | `def` | [mapHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/maphom--7950a02bd13d9c9d494d3253.md) | 127 | `declaration-track:7950a02bd13d9c9d494d32534ecfb57ffabb360b878d68b44621f0424cacd04c` |
| 12 | `theorem` | [mapHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/maphom-id--13e64507dbd9eb13f853bf58.md) | 142 | `result-track:13e64507dbd9eb13f853bf58dd9bef25074c6f1b4216e0f6c870d3e83f6785f6` |
| 13 | `theorem` | [mapHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/maphom-comp--1a661d501bc6499a570ade60.md) | 146 | `result-track:1a661d501bc6499a570ade60bfe6ee19564e2e8b6b90ab5782240c08bb670d52` |
| 14 | `def` | [differenceFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/differencefunctor--43d4db4380701f7c66120727.md) | 154 | `declaration-track:43d4db4380701f7c66120727f524d6a2626a41b9636d951e1e0a7d6de7e5cef9` |
| 15 | `def` | [toFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/tofunctor--63b4bcb156c31684f70f9c34.md) | 178 | `declaration-track:63b4bcb156c31684f70f9c3459b0628a6d46b03fe051f4b6ff0680ce46129919` |
| 16 | `theorem` | [id_toFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/id-tofunctor--fc26c92346523abbbfc1a878.md) | 184 | `result-track:fc26c92346523abbbfc1a87898e28d20c84f53d4aa814c2ca2a145e0af0a0b82` |
| 17 | `theorem` | [comp_toFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/comp-tofunctor--76df304d84ca68a0f66207dd.md) | 189 | `result-track:76df304d84ca68a0f66207dd5bf5163d5a0579cd1e106facfb133a733b9b35b3` |
| 18 | `def` | [toAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/toaut--9d5756b69986cb67dd04219a.md) | 204 | `declaration-track:9d5756b69986cb67dd04219a9bd02bdf91aa187e4cea1643ee4c00658c0b7ea9` |
| 19 | `theorem` | [toAut_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/toaut-hom--eb32a21f4e56d9f19d56a992.md) | 211 | `result-track:eb32a21f4e56d9f19d56a992dcd3aba13407c732306e1ab770d7188435a001b8` |
| 20 | `theorem` | [toAut_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/toaut-inv--278ea61ab5d085b64dbe1de6.md) | 217 | `result-track:278ea61ab5d085b64dbe1de62f114ffcc54e6e680d912a2a7ff795bb441b8c40` |
| 21 | `def` | [toCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/tocat--4d7d2155eba800d0b1c31494.md) | 229 | `declaration-track:4d7d2155eba800d0b1c314940a59caa473235425aa0e5e3e83fa32e1d1583994` |
| 22 | `instance` | [toCatFull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/tocatfull--97840e35305725bbd58da030.md) | 235 | `declaration-track:97840e35305725bbd58da0304333d3ca0beeda9831263ae5a6cffb2d3d8a2ab9` |
| 23 | `instance` | [toCat_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variantf3d9db9421591afe723e7613883c591ad40a27603363b50f5a695bf2bd32a9bf.lean/declarations/tocat-faithful--7aff38a73ad21e304a90cea6.md) | 241 | `declaration-track:7aff38a73ad21e304a90cea6e16728d6fa76dc3256f4ca4dd5d27c421c9a6529` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coverage.Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ce411ebb7c5c8db7e3d0a31265ff87518a0fca6",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ce411ebb7c5c8db7e3d0a31265ff87518a0fca6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.SheafOfTypes` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FactorsThruAlong](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/factorsthrualong--636879abb6627e123c5c3f18.md) | 65 | `declaration-track:636879abb6627e123c5c3f1838081efaa86e9ba54939704c12b165521c4fc99e` |
| 2 | `def` | [FactorsThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/factorsthru--88bae6da2e35385e03db7c44.md) | 77 | `declaration-track:88bae6da2e35385e03db7c446a72791c1d8726a5b40d293e8657aee54f0b79ce` |
| 3 | `lemma` | [factorsThruAlong_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/factorsthrualong-id--b36d865063ac1645a48eb4b1.md) | 82 | `result-track:b36d865063ac1645a48eb4b1b33b4532965b56615f0b0eb4c821be11fbab0bf8` |
| 4 | `lemma` | [factorsThru_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/factorsthru-of-le--d9cc05eceb921279286b1b5f.md) | 86 | `result-track:d9cc05eceb921279286b1b5fd5ec57f29db199d0f96fdefd8773a823fbdefdec` |
| 5 | `lemma` | [le_of_factorsThru_sieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/le-of-factorsthru-sieve--f6fb4f7085c45b7ea9bc74fa.md) | 90 | `result-track:f6fb4f7085c45b7ea9bc74faa4fc8bdba5e0b5ff1d67dea405f06c5077e903a8` |
| 6 | `lemma` | [factorsThru_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/factorsthru-top--d5ccce14035daf8012c27b7f.md) | 96 | `result-track:d5ccce14035daf8012c27b7f80f8ae9559286b326ae5eca324462fb9a3a99db9` |
| 7 | `lemma` | [isSheafFor_of_factorsThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/issheaffor-of-factorsthru--993c6c9a02e5f5f9c231c635.md) | 99 | `result-track:993c6c9a02e5f5f9c231c635a5c8a1447c27b3d80bf06b1521f613d784065ece` |
| 8 | `structure` | [Coverage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/coverage--0521ea8137400f9154480003.md) | 145 | `declaration-track:0521ea8137400f91544800031a7f3333447abcb12e3f0e9344de52bc9117a97d` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/instance--fe5f11585fb4fe0d449a8916.md) | 155 | `declaration-track:fe5f11585fb4fe0d449a89169e3ba6fd45b9ab911eb30c6d9af5fb13634f068a` |
| 10 | `def` | [ofGrothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/ofgrothendieck--b725b9d8291e1681fed890a7.md) | 165 | `declaration-track:b725b9d8291e1681fed890a771b83925e8540e5651cf56585f7ae85a2bc81919` |
| 11 | `lemma` | [ofGrothendieck_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/ofgrothendieck-iff--4e7357a5f488a24c879d39f7.md) | 174 | `result-track:4e7357a5f488a24c879d39f707109fb2cd62a570a816ead79a0b6b145333a1b1` |
| 12 | `inductive` | [saturate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/saturate--a5f0f2306a3c24d7e32a258d.md) | 181 | `declaration-track:a5f0f2306a3c24d7e32a258d9f2d60798f1806ad65a7024c99ba83f8829b5287` |
| 13 | `lemma` | [eq_top_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/eq-top-pullback--cc4e4201618fafd5665a5fce.md) | 189 | `result-track:cc4e4201618fafd5665a5fcec80a9afff26f518b22d519bc9c88e9c4506a4e43` |
| 14 | `lemma` | [saturate_of_superset](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/saturate-of-superset--272670f59cce8807c8faf1bd.md) | 197 | `result-track:272670f59cce8807c8faf1bd9b3bd79a7267a75185e6db1693675a080f9293b3` |
| 15 | `def` | [toGrothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/togrothendieck--f93f593614297a2ccd251a19.md) | 218 | `declaration-track:f93f593614297a2ccd251a19c389314d329f7bdcb9b9b5f698b120dfc66721bb` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/instance--d6a95bba683533b926d6c921.md) | 241 | `declaration-track:d6a95bba683533b926d6c921e24995a4c96b6a9d1e255fb7236758b2e7406bad` |
| 17 | `def` | [gi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/gi--25556be5dd19c9e8954ede1e.md) | 253 | `declaration-track:25556be5dd19c9e8954ede1e87996434b71b67b9531f6f098aae724e5e44425f` |
| 18 | `theorem` | [toGrothendieck_eq_sInf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/togrothendieck-eq-sinf--c1e79199510b8f8a5689d591.md) | 275 | `result-track:c1e79199510b8f8a5689d59181d1730d5f98e6f8577db1217648974101d5c6db` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/instance--f6a7740b5ded009e70c4e1f3.md) | 288 | `declaration-track:f6a7740b5ded009e70c4e1f3964aa0936b4c872d7fa9fcc0bf5fe017df8a33f7` |
| 20 | `lemma` | [sup_covering](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/sup-covering--12cb3cdc87dab15d0c1404d1.md) | 303 | `result-track:12cb3cdc87dab15d0c1404d1faeb191d8c053e677f70cf96d61222778fb752f0` |
| 21 | `theorem` | [isSheaf_coverage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant1ab91cbad1fccdcbec8e1460db511789880d3753a036a6ff1ba81842616453cc.lean/declarations/issheaf-coverage--d86baf14307733ffd032a10c.md) | 318 | `result-track:d86baf14307733ffd032a10c5546cf5e4badabbd62af85002a81e123b3f60345` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

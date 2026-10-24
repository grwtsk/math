# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27a66451ff0ece3e5a7f4b1692e4f2e1a17f37e4",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27a66451ff0ece3e5a7f4b1692e4f2e1a17f37e4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Const` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Opposites` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/prod--c6ef4bc27d257b3847f5d090.md) | 48 | `declaration-track:c6ef4bc27d257b3847f5d090b2a340831a2c26aeb0c0eb7d798abbf93e7c464a` |
| 2 | `lemma` | [prod.hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/prod-hom-ext--792bf50f7d54789d5b4777ff.md) | 54 | `result-track:792bf50f7d54789d5b4777ff05b00549d8693f625fdd0012b7514e1bbdeab089` |
| 3 | `theorem` | [prod_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/prod-id--e50a2e7283c106d5f9ff43ee.md) | 60 | `result-track:e50a2e7283c106d5f9ff43ee64bad8e2279cdae416b3fab40a5c546d7e47783e` |
| 4 | `theorem` | [prod_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/prod-comp--934525f570107e972528490c.md) | 64 | `result-track:934525f570107e972528490c192e4a30f515d6d2e289e3992797b69015bce527` |
| 5 | `theorem` | [isIso_prod_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/isiso-prod-iff--841592e49e1e4c52129f76d1.md) | 68 | `result-track:841592e49e1e4c52129f76d1876dc8d37d7511e4f03b09a1f0fd0b757abc1d3f` |
| 6 | `def` | [prod.etaIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/prod-etaiso--efe6f8f04647cfd6c3b796af.md) | 87 | `declaration-track:efe6f8f04647cfd6c3b796afc3d7e6906f63daa267004e64d00c86c218a46679` |
| 7 | `def` | [Iso.prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/iso-prod--3ac995f05e10b29c88e400b1.md) | 93 | `declaration-track:3ac995f05e10b29c88e400b11fa2bc6c2b0ef774e58ea8013d05a70074239b88` |
| 8 | `instance` | [uniformProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/uniformprod--f8020e34eaf5872ad77f4bc4.md) | 108 | `declaration-track:f8020e34eaf5872ad77f4bc4915d0817a84f606eaa673059902af9aa5adb4d16` |
| 9 | `def` | [sectL](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/sectl--77092f27188790282dc68021.md) | 119 | `declaration-track:77092f27188790282dc6802153e9dad23d2b528ec0a7953e2419e84568d72a4e` |
| 10 | `def` | [sectR](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/sectr--9cc332e3c5690dd93d966731.md) | 125 | `declaration-track:9cc332e3c5690dd93d966731152a08ce992a8cd04150d47bc26349106a913dc3` |
| 11 | `def` | [fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/fst--d8d0e29187268f2dd239cd1d.md) | 140 | `declaration-track:d8d0e29187268f2dd239cd1d8a991e33374736902f369ee4b7e5c4029b7ab490` |
| 12 | `def` | [snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/snd--60c60b439c7ecb6700c545ef.md) | 146 | `declaration-track:60c60b439c7ecb6700c545ef702bfff17f537b2bb1dfaa756af68f41ef17665a` |
| 13 | `def` | [swap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/swap--09bcabec01888947c2026c3c.md) | 152 | `declaration-track:09bcabec01888947c2026c3c03a9884b46fbad5b805bc62ee0c5251b0f4383be` |
| 14 | `def` | [symmetry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/symmetry--a29f7ee014c2242e4976cfb8.md) | 160 | `declaration-track:a29f7ee014c2242e4976cfb8d4e91fe4ec5ec78176ad81a03a8ed0ef3ba92c2a` |
| 15 | `def` | [braiding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/braiding--80883976d45a99c9d289ad73.md) | 167 | `declaration-track:80883976d45a99c9d289ad73da22998f7973a169c5762269e809c49d9ecd84ed` |
| 16 | `instance` | [swapIsEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/swapisequivalence--cfabc4fac1dd2404da00eef8.md) | 173 | `declaration-track:cfabc4fac1dd2404da00eef83abcebca573afd1f9de6163a5c1107437166e60d` |
| 17 | `lemma` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/fac--7b2c7b4e427ce46a9eb1032b.md) | 181 | `result-track:7b2c7b4e427ce46a9eb1032b94b9ca37893ef4f5129c10f1590e40b5166f543d` |
| 18 | `lemma` | [fac'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/fac--cb091ae18f9393837b091bbc.md) | 187 | `result-track:cb091ae18f9393837b091bbccadf5b10ec9440ed9d635fd32fd60fa125632c9e` |
| 19 | `def` | [evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/evaluation--8d33783a579eb082f333209e.md) | 201 | `declaration-track:8d33783a579eb082f333209e25b73121ee916e4a7dbff0153c6ead652d3419d4` |
| 20 | `def` | [evaluationUncurried](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/evaluationuncurried--f674f0807f9fb7c3ee9d17a3.md) | 212 | `declaration-track:f674f0807f9fb7c3ee9d17a37d2517847c8830771d7d3356c70918a135538f23` |
| 21 | `def` | [Functor.constCompEvaluationObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/functor-constcompevaluationobj--ffd77623b96462a33a3a209f.md) | 220 | `declaration-track:ffd77623b96462a33a3a209f200e7159c94128e0ee6c8e71314ead6655145441` |
| 22 | `def` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/prod--4db8ea9b38b86d86f645df0b.md) | 232 | `declaration-track:4db8ea9b38b86d86f645df0bcf12ddca05b89c15d6eb2559513f8a7e968de716` |
| 23 | `def` | [prod'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/prod--51dac4eb3fc6f120a92e303e.md) | 240 | `declaration-track:51dac4eb3fc6f120a92e303e6eb9524d7044526c07a90af64cec57aed6f29a1e` |
| 24 | `def` | [prod'CompFst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/prod-compfst--7ed2092a8eb4487e54e6fd55.md) | 246 | `declaration-track:7ed2092a8eb4487e54e6fd55c6dc25304704b41036e395fd90f7b97c949aafe0` |
| 25 | `def` | [prod'CompSnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/prod-compsnd--10944960177ce2b84d0ae088.md) | 251 | `declaration-track:10944960177ce2b84d0ae088597e48228e663bcea56632ad0437f2ff32d7216d` |
| 26 | `def` | [diag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/diag--f816233b5c906b8bd6120991.md) | 260 | `declaration-track:f816233b5c906b8bd61209917c12aa5a3332dd9d29bcaff15054ede6ba7cc25c` |
| 27 | `def` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/prod--1f100d4c877a78b5b64e575d.md) | 271 | `declaration-track:1f100d4c877a78b5b64e575df94c5848c174739fd020d84fc9777480ed963a61` |
| 28 | `def` | [prod'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/prod--a74c90fcdd4f07a3f34a6aca.md) | 280 | `declaration-track:a74c90fcdd4f07a3f34a6aca86e21e3a00c0cdb1cc0b74b1c3f58190528e98e6` |
| 29 | `def` | [prodFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/prodfunctor--ea102328dde9cb72502e8f8b.md) | 287 | `declaration-track:ea102328dde9cb72502e8f8bb731da13954203be9f07eecfe0324d165afc67bf` |
| 30 | `def` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/prod--d46e7fc20b0cb0b84074a275.md) | 295 | `declaration-track:d46e7fc20b0cb0b84074a2754cd24f5b3d9eb80f3c1c39e4616aec749d3a9a96` |
| 31 | `def` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/prod--d7054aa47684e2599b30dc93.md) | 306 | `declaration-track:d7054aa47684e2599b30dc930a4db200cbd248254a1a351151ca9814c812f00a` |
| 32 | `def` | [flipCompEvaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/flipcompevaluation--d5941a565567d67a22709b67.md) | 316 | `declaration-track:d5941a565567d67a22709b67614a65bc6e55c69f2717c37a7a46bf522db9aaa0` |
| 33 | `theorem` | [flip_comp_evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/flip-comp-evaluation--df69625051e056a68e7434a3.md) | 319 | `result-track:df69625051e056a68e7434a33841bb72ddf363a3fc0dbe0e8f646dca4b36e841` |
| 34 | `def` | [compEvaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/compevaluation--6353b2c8af2f7a10bcaa7f02.md) | 324 | `declaration-track:6353b2c8af2f7a10bcaa7f025c3a5e3548cedcf5718a6c71d9e3d438e4cc4cc4` |
| 35 | `theorem` | [comp_evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/comp-evaluation--18970cd15ae493f7dce5c712.md) | 327 | `result-track:18970cd15ae493f7dce5c71263514e6169fc75669f9d0c4ea54bd4e92445d5fa` |
| 36 | `def` | [whiskeringLeftCompEvaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/whiskeringleftcompevaluation--0c33f3d38552ce157823c4d7.md) | 332 | `declaration-track:0c33f3d38552ce157823c4d7917628817093a58c43d6c69af533f7215de55bd7` |
| 37 | `theorem` | [whiskeringLeft_comp_evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/whiskeringleft-comp-evaluation--706e565360cce247a1f7dc7a.md) | 338 | `result-track:706e565360cce247a1f7dc7a5da616fc94eb85415f443d86c7a166a1982933d3` |
| 38 | `def` | [whiskeringRightCompEvaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/whiskeringrightcompevaluation--a72c0b128c19ac4d6a668a52.md) | 345 | `declaration-track:a72c0b128c19ac4d6a668a52b38370bbec08d0196723ff017b27ed5f085f2eb4` |
| 39 | `theorem` | [whiskeringRight_comp_evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/whiskeringright-comp-evaluation--b9dcdf992dc24c77a60ccd56.md) | 352 | `result-track:b9dcdf992dc24c77a60ccd56823f38c93e858f40fbf7b83186747e6e2711aa55` |
| 40 | `def` | [prodFunctorToFunctorProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/prodfunctortofunctorprod--b47ab622c563761f1c596544.md) | 360 | `declaration-track:b47ab622c563761f1c596544f813d25168fe2bfc66ebb94e70ceed973e421d2e` |
| 41 | `def` | [functorProdToProdFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/functorprodtoprodfunctor--734c7d499986f727cb81817b.md) | 366 | `declaration-track:734c7d499986f727cb81817b82356b1740fd7de5fe4857c91aadd19ab1d46d73` |
| 42 | `def` | [functorProdFunctorEquivUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/functorprodfunctorequivunitiso--68652a5b40452fce5b676754.md) | 372 | `declaration-track:68652a5b40452fce5b67675467e483f9ce141cab24328ab39b0a7c5adba7467e` |
| 43 | `def` | [functorProdFunctorEquivCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/functorprodfunctorequivcounitiso--5bfaf696b09ab1132fba3b56.md) | 380 | `declaration-track:5bfaf696b09ab1132fba3b56f39db3f368ea4c79e571e6f8e72ae5f650f03e8e` |
| 44 | `def` | [functorProdFunctorEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/functorprodfunctorequiv--86909624c5a032f93ed03579.md) | 386 | `declaration-track:86909624c5a032f93ed0357959d15637bb173eb3e5022024b4ed0dbbd3cc5126` |
| 45 | `def` | [prodOpEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/declarations/prodopequiv--ab23df25a9fac4e6fc29d05c.md) | 398 | `declaration-track:ab23df25a9fac4e6fc29d05c4bed32fe891bddcc9cc2bf781f8889dc4d7b4395` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

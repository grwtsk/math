# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Shift.Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6afd1d622e6ba1d1ff78071012195146c7c2c363",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6afd1d622e6ba1d1ff78071012195146c7c2c363`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomotopyCategory` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.NegOnePow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Quotient` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shiftFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/shiftfunctor--4985fbe1707107ff485c1e18.md) | 42 | `declaration-track:4985fbe1707107ff485c1e18b99b50dc85b1b1dbe7eabb7998786c32e81d5aa6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/instance--e8077298abd62519072be9dd.md) | 64 | `declaration-track:e8077298abd62519072be9ddfcde1a1f9b88ac92f1c09ce993d75837439f9900` |
| 3 | `def` | [shiftFunctorObjXIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/shiftfunctorobjxiso--9e19940fba414a4a324ef2ec.md) | 70 | `declaration-track:9e19940fba414a4a324ef2ec7e503effcec6e7568169d460b3d1e335ab935a96` |
| 4 | `def` | [shiftFunctorZero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/shiftfunctorzero--1457df5537e3e3944a8c3140.md) | 82 | `declaration-track:1457df5537e3e3944a8c31404a397fa942a27486c636da95eafde64899c571a6` |
| 5 | `def` | [shiftFunctorAdd'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/shiftfunctoradd--3f39ae5d53c3cc1a99286be4.md) | 91 | `declaration-track:3f39ae5d53c3cc1a99286be41a9306601a05095cdae822b623c92d35d1a56e1e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/instance--41a8552d308f8fe90be65273.md) | 104 | `declaration-track:41a8552d308f8fe90be652734c70e3453e30a94456b9c5bd741680ce19b82cd9` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/instance--0ceaf06767508223cef4f0b0.md) | 109 | `declaration-track:0ceaf06767508223cef4f0b00b17049df8047b54132abc11870cf0c92df38290` |
| 8 | `lemma` | [shiftFunctor_obj_X'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/shiftfunctor-obj-x--9bbe092b51f1c512e4535efc.md) | 116 | `result-track:9bbe092b51f1c512e4535efcb48764053d1412d4911e78f5e816d04467608783` |
| 9 | `lemma` | [shiftFunctor_map_f'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/shiftfunctor-map-f--b92de8d61307351614870626.md) | 120 | `result-track:b92de8d61307351614870626206a633551580872a2a728bfcabbb9546f3abf10` |
| 10 | `lemma` | [shiftFunctor_obj_d'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/shiftfunctor-obj-d--f115648e92b88f1359211177.md) | 124 | `result-track:f115648e92b88f13592111778cb3fb8e982a4cfa286f4c2cad142c74c92c04d4` |
| 11 | `lemma` | [shiftFunctorAdd_inv_app_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/shiftfunctoradd-inv-app-f--e8e0d12eb574586e2eaa1fed.md) | 128 | `result-track:e8e0d12eb574586e2eaa1fed3df029cdc85bf2c6433608b66db18c1fb1c623c4` |
| 12 | `lemma` | [shiftFunctorAdd_hom_app_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/shiftfunctoradd-hom-app-f--3af1a27da2bf85e8b7125b08.md) | 132 | `result-track:3af1a27da2bf85e8b7125b08767301074c819f1d1ca35028ab59e8b55787bc70` |
| 13 | `lemma` | [shiftFunctorAdd'_inv_app_f'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/shiftfunctoradd-inv-app-f--27d5308c0445945b896fd432.md) | 142 | `result-track:27d5308c0445945b896fd432dae13f274d20673a1e8ebd3416d466c3ad96ea31` |
| 14 | `lemma` | [shiftFunctorAdd'_hom_app_f'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/shiftfunctoradd-hom-app-f--a78e9d1b1a36c4f8bf025926.md) | 148 | `result-track:a78e9d1b1a36c4f8bf025926cf3956de1b9dd4263bb831b75d8d886cbfa279ef` |
| 15 | `lemma` | [shiftFunctorZero_inv_app_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/shiftfunctorzero-inv-app-f--8da7cf12f0cf8eae3e1dff62.md) | 154 | `result-track:8da7cf12f0cf8eae3e1dff62c4a604804922479d5bc9ae452d147477f2fac3b6` |
| 16 | `lemma` | [shiftFunctorZero_hom_app_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/shiftfunctorzero-hom-app-f--408966524dad697626226961.md) | 158 | `result-track:408966524dad697626226961277e1fb18e78fed3ef60d95c03b587f6cd25cff5` |
| 17 | `lemma` | [XIsoOfEq_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/xisoofeq-shift--9f1df73796a7d618ad966e56.md) | 168 | `result-track:9f1df73796a7d618ad966e5673508b7842c710aa07c6dd670fd77f92949290bf` |
| 18 | `lemma` | [shiftFunctorAdd'_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/shiftfunctoradd-eq--082bb8212d0f98b37101f2e9.md) | 173 | `result-track:082bb8212d0f98b37101f2e9ba00e993e6fc67a61d54ec515cc3ba4d1073e551` |
| 19 | `lemma` | [shiftFunctorAdd_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/shiftfunctoradd-eq--778c39b2b1bf6e26fdae16b3.md) | 179 | `result-track:778c39b2b1bf6e26fdae16b31769ef0f8ff92baf65323ba17357a29d0e694f80` |
| 20 | `lemma` | [shiftFunctorZero_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/shiftfunctorzero-eq--e7bf76a808cc8698bbd55fb0.md) | 183 | `result-track:e7bf76a808cc8698bbd55fb0e9f8e2053f1c589a0ba7b41745745ddaed54ae26` |
| 21 | `lemma` | [shiftFunctorComm_hom_app_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/shiftfunctorcomm-hom-app-f--c0afc2aca8b97fbceee3fd44.md) | 190 | `result-track:c0afc2aca8b97fbceee3fd440b4465c7c22d15a4e235f0087015b1523ac9abd5` |
| 22 | `def` | [shiftEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/shifteval--2ef7b9ca80e869d4caa7808b.md) | 206 | `declaration-track:2ef7b9ca80e869d4caa7808b1da341dc15eba191452d09f839d734a8329b95cf` |
| 23 | `def` | [mapCochainComplexShiftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/mapcochaincomplexshiftiso--01cdf42e93c87576afeaaea8.md) | 229 | `declaration-track:01cdf42e93c87576afeaaea80b5a327ea7b49d0de1b51c59bc3e08891b10131c` |
| 24 | `instance` | [commShiftMapCochainComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/commshiftmapcochaincomplex--e1bfda9a3205a3e3d1f4e518.md) | 235 | `declaration-track:e1bfda9a3205a3e3d1f4e518ec479be7d9a9811de751e7b8c974ecf723e6c5b9` |
| 25 | `lemma` | [mapHomologicalComplex_commShiftIso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/maphomologicalcomplex-commshiftiso-eq--185a2a0641aad3bdee0fa9a9.md) | 254 | `result-track:185a2a0641aad3bdee0fa9a930f45db9dcd3d931c29243dd4fc97be9135a1dc1` |
| 26 | `lemma` | [mapHomologicalComplex_commShiftIso_hom_app_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/maphomologicalcomplex-commshiftiso-hom-app-f--481be52417014e543161c553.md) | 259 | `result-track:481be52417014e543161c553dc814fcf32cc9368da066a518a35b0f70a8b76a4` |
| 27 | `lemma` | [mapHomologicalComplex_commShiftIso_inv_app_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/maphomologicalcomplex-commshiftiso-inv-app-f--1ee77aea927c1c2a3eea234b.md) | 263 | `result-track:1ee77aea927c1c2a3eea234b218d31a1763406fdde139c314b54d0c828cd1f0c` |
| 28 | `def` | [shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/shift--9f13dedaf7c1a492d7f979ff.md) | 276 | `declaration-track:9f13dedaf7c1a492d7f979ff5d9d65b699c7b6fd3ee60cf4f7f3ad61f10a7b99` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/instance--6c478b1b22f0bcbbf91ed573.md) | 299 | `declaration-track:6c478b1b22f0bcbbf91ed57367750acae90860c393d9cee53a31a31db3d477ef` |
| 30 | `instance` | [hasShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/hasshift--7fe9760840e029198ff98cfe.md) | 302 | `declaration-track:7fe9760840e029198ff98cfe2fbe94fdcc1667272372a294e7acd11d85572dd1` |
| 31 | `instance` | [commShiftQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/commshiftquotient--a2b49fe4fa3d86f99c5b85c0.md) | 307 | `declaration-track:a2b49fe4fa3d86f99c5b85c0698d3ed99f1f938035e69e379322bbb6ee961f26` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/instance--9eb32d7ab00e41d091de4114.md) | 311 | `declaration-track:9eb32d7ab00e41d091de411442c15bdfc049063f46aed1fcacc6d63a9bed4d88` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/instance--b0020712218e9efdb8cd907f.md) | 321 | `declaration-track:b0020712218e9efdb8cd907f8c95cefb54beef749699e2a464a3be093c8cfaaa` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/declarations/instance--f449ce5fc908e06fede63740.md) | 324 | `declaration-track:f449ce5fc908e06fede63740d46542eb2313649b39212dfc969a4eec97cfde8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4663ef77704964dd6e473100f8e3491f83533321",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4663ef77704964dd6e473100f8e3491f83533321`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.Adjunction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Opposite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkShiftCoreOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/mkshiftcoreop--484a0f66bf69f26f250d90f3.md) | 69 | `declaration-track:484a0f66bf69f26f250d90f33c78e8281c8e48a97a1c6e9771b200fadfb3ba0e` |
| 2 | `def` | [OppositeShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/oppositeshift--48a8cbd63139349f97dc5328.md) | 86 | `declaration-track:48a8cbd63139349f97dc532871ae6a33e296f52eadf7c91f84d26423408ff310` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/instance--e39da4ebee6a10d5cda4c7df.md) | 88 | `declaration-track:e39da4ebee6a10d5cda4c7df303cfd8f5615bde3a049fa06f6411a5049851d6f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/instance--8d3eeab3c7e305b014b1bc6c.md) | 92 | `declaration-track:8d3eeab3c7e305b014b1bc6c6413c0f65346a8633dc2b024a5bc53ff230bb7e2` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/instance--cfa9a36215da5279a0b469a5.md) | 95 | `declaration-track:cfa9a36215da5279a0b469a5271d2ec3287f5c850efbcf267526c5b4e40186b4` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/instance--e6b96ee2ed6c335093b9d313.md) | 99 | `declaration-track:e6b96ee2ed6c335093b9d31376e8640d8b8b129ffedf534dad9d0fdeba48fdea` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/instance--7fc8cf544e6de3d520d58e0a.md) | 103 | `declaration-track:7fc8cf544e6de3d520d58e0a926b32b2487900c155eae2cde31df2ce6387741e` |
| 8 | `lemma` | [oppositeShiftFunctorZero_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/oppositeshiftfunctorzero-inv-app--8cb1da0f6451c798f7f3fa3d.md) | 108 | `result-track:8cb1da0f6451c798f7f3fa3da2ebde7db8aa987521c3b9b095f6aa17d741f5aa` |
| 9 | `lemma` | [oppositeShiftFunctorZero_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/oppositeshiftfunctorzero-hom-app--43ce3eef8bfdd8fafd397620.md) | 112 | `result-track:43ce3eef8bfdd8fafd397620505aa46b5ed9af22f9e8d108842be9551800f1c7` |
| 10 | `lemma` | [oppositeShiftFunctorAdd_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/oppositeshiftfunctoradd-inv-app--35cf25340a4ea220eb52f75a.md) | 123 | `result-track:35cf25340a4ea220eb52f75a0a78076f1fc2999ea98788be6abfe7f0fe00746f` |
| 11 | `lemma` | [oppositeShiftFunctorAdd_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/oppositeshiftfunctoradd-hom-app--ed50c96b3ddc1388bc140d51.md) | 127 | `result-track:ed50c96b3ddc1388bc140d51cc89da54426318c1f37123fcbb9dbb3dffa463d9` |
| 12 | `lemma` | [oppositeShiftFunctorAdd'_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/oppositeshiftfunctoradd-inv-app--1c7e463c77728a5b3661e2e0.md) | 135 | `result-track:1c7e463c77728a5b3661e2e0fdaba24417c3c069c54e614540b13126488d733d` |
| 13 | `lemma` | [oppositeShiftFunctorAdd'_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/oppositeshiftfunctoradd-hom-app--ef3dcc1af18e5ac2fb59b73c.md) | 141 | `result-track:ef3dcc1af18e5ac2fb59b73c17d3d4674e0526250fb60f40da6e9dbe65d0a2c6` |
| 14 | `def` | [OppositeShift.functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/oppositeshift-functor--aa064c0820107499b77203b6.md) | 158 | `declaration-track:aa064c0820107499b77203b62fc8fe82a56986f0ff745c6434f40c3422974116` |
| 15 | `def` | [OppositeShift.natTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/oppositeshift-nattrans--98af02e0750f33db15940a9d.md) | 165 | `declaration-track:98af02e0750f33db15940a9d0d9c719f7a94dc38e24738df27afade24245a1fc` |
| 16 | `instance` | [commShiftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/commshiftop--e50c17b3db562fc05ad02587.md) | 175 | `declaration-track:e50c17b3db562fc05ad02587f463ea05330676aecc686beba53963224c9ab50f` |
| 17 | `lemma` | [commShiftOp_iso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/commshiftop-iso-eq--065b85ee293c7f219aba5a3c.md) | 193 | `result-track:065b85ee293c7f219aba5a3c762dcaf22188fadd564ce6778b87c0abf52ae9cd` |
| 18 | `def` | [commShiftUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/commshiftunop--a6d1677cffe8833f1888c3eb.md) | 201 | `declaration-track:a6d1677cffe8833f1888c3ebfd988b80939f0465704782ce6a989326d4cbd2b0` |
| 19 | `instance` | [commShift_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/commshift-op--78951624466983ff4ff5f182.md) | 227 | `declaration-track:78951624466983ff4ff5f182d52f710ba3af2ecf4f5f3d48dbbab1a5b7aaa558` |
| 20 | `def` | [OppositeShift.natIsoId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/oppositeshift-natisoid--c48ac70b681e423fd209d475.md) | 246 | `declaration-track:c48ac70b681e423fd209d4752ffa3251401a5de1e8168815919b4c2f06c57ddc` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/instance--660a71c962c0be301993f96d.md) | 251 | `declaration-track:660a71c962c0be301993f96d47a795923c07539253d2a0d435f43830e9998f53` |
| 22 | `def` | [OppositeShift.natIsoComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/oppositeshift-natisocomp--9232c98cac21c8fc9129fe86.md) | 264 | `declaration-track:9232c98cac21c8fc9129fe86dde11b68e1b3e79c6886bff5baa60bd9d58e8831` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/instance--2d5b33d95c5fd3aa207f162c.md) | 267 | `declaration-track:2d5b33d95c5fd3aa207f162caf33ce69d10d037c8f54e1ab93b4362bf229bf8c` |
| 24 | `def` | [OppositeShift.adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/oppositeshift-adjunction--ae66f81e624540ab680f9f6a.md) | 282 | `declaration-track:ae66f81e624540ab680f9f6ae027cb3fc1aec3facaa92ebf75e594d4df50e8d9` |
| 25 | `instance` | [commShift_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/declarations/commshift-op--176ca76a44a4ce473ce10504.md) | 310 | `declaration-track:176ca76a44a4ce473ce105042bf4ba9d36fd8a0138b3bfcdd80e9be65dfdc9e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

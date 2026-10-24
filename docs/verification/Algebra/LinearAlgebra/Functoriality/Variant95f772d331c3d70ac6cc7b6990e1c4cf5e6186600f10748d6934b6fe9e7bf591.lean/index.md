# Verification target: GRWTSK.Algebra.LinearAlgebra.Functoriality.Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cd81f33807254ee6729e94daa32cb3a68807c87",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cd81f33807254ee6729e94daa32cb3a68807c87`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean.json)

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
| 1 | `def` | [reduceModIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/reducemodideal--0811f586205c87ffcc7ea3e5.md) | 43 | `declaration-track:0811f586205c87ffcc7ea3e5dd48ce64044b8da04440e1cae3b6ac593ec8b731` |
| 2 | `theorem` | [reduceModIdeal_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/reducemodideal-apply--9c51c1204e9fd1bbb2730b2a.md) | 59 | `result-track:9c51c1204e9fd1bbb2730b2a54f671c1ef0bbd22a532199bb981161d057551c6` |
| 3 | `theorem` | [transitionMap_comp_reduceModIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/transitionmap-comp-reducemodideal--d1582eef1e2ecf2f5856423f.md) | 70 | `result-track:d1582eef1e2ecf2f5856423fe4ee6d5e3a40578983029cfbe4263583d6d706e7` |
| 4 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/map--d010e416be11ec2e73f940c2.md) | 81 | `declaration-track:d010e416be11ec2e73f940c2ffdd46a4c49ad2aab484118684d6e1f5dff44d2f` |
| 5 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/map-id--da8bbf1375294d4406741ec3.md) | 93 | `result-track:da8bbf1375294d4406741ec317da2636a5ef0e67acf6ea2df81a0c747d4415f7` |
| 6 | `theorem` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/map-comp--193f0c1812f13820eae23546.md) | 96 | `result-track:193f0c1812f13820eae235468c94a75c70813839365f3cecdbb62a7c390761a6` |
| 7 | `theorem` | [map_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/map-comp-apply--15c823465959c80eee05eb62.md) | 100 | `result-track:15c823465959c80eee05eb62e0da534a741e822c515c0aa2caeefdc631d29317` |
| 8 | `theorem` | [map_zero](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/map-zero--36cf6cc958391c8b7d04dc3a.md) | 105 | `result-track:36cf6cc958391c8b7d04dc3a8bb1ec149c2164312777b5c632daf1d208810511` |
| 9 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/map--e4c2f4b2a25fed5ea781f35d.md) | 111 | `declaration-track:e4c2f4b2a25fed5ea781f35de306e099409dac7a88d3b4e246acd618938f1c0e` |
| 10 | `theorem` | [map_val_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/map-val-apply--d06c28d51066787ec1d76dbb.md) | 129 | `result-track:d06c28d51066787ec1d76dbb3ae403fc11142643c6b70b53e9fa7cb7bcb848e7` |
| 11 | `theorem` | [map_ext](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/map-ext--00028fea83818fcd4ed64536.md) | 134 | `result-track:00028fea83818fcd4ed64536d4a8aad11acddbdcf8f302ff0783666c6b1135ec` |
| 12 | `theorem` | [map_ext'](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/map-ext--1bc2de691f94c955d3c584f3.md) | 143 | `result-track:1bc2de691f94c955d3c584f3193d3a4e173996d4cee05d432dacfe7cef610d0c` |
| 13 | `theorem` | [map_ext''](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/map-ext--582a4fb0886ac805a3c8a504.md) | 152 | `result-track:582a4fb0886ac805a3c8a5040ae977fe52b8a64fd698669c3c3e9c3edaaf28b1` |
| 14 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/map-id--ee7396fb8f24d6a700438685.md) | 160 | `result-track:ee7396fb8f24d6a7004386856d7d1db654e1571ec3a92ecca49f6196a03857ed` |
| 15 | `theorem` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/map-comp--4343dd89c2d5254d8e39aeae.md) | 166 | `result-track:4343dd89c2d5254d8e39aeae5dbe8280f1b1baad505e2185aac7e18ee0e9468b` |
| 16 | `theorem` | [map_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/map-comp-apply--223ee53997bb191bb0de99f6.md) | 171 | `result-track:223ee53997bb191bb0de99f6eaeea4ffc5a7d641ce5a46ad3a83dca9b095c781` |
| 17 | `theorem` | [map_mk](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/map-mk--28a2668d73a377715101cbe4.md) | 177 | `result-track:28a2668d73a377715101cbe4bd734b06f4b80c7a473e1eb15a993ccd1db16e09` |
| 18 | `theorem` | [map_zero](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/map-zero--39c92b639642926c33a08958.md) | 183 | `result-track:39c92b639642926c33a08958768c021e12e3f9e05bfdc50b6ea56c5aa35847c6` |
| 19 | `theorem` | [map_of](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/map-of--18ca30c52e4ee687cb298f60.md) | 187 | `result-track:18ca30c52e4ee687cb298f6081dc34c6bd60b54fd0986db0fd881dbe2ea15f98` |
| 20 | `def` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/congr--9928cc32a27339ebdacb7526.md) | 191 | `declaration-track:9928cc32a27339ebdacb7526289d7982fccba0dd08759af3cb740b75d407c4ed` |
| 21 | `theorem` | [congr_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/congr-apply--e712373efcea57a62088c59e.md) | 197 | `result-track:e712373efcea57a62088c59ed0d0ceded65368fcfb75f3f24930651b4e8ab44a` |
| 22 | `theorem` | [congr_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/congr-symm-apply--3db93ba7703539b593966b27.md) | 202 | `result-track:3db93ba7703539b593966b27c1e133ffd2f9ea986c970d2ddafde0cf5d92fb48` |
| 23 | `def` | [pi](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/pi--b36796825bfffd2445384e66.md) | 230 | `declaration-track:b36796825bfffd2445384e664e7f31b70088cb43187e122c1e15b3c9c4cac7a7` |
| 24 | `def` | [sum](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/sum--ab07a75207331c04d4db6402.md) | 241 | `declaration-track:ab07a75207331c04d4db6402b946622d9f7ea258d1ca80def3f87d64a78a7e25` |
| 25 | `theorem` | [sum_lof](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/sum-lof--81ec3eddf1d8fbb3e494bb73.md) | 247 | `result-track:81ec3eddf1d8fbb3e494bb7331b3bf6dcc2b2908eccb04b6cf3708945707a321` |
| 26 | `theorem` | [sum_of](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/sum-of--ae9773307803c2250060bf76.md) | 253 | `result-track:ae9773307803c2250060bf763162f64b59d1d4529e2983bf028f86b858ed9ed3` |
| 27 | `def` | [sumInv](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/suminv--306067ef372390c0ef8539fd.md) | 263 | `declaration-track:306067ef372390c0ef8539fd7996d2d83d82d54ed1609b1a05bcd613f788f727` |
| 28 | `theorem` | [component_sumInv](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/component-suminv--71fb1f56ab5d95aca0689715.md) | 269 | `result-track:71fb1f56ab5d95aca0689715d3981b8ad766dca7c25d0cfaa733deabbb3eb302` |
| 29 | `theorem` | [sumInv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/suminv-apply--3f949ceeaebc6ea1f46541d9.md) | 276 | `result-track:3f949ceeaebc6ea1f46541d9db3efdc12fe07d0e088e8f9b3e1d7bf2fdd7658e` |
| 30 | `theorem` | [sumInv_comp_sum](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/suminv-comp-sum--b713dd66b0c975d6c768c9f9.md) | 283 | `result-track:b713dd66b0c975d6c768c9f9e9cbd13b68417206139acd9a1fc26108bce010e2` |
| 31 | `theorem` | [sum_comp_sumInv](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/sum-comp-suminv--138e9dfa2d93bad5885ae84a.md) | 294 | `result-track:138e9dfa2d93bad5885ae84a68e1e7cbe8ffd2a4f1c568f2103dffa857a304b5` |
| 32 | `def` | [sumEquivOfFintype](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/sumequivoffintype--576394f8abaf76d223fcc1d6.md) | 305 | `declaration-track:576394f8abaf76d223fcc1d63190c7142131d185a251117520e24154c5aeaf2f` |
| 33 | `theorem` | [sumEquivOfFintype_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/sumequivoffintype-apply--bf910ccf1eb1f60afe36f46f.md) | 310 | `result-track:bf910ccf1eb1f60afe36f46fadcd21dfde384e49c661abf53bf7232ec2089e93` |
| 34 | `theorem` | [sumEquivOfFintype_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/sumequivoffintype-symm-apply--a9499499d8c2057dbd891072.md) | 315 | `result-track:a9499499d8c2057dbd891072365c2c182c34ac098907ce06f1fb4eab43df65a9` |
| 35 | `def` | [piEquivOfFintype](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/piequivoffintype--39c7d3c1e7a87055b1aba0fa.md) | 328 | `declaration-track:39c7d3c1e7a87055b1aba0fabaf9d98bf011fdc372eb8efa2b94303ad2dff3d9` |
| 36 | `theorem` | [piEquivOfFintype_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/piequivoffintype-apply--eedb38bf41d8ee935d09094d.md) | 335 | `result-track:eedb38bf41d8ee935d09094dabcd73c6dec24ca509659c8ccc3bdea689328404` |
| 37 | `def` | [piEquivFin](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/piequivfin--64a6cd8cedddb6a04ad3bd87.md) | 340 | `declaration-track:64a6cd8cedddb6a04ad3bd8765d5cdb5e715031f3a0722c08d4333394119c1b5` |
| 38 | `theorem` | [piEquivFin_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/piequivfin-apply--63958642e0c45804cff5cff1.md) | 362 | `result-track:63958642e0c45804cff5cff12c97f0c92579d1ec69d477eac659733a39438dcd` |
| 39 | `theorem` | [exists_smodEq_pow_add_one_smul](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/exists-smodeq-pow-add-one-smul--e912d75a1d16642c0ff3a7ec.md) | 374 | `result-track:e912d75a1d16642c0ff3a7ec58dd9f92fafe3eb87c05b4b57de19c537b104fba` |
| 40 | `theorem` | [exists_smodEq_pow_smul_top_and_smodEq_pow_add_one_smul_top](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/exists-smodeq-pow-smul-top-and-smodeq-pow-add-one-smul-top--37ea0201ab248dc7a9cc1811.md) | 392 | `result-track:37ea0201ab248dc7a9cc18110d3959e361750d18e16a2fa7fd471856ae3c7106` |
| 41 | `theorem` | [exists_smodEq_pow_smul_top_and_mkQ_eq](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/exists-smodeq-pow-smul-top-and-mkq-eq--86898d21b7947749151df146.md) | 404 | `result-track:86898d21b7947749151df146d2771f0782f28de724ca37c1c1f9b043597ff846` |
| 42 | `theorem` | [map_surjective_of_mkQ_comp_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/map-surjective-of-mkq-comp-surjective--49954c9a0d59d7e87a30f0b2.md) | 419 | `result-track:49954c9a0d59d7e87a30f0b296718e7af4c49f4bd3e128568efd9f1babca673d` |
| 43 | `theorem` | [surjective_of_mkQ_comp_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/surjective-of-mkq-comp-surjective--001fc97a524656756c1836d0.md) | 448 | `result-track:001fc97a524656756c1836d046931488e7667fca16b45902de8cb70520413629` |
| 44 | `theorem` | [surjective_of_mk_map_comp_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/declarations/surjective-of-mk-map-comp-surjective--db0a766bafa8267fc9c20df8.md) | 458 | `result-track:db0a766bafa8267fc9c20df82082b647ce2afe25aa1c8f7ffa5273022826611c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

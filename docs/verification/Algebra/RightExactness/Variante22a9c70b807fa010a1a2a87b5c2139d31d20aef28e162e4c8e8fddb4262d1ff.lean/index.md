# Verification target: GRWTSK.Algebra.RightExactness.Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a678aa0124f33b23291ce973b8be80224b14791b",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/index.md) · [Full source](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a678aa0124f33b23291ce973b8be80224b14791b`.

Source path: `GRWTSK/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [le_comap_range_lTensor](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/le-comap-range-ltensor--df92c32bb355f3bd3d7214ad.md) | 98 | `result-track:df92c32bb355f3bd3d7214adb96730f8db0b103e631372efb1b2921c93d4b76d` |
| 2 | `lemma` | [le_comap_range_rTensor](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/le-comap-range-rtensor--5771c90db3dc7e64b5f39e2c.md) | 103 | `result-track:5771c90db3dc7e64b5f39e2cc30f73cf5564266106b2f1afd446e8180467c2ba` |
| 3 | `theorem` | [LinearMap.lTensor_surjective](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/linearmap-ltensor-surjective--190208468aa7f0b4287a0091.md) | 112 | `result-track:190208468aa7f0b4287a0091eaa53e1e4119ef5de3f8b60909a17ef65a1a1121` |
| 4 | `theorem` | [LinearMap.lTensor_range](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/linearmap-ltensor-range--4e5abd5a72b3e9b4a651498d.md) | 125 | `result-track:4e5abd5a72b3e9b4a651498df84caa4b7bb4eb2b396ab2c2597da832e68b0242` |
| 5 | `theorem` | [LinearMap.rTensor_surjective](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/linearmap-rtensor-surjective--4e8e00542839f3224e17d2e6.md) | 137 | `result-track:4e8e00542839f3224e17d2e659b8335734d3a2eec33d2c6e0489916a37793cb6` |
| 6 | `theorem` | [LinearMap.rTensor_range](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/linearmap-rtensor-range--7dfb5dda15b184d8504a1cdc.md) | 150 | `result-track:7dfb5dda15b184d8504a1cdc704dd602f46b01cb87cdfc8aa25cdb79f4c80d81` |
| 7 | `lemma` | [LinearMap.rTensor_exact_iff_lTensor_exact](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/linearmap-rtensor-exact-iff-ltensor-exact--c03eaf3dd29a413943da5cf9.md) | 161 | `result-track:c03eaf3dd29a413943da5cf910229b659b3d24dcea72a58585a1fd21620e7ec8` |
| 8 | `theorem` | [TensorProduct.map_surjective](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/tensorproduct-map-surjective--bd7bebb1301e0788099362f4.md) | 173 | `result-track:bd7bebb1301e0788099362f4b9d395a56bf4d96df27cea6e09a3596e341aedac` |
| 9 | `def` | [lTensor.toFun](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/ltensor-tofun--9271d502781e6a61d9f307ed.md) | 190 | `declaration-track:9271d502781e6a61d9f307eda38b0754ec8b0a7a992ce368b9b1b527f2fe5ee3` |
| 10 | `def` | [lTensor.inverse_of_rightInverse](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/ltensor-inverse-of-rightinverse--63c8109f792477be781d7e22.md) | 197 | `declaration-track:63c8109f792477be781d7e223991bbff29756b24cd1eaa7ab1e3e4b72d050d02` |
| 11 | `lemma` | [lTensor.inverse_of_rightInverse_apply](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/ltensor-inverse-of-rightinverse-apply--0ba24b2d94d5b473e171331f.md) | 215 | `result-track:0ba24b2d94d5b473e171331ff077c0ad2a4289d22b3dcd44e53b7fed259dafee` |
| 12 | `lemma` | [lTensor.inverse_of_rightInverse_comp_lTensor](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/ltensor-inverse-of-rightinverse-comp-ltensor--11bdc4ffeb540d9954bfbd6c.md) | 231 | `result-track:11bdc4ffeb540d9954bfbd6cd997c474d80638359e82d8b011409756d1af9af2` |
| 13 | `def` | [lTensor.inverse](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/ltensor-inverse--f0c7a340034ff13a2bb4a494.md) | 242 | `declaration-track:f0c7a340034ff13a2bb4a494dca5f32ffe33ef55a9674470ee577251d9c15043` |
| 14 | `lemma` | [lTensor.inverse_apply](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/ltensor-inverse-apply--50c89688986201e33501502f.md) | 246 | `result-track:50c89688986201e33501502fd1ea8f1ce4dfb5417ef05b016a9582f4829b975b` |
| 15 | `lemma` | [lTensor.inverse_comp_lTensor](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/ltensor-inverse-comp-ltensor--208d33225e28aec077da77dd.md) | 251 | `result-track:208d33225e28aec077da77dd1000c179616ca5e2260652059d7651d2728a673b` |
| 16 | `def` | [lTensor.linearEquiv_of_rightInverse](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/ltensor-linearequiv-of-rightinverse--bb33a010521f751ce28f69ba.md) | 260 | `declaration-track:bb33a010521f751ce28f69ba605e473bb28c0e0f3338a48a89bc6173698f3cf4` |
| 17 | `def` | [lTensor.equiv](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/ltensor-equiv--f38eb89665d57c94246628a5.md) | 276 | `declaration-track:f38eb89665d57c94246628a5d37e805dc761f50044a940c5bfdff0ebf568d91f` |
| 18 | `theorem` | [lTensor_exact](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/ltensor-exact--ada4c6e89139b678da9d1853.md) | 282 | `result-track:ada4c6e89139b678da9d1853c3737c26666699e260570410f783488eab859743` |
| 19 | `lemma` | [lTensor_mkQ](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/ltensor-mkq--347041c6f8a0f54432070e7e.md) | 291 | `result-track:347041c6f8a0f54432070e7eb46830e3f6613dd524694064917ae506dca3e13e` |
| 20 | `def` | [rTensor.toFun](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/rtensor-tofun--28408a2bf6d3a90972f09617.md) | 297 | `declaration-track:28408a2bf6d3a90972f096176b0158b6bdbf65efb08530fac35854b8759b6898` |
| 21 | `def` | [rTensor.inverse_of_rightInverse](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/rtensor-inverse-of-rightinverse--39b1231e68bcf43c04bb7317.md) | 304 | `declaration-track:39b1231e68bcf43c04bb73174609e08c38ae92393deba2589e49773081904e44` |
| 22 | `lemma` | [rTensor.inverse_of_rightInverse_apply](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/rtensor-inverse-of-rightinverse-apply--c09365f8c6d9f4589be9c992.md) | 322 | `result-track:c09365f8c6d9f4589be9c99290eb7b03fe446fbae209528fb317202cf2586404` |
| 23 | `lemma` | [rTensor.inverse_of_rightInverse_comp_rTensor](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/rtensor-inverse-of-rightinverse-comp-rtensor--be0ccbb6f96bac063633b18c.md) | 338 | `result-track:be0ccbb6f96bac063633b18c283b45e17b07b9a989a96cb7c974edabae27df95` |
| 24 | `def` | [rTensor.inverse](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/rtensor-inverse--cce1fd5431a1d5e2f8630abf.md) | 349 | `declaration-track:cce1fd5431a1d5e2f8630abf559dbb86cb612970e4c82f260f5830a4e72d97e7` |
| 25 | `lemma` | [rTensor.inverse_apply](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/rtensor-inverse-apply--693c1a46d15f93a2ac1d8a65.md) | 353 | `result-track:693c1a46d15f93a2ac1d8a6532ec09a8fe8320b79094bb357fefdc31fb218495` |
| 26 | `lemma` | [rTensor.inverse_comp_rTensor](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/rtensor-inverse-comp-rtensor--01a56ae82a77882131aa157d.md) | 358 | `result-track:01a56ae82a77882131aa157d3b216a5542a3b4e38b25dc35ce4e10b5edff0687` |
| 27 | `def` | [rTensor.linearEquiv_of_rightInverse](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/rtensor-linearequiv-of-rightinverse--0718cfd9d7c1247e11f12d4b.md) | 367 | `declaration-track:0718cfd9d7c1247e11f12d4b64394257a22743c882daf14ad69a706b382aafd0` |
| 28 | `def` | [rTensor.equiv](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/rtensor-equiv--3f4aba630d5204b4ffada63e.md) | 383 | `declaration-track:3f4aba630d5204b4ffada63e5950f80bc7f368207092ec70a481454e32a76d65` |
| 29 | `theorem` | [rTensor_exact](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/rtensor-exact--9c86b34a9e1f9ae7dad8ef0a.md) | 389 | `result-track:9c86b34a9e1f9ae7dad8ef0a4dd0dbe501e171759bc60ed0b909080c837c1f0c` |
| 30 | `lemma` | [rTensor_mkQ](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/rtensor-mkq--2ea248135d0f2dddc0744d9b.md) | 394 | `result-track:2ea248135d0f2dddc0744d9b645730b904568c7e850714bc7e1040022c3b8d18` |
| 31 | `lemma` | [LinearMap.ker_tensorProductMk](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/linearmap-ker-tensorproductmk--bfe6fdfe00cc8d835c27e077.md) | 400 | `result-track:bfe6fdfe00cc8d835c27e07734c3ca801bfa341da6355d022e5dfa66d2bc9b3d` |
| 32 | `theorem` | [TensorProduct.map_ker](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/tensorproduct-map-ker--72279c1b8ec09b202d714572.md) | 417 | `result-track:72279c1b8ec09b202d714572581c5dded6c5886e1de4353d3c88bdcf9954de05` |
| 33 | `lemma` | [Ideal.map_includeLeft_eq](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/ideal-map-includeleft-eq--687170b3d18eba099a77250f.md) | 444 | `result-track:687170b3d18eba099a77250fd6479a03b32ba074c9f5bf6b7da950b90ff0630a` |
| 34 | `lemma` | [Ideal.map_includeRight_eq](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/ideal-map-includeright-eq--9a55bd83725bf5799bbc7374.md) | 509 | `result-track:9a55bd83725bf5799bbc737412498e95d648eb75edcac49f7737384da88ac985` |
| 35 | `lemma` | [Algebra.TensorProduct.lTensor_ker](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/algebra-tensorproduct-ltensor-ker--d3b0bbf86a9c78a3d2227fd3.md) | 582 | `result-track:d3b0bbf86a9c78a3d2227fd39acf1f745f286e4a60a5171c7ebe34009e6cd71e` |
| 36 | `lemma` | [Algebra.TensorProduct.rTensor_ker](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/algebra-tensorproduct-rtensor-ker--beac0ce25311a3de1531383f.md) | 593 | `result-track:beac0ce25311a3de1531383f784d8ba75915b8e7e1bee2e82d56c53ae3b3b7eb` |
| 37 | `theorem` | [Algebra.TensorProduct.map_ker](../../../../mathematics/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/declarations/algebra-tensorproduct-map-ker--9358810d1d742538626c3b19.md) | 605 | `result-track:9358810d1d742538626c3b191da9117063b436dd63ab722936cfd7ae6c2e784f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

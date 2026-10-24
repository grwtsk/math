# Verification target: GRWTSK.Algebra.CommutativeAlgebra.WeightedHomogeneous.Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7058f553d4e5cbb412c381a098548b98c9524fb",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7058f553d4e5cbb412c381a098548b98c9524fb`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GradedMonoid` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Variables` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedDegree'](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weighteddegree--e9768d543cb0daecaa044d52.md) | 65 | `declaration-track:e9768d543cb0daecaa044d52c4bea1554dc2eac7d3ffc07098bee1bfcd55270f` |
| 2 | `def` | [weightedTotalDegree'](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weightedtotaldegree--fe91d399432bf12b7b658938.md) | 74 | `declaration-track:fe91d399432bf12b7b658938f6332bf8778f766b82ef9d2e5a9a18068b73d4af` |
| 3 | `theorem` | [weightedTotalDegree'_eq_bot_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weightedtotaldegree-eq-bot-iff--1c7f1d89a0a42682cc4ec9b9.md) | 79 | `result-track:1c7f1d89a0a42682cc4ec9b99284935ad9c2e14e3889b4edc5b6a6f7f32bb418` |
| 4 | `theorem` | [weightedTotalDegree'_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weightedtotaldegree-zero--7d143ff7daf9829d34d7d127.md) | 87 | `result-track:7d143ff7daf9829d34d7d127ae0c4008186ac5a96a6b736e09ae4705b6d76b2d` |
| 5 | `def` | [weightedTotalDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weightedtotaldegree--5abf71f041e360555736812c.md) | 97 | `declaration-track:5abf71f041e360555736812c633d71e4a3e261cdefd0d8a8c242e3427b00898c` |
| 6 | `theorem` | [weightedTotalDegree_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weightedtotaldegree-coe--17a1a55c9d979a404f0e256b.md) | 102 | `result-track:17a1a55c9d979a404f0e256b1e26408707a2577c6607a7c3ca9c2b86349e334b` |
| 7 | `theorem` | [weightedTotalDegree_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weightedtotaldegree-zero--063ed62c4a4a5378d4793eda.md) | 117 | `result-track:063ed62c4a4a5378d4793eda703e53b4e6f6bd2991420e52b13280552ab53d4c` |
| 8 | `theorem` | [le_weightedTotalDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/le-weightedtotaldegree--6acbe03058c7918671e3331e.md) | 121 | `result-track:6acbe03058c7918671e3331eb88500d36c9c97aac91bcdc901deaf9b00132a3f` |
| 9 | `def` | [IsWeightedHomogeneous](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/isweightedhomogeneous--e013f69d1facea9170e16c73.md) | 132 | `declaration-track:e013f69d1facea9170e16c737276cfee1e6983f100474887674c1277b252c4d8` |
| 10 | `def` | [weightedHomogeneousSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weightedhomogeneoussubmodule--d85c90711805a2071c56583a.md) | 139 | `declaration-track:d85c90711805a2071c56583aaee2fd80959635511b92344583f889cedd71fb97` |
| 11 | `theorem` | [mem_weightedHomogeneousSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/mem-weightedhomogeneoussubmodule--6f54c02be96855d90ef61f78.md) | 155 | `result-track:6f54c02be96855d90ef61f7841a393e317a4dd79fd8cadc6c0ee1d26fbb65cdc` |
| 12 | `theorem` | [weightedHomogeneousSubmodule_eq_finsupp_supported](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weightedhomogeneoussubmodule-eq-finsupp-supported--972f79962bbb7c6620b02505.md) | 164 | `result-track:972f79962bbb7c6620b025050668971c7f13123fcece492032a07bc4043a033e` |
| 13 | `theorem` | [weightedHomogeneousSubmodule_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weightedhomogeneoussubmodule-mul--101607581bb06d3b759b888e.md) | 176 | `result-track:101607581bb06d3b759b888ee94896f46264d47bf297ae57f3eed483d5f965d1` |
| 14 | `theorem` | [isWeightedHomogeneous_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/isweightedhomogeneous-monomial--69dbc83f54970f6148de4bf1.md) | 192 | `result-track:69dbc83f54970f6148de4bf14ee04d7177783af312cfe5ba9ed0faa8d516c661` |
| 15 | `theorem` | [isWeightedHomogeneous_of_total_degree_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/isweightedhomogeneous-of-total-degree-zero--610fe63f1b83c1bab8a9bfaa.md) | 204 | `result-track:610fe63f1b83c1bab8a9bfaa55fe7656b04965359d542bcbc5e971cf32c64666` |
| 16 | `theorem` | [isWeightedHomogeneous_C](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/isweightedhomogeneous-c--87f3371edfb9b82a700abe30.md) | 215 | `result-track:87f3371edfb9b82a700abe305d8ee275924beddc5a1b1ef17aa9cdd589c33ebe` |
| 17 | `theorem` | [isWeightedHomogeneous_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/isweightedhomogeneous-zero--a92971eea3544f3cc696691b.md) | 224 | `result-track:a92971eea3544f3cc696691b94dbc7a351bd1aa024552ba112a68cdb083b766a` |
| 18 | `theorem` | [isWeightedHomogeneous_one](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/isweightedhomogeneous-one--490f067ae790872b5d7dd983.md) | 230 | `result-track:490f067ae790872b5d7dd98382b186d8fe9f30ddb3c7f8c79ab441972a8ee5ff` |
| 19 | `theorem` | [isWeightedHomogeneous_X](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/isweightedhomogeneous-x--d81927638d64865d60ca9efd.md) | 235 | `result-track:d81927638d64865d60ca9efdafb17efb027d39500ea31f3a33a806ba97a03ddd` |
| 20 | `theorem` | [coeff_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/coeff-eq-zero--872f0a0dac0f362fa2c6b1ef.md) | 249 | `result-track:872f0a0dac0f362fa2c6b1efce5688490356f933bb3fe6202006d246f9fe2688` |
| 21 | `theorem` | [inj_right](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/inj-right--bc1134fb25a98b76b9421a15.md) | 256 | `result-track:bc1134fb25a98b76b9421a15b4d7f31e71557ddf020807097c774a16a62fd0e4` |
| 22 | `theorem` | [add](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/add--9393c353a7018de441e2eaa2.md) | 264 | `result-track:9393c353a7018de441e2eaa22175d612e2d50d212f43ab0a30014d1f26ca87cd` |
| 23 | `theorem` | [sum](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/sum--58ad70764b5ef11fa680c0d5.md) | 271 | `result-track:58ad70764b5ef11fa680c0d587e3d965d78cd3d7810bf1d5c22e1f0500b83abc` |
| 24 | `theorem` | [mul](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/mul--2657ea8745021867f59e7b41.md) | 278 | `result-track:2657ea8745021867f59e7b413fc33cb18a34d0dcd536d1cb9b8baafae750c25b` |
| 25 | `theorem` | [prod](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/prod--de7204425138f9c6a8ad3c78.md) | 285 | `result-track:de7204425138f9c6a8ad3c786dce9432d5b86ef746bb302954b65274ea335f22` |
| 26 | `theorem` | [weighted_total_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weighted-total-degree--5790af1cb3846fd96c135499.md) | 301 | `result-track:5790af1cb3846fd96c135499a10da92c6e44f844f81226af370d9638f3593363` |
| 27 | `instance` | [WeightedHomogeneousSubmodule.gcomm_monoid](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weightedhomogeneoussubmodule-gcomm-monoid--40bbf61591603b68e2e1c2f9.md) | 314 | `declaration-track:40bbf61591603b68e2e1c2f956b3348074e4d9ea976c6811527a22f6c160c955` |
| 28 | `def` | [weightedHomogeneousComponent](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weightedhomogeneouscomponent--bb5e9491fa8569c309075389.md) | 328 | `declaration-track:bb5e9491fa8569c3090753898c3c48bf7132dc9a3ca4f811f5410839d2357271` |
| 29 | `theorem` | [coeff_weightedHomogeneousComponent](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/coeff-weightedhomogeneouscomponent--a580105b6e0a42b25ebfecc2.md) | 336 | `result-track:a580105b6e0a42b25ebfecc2918f7c19059fb68cbbd421f0fc98ee62d1d16680` |
| 30 | `theorem` | [weightedHomogeneousComponent_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weightedhomogeneouscomponent-apply--8936129870e41b81871c05d2.md) | 342 | `result-track:8936129870e41b81871c05d2114b9f21182577dc7b2d76b413d70dccf6df1856` |
| 31 | `theorem` | [weightedHomogeneousComponent_isWeightedHomogeneous](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weightedhomogeneouscomponent-isweightedhomogeneous--2bcbb59cd3c06a0c96bbe526.md) | 350 | `result-track:2bcbb59cd3c06a0c96bbe52656b8d40d01d11c95c5fd3dd46efd029cd77455ad` |
| 32 | `theorem` | [weightedHomogeneousComponent_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weightedhomogeneouscomponent-c-mul--6e0d6f69af767d2171844a5e.md) | 359 | `result-track:6e0d6f69af767d2171844a5eae1aa754f9f0647c8bdb4f1bd4d495a8fb185c96` |
| 33 | `theorem` | [weightedHomogeneousComponent_eq_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weightedhomogeneouscomponent-eq-zero--7126aeecc7093bec2b69cf75.md) | 365 | `result-track:7126aeecc7093bec2b69cf75d2c468395e510b10aab7e8daa84b19f2108e8c21` |
| 34 | `theorem` | [weightedHomogeneousComponent_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weightedhomogeneouscomponent-eq-zero--d406ca5984fa9d1deeaadbd7.md) | 374 | `result-track:d406ca5984fa9d1deeaadbd759642122e7e01f933267738b5167fb2e7865c7c3` |
| 35 | `theorem` | [weightedHomogeneousComponent_finsupp](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weightedhomogeneouscomponent-finsupp--18ef088590be675b6b92442f.md) | 386 | `result-track:18ef088590be675b6b92442ff2abf93fc1260b97cf29efaf1671c64dc728c931` |
| 36 | `theorem` | [sum_weightedHomogeneousComponent](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/sum-weightedhomogeneouscomponent--a3aa193706a50c6987a3525a.md) | 403 | `result-track:a3aa193706a50c6987a3525af0c5e95dd05f1fb5569fe3aee728efb98ae5f584` |
| 37 | `theorem` | [weightedHomogeneousComponent_weighted_homogeneous_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weightedhomogeneouscomponent-weighted-homogeneous-polynomial--a3ccad1be2e50e9f83b846e2.md) | 424 | `result-track:a3ccad1be2e50e9f83b846e2bc9290f0e2d36300012ce64b91042ff4a8fe9698` |
| 38 | `theorem` | [weightedHomogeneousComponent_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/declarations/weightedhomogeneouscomponent-zero--7b034d2700baac5ca4d82249.md) | 451 | `result-track:7b034d2700baac5ca4d822491b6131afe2504ced56ca2a9a5ff1e8b8a01fc8d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

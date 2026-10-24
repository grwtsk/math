# Verification target: GRWTSK.Algebra.GroupTheory.CyclicHolonomy.Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68a18bf167ec625c0ba80015abe96b4d64f04b94",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68a18bf167ec625c0ba80015abe96b4d64f04b94`.

Source path: `GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cycleLength](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/cyclelength--a234b7ada92747a07afdda6c.md) | 56 | `declaration-track:a234b7ada92747a07afdda6c3b2e2044f3eeb960860c42010a6ea2fdb776c60e` |
| 2 | `theorem` | [cycleLength_pos](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/cyclelength-pos--cadf573fce21e50a506daf7e.md) | 62 | `result-track:cadf573fce21e50a506daf7ea2bf388208ab9b519003e48fd0c319e71ee28f20` |
| 3 | `theorem` | [card_coverPhase](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/card-coverphase--4744218bdee2c0b155a3c389.md) | 67 | `result-track:4744218bdee2c0b155a3c3898e711cef833e7d0cab0e25d696ca23e5ff154bc2` |
| 4 | `def` | [advance](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/advance--f8a12417243087deab600ed7.md) | 75 | `declaration-track:f8a12417243087deab600ed71ff40fbeaf81c2fb89ca14444acb8b0b040289f3` |
| 5 | `theorem` | [successor_iterate_eq_advance](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/successor-iterate-eq-advance--a48b4935e48c80d91871d361.md) | 80 | `result-track:a48b4935e48c80d91871d361f27c60d00cd1aab2a265430f08475f5524021686` |
| 6 | `theorem` | [advance_zero](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/advance-zero--b2ff956c5050fa0f231a66fb.md) | 90 | `result-track:b2ff956c5050fa0f231a66fbe65a82f8d2939d75f95c3fa41379ff9b981483ac` |
| 7 | `theorem` | [advance_one](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/advance-one--384f0aa33dc6fcaac5afacda.md) | 95 | `result-track:384f0aa33dc6fcaac5afacda8facdd7325e19744912b522268a53750cf06e38c` |
| 8 | `theorem` | [advance_succ](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/advance-succ--c42eef090f2be00601043bb4.md) | 100 | `result-track:c42eef090f2be00601043bb436c211d81176250e35c57ffcfd3d860239dce913` |
| 9 | `theorem` | [advance_successor](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/advance-successor--8dea4769afec8e626eaa3d53.md) | 106 | `result-track:8dea4769afec8e626eaa3d53480836f10b6dac45eb1509b19a08f17c188bad18` |
| 10 | `theorem` | [advance_add](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/advance-add--c8bba509bbbe32f586b41146.md) | 113 | `result-track:c8bba509bbbe32f586b41146f35a3fa46c3e007565ea9800b0e446a2a1b062ec` |
| 11 | `theorem` | [advance_cycle](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/advance-cycle--dc2ab3149644774057614a63.md) | 120 | `result-track:dc2ab3149644774057614a63a0ca44fbb3656d0ee33ede8c54b431fde4f75679` |
| 12 | `theorem` | [advance_mod_cycle](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/advance-mod-cycle--da895b4dfe65ec3f94a695b1.md) | 129 | `result-track:da895b4dfe65ec3f94a695b1173b91f2e462df4edae9f4cc284ee4744e990331` |
| 13 | `theorem` | [advance_half](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/advance-half--a8d5c1c71a221a18cf308287.md) | 136 | `result-track:a8d5c1c71a221a18cf3082873b2d3dc6e48cc3a3daeeba96dc7fc5466bfd9416` |
| 14 | `theorem` | [forwardProduct_add](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/forwardproduct-add--b3dc49ccb81410faaea4c291.md) | 151 | `result-track:b3dc49ccb81410faaea4c291cc71a513a2a42c781687737ff9cb99d23c618412` |
| 15 | `theorem` | [forwardProduct_one](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/forwardproduct-one--a59148adc51119a5b7d8361b.md) | 165 | `result-track:a59148adc51119a5b7d8361b4bc89d21abc8b668d8eb3fc22f51b8c46cc1f504` |
| 16 | `def` | [monodromy](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/monodromy--fcfe126ab6439875edb7432a.md) | 173 | `declaration-track:fcfe126ab6439875edb7432aa04fc84c16aa4d8fee14041d7c8d96c999a4e5b8` |
| 17 | `theorem` | [forwardProduct_cycle_add](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/forwardproduct-cycle-add--fd6b040367f517fd4d5ebfc8.md) | 183 | `result-track:fd6b040367f517fd4d5ebfc8397f4ec076bb66325b842419f3c3858c815cb0a4` |
| 18 | `def` | [holonomyGroupAt](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/holonomygroupat--e02f34ff3755ff4d48efc63d.md) | 192 | `declaration-track:e02f34ff3755ff4d48efc63d739311df4b974ce640f5e4416a7e0beec8c6699b` |
| 19 | `theorem` | [mem_holonomyGroupAt_iff](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/mem-holonomygroupat-iff--2193b88545aae9c98bcb1de6.md) | 202 | `result-track:2193b88545aae9c98bcb1de62ce18ad22cab2b8938e9801147c0475fe5e67611` |
| 20 | `def` | [StepsInSubgroup](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/stepsinsubgroup--9c107c6c79eaf87f24b6208b.md) | 212 | `declaration-track:9c107c6c79eaf87f24b6208bc58185825868570ce76824528ab1226b934b5094` |
| 21 | `theorem` | [forwardProduct_mem_subgroup](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/forwardproduct-mem-subgroup--6191d1f0be7b2c1367c08366.md) | 218 | `result-track:6191d1f0be7b2c1367c08366fcb21dd55f673930fa850506aa588f883fba1c83` |
| 22 | `theorem` | [monodromy_mem_subgroup](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/monodromy-mem-subgroup--6ee1e8bf45112194f685b6b3.md) | 231 | `result-track:6ee1e8bf45112194f685b6b35bfe6a69d8ae7a9028433fa1585b79b5ccf5fa1d` |
| 23 | `theorem` | [transport_intertwines_monodromy](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/transport-intertwines-monodromy--b0adee1dee8e356b4c74fe76.md) | 239 | `result-track:b0adee1dee8e356b4c74fe762c50ee68051e949d14fd4ece29658c5cd7752c00` |
| 24 | `theorem` | [monodromy_advance_eq_conjugate](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/monodromy-advance-eq-conjugate--ac66db30cfeb2b367f39e3b1.md) | 265 | `result-track:ac66db30cfeb2b367f39e3b1027fc566ae2803b67484a8646b70fd86a1ebd10d` |
| 25 | `theorem` | [monodromy_successor_eq_conjugate](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/monodromy-successor-eq-conjugate--98653cd84114e0e4eb49a157.md) | 279 | `result-track:98653cd84114e0e4eb49a157e07185315802aa5946c976748686728a5b3b235b` |
| 26 | `theorem` | [monodromy_successor_mem_of_mem_normalizer](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/monodromy-successor-mem-of-mem-normalizer--678961be03bbcffbe2c735b2.md) | 294 | `result-track:678961be03bbcffbe2c735b28444b1ac0a0d90ed223bd5464690f81e0e435827` |
| 27 | `theorem` | [monodromy_successor_mem_of_normal](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/monodromy-successor-mem-of-normal--43e7a31ff2a01adde65ad217.md) | 313 | `result-track:43e7a31ff2a01adde65ad2170e9635e304834321dc5ef8b540df3218e125c46c` |
| 28 | `def` | [ClosesAfterCircuit](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/closesaftercircuit--871c27d500eb3fddb7403247.md) | 323 | `declaration-track:871c27d500eb3fddb74032479e7225c6eac4d44e0f49bd040393ed6d3880a55b` |
| 29 | `theorem` | [closesAfterCircuit_iff_monodromy_fixed](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/closesaftercircuit-iff-monodromy-fixed--7d8e4c95dc156747bde09ab6.md) | 328 | `result-track:7d8e4c95dc156747bde09ab642e56278c99e322ce0a46200c5366c0544bfea9e` |
| 30 | `def` | [IsParallelSection](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/isparallelsection--8ea539a5e3e0c7fc02196187.md) | 337 | `declaration-track:8ea539a5e3e0c7fc02196187436438f168559a3057470a3fa029d54b7d8a89fa` |
| 31 | `theorem` | [forwardProduct_apply_of_isParallelSection](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/forwardproduct-apply-of-isparallelsection--b46182a3d97ceb461c4a0a0f.md) | 342 | `result-track:b46182a3d97ceb461c4a0a0ffffedd0205077a8242e4dbb337b1ce892a5b615e` |
| 32 | `theorem` | [isParallelSection_closesAfterCircuit](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/isparallelsection-closesaftercircuit--cf849e17a7e08cd9969af373.md) | 354 | `result-track:cf849e17a7e08cd9969af373a36077be50c07b2da7143414afa052a923d0d4c6` |
| 33 | `def` | [halfTransport](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/halftransport--e75a84e10bcfb4f52795bb57.md) | 363 | `declaration-track:e75a84e10bcfb4f52795bb57ce375f8cec70fee686b385f0ec2bab7c89443821` |
| 34 | `theorem` | [monodromy_eq_halfTransport_trans_self](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/monodromy-eq-halftransport-trans-self--62b30376d47ea3555a7fe6d9.md) | 380 | `result-track:62b30376d47ea3555a7fe6d95d588256795867d03ac8f8aa899e496f799c07d9` |
| 35 | `structure` | [PathDecomposition](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/pathdecomposition--b76ad125f08e51857a33c731.md) | 395 | `declaration-track:b76ad125f08e51857a33c731ca36ba9af2eaab06ab4b9cbc5de2fee508dffb2d` |
| 36 | `def` | [decomposeSteps](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/decomposesteps--d79159a72b18ee9dbc994e35.md) | 402 | `declaration-track:d79159a72b18ee9dbc994e35ea289b8439bf365dbb8f3b9df451372a252a72ad` |
| 37 | `theorem` | [decomposeSteps_recompose](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/decomposesteps-recompose--41d099958dc1c994e0909c45.md) | 409 | `result-track:41d099958dc1c994e0909c45ff4a6fc0bc9b593f5c211a4ee45a157b6bb4512c` |
| 38 | `theorem` | [forwardProduct_laps_add](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/forwardproduct-laps-add--ac3a35208dfc5eca899e7ac5.md) | 423 | `result-track:ac3a35208dfc5eca899e7ac564acc47035d99516750b0af9f5a886f02aeddbe7` |
| 39 | `theorem` | [forwardProduct_decomposition](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/forwardproduct-decomposition--b45abb208f587dc3506a0a91.md) | 450 | `result-track:b45abb208f587dc3506a0a91c37852621278ad0c5a897b6980e7b0779a263dc2` |
| 40 | `abbrev` | [OneLapIndex](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/onelapindex--eccfa7b17176252ddcd1d49c.md) | 466 | `declaration-track:eccfa7b17176252ddcd1d49c29361184c3df1aa8c65153aeeb3c504606e9b837` |
| 41 | `def` | [oneLapStart](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/onelapstart--2256debaa834404b27d4d862.md) | 471 | `declaration-track:2256debaa834404b27d4d862d2b002be3271fa3b4f16fe59b3f3ceb4fac8fcd7` |
| 42 | `def` | [oneLapEnd](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/onelapend--ada9055bf17cdb0ab0c5e935.md) | 476 | `declaration-track:ada9055bf17cdb0ab0c5e93541da6ad92ea6f18a3e0b429264d887bcab94b3a3` |
| 43 | `def` | [oneLapPhase](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/onelapphase--593a44388c3cfa54a09afe21.md) | 481 | `declaration-track:593a44388c3cfa54a09afe21691368429cb50efd7896989c14e646d1f01c4f5e` |
| 44 | `def` | [oneLapProduct](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/onelapproduct--1a8e8c5c2ba49885241b55af.md) | 486 | `declaration-track:1a8e8c5c2ba49885241b55af014e9ae3aae5ffc3c38829a6d7cdae9a4aa35932` |
| 45 | `theorem` | [oneLapPhase_start](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/onelapphase-start--d002dea98a4d8406a2dacc78.md) | 491 | `result-track:d002dea98a4d8406a2dacc78698cdc68e3f30a392b5ff660c056ea5cadb4fed6` |
| 46 | `theorem` | [oneLapPhase_end](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/onelapphase-end--1b181d8313afe7f571a94e54.md) | 496 | `result-track:1b181d8313afe7f571a94e543b7f54dd57b2137c30e48a19a97dbd4911349bfb` |
| 47 | `theorem` | [oneLapProduct_start](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/onelapproduct-start--dee7797d893bdb2f74ecdaa2.md) | 501 | `result-track:dee7797d893bdb2f74ecdaa2c6df6a8fca7645b81a1bc1ad542ded2510f01095` |
| 48 | `theorem` | [oneLapProduct_end](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/onelapproduct-end--9106b4b9df602fb34238660f.md) | 506 | `result-track:9106b4b9df602fb34238660f6d0c0cc60ae2dbd9d72e80b9f84d799cee08e5b9` |
| 49 | `def` | [forwardProductWithPayload](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/forwardproductwithpayload--300033eb84dc111cd368c202.md) | 520 | `declaration-track:300033eb84dc111cd368c202d52d1c1fb6b63d30b6fb8e841df2fb666a7064ff` |
| 50 | `theorem` | [forwardProduct_preserves_payload](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/forwardproduct-preserves-payload--c81daa5c86c6775ff437e00c.md) | 525 | `result-track:c81daa5c86c6775ff437e00c3baf4104cf5d5f1f48b5c1f07bca212be6d6e566` |
| 51 | `def` | [monodromyWithPayload](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/monodromywithpayload--ec4709617a2e04580e6f4888.md) | 533 | `declaration-track:ec4709617a2e04580e6f48883ca986a9b69a2dfb8535aabc986fa6781dac41d1` |
| 52 | `theorem` | [monodromy_preserves_payload](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/declarations/monodromy-preserves-payload--5433d32ceb6d40bb0e0e2825.md) | 538 | `result-track:5433d32ceb6d40bb0e0e28256a4b74eeaf792b6a35ab5000504574f743ce5a25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.GeneralTopology.Bornology.Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a541e9d2e14ff7318e9ee5f218c5a794bcf35191",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a541e9d2e14ff7318e9ee5f218c5a794bcf35191`.

Source path: `GRWTSK/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean.json)

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
| 1 | `def` | [orderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/orderbornology--d2f0c5ff4a1e2ff40ea37312.md) | 43 | `declaration-track:d2f0c5ff4a1e2ff40ea37312c7dc894dcf6a3d3913e72e8d8152cef53556bc61` |
| 2 | `lemma` | [orderBornology_isBounded](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/orderbornology-isbounded--83c3f2f5772dd41ecc51cac6.md) | 50 | `result-track:83c3f2f5772dd41ecc51cac6b921bc82787ddd34bbd426e2b4103d7dcd106e4e` |
| 3 | `class` | [IsOrderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/isorderbornology--1edf00878fd03dbc8eee7cc8.md) | 60 | `declaration-track:1edf00878fd03dbc8eee7cc86e1f87597790c2a9fd33f43add21c5b23f394084` |
| 4 | `lemma` | [isOrderBornology_iff_eq_orderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/isorderbornology-iff-eq-orderbornology--9179fbd55e68a2d449021ce9.md) | 63 | `result-track:9179fbd55e68a2d449021ce93224d5469d159b82ff09d597cfdf96d3106ac49a` |
| 5 | `lemma` | [isBounded_iff_bddBelow_bddAbove](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/isbounded-iff-bddbelow-bddabove--12177e24869b93cb48141e29.md) | 72 | `result-track:12177e24869b93cb48141e2933504989fa5b609cef16ab8995c5c0466010b331` |
| 6 | `lemma` | [Bornology.IsBounded.bddBelow](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/bornology-isbounded-bddbelow--4f71c34f05d3702f1d825566.md) | 75 | `result-track:4f71c34f05d3702f1d825566a45654f0b597f50f7d0d5b1c8fa8c8abd3c890df` |
| 7 | `lemma` | [Bornology.IsBounded.bddAbove](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/bornology-isbounded-bddabove--948affd4bbeab8db4cbffc07.md) | 78 | `result-track:948affd4bbeab8db4cbffc07b9d4308077dafd76d45e5cd078a6756a1cb7bc88` |
| 8 | `lemma` | [BddBelow.isBounded](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/bddbelow-isbounded--ae5ec208d9ebd3dc4c809eb2.md) | 81 | `result-track:ae5ec208d9ebd3dc4c809eb2b93705ecb5b84a6530f907e28f3bf524b2423a3f` |
| 9 | `lemma` | [BddAbove.isBounded](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/bddabove-isbounded--d8fed4f4e3c8aa8d11b79d6e.md) | 84 | `result-track:d8fed4f4e3c8aa8d11b79d6eeb39dda2c60ff76e9737dc54ba24f9c5430521a6` |
| 10 | `lemma` | [BddBelow.isBounded_inter](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/bddbelow-isbounded-inter--4e27836f6da7a969c408952d.md) | 87 | `result-track:4e27836f6da7a969c408952d9a3ea9f6953b8c89a8d4b98db005ad4226fa6b12` |
| 11 | `lemma` | [BddAbove.isBounded_inter](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/bddabove-isbounded-inter--a57358b72e06d4ab3cc58d76.md) | 90 | `result-track:a57358b72e06d4ab3cc58d76cbe2d026e94f0fc9ead1ceb8b33ec232e79b51a1` |
| 12 | `instance` | [OrderDual.instIsOrderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/orderdual-instisorderbornology--30c3eaa01fa74c8912f8c864.md) | 93 | `declaration-track:30c3eaa01fa74c8912f8c8649d21b0d072aa7929e682d4fea297ba05f94449a7` |
| 13 | `instance` | [Prod.instIsOrderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/prod-instisorderbornology--cd984435a4a191e0a370a682.md) | 98 | `declaration-track:cd984435a4a191e0a370a682754f6e89a0bbc9aaa74c30c5abd711c2cecc8a55` |
| 14 | `instance` | [Pi.instIsOrderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/pi-instisorderbornology--071110a51bc65e578a910d01.md) | 104 | `declaration-track:071110a51bc65e578a910d017175ad142ab6c97f964235cff6a1d97b3b71af94` |
| 15 | `lemma` | [Nonempty.of_isOrderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/nonempty-of-isorderbornology--f4ddb21e8450c89d7c512e84.md) | 111 | `result-track:f4ddb21e8450c89d7c512e84723331a066492cf86683fd2c9e4dc72d76e9fa34` |
| 16 | `instance` | [IsOrderBornology.neBot_cobounded_of_noBotOrder](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/isorderbornology-nebot-cobounded-of-nobotorder--916cc246dc3e25a9848f4906.md) | 113 | `declaration-track:916cc246dc3e25a9848f4906c209d208560a3201d33632968807ec4daea391a4` |
| 17 | `instance` | [IsOrderBornology.neBot_cobounded_of_noTopOrder](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/isorderbornology-nebot-cobounded-of-notoporder--6e2a2699bf90bcda3266aecf.md) | 116 | `declaration-track:6e2a2699bf90bcda3266aecf318e32ac26c6b908d537b9b41623c187fd32237b` |
| 18 | `lemma` | [IsOrderBornology.atTop_le_cobounded](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/isorderbornology-attop-le-cobounded--07271129ee8ee52fc70cbd42.md) | 119 | `result-track:07271129ee8ee52fc70cbd42c3c9df9a5d7785af9d0af193ad6989f56f64ed2b` |
| 19 | `lemma` | [IsOrderBornology.atBot_le_cobounded](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/isorderbornology-atbot-le-cobounded--0f0bd88aea60da5ec8ee7527.md) | 130 | `result-track:0f0bd88aea60da5ec8ee7527867114f9864b35f2679b2be90fd688b4d8396c92` |
| 20 | `lemma` | [IsOrderBornology.cobounded_le_atBot_sup_atTop](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/isorderbornology-cobounded-le-atbot-sup-attop--f0ab127f053cbe3e132b8bd6.md) | 139 | `result-track:f0ab127f053cbe3e132b8bd698094b69a1c52f10b445dccdfb69d953770b9f89` |
| 21 | `lemma` | [IsOrderBornology.cobounded_eq](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/isorderbornology-cobounded-eq--363ad13a6c105e9b5eec8c24.md) | 150 | `result-track:363ad13a6c105e9b5eec8c24c3fd1a94c540e63bfcc8c3d5968217c07cbfc41a` |
| 22 | `lemma` | [IsOrderBornology.cobounded_eq_atTop](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/isorderbornology-cobounded-eq-attop--81ea32a7c332bc66d07b876e.md) | 155 | `result-track:81ea32a7c332bc66d07b876e8bafec46d6d0e15abf647a0b077c43c6415a3e75` |
| 23 | `lemma` | [IsOrderBornology.cobounded_eq_atBot](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/isorderbornology-cobounded-eq-atbot--f7a128b3a3f568986a8ea3cd.md) | 167 | `result-track:f7a128b3a3f568986a8ea3cd65cc9e6a12ca17edd10501a6ccafe525099f31f3` |
| 24 | `lemma` | [Bornology.IsBounded.subset_Icc_sInf_sSup](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/declarations/bornology-isbounded-subset-icc-sinf-ssup--78ba81523523c682b1c985b1.md) | 175 | `result-track:78ba81523523c682b1c985b1a1f38f4d360d3796d747eb544ceec1d63886d3b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.GeneralTopology.ContinuousAffineMap.Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12c5293d18a8338f917a85403ead64b553af0b2d",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12c5293d18a8338f917a85403ead64b553af0b2d`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.AffineSpace.AffineMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LinearMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousAffineMap](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/continuousaffinemap--e557af032fbea5395be40e5d.md) | 32 | `declaration-track:e557af032fbea5395be40e5d810ed64a05bfc49d4582295310a920b536246cb6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/instance--049a43981790aad502477e24.md) | 46 | `declaration-track:049a43981790aad502477e24669be7872202abd9a7bc2fd1da65a2df4a91a848` |
| 3 | `theorem` | [toAffineMap_injective](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/toaffinemap-injective--3e13bc0f59656158689244b6.md) | 51 | `result-track:3e13bc0f59656158689244b68a7c0e11ae7cecbf0fe4fdf2e94e6686aae7b5cd` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/instance--63192d30469b339cc29c408a.md) | 57 | `declaration-track:63192d30469b339cc29c408a21ae27969ba6a30703b5d9afb2eeff77521b5ee4` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/instance--ee25ee58111353a02e1ab8d3.md) | 61 | `declaration-track:ee25ee58111353a02e1ab8d389f2d77aed967209d382df687b324ac20980ce09` |
| 6 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/tofun-eq-coe--e38f4b6c90a5c40657d18a8f.md) | 64 | `result-track:e38f4b6c90a5c40657d18a8fca0ccd8864f166c97599fa4a07aab3f36465991a` |
| 7 | `theorem` | [coe_injective](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/coe-injective--212f19a11513f8bd886e14b2.md) | 66 | `result-track:212f19a11513f8bd886e14b24906556c1e751a98e0e9a5c980cf53d727f1a732` |
| 8 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/ext--38ea810eef6b20826a11bf11.md) | 70 | `result-track:38ea810eef6b20826a11bf116abe513b96e8269e6a102aea3a9957b4ea86c6a7` |
| 9 | `theorem` | [congr_fun](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/congr-fun--46fb77aff90084dd8d03e317.md) | 73 | `result-track:46fb77aff90084dd8d03e31755bcd8c0cb1ad3fb00bf12d322050f4de733c79e` |
| 10 | `def` | [toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/tocontinuousmap--6d620eb03a09907826defd7e.md) | 77 | `declaration-track:6d620eb03a09907826defd7eb9fe5512940e35bfae466d50a92945e873250f5e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/instance--08c06f3cf78736861eada881.md) | 80 | `declaration-track:08c06f3cf78736861eada8817feeee3da61c1a5cf4fed895cc81f9be8e02011e` |
| 12 | `theorem` | [toContinuousMap_coe](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/tocontinuousmap-coe--c8bf2172ee8cf219a518a4da.md) | 84 | `result-track:c8bf2172ee8cf219a518a4da00af8dd08117a34c5a51909f66e65f5eebd4af5a` |
| 13 | `theorem` | [coe_toAffineMap](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/coe-toaffinemap--cd6789932206c87bbe899082.md) | 87 | `result-track:cd6789932206c87bbe89908264cc31c4f13149f71604c63d405aabed3cd5941f` |
| 14 | `theorem` | [coe_to_continuousMap](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/coe-to-continuousmap--ae9341c84356f0f6592f34e5.md) | 90 | `result-track:ae9341c84356f0f6592f34e5f3c664784f346ca901d23618ba0aab4690117b14` |
| 15 | `theorem` | [to_continuousMap_injective](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/to-continuousmap-injective--dc78acbd56a0151729e251f9.md) | 92 | `result-track:dc78acbd56a0151729e251f96b2e5d2f497055c1a367b2b4f677d4919cff93d9` |
| 16 | `theorem` | [coe_toAffineMap_mk](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/coe-toaffinemap-mk--a1313544b88902c5fbde72ec.md) | 98 | `result-track:a1313544b88902c5fbde72ecec0044bbfc95166b4b08b954b0a3b5c66d9a7348` |
| 17 | `theorem` | [coe_continuousMap_mk](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/coe-continuousmap-mk--c7589c1a283539ea71032da8.md) | 101 | `result-track:c7589c1a283539ea71032da83cb3054c2bd8d59b2867f36fa06e031624141039` |
| 18 | `theorem` | [coe_mk](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/coe-mk--d1e227328333d57c79bc38b2.md) | 104 | `result-track:d1e227328333d57c79bc38b254528af5c1761f8ce24d707f6c50a4288437e087` |
| 19 | `theorem` | [mk_coe](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/mk-coe--a907b87856ca480c2e23e50a.md) | 107 | `result-track:a907b87856ca480c2e23e50a73e05f3ee984bf3178ffe95c015cecbbc3ba0d4f` |
| 20 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/continuous--0a75c847b2ae0aa1ce12a23b.md) | 112 | `result-track:0a75c847b2ae0aa1ce12a23b402810ecf4d28ba4297280f775cf4f6daafee1ff` |
| 21 | `def` | [const](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/const--66ec72dab0f95bb5689a3b16.md) | 117 | `declaration-track:66ec72dab0f95bb5689a3b16286ef45702aeabb3ddca456c28c3a9c249c50e9d` |
| 22 | `theorem` | [coe_const](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/coe-const--30e07ec1619e25adf1b63638.md) | 123 | `result-track:30e07ec1619e25adf1b63638bc3fec119dd270ac4b9bc3826d47aaa0df3d36bf` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/instance--1aac3af7bd763deee9c13375.md) | 125 | `declaration-track:1aac3af7bd763deee9c133750f357012953a4efe6d09230c5d8f6378245c1662` |
| 24 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/comp--00b05c20597117d05998c9ab.md) | 132 | `declaration-track:00b05c20597117d05998c9abd54102c28121ecde695be3cf1d45c46ea6a6b8af` |
| 25 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/coe-comp--76f068e632e59e7d6eacc44e.md) | 136 | `result-track:76f068e632e59e7d6eacc44ee789d155f449069d884d8c468be5b5375cadadcd` |
| 26 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/comp-apply--56eb1081e70a79c3826290e1.md) | 139 | `result-track:56eb1081e70a79c3826290e19fdf7a7012540c16b446af55a9033b8bb21acd53` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/instance--4586d23033acb3eb5a3c996d.md) | 146 | `declaration-track:4586d23033acb3eb5a3c996d43bf2d501f42eeea9f94219d3df9e842260d2696` |
| 28 | `theorem` | [coe_zero](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/coe-zero--f84a460d1df7df125407b1f0.md) | 150 | `result-track:f84a460d1df7df125407b1f0fe2ba9c7450315704afc5b6f5776866c61f0406c` |
| 29 | `theorem` | [zero_apply](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/zero-apply--4d333e95deb330514eab2bd0.md) | 152 | `result-track:4d333e95deb330514eab2bd04c5652d27930303874e41f89dbe0224f6d8ef9a3` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/instance--f1b36da1f8173e9b60684976.md) | 159 | `declaration-track:f1b36da1f8173e9b606849767545992d19a142073379d38b9ac0deed7ae33ee0` |
| 31 | `theorem` | [coe_smul](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/coe-smul--fb15ac8d78c99be401f33149.md) | 163 | `result-track:fb15ac8d78c99be401f331497baf92d8de909d2f8e211681f8da0549f6b8beae` |
| 32 | `theorem` | [smul_apply](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/smul-apply--548e483d5fc3fd1f8494deb7.md) | 165 | `result-track:548e483d5fc3fd1f8494deb7be59de531057834657239fc1a79e85de917c5ef5` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/instance--449596f6cb3c602538aa6df3.md) | 167 | `declaration-track:449596f6cb3c602538aa6df37ff667426209b0164a5e462ed08c4452dde19ad8` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/instance--350f18f8b49a02f30ecd7d8d.md) | 170 | `declaration-track:350f18f8b49a02f30ecd7d8d196e1938035be3cd0fad05531a879ac8f2951089` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/instance--d76152d7d77b0ef37fbff68f.md) | 177 | `declaration-track:d76152d7d77b0ef37fbff68f04dad58d2f9e4a702fae8f2ae2212c78430301ab` |
| 36 | `theorem` | [coe_add](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/coe-add--5cd173d81b253bb37c3e8f6d.md) | 181 | `result-track:5cd173d81b253bb37c3e8f6dfe04542da0cb06696cc9091a8892d40f15720f97` |
| 37 | `theorem` | [add_apply](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/add-apply--87c589ae84eeabce7715c30b.md) | 183 | `result-track:87c589ae84eeabce7715c30bd396f4baf7e7e95ae2b5ece233943da76b7c7e03` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/instance--c2eb319a2b18927e580dead5.md) | 185 | `declaration-track:c2eb319a2b18927e580dead5b88adab4a1a32824a8fa882f19e0365ff94552ec` |
| 39 | `theorem` | [coe_sub](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/coe-sub--7dc8b815d45e03c54345712f.md) | 189 | `result-track:7dc8b815d45e03c54345712fcc2e78e634a7f9a1df402cad0eb42f6b055ec766` |
| 40 | `theorem` | [sub_apply](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/sub-apply--bf7cf11a47e84270c3b6796b.md) | 191 | `result-track:bf7cf11a47e84270c3b6796b404f445ca1b7403e4f1ad7a655eabcab1b55d9a4` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/instance--69d57bcdb478bb52e1ef36b9.md) | 193 | `declaration-track:69d57bcdb478bb52e1ef36b924c774f0da232a052a36812312435e5ec900460a` |
| 42 | `theorem` | [coe_neg](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/coe-neg--b44bd83f52f8c87b8c39bd98.md) | 197 | `result-track:b44bd83f52f8c87b8c39bd981cba1ac1ad3313be248ffdd2740d7087d364ebf6` |
| 43 | `theorem` | [neg_apply](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/neg-apply--d85b314a59e7dc80240a212d.md) | 199 | `result-track:d85b314a59e7dc80240a212d9aeb9fdcc854a446ad3d40a307a9cc72c837f55c` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/instance--6ac4b7104fbe9053e2d486c2.md) | 201 | `declaration-track:6ac4b7104fbe9053e2d486c27067b5e853a6175bbe672b1d2b69ee1102e2b210` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/instance--979c91360514d3b7c0b6d639.md) | 205 | `declaration-track:979c91360514d3b7c0b6d6391be110b1d1596231fa8289d526445b85449dd14b` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/instance--1dcc28e8e6c2f08e022b4764.md) | 210 | `declaration-track:1dcc28e8e6c2f08e022b4764c889489fa9fc7ef9dbff23d7677ac9934fb34784` |
| 47 | `def` | [toContinuousAffineMap](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/tocontinuousaffinemap--ab7544a35f97af5f831d34f1.md) | 225 | `declaration-track:ab7544a35f97af5f831d34f13056c9a61dbb3833679e695a377be4d961625d06` |
| 48 | `theorem` | [coe_toContinuousAffineMap](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/coe-tocontinuousaffinemap--a4dcbecab21eab900069d198.md) | 232 | `result-track:a4dcbecab21eab900069d1988430d02481ad7f796f86f86b7dc54166f9219c02` |
| 49 | `theorem` | [toContinuousAffineMap_map_zero](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variant124d18bdfef498e40571014e77199546ddff2dcd81f8044359d2fae5e0c57f82.lean/declarations/tocontinuousaffinemap-map-zero--85e6eb078ca2c8035009bd55.md) | 235 | `result-track:85e6eb078ca2c8035009bd553a8b7880181343f757abf6e7d8d55228f11d37fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

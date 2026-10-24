# Verification target: GRWTSK.Topology.GeneralTopology.Monoid.Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed493a271055998212b9ce43869aa4df770abd45",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed493a271055998212b9ce43869aa4df770abd45`.

Source path: `GRWTSK/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.OrderDual` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Pow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Tendsto` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Tendsto.one_eventuallyLE_mul_atTop](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-one-eventuallyle-mul-attop--4e08c74b676af3876d7ede69.md) | 23 | `result-track:4e08c74b676af3876d7ede691a156d71e06968a95ebb51b89782f6d972eca954` |
| 2 | `theorem` | [Tendsto.eventuallyLE_one_mul_atBot](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-eventuallyle-one-mul-atbot--34ba36865977a935191bd1d0.md) | 31 | `result-track:34ba36865977a935191bd1d0ad2a622caf8a2aac9162ad4e67eae3eb8b8b4888` |
| 3 | `theorem` | [Tendsto.one_le_mul_atTop](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-one-le-mul-attop--9997dd33291097a922bd610f.md) | 39 | `result-track:9997dd33291097a922bd610f01f05730ae74cab37175e6ba5785e22e3e7a84a7` |
| 4 | `theorem` | [Tendsto.le_one_mul_atBot](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-le-one-mul-atbot--4b6794b2f51de45ff28f97f5.md) | 47 | `result-track:4b6794b2f51de45ff28f97f59c7abcb83343db5a175135c2ff165593c54be59d` |
| 5 | `theorem` | [Tendsto.atTop_mul_one_eventuallyLE](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-attop-mul-one-eventuallyle--4d7d544e0ac4436c0d766158.md) | 55 | `result-track:4d7d544e0ac4436c0d766158a0b2c1ad4f36ee8ef95d5bbe313229a1b5cbace9` |
| 6 | `theorem` | [Tendsto.atBot_mul_eventuallyLE_one](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-atbot-mul-eventuallyle-one--d6dade464c4f5a649d2954d2.md) | 63 | `result-track:d6dade464c4f5a649d2954d21e2ae75afb16202407ff533f3f0623e369aed469` |
| 7 | `theorem` | [Tendsto.atTop_mul_one_le](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-attop-mul-one-le--cd9db317c4c15aaa3afdb0c6.md) | 71 | `result-track:cd9db317c4c15aaa3afdb0c662e7c627be62d8f5a751b66679a841a65c7756e6` |
| 8 | `theorem` | [Tendsto.atBot_mul_le_one](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-atbot-mul-le-one--b88848ca9389b6ad9f994b8d.md) | 79 | `result-track:b88848ca9389b6ad9f994b8d91805fe1c8a0793a96338b0ca91695d0f1ae229c` |
| 9 | `theorem` | [Tendsto.atTop_mul_atTop](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-attop-mul-attop--d0f8e32c7415b77dfc6c575d.md) | 91 | `result-track:d0f8e32c7415b77dfc6c575d6a74efe234ab537d1daf81efbf0b87481460c204` |
| 10 | `theorem` | [Tendsto.atBot_mul_atBot](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-atbot-mul-atbot--934df73359b7b688a1b6269c.md) | 103 | `result-track:934df73359b7b688a1b6269c62a8ba0bc078e6ac1acdf97070fd36c536bbb63c` |
| 11 | `theorem` | [Tendsto.atTop_pow](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-attop-pow--3ec29084a52bc79aa9357fd5.md) | 111 | `result-track:3ec29084a52bc79aa9357fd53224c772b72ed6887de94ba070835eb8e3dea0bb` |
| 12 | `theorem` | [Tendsto.atBot_pow](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-atbot-pow--136e4a074985fd20836c713f.md) | 117 | `result-track:136e4a074985fd20836c713f4944b5caa6843348f7d87012008e37b56c25650d` |
| 13 | `theorem` | [Tendsto.atTop_of_const_mul](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-attop-of-const-mul--261ef9dce3dc33bcd98714a5.md) | 132 | `result-track:261ef9dce3dc33bcd98714a58b5ec6f5aadfb7597035f3589b8cb75d39f42606` |
| 14 | `theorem` | [Tendsto.atBot_of_const_mul](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-atbot-of-const-mul--c94e8390453be16b97c92292.md) | 139 | `result-track:c94e8390453be16b97c9229299d9e0b935a5406bffae705661c0a4b30294a070` |
| 15 | `theorem` | [Tendsto.atTop_of_mul_const](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-attop-of-mul-const--b57fe9dfdbf3f9147d60859b.md) | 150 | `result-track:b57fe9dfdbf3f9147d60859be018fd275808c38d21056c4ddeed52f695b92fc6` |
| 16 | `theorem` | [Tendsto.atBot_of_mul_const](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-atbot-of-mul-const--9414754445c9030a2b1f6231.md) | 157 | `result-track:9414754445c9030a2b1f62318a4351997085ffc270d39dae8680bb6c4f2a5336` |
| 17 | `theorem` | [Tendsto.atTop_of_isBoundedUnder_le_mul](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-attop-of-isboundedunder-le-mul--84d5033d822021523d9baa35.md) | 167 | `result-track:84d5033d822021523d9baa350860c5017a0fc89fc346485a8d7a474004cae051` |
| 18 | `theorem` | [Tendsto.atBot_of_isBoundedUnder_ge_mul](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-atbot-of-isboundedunder-ge-mul--8ee4b834fcede2aad86469c7.md) | 174 | `result-track:8ee4b834fcede2aad86469c7316ac10fca5e449146375aef284c61cc3aa0e83b` |
| 19 | `theorem` | [Tendsto.atTop_of_le_const_mul](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-attop-of-le-const-mul--9bab11fe1590549980b25f2d.md) | 179 | `result-track:9bab11fe1590549980b25f2dec23b27ae39e2e6e056e2b4d486ab39bb5926c54` |
| 20 | `theorem` | [Tendsto.atBot_of_const_le_mul](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-atbot-of-const-le-mul--05217905c26bd730fbc6e3ab.md) | 184 | `result-track:05217905c26bd730fbc6e3abb2edae8db4a68adcca74ad6575d00d0f37e18ed6` |
| 21 | `theorem` | [Tendsto.atTop_of_mul_isBoundedUnder_le](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-attop-of-mul-isboundedunder-le--2eff86ee27274882222f0e93.md) | 189 | `result-track:2eff86ee27274882222f0e93e45cbb85c129483087a771f2f2c7ac1f09e33478` |
| 22 | `theorem` | [Tendsto.atBot_of_mul_isBoundedUnder_ge](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-atbot-of-mul-isboundedunder-ge--037b53d00af0f92790c4e9b3.md) | 196 | `result-track:037b53d00af0f92790c4e9b32c58743d3d535f37860fcc94e122cc970eea140f` |
| 23 | `theorem` | [Tendsto.atTop_of_mul_le_const](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-attop-of-mul-le-const--60dfa2b3d5c062eb8341a41b.md) | 201 | `result-track:60dfa2b3d5c062eb8341a41b99ecd8f06ca1416bbf8170994e07ea173e8c5a6c` |
| 24 | `theorem` | [Tendsto.atBot_of_mul_const_le](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-atbot-of-mul-const-le--9cdb18ca74946f10de94e96a.md) | 206 | `result-track:9cdb18ca74946f10de94e96a110aa91ee1ec99e697dc6b84b77ca4f5b5f86372` |
| 25 | `theorem` | [tendsto_atTop_of_add_bdd_above_left'](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-attop-of-add-bdd-above-left--cefedba2d8e2388d7b35224b.md) | 218 | `result-track:cefedba2d8e2388d7b35224bfe3fe1d3b93fa0f61ee8949f15fafa7933486256` |
| 26 | `theorem` | [tendsto_atBot_of_add_bdd_below_left'](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-atbot-of-add-bdd-below-left--0f0ab4e75ce9a734e0ba529e.md) | 223 | `result-track:0f0ab4e75ce9a734e0ba529e2497b8a5713bf5f6128788550e383af9ea002e2b` |
| 27 | `theorem` | [tendsto_atTop_of_add_bdd_above_left](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-attop-of-add-bdd-above-left--e81ab9c6a1b36d7152583957.md) | 228 | `result-track:e81ab9c6a1b36d7152583957a72ea9cda3127ae2e200a9fb4ac16ca11c5d0c05` |
| 28 | `theorem` | [tendsto_atBot_of_add_bdd_below_left](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-atbot-of-add-bdd-below-left--0b72f8abde7a113ff6d6719f.md) | 233 | `result-track:0b72f8abde7a113ff6d6719fa52f91c35df177d15e9a15e14d753053c89a4025` |
| 29 | `theorem` | [tendsto_atTop_of_add_bdd_above_right'](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-attop-of-add-bdd-above-right--0d8204000dc7e69997322042.md) | 238 | `result-track:0d8204000dc7e69997322042ffabd5872596cbb125bb136a6be58c52690bc5cf` |
| 30 | `theorem` | [tendsto_atBot_of_add_bdd_below_right'](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-atbot-of-add-bdd-below-right--7bec3652dc02a13a09c625aa.md) | 243 | `result-track:7bec3652dc02a13a09c625aa3934b077166f7f6b13e6e838002142507386f819` |
| 31 | `theorem` | [tendsto_atTop_of_add_bdd_above_right](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-attop-of-add-bdd-above-right--3fd08eb87061def5320c8c7a.md) | 248 | `result-track:3fd08eb87061def5320c8c7a855263ee994be919d6f53bcf1faf1a6e4a57f03d` |
| 32 | `theorem` | [tendsto_atBot_of_add_bdd_below_right](../../../../../mathematics/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/declarations/tendsto-atbot-of-add-bdd-below-right--091b4b70067749d2ccb4ab3d.md) | 253 | `result-track:091b4b70067749d2ccb4ab3db73f41a7cc65dbfc3756894719dd75c4c659c2bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

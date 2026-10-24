# Verification target: GRWTSK.Topology.GeneralTopology.LeftRightLim.Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d1bea120d4efa01b0c285f3b67aa379feff4cf3",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d1bea120d4efa01b0c285f3b67aa379feff4cf3`.

Source path: `GRWTSK/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.LeftRight` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Monotone` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Function.leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/function-leftlim--879d5196835bb8f2f2d97178.md) | 46 | `declaration-track:879d5196835bb8f2f2d97178a81fa759bd6b5153f7de65b1fa7072c96b0ddb9b` |
| 2 | `def` | [Function.rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/function-rightlim--b009b68b0bd5841a807cfda0.md) | 56 | `declaration-track:b009b68b0bd5841a807cfda0e5beeac3f313c68d690f2cca159fc87c36caec95` |
| 3 | `theorem` | [leftLim_eq_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/leftlim-eq-of-tendsto--ab237b98113edce428e91dfc.md) | 61 | `result-track:ab237b98113edce428e91dfcd462a4c3afabdabe8d4da023477325a50fd04585` |
| 4 | `theorem` | [leftLim_eq_of_eq_bot](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/leftlim-eq-of-eq-bot--db86be82b6e2bcc00074d45e.md) | 70 | `result-track:db86be82b6e2bcc00074d45ed42928ee7845964252c96e1d0756167fb6b15cff` |
| 5 | `theorem` | [rightLim_eq_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/rightlim-eq-of-tendsto--e81cfb34ac9854960590647d.md) | 75 | `result-track:e81cfb34ac9854960590647dbfa1c8f094f02091f60cfbcb3d5767eb369fead2` |
| 6 | `theorem` | [rightLim_eq_of_eq_bot](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/rightlim-eq-of-eq-bot--5cc6e202cae502e999b180fd.md) | 80 | `result-track:5cc6e202cae502e999b180fde7c2bcaf6f8f4647c0d14b919e6995fc8370f4b8` |
| 7 | `theorem` | [leftLim_eq_sSup](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/leftlim-eq-ssup--8e18c36d389b07072717821f.md) | 94 | `result-track:8e18c36d389b07072717821f5eb7bef0cd922aa68adc7ce14e357ebfbf267005` |
| 8 | `theorem` | [rightLim_eq_sInf](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/rightlim-eq-sinf--e2d855542f94b7ca9dcdb928.md) | 98 | `result-track:e2d855542f94b7ca9dcdb928463bd8c8615a9f0d87856cfc75d99a5c7dbc1cc0` |
| 9 | `theorem` | [leftLim_le](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/leftlim-le--7545c33c0cb653e297f1b72c.md) | 102 | `result-track:7545c33c0cb653e297f1b72ce8dca42ab7a2926a906d54fbbfc5fe587bada9f7` |
| 10 | `theorem` | [le_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/le-leftlim--4a51f323970274a8511b2082.md) | 116 | `result-track:4a51f323970274a8511b208279b3e2a255d15669ba59554d3065e44b92aac9ac` |
| 11 | `theorem` | [leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/leftlim--a3ba3671ebfb8259462f1569.md) | 130 | `result-track:a3ba3671ebfb8259462f15697c274c5127f8e10385616353b661bd67641b082c` |
| 12 | `theorem` | [le_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/le-rightlim--d74647e244b9893aa28260a6.md) | 136 | `result-track:d74647e244b9893aa28260a6822a8cf26988dbdee2df64e1ff754399ea943864` |
| 13 | `theorem` | [rightLim_le](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/rightlim-le--907d317e0e2f1c0d51b16fb5.md) | 139 | `result-track:907d317e0e2f1c0d51b16fb5c6f21ed682eb535b4f7e13615b024c81a95fbba2` |
| 14 | `theorem` | [rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/rightlim--2be4bb9e9771287ff2598aa0.md) | 143 | `result-track:2be4bb9e9771287ff2598aa06fa1f4c0d3521069d20b1522d84aae0ad11745fd` |
| 15 | `theorem` | [leftLim_le_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/leftlim-le-rightlim--ba08f47ba554fe15eb6685ec.md) | 145 | `result-track:ba08f47ba554fe15eb6685ec0dd607865e9e659bf81e0a6e35244086e8a6a2a2` |
| 16 | `theorem` | [rightLim_le_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/rightlim-le-leftlim--23eadd2eb344b46c304f66ab.md) | 148 | `result-track:23eadd2eb344b46c304f66ab3df8d2d6632054f5ab2135bf6acd5bdf2248d1aa` |
| 17 | `theorem` | [tendsto_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/tendsto-leftlim--486cd7036d244f40e8b2ace3.md) | 160 | `result-track:486cd7036d244f40e8b2ace3c3dcde182a6f58b2af97e169bb0c7b8fbcab2a5e` |
| 18 | `theorem` | [tendsto_leftLim_within](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/tendsto-leftlim-within--6dec6782c17c697d839fe327.md) | 166 | `result-track:6dec6782c17c697d839fe327e9f5ae2c3471821a1614aa8ad6f6acff5ac1743b` |
| 19 | `theorem` | [tendsto_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/tendsto-rightlim--09a53000163c1e5d20161964.md) | 170 | `result-track:09a53000163c1e5d2016196449a9bef82a553e6af5ad6d1d9baea3e0724ebc16` |
| 20 | `theorem` | [tendsto_rightLim_within](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/tendsto-rightlim-within--04122a0bdbc588123dc09b70.md) | 173 | `result-track:04122a0bdbc588123dc09b70bc1839eb666ed8ddfc2d174a9a15c93e6da18f04` |
| 21 | `theorem` | [continuousWithinAt_Iio_iff_leftLim_eq](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/continuouswithinat-iio-iff-leftlim-eq--2638a474a0c1cdcb093e9c5f.md) | 178 | `result-track:2638a474a0c1cdcb093e9c5fbb030d30e9bb0918e3cf764152876491123380b9` |
| 22 | `theorem` | [continuousWithinAt_Ioi_iff_rightLim_eq](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/continuouswithinat-ioi-iff-rightlim-eq--73ae76ef4115f2e41131e2e3.md) | 189 | `result-track:73ae76ef4115f2e41131e2e310c86ed97acbffe14c2014992089a489e19a7775` |
| 23 | `theorem` | [continuousAt_iff_leftLim_eq_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/continuousat-iff-leftlim-eq-rightlim--34dc9588de847ad09ea752a8.md) | 195 | `result-track:34dc9588de847ad09ea752a8db2d2c078f5f495fa5c8d5af216a217ce3fc5798` |
| 24 | `theorem` | [countable_not_continuousWithinAt_Ioi](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/countable-not-continuouswithinat-ioi--60d294421656f6ddaf725f01.md) | 214 | `result-track:60d294421656f6ddaf725f01443b8cf812bac30356f9a6b67cf6c7d67cfb8cc8` |
| 25 | `theorem` | [countable_not_continuousWithinAt_Iio](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/countable-not-continuouswithinat-iio--4c496706c9d595829ef0f721.md) | 231 | `result-track:4c496706c9d595829ef0f7218aae59b8605b1a845ce7b2c6c1dedab39332a58a` |
| 26 | `theorem` | [countable_not_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/countable-not-continuousat--6c8e36ee836b57f465b86ac8.md) | 237 | `result-track:6c8e36ee836b57f465b86ac896f23e9c3688dd236ef1a2185a251852c2b4b67f` |
| 27 | `theorem` | [le_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/le-leftlim--7b2fcddfac2ccf2a53a087e2.md) | 256 | `result-track:7b2fcddfac2ccf2a53a087e27b1796471f3e5ce3c3819d48b34de9862a388435` |
| 28 | `theorem` | [leftLim_le](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/leftlim-le--cf3cb47ad7dee04e74dd7907.md) | 259 | `result-track:cf3cb47ad7dee04e74dd7907c31c7607fb86739edee07f062d7a3e416489cb48` |
| 29 | `theorem` | [leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/leftlim--97612ef71ac8b1157dd2450b.md) | 263 | `result-track:97612ef71ac8b1157dd2450bd0114fe2b22b32db4608bffdfd0d9715aa51f1c2` |
| 30 | `theorem` | [rightLim_le](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/rightlim-le--a4fc12b9d4af2b31ff76279d.md) | 266 | `result-track:a4fc12b9d4af2b31ff76279d55f314d80edc930078f5db5a7299357d701cfb36` |
| 31 | `theorem` | [le_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/le-rightlim--5630e0f5326421ea2697ae11.md) | 269 | `result-track:5630e0f5326421ea2697ae1155d2bb33cd5015229fde5e2649247048422d3109` |
| 32 | `theorem` | [rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/rightlim--d184a25e28fcf3c58ad90200.md) | 273 | `result-track:d184a25e28fcf3c58ad90200733ace69eff6da07523f5269377ccfbe40796d7a` |
| 33 | `theorem` | [rightLim_le_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/rightlim-le-leftlim--7eabb37ce0af019fedb8758f.md) | 276 | `result-track:7eabb37ce0af019fedb8758fdb25bac1e43b1b56cb3dce521e88f1836998af73` |
| 34 | `theorem` | [leftLim_le_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/leftlim-le-rightlim--785381cd0806b670d428898b.md) | 279 | `result-track:785381cd0806b670d428898bafb9a879f9823eac08717417277e5d3eb9e75beb` |
| 35 | `theorem` | [tendsto_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/tendsto-leftlim--94e23bff8699562fb2caf194.md) | 284 | `result-track:94e23bff8699562fb2caf19433a51eeda6acda74f8c53bcfd38448bfa216008e` |
| 36 | `theorem` | [tendsto_leftLim_within](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/tendsto-leftlim-within--bf84c5f2347bf26be94dd96f.md) | 287 | `result-track:bf84c5f2347bf26be94dd96f49aee3d744fa0de26756bf8b42db68da415743cc` |
| 37 | `theorem` | [tendsto_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/tendsto-rightlim--52d96bfc289f6f58d3b2c350.md) | 290 | `result-track:52d96bfc289f6f58d3b2c3507566f16efc5481a69267a9c5ccb94521fa5f11d9` |
| 38 | `theorem` | [tendsto_rightLim_within](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/tendsto-rightlim-within--17bdb9fa29a06d27b620fe82.md) | 293 | `result-track:17bdb9fa29a06d27b620fe821da270ae11d85d64a53dbbbd576476a15bee7d34` |
| 39 | `theorem` | [continuousWithinAt_Iio_iff_leftLim_eq](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/continuouswithinat-iio-iff-leftlim-eq--e1e541b2ff2c6efbe11f8964.md) | 298 | `result-track:e1e541b2ff2c6efbe11f89648ff33b9f63a4604c02a3a12ca2547a8764351f5a` |
| 40 | `theorem` | [continuousWithinAt_Ioi_iff_rightLim_eq](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/continuouswithinat-ioi-iff-rightlim-eq--5451ea2e209b63b8773daeba.md) | 304 | `result-track:5451ea2e209b63b8773daebac05988df33f4ed25d9980e0511c37d1b529ac691` |
| 41 | `theorem` | [continuousAt_iff_leftLim_eq_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/continuousat-iff-leftlim-eq-rightlim--04089cb5de463330b8db4116.md) | 310 | `result-track:04089cb5de463330b8db41167f141cceb3177882e69a9688396ff9c46394fb6e` |
| 42 | `theorem` | [countable_not_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/declarations/countable-not-continuousat--7766b049767046e004830abc.md) | 315 | `result-track:7766b049767046e004830abcb77eb01577343066f35bdcae64567231300f2476` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.GeneralTopology.Group.Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e320aa2f111277704b85494ae0d39baac6a36ab0",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e320aa2f111277704b85494ae0d39baac6a36ab0`.

Source path: `GRWTSK/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.MinMax` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Map` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Monoid` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_atTop_mul_left_of_le'](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/tendsto-attop-mul-left-of-le--6f81609f9c5158d2181600cf.md) | 25 | `result-track:6f81609f9c5158d2181600cfb1a9e99e55e5f170a13faef290c54afb14b94aaf` |
| 2 | `theorem` | [tendsto_atBot_mul_left_of_ge'](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/tendsto-atbot-mul-left-of-ge--f3d29408248649078b9170d2.md) | 30 | `result-track:f3d29408248649078b9170d21811c7548a7075fb4a800d0b09bac399dfc7239f` |
| 3 | `theorem` | [tendsto_atTop_mul_left_of_le](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/tendsto-attop-mul-left-of-le--199136a02c37143f8aa99cbc.md) | 35 | `result-track:199136a02c37143f8aa99cbc9785c31d2f3a5cd8f195d91616293b1e205fa54b` |
| 4 | `theorem` | [tendsto_atBot_mul_left_of_ge](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/tendsto-atbot-mul-left-of-ge--b56cb42f596ba559bb26fed9.md) | 40 | `result-track:b56cb42f596ba559bb26fed92d9b586a09fa2cfe6629994ebefa66a52a2e8705` |
| 5 | `theorem` | [tendsto_atTop_mul_right_of_le'](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/tendsto-attop-mul-right-of-le--d2e0176f65260204b73cde85.md) | 45 | `result-track:d2e0176f65260204b73cde852a7b3097e6f03f3b08da5b8efc565be7ee13a77e` |
| 6 | `theorem` | [tendsto_atBot_mul_right_of_ge'](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/tendsto-atbot-mul-right-of-ge--f734d0212b9bb4cc107550ee.md) | 50 | `result-track:f734d0212b9bb4cc107550eea6915f1937c17cf4582068a1185054f40e90d677` |
| 7 | `theorem` | [tendsto_atTop_mul_right_of_le](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/tendsto-attop-mul-right-of-le--a48913132d75f3d6e94fb03c.md) | 55 | `result-track:a48913132d75f3d6e94fb03ce548176a37d821c94fb735bd3d021cbee23fa6d8` |
| 8 | `theorem` | [tendsto_atBot_mul_right_of_ge](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/tendsto-atbot-mul-right-of-ge--cad3f142e4fc48adb0e1f6b3.md) | 60 | `result-track:cad3f142e4fc48adb0e1f6b31e94fc62bff8d00e793ff1a40d4a5f010e984e89` |
| 9 | `theorem` | [tendsto_atTop_mul_const_left](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/tendsto-attop-mul-const-left--ed614f64f35fca0c570e019f.md) | 65 | `result-track:ed614f64f35fca0c570e019f076332caa0e38e1aed643b442418a5bd01d0b824` |
| 10 | `theorem` | [tendsto_atBot_mul_const_left](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/tendsto-atbot-mul-const-left--abeb31a73a2963c5063481a9.md) | 70 | `result-track:abeb31a73a2963c5063481a9692dbad33565ab3faa056c9f7c73ebf37f55d9e3` |
| 11 | `theorem` | [tendsto_atTop_mul_const_right](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/tendsto-attop-mul-const-right--12360f83b07dfc5319a566a4.md) | 75 | `result-track:12360f83b07dfc5319a566a45f3400df6598f9fbdee520d70640b5dd3f4541c2` |
| 12 | `theorem` | [tendsto_atBot_mul_const_right](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/tendsto-atbot-mul-const-right--b6e2db2058755c4082f4171e.md) | 80 | `result-track:b6e2db2058755c4082f4171e07bcf75396c020ec0bc2b29330692bae4b74f8ba` |
| 13 | `theorem` | [map_inv_atBot](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/map-inv-atbot--a8655cfaf29e38fded0370e7.md) | 85 | `result-track:a8655cfaf29e38fded0370e712adbebb4e36eb84e33d7412180e3d40421df9e3` |
| 14 | `theorem` | [map_inv_atTop](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/map-inv-attop--92b9ce8ef352a3dd75aa344f.md) | 89 | `result-track:92b9ce8ef352a3dd75aa344f547a0d2f459d6c2749483934b0c1ed3d43f03bd3` |
| 15 | `theorem` | [comap_inv_atBot](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/comap-inv-atbot--791686ea16a1a5a642fc460a.md) | 93 | `result-track:791686ea16a1a5a642fc460a9933b5a9693e4b3b3b87224cdbdaee9844f700ab` |
| 16 | `theorem` | [comap_inv_atTop](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/comap-inv-attop--705010d1ff80dbd033b57ce5.md) | 97 | `result-track:705010d1ff80dbd033b57ce5b3dd21d41bfa3bc0d71518c6495078b2cea1a872` |
| 17 | `theorem` | [tendsto_inv_atTop_atBot](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/tendsto-inv-attop-atbot--db18626e2302683b0779f506.md) | 101 | `result-track:db18626e2302683b0779f506c8120f0216fbc46a50db3ef46f3088ec1e8a08da` |
| 18 | `theorem` | [tendsto_inv_atBot_atTop](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/tendsto-inv-atbot-attop--88db73c008c6df995db13c94.md) | 105 | `result-track:88db73c008c6df995db13c9491398a994d25da319f7f62b926f3fb439b819b32` |
| 19 | `theorem` | [tendsto_inv_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/tendsto-inv-attop-iff--e29d18b29cadb4b8039982ec.md) | 111 | `result-track:e29d18b29cadb4b8039982ec993ea3ea654b760f5d3b7f1600848926574cccde` |
| 20 | `theorem` | [tendsto_inv_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/tendsto-inv-atbot-iff--d7d9d0013ee21c2c92e11c8e.md) | 115 | `result-track:d7d9d0013ee21c2c92e11c8e75b63e4c1fb1c2e492d0722ff46a4bd08409fc7d` |
| 21 | `theorem` | [tendsto_mabs_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/tendsto-mabs-attop-attop--3c504658066357b301e1fefe.md) | 126 | `result-track:3c504658066357b301e1fefe3927c815def5f47008f39aa36cc2ec58b77932ce` |
| 22 | `theorem` | [tendsto_mabs_atBot_atTop](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/tendsto-mabs-atbot-attop--f9ecec31ee0491a1949b52b3.md) | 131 | `result-track:f9ecec31ee0491a1949b52b3cc6bbd0dec1a8fb3c11af0bf57271e183269c018` |
| 23 | `theorem` | [comap_mabs_atTop](../../../../../mathematics/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/declarations/comap-mabs-attop--82c49030761e91537b090823.md) | 135 | `result-track:82c49030761e91537b090823ce039f78692c6230fe1ae085c417d9786460b617` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

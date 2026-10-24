# Verification target: GRWTSK.Topology.GeneralTopology.Floor.Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa93f01fe87c6a2b20e190199ad7b5961ca73a52",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa93f01fe87c6a2b20e190199ad7b5961ca73a52`.

Source path: `GRWTSK/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Floor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Group` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_mul_pow_div_factorial_sub_atTop](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-mul-pow-div-factorial-sub-attop--f128edea2407d0a327b23944.md) | 45 | `result-track:f128edea2407d0a327b2394452a431e3d37390f0b101149bcea7a8ad16eb9fdd` |
| 2 | `theorem` | [tendsto_pow_div_factorial_atTop](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-pow-div-factorial-attop--65d2480d515e64120b3667f4.md) | 58 | `result-track:65d2480d515e64120b3667f41857bf783dcb30d4cbccebc9106b44b735ac1777` |
| 3 | `theorem` | [tendsto_floor_atTop](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-floor-attop--e2511ad947b19924d7bc7bc3.md) | 71 | `result-track:e2511ad947b19924d7bc7bc3c9de591bc214ff9f67d49abd5fbf66758640924d` |
| 4 | `theorem` | [tendsto_floor_atBot](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-floor-atbot--b61434995c482a6497ecf21b.md) | 75 | `result-track:b61434995c482a6497ecf21b7ef6a2858447b716b97fc5cf46da4768b1bf15ca` |
| 5 | `theorem` | [tendsto_ceil_atTop](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-ceil-attop--eff14e940a3ae8f5ecc8c656.md) | 78 | `result-track:eff14e940a3ae8f5ecc8c65623053da0ade4a5c12823b20657a9277935b31be5` |
| 6 | `theorem` | [tendsto_ceil_atBot](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-ceil-atbot--a58f8c36ee903c3b1f6f5c44.md) | 81 | `result-track:a58f8c36ee903c3b1f6f5c449a8314d3fbd0c29e22181235e0676c4131f58b3e` |
| 7 | `theorem` | [continuousOn_floor](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/continuouson-floor--a13dfbe5a7f41a4dcc051bff.md) | 89 | `result-track:a13dfbe5a7f41a4dcc051bff101a646d545eb342d5481e11fce02bae2a9c57aa` |
| 8 | `theorem` | [continuousOn_ceil](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/continuouson-ceil--b2610ab114af14e2ced33edd.md) | 93 | `result-track:b2610ab114af14e2ced33edd1b799bc6f464641c4ee3bee89b814fccedd72e22` |
| 9 | `theorem` | [tendsto_floor_right_pure_floor](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-floor-right-pure-floor--dc8018b72c6e7f85965f7d17.md) | 102 | `result-track:dc8018b72c6e7f85965f7d171a3054f339355a207ba1a998523167ffaf6a9237` |
| 10 | `theorem` | [tendsto_floor_right_pure](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-floor-right-pure--e55c6c6f5e815e0760b41589.md) | 106 | `result-track:e55c6c6f5e815e0760b41589f70e6b81e181632f7c53dc174c44c3c588ac88dd` |
| 11 | `theorem` | [tendsto_ceil_left_pure_ceil](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-ceil-left-pure-ceil--d4eebb909027b7a1f82a8bd1.md) | 109 | `result-track:d4eebb909027b7a1f82a8bd1693bcfa910d45f8d891ed7a7e2b93f544480353f` |
| 12 | `theorem` | [tendsto_ceil_left_pure](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-ceil-left-pure--b532fb7bb989b39e6fdf6f5a.md) | 114 | `result-track:b532fb7bb989b39e6fdf6f5ae887a09a6ed1dfd54b918edc11e2c7004bfba1fe` |
| 13 | `theorem` | [tendsto_floor_left_pure_ceil_sub_one](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-floor-left-pure-ceil-sub-one--8e65bdefef3dcd899b8433cb.md) | 117 | `result-track:8e65bdefef3dcd899b8433cb9867ada2ec6d8be29d172cace7c9784c79249185` |
| 14 | `theorem` | [tendsto_floor_left_pure_sub_one](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-floor-left-pure-sub-one--a7802edd4818cb850025cc29.md) | 124 | `result-track:a7802edd4818cb850025cc293a83a7352256c8f1b76f75e4540f22a7240ddcbb` |
| 15 | `theorem` | [tendsto_ceil_right_pure_floor_add_one](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-ceil-right-pure-floor-add-one--83e0417ae789b030d609cc3f.md) | 129 | `result-track:83e0417ae789b030d609cc3f8aecec9307c925273a3daa0e6f5146e195cf3ae6` |
| 16 | `theorem` | [tendsto_ceil_right_pure_add_one](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-ceil-right-pure-add-one--a58214ced517c0d2f842486b.md) | 135 | `result-track:a58214ced517c0d2f842486b9141b007640cf69c6339d8edd11bc5eeb859195c` |
| 17 | `theorem` | [tendsto_floor_right](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-floor-right--a1f2538c40be421c29eb7233.md) | 139 | `result-track:a1f2538c40be421c29eb723380e2eb53c66987178a1724fa6a0a1a7944e465c9` |
| 18 | `theorem` | [tendsto_floor_right'](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-floor-right--a76e83e73047053a4a374722.md) | 143 | `result-track:a76e83e73047053a4a374722c4f943e47843a51a59666c65aed2bf7b5727581e` |
| 19 | `theorem` | [tendsto_ceil_left](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-ceil-left--73a95bbe541de0c6077845cd.md) | 146 | `result-track:73a95bbe541de0c6077845cd3f66792e85e79695da83d1cfece5f9d9adf5b468` |
| 20 | `theorem` | [tendsto_ceil_left'](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-ceil-left--546f09c523d2a31a175988e2.md) | 150 | `result-track:546f09c523d2a31a175988e2ec60bad73271bc1e35a0cd8462f1bf77f51a8038` |
| 21 | `theorem` | [tendsto_floor_left](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-floor-left--a20ffd5b3a1921877d46494a.md) | 154 | `result-track:a20ffd5b3a1921877d46494a9b19f75b20a3a7a2f834fc1977e3c118c16a93f9` |
| 22 | `theorem` | [tendsto_ceil_right](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-ceil-right--8508e34028c79d47700068e7.md) | 159 | `result-track:8508e34028c79d47700068e7358f3cf6922ebbbf031c57550569bbe5c1a97a4e` |
| 23 | `theorem` | [tendsto_floor_left'](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-floor-left--788ccafd78ac472fb9f8945a.md) | 164 | `result-track:788ccafd78ac472fb9f8945a124b287ba72439b3fd1af57b4c3cd9b5c90fe491` |
| 24 | `theorem` | [tendsto_ceil_right'](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-ceil-right--05710d669a55da0b5026d03a.md) | 168 | `result-track:05710d669a55da0b5026d03af034e56b371f0cd57f0699c927246ac47c484826` |
| 25 | `theorem` | [continuousOn_fract](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/continuouson-fract--65deed22b2a276b9904a90a2.md) | 174 | `result-track:65deed22b2a276b9904a90a2a53bf6ccd29d6ca21654923a6b116f6700b09a4c` |
| 26 | `theorem` | [continuousAt_fract](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/continuousat-fract--e1a39afad1b2c5ef2f6ea106.md) | 178 | `result-track:e1a39afad1b2c5ef2f6ea106763ecc69ae67de98ef7a37f0292e8bf89afb77d5` |
| 27 | `theorem` | [tendsto_fract_left'](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-fract-left--71c01a09e6c10039b58623ca.md) | 185 | `result-track:71c01a09e6c10039b58623ca4a4759227ef1ce9784c229aedcb78d7eef2eb1a4` |
| 28 | `theorem` | [tendsto_fract_left](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-fract-left--382cc3df5699d666cc0ceace.md) | 191 | `result-track:382cc3df5699d666cc0ceace756822e91358e3f9e33a7d95737f239486a32443` |
| 29 | `theorem` | [tendsto_fract_right'](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-fract-right--894d87c9d643010ffd31fa3f.md) | 196 | `result-track:894d87c9d643010ffd31fa3f92e0c48fc8b82f68df5b0fc29b05e549bd455460` |
| 30 | `theorem` | [tendsto_fract_right](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/tendsto-fract-right--0c877ac1aba8ab23e1238f0c.md) | 200 | `result-track:0c877ac1aba8ab23e1238f0c8a2d93d9af93d2b2a885ee4c8b019b933f57a32d` |
| 31 | `theorem` | [ContinuousOn.comp_fract'](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/continuouson-comp-fract--7dd719380b8b47586348cbde.md) | 210 | `result-track:7dd719380b8b47586348cbdef24f2388947ffc919aae518e8b635f3a9057263e` |
| 32 | `theorem` | [ContinuousOn.comp_fract](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/continuouson-comp-fract--1fe7a272052ead0067665775.md) | 230 | `result-track:1fe7a272052ead00676657755425add265128fb25f2c064d54e563d3321590ed` |
| 33 | `theorem` | [ContinuousOn.comp_fract''](../../../../../mathematics/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/declarations/continuouson-comp-fract--768c1b2dfe6e36bf65149ede.md) | 236 | `result-track:768c1b2dfe6e36bf65149edee48929f307a1ed28dd3392cd2ecc6d679964b982` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

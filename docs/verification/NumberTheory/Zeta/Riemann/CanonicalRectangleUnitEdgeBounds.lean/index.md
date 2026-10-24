# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleUnitEdgeBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e39fc10f81917aeb91e75a02a28b8536b9e3332",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e39fc10f81917aeb91e75a02a28b8536b9e3332`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalRectangleRealEdgeEnclosure`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleRealEdgeEnclosure.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bottomSpeed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/bottomspeed--7ba6fb0a17cb919b0e065c2e.md) | 50 | `declaration-track:7ba6fb0a17cb919b0e065c2e139e99d4388e724e2bfedd349dc0689bbb782652` |
| 2 | `def` | [verticalSpeed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/verticalspeed--a9af5c5a8ad8639c09c15698.md) | 55 | `declaration-track:a9af5c5a8ad8639c09c156985e08c1380dfd772c3f7abc674fc040055aececaf` |
| 3 | `def` | [bottomParameter](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/bottomparameter--ed083b45d2fcdd0b066f166a.md) | 59 | `declaration-track:ed083b45d2fcdd0b066f166aa2afc248d3e89654f74877beb7a8f95dc19e64b9` |
| 4 | `def` | [rightParameter](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/rightparameter--fe870b9e52d3a2d9fd06995a.md) | 63 | `declaration-track:fe870b9e52d3a2d9fd06995a609b34de8fc8a0f6c36389d30417da207daf5685` |
| 5 | `def` | [leftParameter](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/leftparameter--157bdc985b76c6e74546e14d.md) | 68 | `declaration-track:157bdc985b76c6e74546e14d49e8547b1dfc5d9c4974506c60a974abf7f75e9a` |
| 6 | `theorem` | [bottomSpeed_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/bottomspeed-pos--8ab39c0c1795ec1b24055433.md) | 71 | `result-track:8ab39c0c1795ec1b240554333d7bc511ae6de49faac241854bfa09da38f0a5c0` |
| 7 | `theorem` | [verticalSpeed_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/verticalspeed-pos--ab34d04c6e6b67df0c371a6f.md) | 75 | `result-track:ab34d04c6e6b67df0c371a6f7dee238e52b41e05019fbda9bf4d1860efba5506` |
| 8 | `theorem` | [bottomParameter_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/bottomparameter-zero--fe73d3ac4e3ac64471eb7a6d.md) | 79 | `result-track:fe73d3ac4e3ac64471eb7a6d3d042120759cd96bbe5d2310bab24b8bfe5b57d6` |
| 9 | `theorem` | [bottomParameter_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/bottomparameter-one--d1fbb11615e8573da24df4ed.md) | 83 | `result-track:d1fbb11615e8573da24df4ed7cca9abf6c6d87cb0bb4131808edc15d015629b5` |
| 10 | `theorem` | [rightParameter_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/rightparameter-zero--ad35988482dc7b48901a407e.md) | 88 | `result-track:ad35988482dc7b48901a407e68da995a815d4aec5067e8ff4a38548de6764896` |
| 11 | `theorem` | [rightParameter_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/rightparameter-one--499d1b6c24e3e25b7877007f.md) | 92 | `result-track:499d1b6c24e3e25b7877007f0a72bfb94f2e4c5fafcc4ec2cd97f9931b7447a4` |
| 12 | `theorem` | [leftParameter_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/leftparameter-zero--c2705ef979181575297cb6a1.md) | 97 | `result-track:c2705ef979181575297cb6a14830b2cf55ff41961ab7a4c71b9af2385e2a2216` |
| 13 | `theorem` | [leftParameter_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/leftparameter-one--eda6321bf92634422210a75a.md) | 101 | `result-track:eda6321bf92634422210a75aa9d84aa89ff5194521340b413ca992cb25e3eac0` |
| 14 | `def` | [bottomUnitDensity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/bottomunitdensity--f216af03532bb03d6ce1df9d.md) | 108 | `declaration-track:f216af03532bb03d6ce1df9de82bc3fd6ef01d931aff82bf662927f3a1663eed` |
| 15 | `def` | [rightUnitDensity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/rightunitdensity--5f38719d614f8834b1dd4183.md) | 116 | `declaration-track:5f38719d614f8834b1dd4183f06e21999d0d209a27cf2e2f74f894f32dc9034e` |
| 16 | `def` | [leftUnitDensity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/leftunitdensity--6a322c0b8a85bbfd1334043c.md) | 122 | `declaration-track:6a322c0b8a85bbfd1334043c6cbba870089ea1e90f01eb3d58025e947bb074a2` |
| 17 | `theorem` | [integral_bottomUnitDensity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/integral-bottomunitdensity--8c2140f125c905435fd393a3.md) | 127 | `result-track:8c2140f125c905435fd393a3e21107f641c4bc5a8d686bc8343873c79a9f2a77` |
| 18 | `theorem` | [integral_rightUnitDensity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/integral-rightunitdensity--a9aa9dada0b5964ef34424d0.md) | 143 | `result-track:a9aa9dada0b5964ef34424d01ed335c98f602ad8736194942c070731963bebca` |
| 19 | `theorem` | [integral_leftUnitDensity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/integral-leftunitdensity--8fbe38cdcab30dcc9b1dc29b.md) | 165 | `result-track:8fbe38cdcab30dcc9b1dc29b8c0be9973e8c5c52f71677d3526369694f1abd5f` |
| 20 | `theorem` | [interval_contains_unit_integral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/interval-contains-unit-integral--7443befd8360a352d85979be.md) | 187 | `result-track:7443befd8360a352d85979be582fd677a961f932737df95a0e4e982619ae4751` |
| 21 | `theorem` | [integral_bottomUnitDensity_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/integral-bottomunitdensity-re--aaf3ffbf480f5155ba410666.md) | 208 | `result-track:aaf3ffbf480f5155ba4106662956c39289de684a92dee1bf33fe6b068193f170` |
| 22 | `theorem` | [integral_rightUnitDensity_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/integral-rightunitdensity-re--6e5a5019c2cca5691e00d4b7.md) | 216 | `result-track:6e5a5019c2cca5691e00d4b7c0958dea4b83f5f969011eeefbce165de0ce6d9c` |
| 23 | `theorem` | [integral_leftUnitDensity_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/integral-leftunitdensity-re--1b05854344cb22ab1f0654be.md) | 224 | `result-track:1b05854344cb22ab1f0654bef203dcb27b7913140db657623977e4107e6312fa` |
| 24 | `structure` | [UnitRectangleEdgeBounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/unitrectangleedgebounds--841bfaf71b94c0e4ece73b7a.md) | 236 | `declaration-track:841bfaf71b94c0e4ece73b7a3b918d8b7a852ee79dc4800f77adb9ad61f08837` |
| 25 | `def` | [toRealRectangleEdgeEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/torealrectangleedgeenclosure--d512a574e6204ce07bc89cd4.md) | 263 | `declaration-track:d512a574e6204ce07bc89cd45812eede5f8f91344b0e496820ab2afd1993f3ac` |
| 26 | `theorem` | [exact_positive_count_of_accepts](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/exact-positive-count-of-accepts--29630acf7ab89c694178f50f.md) | 286 | `result-track:29630acf7ab89c694178f50f0c4000183a11d7f94a6037599214824efb9f9300` |
| 27 | `theorem` | [rhThrough_of_unit_edge_count_margin](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/rhthrough-of-unit-edge-count-margin--d14b78fe0ec0d659e6b14c70.md) | 298 | `result-track:d14b78fe0ec0d659e6b14c70ce9144605445ecaabb038e320015c39a3f2475c8` |
| 28 | `theorem` | [endpoint_samples_do_not_supply_uniform_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/declarations/endpoint-samples-do-not-supply-uniform-bounds--45c073fd29303abebdcaca69.md) | 310 | `result-track:45c073fd29303abebdcaca6937907efd7fe8890257648213fe848accd8146e0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.GeneralTopology.AtTopBotIxx.Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62384a0d7de2eb41a8470cecb2a385ac0a4adec0",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62384a0d7de2eb41a8470cecb2a385ac0a4adec0`.

Source path: `GRWTSK/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.LeftRightNhds` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [comap_coe_nhdsLT_eq_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/comap-coe-nhdslt-eq-attop-iff--f996e3a2008aae4f6b2256cc.md) | 36 | `result-track:f996e3a2008aae4f6b2256ccf7382c4c1fb27d025556e2b6185d19b654d97960` |
| 2 | `theorem` | [comap_coe_nhdsGT_eq_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/comap-coe-nhdsgt-eq-atbot-iff--7c5db89adbdd481e4287218d.md) | 73 | `result-track:7c5db89adbdd481e4287218d968e22d9f771ac3114edf653c6d557700697c83f` |
| 3 | `theorem` | [comap_coe_nhdsLT_of_Ioo_subset](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/comap-coe-nhdslt-of-ioo-subset--2e70872ecce634b29e34ae35.md) | 80 | `result-track:2e70872ecce634b29e34ae35afc47c9cc40c565c11c4c430a4ff603310956bc4` |
| 4 | `theorem` | [comap_coe_nhdsGT_of_Ioo_subset](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/comap-coe-nhdsgt-of-ioo-subset--9a16908ed71d5a26b0740008.md) | 90 | `result-track:9a16908ed71d5a26b0740008e2191db6324b0986435a734970a29ae9779852f5` |
| 5 | `theorem` | [map_coe_atTop_of_Ioo_subset](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/map-coe-attop-of-ioo-subset--59800b15764c39786a7ff2c0.md) | 96 | `result-track:59800b15764c39786a7ff2c0be34b4d80518db49ac894534e9007b468d674d3c` |
| 6 | `theorem` | [map_coe_atBot_of_Ioo_subset](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/map-coe-atbot-of-ioo-subset--ad50c025c9c2392f08ad3497.md) | 106 | `result-track:ad50c025c9c2392f08ad34971276b2fc03d6ded5e2f0febcdd498676c044f434` |
| 7 | `theorem` | [comap_coe_Ioo_nhdsLT](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/comap-coe-ioo-nhdslt--5b901d6eedbfb4b4a4bf6631.md) | 116 | `result-track:5b901d6eedbfb4b4a4bf6631f17760df31dc83a167ded2a1328c50a245181729` |
| 8 | `theorem` | [comap_coe_Ioo_nhdsGT](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/comap-coe-ioo-nhdsgt--17ef9fa929a9932354aec9eb.md) | 124 | `result-track:17ef9fa929a9932354aec9eb5e060e6e2275a10f60af7b067fa166fa246015f7` |
| 9 | `theorem` | [comap_coe_Ioi_nhdsGT](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/comap-coe-ioi-nhdsgt--33be640f07e5015b161ca7d5.md) | 130 | `result-track:33be640f07e5015b161ca7d56a9e6974b222b3b12e4ec84fe17b0ca23e601368` |
| 10 | `theorem` | [comap_coe_Iio_nhdsLT](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/comap-coe-iio-nhdslt--e1a12fd2d12dec13904917a1.md) | 135 | `result-track:e1a12fd2d12dec13904917a11adeb47935304c9070315d47e66b5909ceb36663` |
| 11 | `theorem` | [map_coe_Ioo_atTop](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/map-coe-ioo-attop--b585e40e9007f8cb499b71ce.md) | 140 | `result-track:b585e40e9007f8cb499b71ce772c9dcff43bfd3c924b4952feed2ee54bd4ae2c` |
| 12 | `theorem` | [map_coe_Ioo_atBot](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/map-coe-ioo-atbot--82747f9920d8b0a7d2359852.md) | 145 | `result-track:82747f9920d8b0a7d235985228fa66e07a809cfd197500200f1d955c0624011f` |
| 13 | `theorem` | [map_coe_Ioi_atBot](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/map-coe-ioi-atbot--9f5dd8a308ff37dd5d8b0d4e.md) | 150 | `result-track:9f5dd8a308ff37dd5d8b0d4e123233a4192217c971b6a60aa20eae9b4808986e` |
| 14 | `theorem` | [map_coe_Iio_atTop](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/map-coe-iio-attop--2e459c0accc0f90a8eff4791.md) | 155 | `result-track:2e459c0accc0f90a8eff4791d15cca7d8f2d1ce33ab7a36f9ec223d163aebc5e` |
| 15 | `theorem` | [tendsto_comp_coe_Ioo_atTop](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/tendsto-comp-coe-ioo-attop--c5d7e6f6ffc9340f31d31867.md) | 162 | `result-track:c5d7e6f6ffc9340f31d31867975f83588dde3342efc062142e6cd0c76e9b0e5b` |
| 16 | `theorem` | [tendsto_comp_coe_Ioo_atBot](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/tendsto-comp-coe-ioo-atbot--fd9c88ccd993746fe6d72558.md) | 167 | `result-track:fd9c88ccd993746fe6d72558036125d90776472d88226873d0ce1937d3950a02` |
| 17 | `theorem` | [tendsto_comp_coe_Ioi_atBot](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/tendsto-comp-coe-ioi-atbot--109ebea12af6ff86aa126de9.md) | 172 | `result-track:109ebea12af6ff86aa126de98edbeca5bd5a949f450eecae711d45c00f112fdf` |
| 18 | `theorem` | [tendsto_comp_coe_Iio_atTop](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/tendsto-comp-coe-iio-attop--aa76affdd38343d1de06dc68.md) | 177 | `result-track:aa76affdd38343d1de06dc684d67c8552e30f79b0bac03c212e715fcaa314140` |
| 19 | `theorem` | [tendsto_Ioo_atTop](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/tendsto-ioo-attop--9af2607029ff07c0133817d5.md) | 182 | `result-track:9af2607029ff07c0133817d57baae2c4cb3dbf84ae5c326e16fe67c142c24ffd` |
| 20 | `theorem` | [tendsto_Ioo_atBot](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/tendsto-ioo-atbot--434adb8b9cbedc2d65248abb.md) | 187 | `result-track:434adb8b9cbedc2d65248abbe68587855d27f8dd0e056d7f4ab303d778c624d3` |
| 21 | `theorem` | [tendsto_Ioi_atBot](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/tendsto-ioi-atbot--93f84741d60ce41680b202d3.md) | 192 | `result-track:93f84741d60ce41680b202d3fbd97eed504ab76e92888f5baf93b263a2ffcee2` |
| 22 | `theorem` | [tendsto_Iio_atTop](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/tendsto-iio-attop--f08b46ab17875fedb5a2a266.md) | 197 | `result-track:f08b46ab17875fedb5a2a266c87a21cf6f28fb3acec0172919249878d6f5f944` |
| 23 | `theorem` | [locallyFinite_Icc_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/locallyfinite-icc-of-tendsto--3cdc53f7fd9fa606e781a25d.md) | 205 | `result-track:3cdc53f7fd9fa606e781a25d802af5a93e22b82139f2c5124fa54fc4ce61b155` |
| 24 | `theorem` | [locallyFinite_Ico_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/locallyfinite-ico-of-tendsto--e97c5cc9c5e4133b9505e718.md) | 227 | `result-track:e97c5cc9c5e4133b9505e71862fc4f21c879e1273d6e0df6b2d9a2bb3133027d` |
| 25 | `theorem` | [locallyFinite_Ioc_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/locallyfinite-ioc-of-tendsto--e7ce834d8899684b22565802.md) | 233 | `result-track:e7ce834d8899684b22565802a5849c2276c3a2fe184c6ba7b742446fec1c488f` |
| 26 | `theorem` | [locallyFinite_Ioo_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/declarations/locallyfinite-ioo-of-tendsto--0344500237a14d2d5d907f97.md) | 239 | `result-track:0344500237a14d2d5d907f977115b6a9a11413b961bfc36c3f9c698edbae02a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

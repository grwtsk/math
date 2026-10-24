# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.Ergodic.Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddfae9e1395437c14c71368a7bb5de36ee94b716",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddfae9e1395437c14c71368a7bb5de36ee94b716`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.Probability` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PreErgodic](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/preergodic--460d6b20ea9dd5b3a02f4cb0.md) | 49 | `declaration-track:460d6b20ea9dd5b3a02f4cb076ab62f5e74dbaf280d53729850125fe3a2f6282` |
| 2 | `structure` | [Ergodic](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/ergodic--3b6dcb5dc5e1c502d99d8b78.md) | 54 | `declaration-track:3b6dcb5dc5e1c502d99d8b78817503434e09471985010d998b716e2f0d60b4b2` |
| 3 | `structure` | [QuasiErgodic](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/quasiergodic--2664b7dc64a40292bccdfe6d.md) | 59 | `declaration-track:2664b7dc64a40292bccdfe6d416924ae89ac7052f1bbc360270a5dab8a10ffdd` |
| 4 | `theorem` | [ae_empty_or_univ](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/ae-empty-or-univ--c8904be0a4dc89712b17a9a0.md) | 66 | `result-track:c8904be0a4dc89712b17a9a06afaa909810b6d2615dc96538b8cf2c940ef1f75` |
| 5 | `theorem` | [measure_self_or_compl_eq_zero](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/measure-self-or-compl-eq-zero--6bf7c948bd9ea0f5c1420132.md) | 70 | `result-track:6bf7c948bd9ea0f5c142013236b6df5abebcb8b8cff0768e5c1cb3983e7f8bd2` |
| 6 | `theorem` | [ae_mem_or_ae_notMem](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/ae-mem-or-ae-notmem--754b3ec7aff14a9b7b311345.md) | 74 | `result-track:754b3ec7aff14a9b7b3113450d7c9bd711dc8020cdbec52676461228370a5824` |
| 7 | `theorem` | [prob_eq_zero_or_one](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/prob-eq-zero-or-one--4edb3566df327e69155dd033.md) | 81 | `result-track:4edb3566df327e69155dd033f17bd4f14953e81a411c67d81b5e7b1faba90265` |
| 8 | `theorem` | [of_iterate](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/of-iterate--b26c7dba8dbd769496dc963b.md) | 85 | `result-track:b26c7dba8dbd769496dc963b94a5edeab4881e471c87ed097144201a0a3b1074` |
| 9 | `theorem` | [smul_measure](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/smul-measure--d0e701487047b51a68d45615.md) | 88 | `result-track:d0e701487047b51a68d4561532e22aa583499b0a5c0bc5c2944782f5615d8386` |
| 10 | `theorem` | [zero_measure](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/zero-measure--e04a3f941d2028bbd080c334.md) | 92 | `result-track:e04a3f941d2028bbd080c334a313fbe03da5f1841b5d76f2ece472cfd5780853` |
| 11 | `theorem` | [preErgodic_of_preErgodic_conjugate](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/preergodic-of-preergodic-conjugate--f64b5bcdf93ee5ed5afa9c6f.md) | 101 | `result-track:f64b5bcdf93ee5ed5afa9c6f233469503a830695465a862c7b4eba822d5dbf7c` |
| 12 | `theorem` | [preErgodic_conjugate_iff](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/preergodic-conjugate-iff--20a9b3f216f7fbf23545523d.md) | 108 | `result-track:20a9b3f216f7fbf23545523d060265888e45ac26880e43b78f9bf6b07ebd6147` |
| 13 | `theorem` | [ergodic_conjugate_iff](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/ergodic-conjugate-iff--c2cf9ea8cbd86f3246c7daa2.md) | 115 | `result-track:c2cf9ea8cbd86f3246c7daa243a7ad3331850dbbe0ead0da23aced0ca10c4146` |
| 14 | `theorem` | [aeconst_set₀](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/aeconst-set--aeb62d1f8fdb2fb0b331df62.md) | 127 | `result-track:aeb62d1f8fdb2fb0b331df6286c4da81e598eff900fdfca29ad5000df88b72e1` |
| 15 | `theorem` | [ae_empty_or_univ₀](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/ae-empty-or-univ--a51475240718a229c32d2210.md) | 134 | `result-track:a51475240718a229c32d22102045ccc47f9ef626267a7721d8323248eabb593c` |
| 16 | `theorem` | [ae_mem_or_ae_notMem₀](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/ae-mem-or-ae-notmem--72e4ecde8a60c92f7485abb7.md) | 141 | `result-track:72e4ecde8a60c92f7485abb77f3e192129ff8d6ce6ef9950e768cc694971cdc4` |
| 17 | `theorem` | [smul_measure](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/smul-measure--64e74e57b26ccb0255691324.md) | 148 | `result-track:64e74e57b26ccb02556913245351c39a278745504386563f6580a1e23a75a392` |
| 18 | `theorem` | [zero_measure](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/zero-measure--a1176ee788fcd00ed6c237fe.md) | 152 | `result-track:a1176ee788fcd00ed6c237fe8004bdb544758e375934879434164f54823b44b2` |
| 19 | `theorem` | [quasiErgodic](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/quasiergodic--f0f52ba454a1071fb81a294e.md) | 162 | `result-track:f0f52ba454a1071fb81a294e586da82f721bae4b3ac27304fa349d66d52c0dc8` |
| 20 | `theorem` | [ae_empty_or_univ_of_preimage_ae_le'](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/ae-empty-or-univ-of-preimage-ae-le--baad5672174c4018a4880ad0.md) | 166 | `result-track:baad5672174c4018a4880ad09a22c26f53818f1188ed740a8c9cf7335ac0ea88` |
| 21 | `theorem` | [ae_empty_or_univ_of_ae_le_preimage'](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/ae-empty-or-univ-of-ae-le-preimage--93970c1eef4bc600caa6b8c3.md) | 173 | `result-track:93970c1eef4bc600caa6b8c3a8e322c401d2167d935829d507effdd34032dfd0` |
| 22 | `theorem` | [ae_empty_or_univ_of_image_ae_le'](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/ae-empty-or-univ-of-image-ae-le--d4416eac7f9c28395ef26653.md) | 180 | `result-track:d4416eac7f9c28395ef266531a9d3c324e8f9a953a41cf0f72af2665630f12e6` |
| 23 | `theorem` | [symm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/symm--7dc0d438d15e6b2e0c51b122.md) | 188 | `result-track:7dc0d438d15e6b2e0c51b1224f094f93e6956aa3440bed9ba65cde77f051feb7` |
| 24 | `theorem` | [symm_iff](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/symm-iff--cc4bf0101a171d236374ad16.md) | 193 | `result-track:cc4bf0101a171d236374ad16b41771dc9a798a33ad90af69b655afef44b9a673` |
| 25 | `theorem` | [smul_measure](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/smul-measure--80ee8a70b2e69d5e18d346f6.md) | 195 | `result-track:80ee8a70b2e69d5e18d346f67548b20f268a969d7cba135baec84b7e399398c4` |
| 26 | `theorem` | [zero_measure](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/zero-measure--72fc61ee89aebe4b757b1eb7.md) | 199 | `result-track:72fc61ee89aebe4b757b1eb74575f87b0f1c26172ae34ccb61d4040d51e4aca5` |
| 27 | `theorem` | [ae_empty_or_univ_of_preimage_ae_le](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/ae-empty-or-univ-of-preimage-ae-le--22024556ad84b37f74254a1a.md) | 208 | `result-track:22024556ad84b37f74254a1a8ffdba8bddff04c3489a7c5ce4f6f7c58f1a71ff` |
| 28 | `theorem` | [ae_empty_or_univ_of_ae_le_preimage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/ae-empty-or-univ-of-ae-le-preimage--790cc796aad4a4829774f1f9.md) | 212 | `result-track:790cc796aad4a4829774f1f98fbc059ec6f1644431ce2283b28aa5d9cace4d66` |
| 29 | `theorem` | [ae_empty_or_univ_of_image_ae_le](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/declarations/ae-empty-or-univ-of-image-ae-le--a8780da57a26ccec1ceb3cc5.md) | 216 | `result-track:a8780da57a26ccec1ceb3cc560938985c81ea8fa9111926501cd3c709cb7cf71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

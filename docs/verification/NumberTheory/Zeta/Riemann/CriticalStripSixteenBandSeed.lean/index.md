# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixteenBandSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aff46380930747ad27a451deecabe5835abd624a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aff46380930747ad27a451deecabe5835abd624a`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixteenBandBernstein`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandBernstein.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFifteenDerivativeWitness`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [source_negative_real](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/declarations/source-negative-real--7750e9321b61db0c10b324d6.md) | 23 | `result-track:7750e9321b61db0c10b324d64b82c39b69ab07e7a99fa5d53140c13932c5e092` |
| 2 | `theorem` | [source_norm_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/declarations/source-norm-lower--3e47c8a45d69674ac7faeafb.md) | 32 | `result-track:3e47c8a45d69674ac7faeafb43e2a8f96a66e5499009137b968ce44f2f01aee0` |
| 3 | `theorem` | [source_nonzero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/declarations/source-nonzero--263bce8be9b4f45020836cf4.md) | 39 | `result-track:263bce8be9b4f45020836cf4ac2151dc11c5da47ad110b4a267db07d93513329` |
| 4 | `def` | [upperBand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/declarations/upperband--92431bfd6870405837c4a604.md) | 47 | `declaration-track:92431bfd6870405837c4a604ce0b868331a6cc774917ce32559997ef09fc6c81` |
| 5 | `theorem` | [noTargetZero_upperBand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/declarations/notargetzero-upperband--26da75420feaae7b10b0a676.md) | 49 | `result-track:26da75420feaae7b10b0a6760252f4fd535003cd742a17b496d326aa245cfcb0` |
| 6 | `theorem` | [noTargetZero_signedBand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/declarations/notargetzero-signedband--7538618d7576758c5bd11a43.md) | 65 | `result-track:7538618d7576758c5bd11a43ea188de52f69f4500077b3690f92d0b183f0025c` |
| 7 | `theorem` | [shellRH_fifteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/declarations/shellrh-fifteen--ce9a94d891d22d58ad3fd6f3.md) | 79 | `result-track:ce9a94d891d22d58ad3fd6f31f35c434ae5331e978f780965c11446401cf7e80` |
| 8 | `theorem` | [windowRH_sixteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/declarations/windowrh-sixteen--9b406ad6a9d1549a5d190d26.md) | 88 | `result-track:9b406ad6a9d1549a5d190d26b95d45fdf65783315c91699c65b730b7f1c5b633` |
| 9 | `def` | [twoBandCover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/declarations/twobandcover--a9f619a2c288cf88e83dd438.md) | 93 | `declaration-track:a9f619a2c288cf88e83dd4380efc25d6254838b7441dba9656489946c9d8c931` |
| 10 | `theorem` | [twoBand_rhOn](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/declarations/twoband-rhon--10dc82e2f9b8483d081bd4c7.md) | 107 | `result-track:10dc82e2f9b8483d081bd4c70abd686847d219c1649fdfac1281302d28fa2734` |
| 11 | `def` | [deformation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/declarations/deformation--b999b2504cd770cf9ce4c377.md) | 110 | `declaration-track:b999b2504cd770cf9ce4c377ca214b03cc9a50a2c69202f7bb310cf3c410fad3` |
| 12 | `theorem` | [deformation_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/declarations/deformation-zero--3f24c164c3b0f58935e3f235.md) | 113 | `result-track:3f24c164c3b0f58935e3f235d64b9b461ab28ca9739b8e1a6a5dfb5cec4d88b4` |
| 13 | `theorem` | [deformation_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/declarations/deformation-one--8c4294f41c8a9a3d5b5ffdfb.md) | 114 | `result-track:8c4294f41c8a9a3d5b5ffdfb461160c6aaa28f33765bd921101dfaa74797386d` |
| 14 | `theorem` | [deformation_joint_continuous](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/declarations/deformation-joint-continuous--c29100a088921517eb93b000.md) | 116 | `result-track:c29100a088921517eb93b00056cee04a4f6db6652a7815290bb0fe570aedf67b` |
| 15 | `theorem` | [deformation_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/declarations/deformation-differentiableat--92dd982c130051bf3a2b2824.md) | 121 | `result-track:92dd982c130051bf3a2b282485484f8771e0013e5f8b88f42dfa31e51d9efbc8` |
| 16 | `theorem` | [deformation_norm_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/declarations/deformation-norm-lower--fef0e58da9a23e62225ba332.md) | 125 | `result-track:fef0e58da9a23e62225ba33266bd359d5a9835c5b99645cc90c5c9aa854f027c` |
| 17 | `theorem` | [inverse_deformation_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/declarations/inverse-deformation-differentiableat--c27ceb8177a092cddedcfc3b.md) | 140 | `result-track:c27ceb8177a092cddedcfc3b775e53af5db7dade9fdbd547d210c92f5d0ce5f1` |
| 18 | `theorem` | [window_seventeen_of_shell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/declarations/window-seventeen-of-shell--99b40cac5d811898fd7b1419.md) | 151 | `result-track:99b40cac5d811898fd7b141974c54ae58098e60cec2b4b95a1f5b00076381232` |
| 19 | `theorem` | [all_windows_of_above_sixteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/declarations/all-windows-of-above-sixteen--e026a1d5649e0c3b537bac80.md) | 154 | `result-track:e026a1d5649e0c3b537bac8099ce4dcef73eb7ce033610a2c7765469ef8b74e4` |
| 20 | `theorem` | [rh_of_above_sixteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandSeed.lean/declarations/rh-of-above-sixteen--00017cc6621428d39089d7c5.md) | 164 | `result-track:00017cc6621428d39089d7c5b91758b171eba962308d08c7af350c4ad7cf5f30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

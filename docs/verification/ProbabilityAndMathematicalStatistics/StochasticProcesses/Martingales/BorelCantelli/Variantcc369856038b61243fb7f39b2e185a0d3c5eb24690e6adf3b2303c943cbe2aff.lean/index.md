# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.StochasticProcesses.Martingales.BorelCantelli.Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "360faf71b2f4b003f028ce88b806ce86bd38e256",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `360faf71b2f4b003f028ce88b806ce86bd38e256`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Martingale.Convergence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Martingale.OptionalStopping` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Martingale.Centering` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leastGE](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/leastge--56230a12699e6f9daa27f2ca.md) | 50 | `declaration-track:56230a12699e6f9daa27f2ca902172b9bf8adfcaae8c1a391bc6ebb68de8a2c3` |
| 2 | `theorem` | [Adapted.isStoppingTime_leastGE](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/adapted-isstoppingtime-leastge--4fdc9f8b9973118b98a69ca1.md) | 54 | `result-track:4fdc9f8b9973118b98a69ca13ef5a1ec1c233552389dfea4a82e299bcfbfe5b2` |
| 3 | `theorem` | [leastGE_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/leastge-le--66efe7a40c2df0f2a27c9b83.md) | 59 | `result-track:66efe7a40c2df0f2a27c9b83970b4ea86b292fa87fc332f26932915f05cdd83d` |
| 4 | `theorem` | [leastGE_mono](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/leastge-mono--3e62dc1dce331e8b29bf6727.md) | 67 | `result-track:3e62dc1dce331e8b29bf67273660b793b265db9747c84a51bc8de45a3393b701` |
| 5 | `theorem` | [leastGE_eq_min](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/leastge-eq-min--f8f8d5b7ffd37ca716af5dc8.md) | 71 | `result-track:f8f8d5b7ffd37ca716af5dc8075815f06b3841f1e04461d4a59ba9058e9aff89` |
| 6 | `theorem` | [stoppedValue_stoppedValue_leastGE](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/stoppedvalue-stoppedvalue-leastge--fddc676e3d25170303e04aa1.md) | 89 | `result-track:fddc676e3d25170303e04aa15151f9da8a961f12202709c12d8a43d11f0e8b55` |
| 7 | `theorem` | [Submartingale.stoppedValue_leastGE](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/submartingale-stoppedvalue-leastge--93a559a13007630e9352b297.md) | 95 | `result-track:93a559a13007630e9352b2979a83a8794cfe2f9d31b6d13699c3b426b39bfbbf` |
| 8 | `theorem` | [norm_stoppedValue_leastGE_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/norm-stoppedvalue-leastge-le--8146a2e572440e61f4934daa.md) | 114 | `result-track:8146a2e572440e61f4934daa30ab46dd3ad6395f85096d7fea33e350edc84893` |
| 9 | `theorem` | [Submartingale.stoppedValue_leastGE_snorm_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/submartingale-stoppedvalue-leastge-snorm-le--c361aba32bc2ae648339c348.md) | 129 | `result-track:c361aba32bc2ae648339c348fd603d0407d217ce3edeb33b2a414d2dd1266e67` |
| 10 | `theorem` | [Submartingale.stoppedValue_leastGE_snorm_le'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/submartingale-stoppedvalue-leastge-snorm-le--c5920ef5c1c8d7a9a6dc69eb.md) | 139 | `result-track:c5920ef5c1c8d7a9a6dc69ebb08393debabfb354497b56dcbe66538a43f7f841` |
| 11 | `theorem` | [Submartingale.exists_tendsto_of_abs_bddAbove_aux](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/submartingale-exists-tendsto-of-abs-bddabove-aux--2d711378bd77c42b4abb6fc5.md) | 148 | `result-track:2d711378bd77c42b4abb6fc54016352cb2ac5122dd0cc9413eb83efb911eed1e` |
| 12 | `theorem` | [Submartingale.bddAbove_iff_exists_tendsto_aux](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/submartingale-bddabove-iff-exists-tendsto-aux--4f87af0fdb36da26b406df04.md) | 172 | `result-track:4f87af0fdb36da26b406df046eb94b5d02fdf4b26f967898f06005a41b1fca7c` |
| 13 | `theorem` | [Submartingale.bddAbove_iff_exists_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/submartingale-bddabove-iff-exists-tendsto--4f820b7769082cf09868f910.md) | 181 | `result-track:4f820b7769082cf09868f9107aecac43e0b24816808cb0333eec3ff9f932d083` |
| 14 | `theorem` | [Martingale.bddAbove_range_iff_bddBelow_range](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/martingale-bddabove-range-iff-bddbelow-range--f43c38195fb2d6231f852886.md) | 229 | `result-track:f43c38195fb2d6231f852886ffa06ddc909fab90ecbb5cb13fc999e336bd77df` |
| 15 | `theorem` | [Martingale.ae_not_tendsto_atTop_atTop](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/martingale-ae-not-tendsto-attop-attop--52ecee5c92813b8c910b6fc8.md) | 257 | `result-track:52ecee5c92813b8c910b6fc8bdffab1219a4005b7536bce7020ccaf364ef42a3` |
| 16 | `theorem` | [Martingale.ae_not_tendsto_atTop_atBot](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/martingale-ae-not-tendsto-attop-atbot--f0a193fc809b5f5856fd8855.md) | 264 | `result-track:f0a193fc809b5f5856fd88555fca3d405529bc2b9db13038c345db4e7c8ea0f4` |
| 17 | `def` | [process](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/process--f85fdfbb79112ddc656c18dd.md) | 275 | `declaration-track:f85fdfbb79112ddc656c18ddc8b0a98ce572b973467397829f52c18559022d0b` |
| 18 | `theorem` | [process_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/process-zero--08d302c0dfd5424146a8d184.md) | 281 | `result-track:08d302c0dfd5424146a8d18425c122f4a4e00d0cf06b7fbf57d2964be075bf50` |
| 19 | `theorem` | [adapted_process](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/adapted-process--1960d5b23d26e4e788933f1f.md) | 284 | `result-track:1960d5b23d26e4e788933f1f5a3ddfdfafc0209a433f06223a1a7cf914ae3a28` |
| 20 | `theorem` | [martingalePart_process_ae_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/martingalepart-process-ae-eq--77d618cc95bf69611881d635.md) | 289 | `result-track:77d618cc95bf69611881d635d580c2e8b628d4c5ffa9f4efb09b0212f7b04bfd` |
| 21 | `theorem` | [predictablePart_process_ae_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/predictablepart-process-ae-eq--e4ee0b83190690b638cd7146.md) | 297 | `result-track:e4ee0b83190690b638cd7146d858ffdcba5d068100d19da873a6339234d90426` |
| 22 | `theorem` | [process_difference_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/process-difference-le--d66ef6c167ccb0f29fa41e36.md) | 305 | `result-track:d66ef6c167ccb0f29fa41e36176749a4726c310dcdb75f99e1a6c14611acdc1f` |
| 23 | `theorem` | [integrable_process](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/integrable-process--6a8598f6c081bd1d9afc1b0d.md) | 314 | `result-track:6a8598f6c081bd1d9afc1b0df96a947ed7172f32679ae3eacc1b64be74e39570` |
| 24 | `theorem` | [tendsto_sum_indicator_atTop_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/tendsto-sum-indicator-attop-iff--a6f5ae3629d5c2061ad7bc91.md) | 326 | `result-track:a6f5ae3629d5c2061ad7bc916cb990f10ccd2b405461287ee05cdeaa73b8885b` |
| 25 | `theorem` | [tendsto_sum_indicator_atTop_iff'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/tendsto-sum-indicator-attop-iff--9e0b0dda83f7d441fdbb16b9.md) | 357 | `result-track:9e0b0dda83f7d441fdbb16b987932964c0003890769347c2101aecb7c0f8ada0` |
| 26 | `theorem` | [ae_mem_limsup_atTop_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/declarations/ae-mem-limsup-attop-iff--d389d42651a06ba2f3d9c51c.md) | 376 | `result-track:d389d42651a06ba2f3d9c51c69d8651c6f10d235bf70c80f87614f1e22a338ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

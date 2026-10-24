# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.StochasticProcesses.Martingales.BorelCantelli.Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f131dccc62d498aae4427b38d0096dfd40cfbfd4",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f131dccc62d498aae4427b38d0096dfd40cfbfd4`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Martingale.Convergence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Martingale.OptionalStopping` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Martingale.Centering` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leastGE](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/leastge--85558be5f9333b380c1feccb.md) | 58 | `declaration-track:85558be5f9333b380c1feccb35b1b9c5f2db1206eeebff258d1fb644259e7876` |
| 2 | `theorem` | [Adapted.isStoppingTime_leastGE](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/adapted-isstoppingtime-leastge--e1d5120b5e48ff5bd147009f.md) | 62 | `result-track:e1d5120b5e48ff5bd147009f3efca73c8d84d7aff3a4131969d82443ef084d0c` |
| 3 | `theorem` | [leastGE_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/leastge-le--0a3bacb2b9956593b5878571.md) | 67 | `result-track:0a3bacb2b9956593b5878571b1aa181b9bea6b0f739debdcfb9d75c1890a6615` |
| 4 | `theorem` | [leastGE_mono](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/leastge-mono--2a0aa8b26a26cd06455e9665.md) | 75 | `result-track:2a0aa8b26a26cd06455e966598b67ebea73301e688bdb4f7969998bb886ea14b` |
| 5 | `theorem` | [leastGE_eq_min](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/leastge-eq-min--ab6a0a7bd02938219bfc9a06.md) | 79 | `result-track:ab6a0a7bd02938219bfc9a0675510956f91755a7446e01b3435aed8eca3063ff` |
| 6 | `theorem` | [stoppedValue_stoppedValue_leastGE](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/stoppedvalue-stoppedvalue-leastge--924e1d09ddd344fb4662332e.md) | 97 | `result-track:924e1d09ddd344fb4662332ea4011a3025398daf799c7ec974b3a74f2f63ca73` |
| 7 | `theorem` | [Submartingale.stoppedValue_leastGE](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/submartingale-stoppedvalue-leastge--b63d44553ff9dbbdd4120dfb.md) | 103 | `result-track:b63d44553ff9dbbdd4120dfb1385e66643fe98d9e6cb3e6d921a6136391b23b0` |
| 8 | `theorem` | [norm_stoppedValue_leastGE_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/norm-stoppedvalue-leastge-le--9e242a11080b0c380d640799.md) | 122 | `result-track:9e242a11080b0c380d640799f5dcd46851360d00ed51f958f5e6df0a111e9906` |
| 9 | `theorem` | [Submartingale.stoppedValue_leastGE_snorm_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/submartingale-stoppedvalue-leastge-snorm-le--5d1d3304f1209c7f712d6599.md) | 137 | `result-track:5d1d3304f1209c7f712d6599fd6a4e38f1a928a02e6cb8f91cbd64780d1b4c2d` |
| 10 | `theorem` | [Submartingale.stoppedValue_leastGE_snorm_le'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/submartingale-stoppedvalue-leastge-snorm-le--5243c27a93faba5c5ce7801e.md) | 147 | `result-track:5243c27a93faba5c5ce7801ebb7ffce9c827a0ba11381a0f075ff459d87ead56` |
| 11 | `theorem` | [Submartingale.exists_tendsto_of_abs_bddAbove_aux](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/submartingale-exists-tendsto-of-abs-bddabove-aux--35a685d4803ad41e9a9adfc7.md) | 156 | `result-track:35a685d4803ad41e9a9adfc7a2567590aff794416a12a36e341ebe6be2de3ac4` |
| 12 | `theorem` | [Submartingale.bddAbove_iff_exists_tendsto_aux](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/submartingale-bddabove-iff-exists-tendsto-aux--9f1d554259027b083b878787.md) | 180 | `result-track:9f1d554259027b083b87878703ec73d1663804ef7e5388a3c67dbac73369ee29` |
| 13 | `theorem` | [Submartingale.bddAbove_iff_exists_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/submartingale-bddabove-iff-exists-tendsto--08dba0c29039ab2378c1e4e2.md) | 189 | `result-track:08dba0c29039ab2378c1e4e2b3196168763a6198162838d45f8bb5d0f60fb37d` |
| 14 | `theorem` | [Martingale.bddAbove_range_iff_bddBelow_range](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/martingale-bddabove-range-iff-bddbelow-range--8bf16a1b8cf996946d4f2285.md) | 237 | `result-track:8bf16a1b8cf996946d4f2285dfeb7b511b9b1fb7c680e7dcd5af0a7ebed78b12` |
| 15 | `theorem` | [Martingale.ae_not_tendsto_atTop_atTop](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/martingale-ae-not-tendsto-attop-attop--73a889686b0247df4c9fbe6e.md) | 265 | `result-track:73a889686b0247df4c9fbe6efee4596940eb8fc3cca07e8e3e1e495656e8ef75` |
| 16 | `theorem` | [Martingale.ae_not_tendsto_atTop_atBot](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/martingale-ae-not-tendsto-attop-atbot--ddf7e7a3c7c58ca216f6cfc4.md) | 272 | `result-track:ddf7e7a3c7c58ca216f6cfc453d00ea243d0d1aa6d690a250d8c4fd8439878dd` |
| 17 | `def` | [process](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/process--be0fc2e3f226403fcee16bac.md) | 283 | `declaration-track:be0fc2e3f226403fcee16bac6432eddd623fc4adc8c838fb993d7df3e377df6f` |
| 18 | `theorem` | [process_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/process-zero--f72f72d61d2d19b29460754c.md) | 289 | `result-track:f72f72d61d2d19b29460754cef71d58de51781d59b5102a46b4a299869e0845a` |
| 19 | `theorem` | [adapted_process](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/adapted-process--a3e4b2a980ae2ee71f47bf80.md) | 292 | `result-track:a3e4b2a980ae2ee71f47bf8033a92371bc37dd3b1ef1d1abbc03461c100803b3` |
| 20 | `theorem` | [martingalePart_process_ae_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/martingalepart-process-ae-eq--43e70410d97f3988005b2998.md) | 297 | `result-track:43e70410d97f3988005b29982b16e32d87ffe6083ab4d267c0f2232fb3f6e8ec` |
| 21 | `theorem` | [predictablePart_process_ae_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/predictablepart-process-ae-eq--22e305f0b4ca816e04027ca3.md) | 305 | `result-track:22e305f0b4ca816e04027ca30ef4897b226f3569a0034ae30accf1575e0f797b` |
| 22 | `theorem` | [process_difference_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/process-difference-le--e20f6b4ca1c5ac1f1a04cafd.md) | 313 | `result-track:e20f6b4ca1c5ac1f1a04cafd4522f7c73657ba3c03dcd7a73e27ef614f7fd486` |
| 23 | `theorem` | [integrable_process](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/integrable-process--e3b5129315e8ab32f065cab7.md) | 322 | `result-track:e3b5129315e8ab32f065cab70d12f8489669e0060b27310bc28153942f8b7d65` |
| 24 | `theorem` | [tendsto_sum_indicator_atTop_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/tendsto-sum-indicator-attop-iff--f083a594fb9589d56a51610b.md) | 334 | `result-track:f083a594fb9589d56a51610b55a8bdbfd7af5a53895ce54990c79e77d86772c3` |
| 25 | `theorem` | [tendsto_sum_indicator_atTop_iff'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/tendsto-sum-indicator-attop-iff--a306d93444feec211504e49c.md) | 365 | `result-track:a306d93444feec211504e49cbcddef387565f81e455434a9a36e6989b5c7ed54` |
| 26 | `theorem` | [ae_mem_limsup_atTop_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/declarations/ae-mem-limsup-attop-iff--2b9ba778c7a70990d0090e6c.md) | 384 | `result-track:2b9ba778c7a70990d0090e6ceff751a88cae824ddd6c3edf620a36789d026a99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

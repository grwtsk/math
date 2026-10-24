# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.StochasticProcesses.Martingales.BorelCantelli.Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8413f1a9e8b09cfcfc01dff919f75c3556411362",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8413f1a9e8b09cfcfc01dff919f75c3556411362`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.IndicatorCard` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Martingale.Centering` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Martingale.Convergence` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Martingale.OptionalStopping` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leastGE](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/leastge--4c7bc8f54911957e128af771.md) | 60 | `declaration-track:4c7bc8f54911957e128af7712100592808d097e69fed426bd0f0abbe1922faa5` |
| 2 | `theorem` | [Adapted.isStoppingTime_leastGE](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/adapted-isstoppingtime-leastge--77d12a83ddc1cbaebd9ffedd.md) | 63 | `result-track:77d12a83ddc1cbaebd9ffedd9a38f6c0658a99a44b370cfa352e311819e4f974` |
| 3 | `theorem` | [leastGE_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/leastge-le--505ec969b5d3929049067ad0.md) | 67 | `result-track:505ec969b5d3929049067ad0214c8acedf93230ea08a6aef55221d74fcfb9fd4` |
| 4 | `theorem` | [leastGE_mono](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/leastge-mono--4c0277cf465d292ab6a05cfc.md) | 74 | `result-track:4c0277cf465d292ab6a05cfcd5ef06922a638c6dc42eb5ff5c7cbeff7bfa8222` |
| 5 | `theorem` | [leastGE_eq_min](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/leastge-eq-min--fb8a4376c13eb7dab5cead97.md) | 77 | `result-track:fb8a4376c13eb7dab5cead979aecb53dff2f82644fe6c590caadb7870647e6c8` |
| 6 | `theorem` | [stoppedValue_stoppedValue_leastGE](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/stoppedvalue-stoppedvalue-leastge--40d0aa2209b89e2874b1e3ba.md) | 94 | `result-track:40d0aa2209b89e2874b1e3baf036ab90760c5de185810310fef798bec26c5576` |
| 7 | `theorem` | [Submartingale.stoppedValue_leastGE](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/submartingale-stoppedvalue-leastge--8880c8bcefade0631087a718.md) | 101 | `result-track:8880c8bcefade0631087a718aee20feb5d51d6497e1b75a9269e8a6f13eca3a5` |
| 8 | `theorem` | [norm_stoppedValue_leastGE_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/norm-stoppedvalue-leastge-le--381d3dd489102a4ceba99155.md) | 119 | `result-track:381d3dd489102a4ceba991557821996f9b42d3ce563c6222102eb28e0a500013` |
| 9 | `theorem` | [Submartingale.stoppedValue_leastGE_eLpNorm_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/submartingale-stoppedvalue-leastge-elpnorm-le--7d8484a4113c46c500807a7e.md) | 133 | `result-track:7d8484a4113c46c500807a7ee3b4a954a5ba83c572c87bb11dccb03ca27e20ba` |
| 10 | `theorem` | [Submartingale.stoppedValue_leastGE_eLpNorm_le'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/submartingale-stoppedvalue-leastge-elpnorm-le--4b0721c486f9e764faea8cfa.md) | 142 | `result-track:4b0721c486f9e764faea8cfaa6a0a1cbe0cab011b83dd624ce5cf04bc3989049` |
| 11 | `theorem` | [Submartingale.exists_tendsto_of_abs_bddAbove_aux](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/submartingale-exists-tendsto-of-abs-bddabove-aux--deb8fba43f7bdf5900fdcbb9.md) | 151 | `result-track:deb8fba43f7bdf5900fdcbb98dc03e9d836119d644024d529c0c0f971018f252` |
| 12 | `theorem` | [Submartingale.bddAbove_iff_exists_tendsto_aux](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/submartingale-bddabove-iff-exists-tendsto-aux--fd1c1e910bf7bb84eb20fc60.md) | 174 | `result-track:fd1c1e910bf7bb84eb20fc607d592424132be229c91ba0f24e5af0e789a92dd6` |
| 13 | `theorem` | [Submartingale.bddAbove_iff_exists_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/submartingale-bddabove-iff-exists-tendsto--d6809cc8b32b075e09b485fa.md) | 182 | `result-track:d6809cc8b32b075e09b485fa3e26afa0b6e9fbaa52845c6fc7aafcfbe80d88ef` |
| 14 | `theorem` | [Martingale.bddAbove_range_iff_bddBelow_range](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/martingale-bddabove-range-iff-bddbelow-range--b65fa5e147b2592319e54e44.md) | 229 | `result-track:b65fa5e147b2592319e54e440b61bfc06a8539f89240cdbce5b8e180469489f5` |
| 15 | `theorem` | [Martingale.ae_not_tendsto_atTop_atTop](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/martingale-ae-not-tendsto-attop-attop--6b12f8abffed388951406289.md) | 256 | `result-track:6b12f8abffed3889514062891c7b06cdee5fb4cf29e8837ba36bb6b03458627b` |
| 16 | `theorem` | [Martingale.ae_not_tendsto_atTop_atBot](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/martingale-ae-not-tendsto-attop-atbot--75b914de671e20470a18f4ef.md) | 262 | `result-track:75b914de671e20470a18f4ef4642b1ed9adbda77550ae2109dcf8b082505d540` |
| 17 | `def` | [process](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/process--b8a6204b4a16efbdc896ff07.md) | 272 | `declaration-track:b8a6204b4a16efbdc896ff077abb9ae388bd0de139bd694935e85fecf430fbef` |
| 18 | `theorem` | [process_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/process-zero--7944cfcb4e5783467f178fb2.md) | 277 | `result-track:7944cfcb4e5783467f178fb232d8d063b227de803eaab1a2533d6df95ada8137` |
| 19 | `theorem` | [adapted_process](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/adapted-process--c8e36da00f5c338e137da194.md) | 279 | `result-track:c8e36da00f5c338e137da194c229935e9c51eb5eda662bfe260001b0479cdf5d` |
| 20 | `theorem` | [martingalePart_process_ae_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/martingalepart-process-ae-eq--b479497bf2f571509b886b9e.md) | 283 | `result-track:b479497bf2f571509b886b9e88696d3a0bb6f6d7b94f1fbb88445e089a367c9a` |
| 21 | `theorem` | [predictablePart_process_ae_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/predictablepart-process-ae-eq--5d10a6e24aaa0c1d3d7c2807.md) | 290 | `result-track:5d10a6e24aaa0c1d3d7c2807f3910410730deaf4a476ed1d7b6489da23fada38` |
| 22 | `theorem` | [process_difference_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/process-difference-le--ee7b068d2350c284caf1c26a.md) | 297 | `result-track:ee7b068d2350c284caf1c26a4befe88922119618418da4436b246375fc16b00d` |
| 23 | `theorem` | [integrable_process](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/integrable-process--8350c7cde9e1dc7f6f52de58.md) | 305 | `result-track:8350c7cde9e1dc7f6f52de58c2e974dc1bb8ca1e4c9211c5e8f42fb560eab3d1` |
| 24 | `theorem` | [tendsto_sum_indicator_atTop_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/tendsto-sum-indicator-attop-iff--8e8b6906a7be3cdacdc5ed38.md) | 316 | `result-track:8e8b6906a7be3cdacdc5ed38e95cda037d8677833ecfec94b5cc99659cc92759` |
| 25 | `theorem` | [tendsto_sum_indicator_atTop_iff'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/tendsto-sum-indicator-attop-iff--e4990c98f6717704c97eb3c9.md) | 346 | `result-track:e4990c98f6717704c97eb3c93ca24852dd3f7f42f40771f2916c22f082490123` |
| 26 | `theorem` | [ae_mem_limsup_atTop_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/declarations/ae-mem-limsup-attop-iff--073be75c8f17a260c4bf8907.md) | 364 | `result-track:073be75c8f17a260c4bf8907f0538ac559e1a8808bc4b72fc0ba72efa7a83815` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

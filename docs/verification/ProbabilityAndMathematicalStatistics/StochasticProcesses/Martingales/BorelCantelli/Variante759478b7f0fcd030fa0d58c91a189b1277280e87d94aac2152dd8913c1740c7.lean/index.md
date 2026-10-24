# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.StochasticProcesses.Martingales.BorelCantelli.Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "106ccfa4c6d2f2ddd103ecea98e0869a124795c5",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `106ccfa4c6d2f2ddd103ecea98e0869a124795c5`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leastGE](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/leastge--0f1c70f1d05dec8cb167f101.md) | 52 | `declaration-track:0f1c70f1d05dec8cb167f101aaf69ad8b647dee956fa5508059ce25864af3045` |
| 2 | `theorem` | [StronglyAdapted.isStoppingTime_leastGE](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/stronglyadapted-isstoppingtime-leastge--1286914a45cd8eaf84962580.md) | 56 | `result-track:1286914a45cd8eaf84962580155b5613d1fdd8c6d7adcceae129a89f63fa61c3` |
| 3 | `def` | [stoppedAbove](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/stoppedabove--376996f2c2822599bb2999d5.md) | 66 | `declaration-track:376996f2c2822599bb2999d517742094cc998f665fa69c5498319ef066a87bf3` |
| 4 | `lemma` | [Submartingale.stoppedAbove](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/submartingale-stoppedabove--93549c509ecc8baa17b98a58.md) | 72 | `result-track:93549c509ecc8baa17b98a58f4d78b25c263cc72c73411b94a5a4fdd5c2e703b` |
| 5 | `theorem` | [stoppedAbove_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/stoppedabove-le--cbda85b28f72a53f42c303dc.md) | 78 | `result-track:cbda85b28f72a53f42c303dc13daf2c36e529b027dda705cdde728b45b763fcf` |
| 6 | `theorem` | [Submartingale.eLpNorm_stoppedAbove_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/submartingale-elpnorm-stoppedabove-le--c8ae568148ad8c301a6352f5.md) | 99 | `result-track:c8ae568148ad8c301a6352f54cc97254184b0045b4dcef06c4c0b6f32022f9b2` |
| 7 | `theorem` | [Submartingale.eLpNorm_stoppedAbove_le'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/submartingale-elpnorm-stoppedabove-le--64bcdb9d86f1a0bf933c1fa2.md) | 108 | `result-track:64bcdb9d86f1a0bf933c1fa2ca9d4c059ad86ca0871b40aa8c6970c9d9b186cc` |
| 8 | `theorem` | [Submartingale.exists_tendsto_of_abs_bddAbove_aux](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/submartingale-exists-tendsto-of-abs-bddabove-aux--d9289dc7b33dad374a8e3e47.md) | 117 | `result-track:d9289dc7b33dad374a8e3e470e6dae0a16d3dfe03bcca342133bcb5aef9c614a` |
| 9 | `theorem` | [Submartingale.bddAbove_iff_exists_tendsto_aux](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/submartingale-bddabove-iff-exists-tendsto-aux--aa52874f6748cf9ea83d852b.md) | 138 | `result-track:aa52874f6748cf9ea83d852bfc94b956abee117c0354e82cca9b1ec0f3ad34c1` |
| 10 | `theorem` | [Submartingale.bddAbove_iff_exists_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/submartingale-bddabove-iff-exists-tendsto--011bd6e85966ec412351dad0.md) | 146 | `result-track:011bd6e85966ec412351dad035ecdfaae6a9de6b5878cf458b0e12eec70d399a` |
| 11 | `theorem` | [Martingale.bddAbove_range_iff_bddBelow_range](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/martingale-bddabove-range-iff-bddbelow-range--3b750e588c35555b75d808b8.md) | 193 | `result-track:3b750e588c35555b75d808b84a6d5ac6bc21ccbf1c6f096686fff488b436cd03` |
| 12 | `theorem` | [Martingale.ae_not_tendsto_atTop_atTop](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/martingale-ae-not-tendsto-attop-attop--2a6fd666e1c1361fe34fda3e.md) | 220 | `result-track:2a6fd666e1c1361fe34fda3e1f472525f525dd43a604a55016074cec223fd8ba` |
| 13 | `theorem` | [Martingale.ae_not_tendsto_atTop_atBot](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/martingale-ae-not-tendsto-attop-atbot--8b87f5391c177d9f5b1b16ea.md) | 226 | `result-track:8b87f5391c177d9f5b1b16ea29cac3c050bd17f4eea5a59b7062a86e68d603d6` |
| 14 | `def` | [process](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/process--c6736e158bed6e90b75e6f74.md) | 236 | `declaration-track:c6736e158bed6e90b75e6f74d3364e6fe99b4ab7c03a9315875e09aa44ece739` |
| 15 | `theorem` | [process_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/process-zero--a3a7a5c8d9caf13c539c16b9.md) | 241 | `result-track:a3a7a5c8d9caf13c539c16b94ea340f4685e231b4dbc5c7066f4cdbf7d7fb566` |
| 16 | `theorem` | [stronglyAdapted_process](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/stronglyadapted-process--ce8bd9c10acd22e6998321c1.md) | 243 | `result-track:ce8bd9c10acd22e6998321c1796481ee4b067966227799a6b5fbf4bffeea0698` |
| 17 | `theorem` | [martingalePart_process_ae_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/martingalepart-process-ae-eq--e644eb04e0c125899c3f9cac.md) | 248 | `result-track:e644eb04e0c125899c3f9cac90d6c5e9d94b0550f9dbd28f55d8998ef31b8d8b` |
| 18 | `theorem` | [predictablePart_process_ae_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/predictablepart-process-ae-eq--73037c53a2e9342c8f5b022c.md) | 255 | `result-track:73037c53a2e9342c8f5b022c9f44b401fd762e462ae0041cbf9b95fee6da533d` |
| 19 | `theorem` | [process_difference_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/process-difference-le--f1c4fedaa844cdec1d53b952.md) | 262 | `result-track:f1c4fedaa844cdec1d53b952ae090b08499d34ac42de6812ac71bb50474c4851` |
| 20 | `theorem` | [integrable_process](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/integrable-process--ee3fd5c495e67ecac783d2d7.md) | 270 | `result-track:ee3fd5c495e67ecac783d2d737611854a668dbe12c4289410ff969f4ac6aa26e` |
| 21 | `theorem` | [tendsto_sum_indicator_atTop_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/tendsto-sum-indicator-attop-iff--a2c031220f21fa1dd695826a.md) | 281 | `result-track:a2c031220f21fa1dd695826a2ce61991ba1e1486b2557e4015cdcfa2a8225844` |
| 22 | `theorem` | [tendsto_sum_indicator_atTop_iff'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/tendsto-sum-indicator-attop-iff--0af3163e196291129ab038fc.md) | 312 | `result-track:0af3163e196291129ab038fc022ecf3fb7c83c988790b55ce7849b7f6e40bc1e` |
| 23 | `theorem` | [ae_mem_limsup_atTop_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/declarations/ae-mem-limsup-attop-iff--60deaa69951865886471941a.md) | 331 | `result-track:60deaa69951865886471941a918de75b428548d3745b8a22a88d1a63ddf11d5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

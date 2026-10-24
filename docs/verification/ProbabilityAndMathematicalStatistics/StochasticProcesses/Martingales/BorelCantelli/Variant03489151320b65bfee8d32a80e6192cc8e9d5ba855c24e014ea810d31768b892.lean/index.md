# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.StochasticProcesses.Martingales.BorelCantelli.Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a82be970be94326018b7b5192b6ace59da9bbe0",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a82be970be94326018b7b5192b6ace59da9bbe0`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean.json)

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
| 1 | `def` | [leastGE](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/leastge--fd7274c77a7baa51cc372a84.md) | 60 | `declaration-track:fd7274c77a7baa51cc372a8497af8c58ef0fc971ee501b890ce8d0c8b7ac3d1c` |
| 2 | `theorem` | [StronglyAdapted.isStoppingTime_leastGE](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/stronglyadapted-isstoppingtime-leastge--6d285d6689340efc77da2d58.md) | 64 | `result-track:6d285d6689340efc77da2d5866c171cd2c531ae62d1fb36c24a16a165abbe53d` |
| 3 | `def` | [stoppedAbove](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/stoppedabove--46379c80e93708c14778b195.md) | 74 | `declaration-track:46379c80e93708c14778b195cd43e1a9c8ae7999200146a7ee2621acb6a5cd36` |
| 4 | `lemma` | [Submartingale.stoppedAbove](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/submartingale-stoppedabove--46a974df512c28fecec651e3.md) | 80 | `result-track:46a974df512c28fecec651e34f7e16c501ea46b80575f5667825f0b3ecbe18c6` |
| 5 | `theorem` | [stoppedAbove_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/stoppedabove-le--9001327b93f028cbcf36ae41.md) | 86 | `result-track:9001327b93f028cbcf36ae41d8fc0d1a08733f351b13c60d145579491e545deb` |
| 6 | `theorem` | [Submartingale.eLpNorm_stoppedAbove_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/submartingale-elpnorm-stoppedabove-le--c23bd76596dcb4ec3efcaae8.md) | 107 | `result-track:c23bd76596dcb4ec3efcaae8b2aaf1651e4d5a7255a81da78c54cf160905f600` |
| 7 | `theorem` | [Submartingale.eLpNorm_stoppedAbove_le'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/submartingale-elpnorm-stoppedabove-le--46188c7b2d7627d62456cce3.md) | 116 | `result-track:46188c7b2d7627d62456cce36423ee2f992cc1fc90c40951d52d0e3060dd698a` |
| 8 | `theorem` | [Submartingale.exists_tendsto_of_abs_bddAbove_aux](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/submartingale-exists-tendsto-of-abs-bddabove-aux--88e64b3bacbc06a03273d885.md) | 125 | `result-track:88e64b3bacbc06a03273d885a2c52a004676683e9c084b89de8d8c656c24149c` |
| 9 | `theorem` | [Submartingale.bddAbove_iff_exists_tendsto_aux](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/submartingale-bddabove-iff-exists-tendsto-aux--b2fd1c14fc730323b9769888.md) | 146 | `result-track:b2fd1c14fc730323b9769888076905e190aad3e4c368ba106f5fd64d7d9afc8c` |
| 10 | `theorem` | [Submartingale.bddAbove_iff_exists_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/submartingale-bddabove-iff-exists-tendsto--d3757a0b5d391dfd29d87096.md) | 154 | `result-track:d3757a0b5d391dfd29d8709626bccb071e4a8458436cb5d618b9cfd5767f18ec` |
| 11 | `theorem` | [Martingale.bddAbove_range_iff_bddBelow_range](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/martingale-bddabove-range-iff-bddbelow-range--9e6887a5aa9c8ecba757cc6c.md) | 201 | `result-track:9e6887a5aa9c8ecba757cc6cc70651c6f9a254f1aeee10e83dc976572e85ef35` |
| 12 | `theorem` | [Martingale.ae_not_tendsto_atTop_atTop](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/martingale-ae-not-tendsto-attop-attop--b0ab88fce3b3ff49e442ab3d.md) | 228 | `result-track:b0ab88fce3b3ff49e442ab3dad9bc2873d3b12887811df0ef03e5b0446e9e7e6` |
| 13 | `theorem` | [Martingale.ae_not_tendsto_atTop_atBot](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/martingale-ae-not-tendsto-attop-atbot--696c79b7a82bff54a031c5c5.md) | 234 | `result-track:696c79b7a82bff54a031c5c519efd1ab4b8c4d6a6af262b92f558f3102fceb7c` |
| 14 | `def` | [process](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/process--7c2956085e5b3847d0c29923.md) | 244 | `declaration-track:7c2956085e5b3847d0c29923958830b1c4ac111ca7d6d9316840977ee357b4ae` |
| 15 | `theorem` | [process_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/process-zero--1d55b7f99511fee796dc50e9.md) | 249 | `result-track:1d55b7f99511fee796dc50e91a052c1ab1dbb82bf9ce3781a708ebbe7a0a7d28` |
| 16 | `theorem` | [stronglyAdapted_process](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/stronglyadapted-process--1f451ed00fe99bca4c059ccf.md) | 251 | `result-track:1f451ed00fe99bca4c059ccf219c9d8e02827f8ec718e95646d7a41538170ed8` |
| 17 | `theorem` | [martingalePart_process_ae_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/martingalepart-process-ae-eq--97d495dbb4641fc0ffeb0b4a.md) | 256 | `result-track:97d495dbb4641fc0ffeb0b4aa694fa85f66ee32c33defa4873dc3e0227c45d76` |
| 18 | `theorem` | [predictablePart_process_ae_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/predictablepart-process-ae-eq--c46d89c753e2b5c1ff09ab5f.md) | 263 | `result-track:c46d89c753e2b5c1ff09ab5fe4ab2bcea68a91ac0466efa877f2148185828b3b` |
| 19 | `theorem` | [process_difference_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/process-difference-le--df05a0c56b18de85c9b622c9.md) | 270 | `result-track:df05a0c56b18de85c9b622c97465457963ad9066fe8935d49f2e79ba1203f5cf` |
| 20 | `theorem` | [integrable_process](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/integrable-process--3a30e5b4eac19eecac18821e.md) | 278 | `result-track:3a30e5b4eac19eecac18821ec5a945db935cb418ef4ba5460416eb855c9e10aa` |
| 21 | `theorem` | [tendsto_sum_indicator_atTop_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/tendsto-sum-indicator-attop-iff--fdaa1d756bbf3f154cb8b0bd.md) | 289 | `result-track:fdaa1d756bbf3f154cb8b0bd7d90a8dfee9abee364110a2a243af162bc1e87bc` |
| 22 | `theorem` | [tendsto_sum_indicator_atTop_iff'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/tendsto-sum-indicator-attop-iff--171ff861953d717764f0c49c.md) | 320 | `result-track:171ff861953d717764f0c49cd14746741f382dbeb2614e3b1482fa0e49304dbd` |
| 23 | `theorem` | [ae_mem_limsup_atTop_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/declarations/ae-mem-limsup-attop-iff--afeaeb184f896651ba142d54.md) | 339 | `result-track:afeaeb184f896651ba142d54a21779ddc12bfac782763d4782b87b2e12919a5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

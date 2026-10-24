# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.StochasticProcesses.Martingales.BorelCantelli.Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e168e34ce7c2455cd4d04106b9a5857e19c0fdb",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e168e34ce7c2455cd4d04106b9a5857e19c0fdb`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.IndicatorCard` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Martingale.Centering` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Martingale.Convergence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Martingale.OptionalStopping` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leastGE](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/leastge--98de77d98e85b0d51e2cf347.md) | 52 | `declaration-track:98de77d98e85b0d51e2cf3471f323f0d8b0164a56d567e7d095e86640803841f` |
| 2 | `theorem` | [Adapted.isStoppingTime_leastGE](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/adapted-isstoppingtime-leastge--307e9337029e97b691784d3e.md) | 55 | `result-track:307e9337029e97b691784d3e3c70b1905342e53a4ae7841b2681d79b2d587430` |
| 3 | `theorem` | [leastGE_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/leastge-le--92689bd5da184ddd0b78ac90.md) | 59 | `result-track:92689bd5da184ddd0b78ac90be4961ebefc8928c18a22da656ac2d19ab85b082` |
| 4 | `theorem` | [leastGE_mono](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/leastge-mono--9bac4a68fc1e4f4978a53f84.md) | 66 | `result-track:9bac4a68fc1e4f4978a53f842b16ce6f0e1052afc6b24e04093bc10b8383e795` |
| 5 | `theorem` | [leastGE_eq_min](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/leastge-eq-min--9e25d0d92254c8d364bd2780.md) | 69 | `result-track:9e25d0d92254c8d364bd2780c65ad61a85f52783f602ba16f2fe8d32aadecd6b` |
| 6 | `theorem` | [stoppedValue_stoppedValue_leastGE](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/stoppedvalue-stoppedvalue-leastge--95928a1e58d332f3552093bc.md) | 86 | `result-track:95928a1e58d332f3552093bc305b0a106bc3ad1558b851ce0204a56e0f401278` |
| 7 | `theorem` | [Submartingale.stoppedValue_leastGE](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/submartingale-stoppedvalue-leastge--11c9ee746d9050bece970bf1.md) | 93 | `result-track:11c9ee746d9050bece970bf12a261fc0b538654513b4df64f2418bcda2560b1b` |
| 8 | `theorem` | [norm_stoppedValue_leastGE_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/norm-stoppedvalue-leastge-le--7e2e54531c01dd0bc819044d.md) | 111 | `result-track:7e2e54531c01dd0bc819044df6dfc113a559ef730add0376e020b40d6396c67f` |
| 9 | `theorem` | [Submartingale.stoppedValue_leastGE_eLpNorm_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/submartingale-stoppedvalue-leastge-elpnorm-le--2daf5be45b692c5085009f5d.md) | 125 | `result-track:2daf5be45b692c5085009f5d1eeb234fee1f7aacdaeb67b0231cd5b6d737ffc8` |
| 10 | `theorem` | [Submartingale.stoppedValue_leastGE_eLpNorm_le'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/submartingale-stoppedvalue-leastge-elpnorm-le--16c6d7ff31039fff76abf97c.md) | 134 | `result-track:16c6d7ff31039fff76abf97c802d72fe4f0950377446716346fe9c2a16c8ab57` |
| 11 | `theorem` | [Submartingale.exists_tendsto_of_abs_bddAbove_aux](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/submartingale-exists-tendsto-of-abs-bddabove-aux--f08369e44e68fd876e9a3faf.md) | 143 | `result-track:f08369e44e68fd876e9a3fafb7f5c84a252ac5fa11a6143c8c1a78d015110fd9` |
| 12 | `theorem` | [Submartingale.bddAbove_iff_exists_tendsto_aux](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/submartingale-bddabove-iff-exists-tendsto-aux--43f0802608719312b4aa0dde.md) | 166 | `result-track:43f0802608719312b4aa0ddea48d3296583714858479ac73d3b244dbc8106220` |
| 13 | `theorem` | [Submartingale.bddAbove_iff_exists_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/submartingale-bddabove-iff-exists-tendsto--b5120b61beab4a3c1fc63e85.md) | 174 | `result-track:b5120b61beab4a3c1fc63e85fce0905548156fe2e55ee2ddca72399dd31bdd0c` |
| 14 | `theorem` | [Martingale.bddAbove_range_iff_bddBelow_range](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/martingale-bddabove-range-iff-bddbelow-range--7a632c1981201003c0f7a29b.md) | 221 | `result-track:7a632c1981201003c0f7a29bab416a67c9a2ba2de7b189f36bb27086bcca8e80` |
| 15 | `theorem` | [Martingale.ae_not_tendsto_atTop_atTop](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/martingale-ae-not-tendsto-attop-attop--2e23261584c06a445f0d6378.md) | 248 | `result-track:2e23261584c06a445f0d6378a975613c8f89826e65962f072b9e62659445e556` |
| 16 | `theorem` | [Martingale.ae_not_tendsto_atTop_atBot](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/martingale-ae-not-tendsto-attop-atbot--7b6a1ac75859aed11f3402d7.md) | 254 | `result-track:7b6a1ac75859aed11f3402d76b05faa993fa7265e76aa968fe2cdc05b07b6fc3` |
| 17 | `def` | [process](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/process--bb8f72c38ba1edece61012b2.md) | 264 | `declaration-track:bb8f72c38ba1edece61012b2c27790ee4d86db695c8cd4f4f8d2113cee8a2fea` |
| 18 | `theorem` | [process_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/process-zero--c662f53b03a605e0b80a1e42.md) | 269 | `result-track:c662f53b03a605e0b80a1e42bcdd11b2d8d186ee8cb26cc3ea15646f99392096` |
| 19 | `theorem` | [adapted_process](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/adapted-process--dd6e5da23eb2a9d3cfea32ae.md) | 271 | `result-track:dd6e5da23eb2a9d3cfea32ae802dff4ed64048c5678c1239a5c0cd588c42bc71` |
| 20 | `theorem` | [martingalePart_process_ae_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/martingalepart-process-ae-eq--412cade55f6e201300b09486.md) | 275 | `result-track:412cade55f6e201300b0948604d433d1738cd42206232a8bf6c8004c0ae93b8c` |
| 21 | `theorem` | [predictablePart_process_ae_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/predictablepart-process-ae-eq--c35a95d679d5cee7a50f85a5.md) | 282 | `result-track:c35a95d679d5cee7a50f85a57e252b4fde0c4c50c07d9da2ea8dfa6c07e71056` |
| 22 | `theorem` | [process_difference_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/process-difference-le--4fbf31ae724c59eba674ee5c.md) | 289 | `result-track:4fbf31ae724c59eba674ee5c5434c194545ddbda2e9d5e6ab667abf27865b2c0` |
| 23 | `theorem` | [integrable_process](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/integrable-process--14b1c7d7684f931a4a376369.md) | 297 | `result-track:14b1c7d7684f931a4a3763692953f7f6c70d54f3adb6812270c2a786145ce72a` |
| 24 | `theorem` | [tendsto_sum_indicator_atTop_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/tendsto-sum-indicator-attop-iff--c9293c9b493ef8f3eca80e59.md) | 308 | `result-track:c9293c9b493ef8f3eca80e5907651bf5279f298bbbcf014f6bfb2fe5c40be5da` |
| 25 | `theorem` | [tendsto_sum_indicator_atTop_iff'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/tendsto-sum-indicator-attop-iff--d1b9a3efcf07e004f5ae5ae1.md) | 338 | `result-track:d1b9a3efcf07e004f5ae5ae15a5a0b8a517014306dfc6301631642e301642e32` |
| 26 | `theorem` | [ae_mem_limsup_atTop_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/declarations/ae-mem-limsup-attop-iff--f29a0c9663918579cf4e6fde.md) | 356 | `result-track:f29a0c9663918579cf4e6fdedbc6ce2cc7bdb1efac9a79103ccfc95cfa367c38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

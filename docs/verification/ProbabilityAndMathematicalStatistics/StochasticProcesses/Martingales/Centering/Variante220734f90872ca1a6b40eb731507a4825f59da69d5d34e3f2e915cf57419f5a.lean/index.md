# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.StochasticProcesses.Martingales.Centering.Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f1d95c99b523cf18c2281e130c4d1ffda0ac7cd",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f1d95c99b523cf18c2281e130c4d1ffda0ac7cd`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Martingale.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [predictablePart](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean/declarations/predictablepart--e98d6fa865e2c57550182f78.md) | 53 | `declaration-track:e98d6fa865e2c57550182f78dea8014dba262141dfaa6fef6f60b1e3f8976f7a` |
| 2 | `theorem` | [predictablePart_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean/declarations/predictablepart-zero--812d0cf7f97633e0a115c430.md) | 58 | `result-track:812d0cf7f97633e0a115c43074ee5d2f76759ef7245f0503110fbc8fb6e8adc3` |
| 3 | `theorem` | [adapted_predictablePart](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean/declarations/adapted-predictablepart--85bcf57999e94b2b4367f931.md) | 62 | `result-track:85bcf57999e94b2b4367f9311d6748d4536344cccb63ccddcf46b08d5b4ba83f` |
| 4 | `theorem` | [adapted_predictablePart'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean/declarations/adapted-predictablepart--a4411eea08c24fcbd0e27eed.md) | 67 | `result-track:a4411eea08c24fcbd0e27eed9898289944304fb86f7dc8d475db37bbda012380` |
| 5 | `def` | [martingalePart](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean/declarations/martingalepart--07c06cb85a571ad884b9cb21.md) | 74 | `declaration-track:07c06cb85a571ad884b9cb21926bdca85390d1251741a0671c3a055dcc36bae5` |
| 6 | `theorem` | [martingalePart_add_predictablePart](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean/declarations/martingalepart-add-predictablepart--abfa457dfd4f4b5ab18534e1.md) | 78 | `result-track:abfa457dfd4f4b5ab18534e1648b98883d3baba0b60233b30bc9c397171bcaf7` |
| 7 | `theorem` | [martingalePart_eq_sum](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean/declarations/martingalepart-eq-sum--e71986fb624995d4073a4ea4.md) | 83 | `result-track:e71986fb624995d4073a4ea45b388b3e11dba420da65b2f3418a12abaf0c8df9` |
| 8 | `theorem` | [adapted_martingalePart](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean/declarations/adapted-martingalepart--bd3e1b9b12ab75681d9a7c2f.md) | 90 | `result-track:bd3e1b9b12ab75681d9a7c2f59e541271874d68788815ca9657b952a4dc9fc91` |
| 9 | `theorem` | [integrable_martingalePart](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean/declarations/integrable-martingalepart--cede87b1a4ec68028c557952.md) | 94 | `result-track:cede87b1a4ec68028c557952758422a0440fe802f0b6201c572b352198e7f03f` |
| 10 | `theorem` | [martingale_martingalePart](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean/declarations/martingale-martingalepart--1e7fe5f020ee966119a31749.md) | 101 | `result-track:1e7fe5f020ee966119a31749f6a22be6a60b9470b4c54d14d90210eb8e0d8098` |
| 11 | `theorem` | [martingalePart_add_ae_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean/declarations/martingalepart-add-ae-eq--c99600e036c5d987b4ac7adf.md) | 143 | `result-track:c99600e036c5d987b4ac7adfadd33a27be697665a3f6aef588c4170ed0d62d84` |
| 12 | `theorem` | [predictablePart_add_ae_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean/declarations/predictablepart-add-ae-eq--c2dcef74fec2b39e9b3cfc16.md) | 163 | `result-track:c2dcef74fec2b39e9b3cfc16dc75b11a77aff2e22c313827fd46660a354f1eca` |
| 13 | `theorem` | [predictablePart_bdd_difference](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean/declarations/predictablepart-bdd-difference--1564e0375e76a15ba31ba687.md) | 174 | `result-track:1564e0375e76a15ba31ba6870dc2d9a8d81d2ee9f45afc5f911fbde54a939fb7` |
| 14 | `theorem` | [martingalePart_bdd_difference](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean/declarations/martingalepart-bdd-difference--d3625b3bba421dfa068e58a6.md) | 181 | `result-track:d3625b3bba421dfa068e58a63123e4beedc00c3f770eca73763d3edddb88c3de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

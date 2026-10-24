# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.StochasticProcesses.Martingales.Convergence.Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eee61c90e22fc45ce28b0e191e341db83914e3f0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eee61c90e22fc45ce28b0e191e341db83914e3f0`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.UniformIntegrable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Martingale.Upcrossing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_frequently_of_upcrossings_lt_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/declarations/not-frequently-of-upcrossings-lt-top--6f4640ae90b20e821d9472ba.md) | 108 | `result-track:6f4640ae90b20e821d9472bae4d9954aeea182d0a50ed9aac436d87db54f66e4` |
| 2 | `theorem` | [upcrossings_eq_top_of_frequently_lt](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/declarations/upcrossings-eq-top-of-frequently-lt--e6029971ab8368459c041470.md) | 129 | `result-track:e6029971ab8368459c04147053c3caaa5a62a2ecb8c79aa5b2faead95cbc7e74` |
| 3 | `theorem` | [tendsto_of_uncrossing_lt_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/declarations/tendsto-of-uncrossing-lt-top--be541deb978e06865260bf96.md) | 138 | `result-track:be541deb978e06865260bf9625721e6c9000bb0467d50477a9729d1bc1a4bd6c` |
| 4 | `theorem` | [Submartingale.upcrossings_ae_lt_top'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/declarations/submartingale-upcrossings-ae-lt-top--419177647e63152ed34af21c.md) | 151 | `result-track:419177647e63152ed34af21c81b1c4356f2df9bbc5fc63a78dd9b5ef25fe6e11` |
| 5 | `theorem` | [Submartingale.upcrossings_ae_lt_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/declarations/submartingale-upcrossings-ae-lt-top--e5d4332b773751e787c1a346.md) | 180 | `result-track:e5d4332b773751e787c1a3465cef05ef2bd02ad2f44b328ef8d3237c5ab150a1` |
| 6 | `theorem` | [Submartingale.exists_ae_tendsto_of_bdd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/declarations/submartingale-exists-ae-tendsto-of-bdd--6134d4c30b01463fe5eb93f5.md) | 187 | `result-track:6134d4c30b01463fe5eb93f502878f6ddc7cba18ec4293657a7ec25ec4a1327e` |
| 7 | `theorem` | [Submartingale.exists_ae_trim_tendsto_of_bdd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/declarations/submartingale-exists-ae-trim-tendsto-of-bdd--099c8d7edaac7f9962423123.md) | 193 | `result-track:099c8d7edaac7f9962423123d93e7c901d472f58088c364787efebac7e101266` |
| 8 | `theorem` | [Submartingale.ae_tendsto_limitProcess](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/declarations/submartingale-ae-tendsto-limitprocess--7288c4483501293d5268c88d.md) | 205 | `result-track:7288c4483501293d5268c88da68a178f92c5010afddab9164d58f596812473e5` |
| 9 | `theorem` | [Submartingale.memLp_limitProcess](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/declarations/submartingale-memlp-limitprocess--838ce47b6a2ca7dd3a299f62.md) | 230 | `result-track:838ce47b6a2ca7dd3a299f62e55aa32e32ede082bd2070a8b0ff6ee5f15aec64` |
| 10 | `theorem` | [Submartingale.tendsto_eLpNorm_one_limitProcess](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/declarations/submartingale-tendsto-elpnorm-one-limitprocess--1afb4da061f9d915d40c0840.md) | 311 | `result-track:1afb4da061f9d915d40c0840ca044c4d9d8dad24996656fddcbc1fe6ad5111b4` |
| 11 | `theorem` | [Submartingale.ae_tendsto_limitProcess_of_uniformIntegrable](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/declarations/submartingale-ae-tendsto-limitprocess-of-uniformintegrable--fb54220e41d350896214f37e.md) | 321 | `result-track:fb54220e41d350896214f37e21da0f08bb0214852785fb4a1b9b6604848c5a5f` |
| 12 | `theorem` | [Martingale.eq_condExp_of_tendsto_eLpNorm](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/declarations/martingale-eq-condexp-of-tendsto-elpnorm--b578b24b4dfade5d3f25e864.md) | 329 | `result-track:b578b24b4dfade5d3f25e86403d0bd4b9229eeadc8b02dcbb2f8f2a63cf49458` |
| 13 | `theorem` | [Martingale.ae_eq_condExp_limitProcess](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/declarations/martingale-ae-eq-condexp-limitprocess--3773bf296421f01a60de5f6e.md) | 350 | `result-track:3773bf296421f01a60de5f6edd68404b4aa61584e2a6a1d4154c0317ebe1b7ff` |
| 14 | `theorem` | [Integrable.tendsto_ae_condExp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/declarations/integrable-tendsto-ae-condexp--246c3c1dc6dbec69dc6ab02b.md) | 365 | `result-track:246c3c1dc6dbec69dc6ab02b7bb4fc4b12a0f71bff17bf63f55774566f2581ac` |
| 15 | `theorem` | [Integrable.tendsto_eLpNorm_condExp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/declarations/integrable-tendsto-elpnorm-condexp--040949913d5577940b9af3f9.md) | 422 | `result-track:040949913d5577940b9af3f9c6b2c4aa5f7bbe3a53cfda5683dd56f6d6e2dd9c` |
| 16 | `theorem` | [tendsto_ae_condExp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/declarations/tendsto-ae-condexp--2815963aa8793ece3cd0a9b8.md) | 437 | `result-track:2815963aa8793ece3cd0a9b8890713518ba10cf6044b1e636c6badea9eebb85e` |
| 17 | `theorem` | [tendsto_eLpNorm_condExp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/declarations/tendsto-elpnorm-condexp--11ddc8b6697ad5acd03fd460.md) | 451 | `result-track:11ddc8b6697ad5acd03fd460134e1b97d99ff54d47585538ce1f851936fd9c5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

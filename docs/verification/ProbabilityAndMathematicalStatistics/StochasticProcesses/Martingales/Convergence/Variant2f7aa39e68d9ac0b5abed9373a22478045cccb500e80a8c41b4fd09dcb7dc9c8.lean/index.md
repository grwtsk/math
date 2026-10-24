# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.StochasticProcesses.Martingales.Convergence.Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8295d1cfe59f4494e9c7aa6de6909ed0d37ceae0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8295d1cfe59f4494e9c7aa6de6909ed0d37ceae0`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.UniformIntegrable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Martingale.Upcrossing` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_frequently_of_upcrossings_lt_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/declarations/not-frequently-of-upcrossings-lt-top--7af83208bfd6093b09ee843f.md) | 116 | `result-track:7af83208bfd6093b09ee843f31ba08ed08722c5ba65ed361fac6150bb9827370` |
| 2 | `theorem` | [upcrossings_eq_top_of_frequently_lt](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/declarations/upcrossings-eq-top-of-frequently-lt--f41e4c6ada545229de02c903.md) | 137 | `result-track:f41e4c6ada545229de02c903599f6a325a8fba88e08202cb53f97c8301b4e92c` |
| 3 | `theorem` | [tendsto_of_uncrossing_lt_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/declarations/tendsto-of-uncrossing-lt-top--4a8afa423265908f94f75af6.md) | 146 | `result-track:4a8afa423265908f94f75af653396c26281829918ee3d801a8e77caede631f67` |
| 4 | `theorem` | [Submartingale.upcrossings_ae_lt_top'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/declarations/submartingale-upcrossings-ae-lt-top--d13e9d603eeeb8b120c8a261.md) | 159 | `result-track:d13e9d603eeeb8b120c8a26104f03101e7de98fbcfeca0346477d686aaad4932` |
| 5 | `theorem` | [Submartingale.upcrossings_ae_lt_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/declarations/submartingale-upcrossings-ae-lt-top--5cd6120b4a127d54a9675c70.md) | 188 | `result-track:5cd6120b4a127d54a9675c701d75af6ec6b438e963c55477679d9b2bbbba879c` |
| 6 | `theorem` | [Submartingale.exists_ae_tendsto_of_bdd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/declarations/submartingale-exists-ae-tendsto-of-bdd--1767d2d7d47c89695916ac4b.md) | 195 | `result-track:1767d2d7d47c89695916ac4b6592d1873d0fa574b7b10feb96395c88c6c4ed57` |
| 7 | `theorem` | [Submartingale.exists_ae_trim_tendsto_of_bdd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/declarations/submartingale-exists-ae-trim-tendsto-of-bdd--4ccda063c054804033f1fe6b.md) | 201 | `result-track:4ccda063c054804033f1fe6bc6b98c89c1ea208e00d3eb2e4e2cbe6582cadfca` |
| 8 | `theorem` | [Submartingale.ae_tendsto_limitProcess](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/declarations/submartingale-ae-tendsto-limitprocess--c689405f7a62cafea99b239b.md) | 213 | `result-track:c689405f7a62cafea99b239b0b8a71758c807afccc4bb339b72edcaf266dca62` |
| 9 | `theorem` | [Submartingale.memLp_limitProcess](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/declarations/submartingale-memlp-limitprocess--286bec93f178d01d10f560d8.md) | 238 | `result-track:286bec93f178d01d10f560d8466a5091771f51d5a2f62127e3a801ad6d7b56d2` |
| 10 | `theorem` | [Submartingale.tendsto_eLpNorm_one_limitProcess](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/declarations/submartingale-tendsto-elpnorm-one-limitprocess--58585df773d60d8e27660bcc.md) | 319 | `result-track:58585df773d60d8e27660bcce7228431dc8bd52450bc1dd1387866c62b2356c6` |
| 11 | `theorem` | [Submartingale.ae_tendsto_limitProcess_of_uniformIntegrable](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/declarations/submartingale-ae-tendsto-limitprocess-of-uniformintegrable--e53af623ccbe0f1aa006fb53.md) | 329 | `result-track:e53af623ccbe0f1aa006fb5364efb5df841bac62e44daf65aca3cbceb6f36773` |
| 12 | `theorem` | [Martingale.eq_condExp_of_tendsto_eLpNorm](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/declarations/martingale-eq-condexp-of-tendsto-elpnorm--8acd7dd7c2ab5cecc3ae2267.md) | 337 | `result-track:8acd7dd7c2ab5cecc3ae22670e81643b9547a38c11916eb550307c74555f3c94` |
| 13 | `theorem` | [Martingale.ae_eq_condExp_limitProcess](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/declarations/martingale-ae-eq-condexp-limitprocess--5a0ff463850b05bfd4205893.md) | 358 | `result-track:5a0ff463850b05bfd420589362b04cf97da303ba471871787afd2778e5b8351b` |
| 14 | `theorem` | [Integrable.tendsto_ae_condExp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/declarations/integrable-tendsto-ae-condexp--553e055aba6ce4f25a83ab11.md) | 373 | `result-track:553e055aba6ce4f25a83ab110c2dfc120d6ed3c947dfed4a4adc3f4228e6d8fd` |
| 15 | `theorem` | [Integrable.tendsto_eLpNorm_condExp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/declarations/integrable-tendsto-elpnorm-condexp--0ca8f9c831ee2bd7ef4af12b.md) | 430 | `result-track:0ca8f9c831ee2bd7ef4af12b52800d574c5fe147b7307fe99b546866ea5dde17` |
| 16 | `theorem` | [tendsto_ae_condExp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/declarations/tendsto-ae-condexp--9bc7dcd1a102693a437c1560.md) | 445 | `result-track:9bc7dcd1a102693a437c1560ef92d375e967e82f2b78d9d0362e5d60033995f8` |
| 17 | `theorem` | [tendsto_eLpNorm_condExp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/declarations/tendsto-elpnorm-condexp--69409dd1be56b20b8ce5ab0c.md) | 459 | `result-track:69409dd1be56b20b8ce5ab0cee67490cd953e77364c0d860b9a131b1abd3a376` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.WeilPositiveLimitCore

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3274afe26def0b38f11d9105f9edb26530ddafe0",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3274afe26def0b38f11d9105f9edb26530ddafe0`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.FiniteResidualTelescope`](../../../../../mathematics/Analysis/ErrorBounds/FiniteResidualTelescope.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticFeature`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis`](../../../../../mathematics/NumberTheory/Zeta/Riemann/Hypothesis.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ResidualFamily](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/declarations/residualfamily--e46ca2f354c49b4e0c6a56d1.md) | 33 | `declaration-track:e46ca2f354c49b4e0c6a56d1e1c6efcf15e6bc43a15ddc5b8b36da08a65eb050` |
| 2 | `def` | [ResidualFamily.total](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/declarations/residualfamily-total--023544a0be729094cc67c772.md) | 45 | `declaration-track:023544a0be729094cc67c772e83db70eaea782e8e286b1937904d8318632d06e` |
| 3 | `theorem` | [ResidualFamily.total_vanishes](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/declarations/residualfamily-total-vanishes--8f4e156089893a0c5551ede1.md) | 58 | `result-track:8f4e156089893a0c5551ede17d08db0bb533a9590900fce2b20749a272fead9b` |
| 4 | `structure` | [ExactResidualComparison](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/declarations/exactresidualcomparison--191a5acf4d2bfa9854cbb7b8.md) | 80 | `declaration-track:191a5acf4d2bfa9854cbb7b837d8c5cb1fcb56bf5ab97cd1b62c84aaf2065518` |
| 5 | `theorem` | [ExactResidualComparison.comparison_vanishes](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/declarations/exactresidualcomparison-comparison-vanishes--54c58d792bc29be2d05416bd.md) | 87 | `result-track:54c58d792bc29be2d05416bdd2a268a517f970636a9c8cb31a0eafc920314571` |
| 6 | `structure` | [PolarizedPositiveApproximation](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/declarations/polarizedpositiveapproximation--02d6c3f4e244378a903a8e54.md) | 116 | `declaration-track:02d6c3f4e244378a903a8e54dd3b178120daf8df8e33ceaf41201389f1adce7d` |
| 7 | `def` | [ExactResidualComparison.toPositiveApproximation](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/declarations/exactresidualcomparison-topositiveapproximation--925376eab0c709812aae2489.md) | 124 | `declaration-track:925376eab0c709812aae2489fc381947acb0ea3c56c92a497dd77a6c1577fc23` |
| 8 | `theorem` | [positive_diagonal_of_positiveApproximation](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/declarations/positive-diagonal-of-positiveapproximation--321d2bcbde1babc3b8509963.md) | 147 | `result-track:321d2bcbde1babc3b8509963bd1d29c220f18f26f151a5b671b7b9d87c09511a` |
| 9 | `structure` | [ExactPositivityCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/declarations/exactpositivitycriterion--d630891d72f447b04d59097c.md) | 165 | `declaration-track:d630891d72f447b04d59097c087f5e192e628226050b8761e0d5913d29c053d7` |
| 10 | `structure` | [WeilCriterionForZeta](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/declarations/weilcriterionforzeta--aae924629a163e1c558c25b6.md) | 171 | `declaration-track:aae924629a163e1c558c25b69c32af1883c86615c2ca3fcbcc1a59062fb77fe0` |
| 11 | `theorem` | [riemannHypothesis_of_positiveApproximation](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/declarations/riemannhypothesis-of-positiveapproximation--e1f566b6bedd9a2f3749669b.md) | 178 | `result-track:e1f566b6bedd9a2f3749669b0656ea7a3fd3cd919fecb7ddf5ef672e5ad75430` |
| 12 | `theorem` | [riemannHypothesis_of_positiveGramLimit](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/declarations/riemannhypothesis-of-positivegramlimit--d9ed584237b0c42742b2a6c7.md) | 187 | `result-track:d9ed584237b0c42742b2a6c74ceef535f84f9a70ea74ccbfbfe968f7912bc019` |
| 13 | `theorem` | [no_positiveApproximation_of_negativeWitness](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/declarations/no-positiveapproximation-of-negativewitness--f984664e6adc1dd51f0af335.md) | 195 | `result-track:f984664e6adc1dd51f0af335f1ed3d9867733210c33e663ed7ff21683b411007` |
| 14 | `theorem` | [not_rh_excludes_positiveApproximation](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/declarations/not-rh-excludes-positiveapproximation--a790442b8a25c8b0ad637763.md) | 206 | `result-track:a790442b8a25c8b0ad637763b9c609dedd0094c665e98e666458e2167b8431b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

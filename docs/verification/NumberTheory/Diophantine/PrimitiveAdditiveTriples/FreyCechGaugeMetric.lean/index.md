# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechGaugeMetric

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f780e01c0ca42b41ccd7d27ce062852b4e6d10fa",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f780e01c0ca42b41ccd7d27ce062852b4e6d10fa`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.LinearAlgebra.ThreeCellGaugeMetric`](../../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechHodgeComparison`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/index.md) — import line 12; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GaugeQuotient](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/declarations/gaugequotient--20bbed1b25bb06cc0f8a5f40.md) | 27 | `declaration-track:20bbed1b25bb06cc0f8a5f40b7332d7805d5fa17c4b071b2a421122cfc6f58a8` |
| 2 | `def` | [normalForm](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/declarations/normalform--86918ccba6827dcf20a795b4.md) | 31 | `declaration-track:86918ccba6827dcf20a795b44fabb8870814e69268de02ea2be17816d12c10bb` |
| 3 | `theorem` | [coefficient_normalForm](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/declarations/coefficient-normalform--28928733a0110f46f93cbce5.md) | 35 | `result-track:28928733a0110f46f93cbce549f16ebdd770e78eadc4e0404206b72af611b7d9` |
| 4 | `def` | [reducedEnergy](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/declarations/reducedenergy--c4850ba4e31c1b131f09635b.md) | 41 | `declaration-track:c4850ba4e31c1b131f09635b5d06940faa95d3bc24b7b1aa2dbe22c8eae6adf8` |
| 5 | `def` | [removedEnergy](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/declarations/removedenergy--397e686793c7f98600069a49.md) | 45 | `declaration-track:397e686793c7f98600069a498fb2cc57d219dd0d61b78e37f6516ac0445e0a5a` |
| 6 | `theorem` | [normalForm_energy](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/declarations/normalform-energy--8f9f7d1feaf126652c9e02ae.md) | 50 | `result-track:8f9f7d1feaf126652c9e02ae651ca14b7e858bd781ef62078aca3ed73fd98e0e` |
| 7 | `theorem` | [energy_pythagorean](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/declarations/energy-pythagorean--2b39076c9e11341d8ee375b8.md) | 56 | `result-track:2b39076c9e11341d8ee375b824cbf09c46b842e69d08380f3e88c0d09df17df9` |
| 8 | `theorem` | [removedEnergy_nonneg](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/declarations/removedenergy-nonneg--05801e77b1874eab9edf7bb7.md) | 61 | `result-track:05801e77b1874eab9edf7bb7ed7ed2dea7a79d0ec542cfdd6bc43000b81e073b` |
| 9 | `theorem` | [minimum_energy_le](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/declarations/minimum-energy-le--518fb71135aa8960ccbfd6b4.md) | 69 | `result-track:518fb71135aa8960ccbfd6b4d75d7734e159830e4175904d008bcd060c6f5f55` |
| 10 | `theorem` | [reducedEnergy_eq_of_class](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/declarations/reducedenergy-eq-of-class--e1cef3e14d05a14024b5aca1.md) | 75 | `result-track:e1cef3e14d05a14024b5aca18c45c862729e2e045a7e7b959c04bc2415c15030` |
| 11 | `def` | [quotientEnergy](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/declarations/quotientenergy--829fc4c4139eee436e8dd17f.md) | 86 | `declaration-track:829fc4c4139eee436e8dd17f7729d581f803e530bd7efca82beb53849a4bb33a` |
| 12 | `theorem` | [quotientEnergy_classOf](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/declarations/quotientenergy-classof--62537da78f5badbaef0879fc.md) | 89 | `result-track:62537da78f5badbaef0879fc3a1f21e2de4076f904ba49cbcb2b2978c1a2ebe3` |
| 13 | `theorem` | [quotientEnergy_minimum](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/declarations/quotientenergy-minimum--15e41ec624150c4501760c99.md) | 94 | `result-track:15e41ec624150c4501760c995386753b3f370c3c7b89f4ec4e391d8df7bc27b0` |
| 14 | `theorem` | [same_quotient_evolution](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/declarations/same-quotient-evolution--be41aff5e51aec227c2e7746.md) | 101 | `result-track:be41aff5e51aec227c2e7746afa18d6955b88f89469779ba983122dba4a301cd` |
| 15 | `theorem` | [normalForm_hodge](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/declarations/normalform-hodge--dc42f6719dc728dd22047b16.md) | 107 | `result-track:dc42f6719dc728dd22047b16e61344f67acf7e568d26251aaacf25e622540958` |
| 16 | `theorem` | [reducedEnergy_contraction](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/declarations/reducedenergy-contraction--b844f6bfdc05f7d8024973ac.md) | 113 | `result-track:b844f6bfdc05f7d8024973ac09931dfa6beed9a83df3549552c2df0bead34107` |
| 17 | `theorem` | [port_normalForm](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/declarations/port-normalform--c57ddba6e9a09cf8baa5ec93.md) | 125 | `result-track:c57ddba6e9a09cf8baa5ec93e3bb74b5962cde3bf98549e7890f3bbb462dd544` |
| 18 | `theorem` | [sixEnergy_port_bounds](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/declarations/sixenergy-port-bounds--bc92d7d3210499cf807958c0.md) | 132 | `result-track:bc92d7d3210499cf807958c06e6bbc2e9dd795539acb26ba9cfd25200dac38c7` |
| 19 | `theorem` | [reducedEnergy_port_bounds](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/declarations/reducedenergy-port-bounds--caee74164bc72d02d377f590.md) | 149 | `result-track:caee74164bc72d02d377f590ee9385b6245aee2c3474af872b3f46cca02d514a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

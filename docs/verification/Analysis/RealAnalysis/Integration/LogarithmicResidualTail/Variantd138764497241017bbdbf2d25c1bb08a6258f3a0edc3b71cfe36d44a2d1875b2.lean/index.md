# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicResidualTail.Variantd138764497241017bbdbf2d25c1bb08a6258f3a0edc3b71cfe36d44a2d1875b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "067b84b0ee56c78be2969c8a6222455bf9e99e57",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variantd138764497241017bbdbf2d25c1bb08a6258f3a0edc3b71cfe36d44a2d1875b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variantd138764497241017bbdbf2d25c1bb08a6258f3a0edc3b71cfe36d44a2d1875b2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variantd138764497241017bbdbf2d25c1bb08a6258f3a0edc3b71cfe36d44a2d1875b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `067b84b0ee56c78be2969c8a6222455bf9e99e57`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variantd138764497241017bbdbf2d25c1bb08a6258f3a0edc3b71cfe36d44a2d1875b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variantd138764497241017bbdbf2d25c1bb08a6258f3a0edc3b71cfe36d44a2d1875b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidual` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dampedCoefficient_reciprocal_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variantd138764497241017bbdbf2d25c1bb08a6258f3a0edc3b71cfe36d44a2d1875b2.lean/declarations/dampedcoefficient-reciprocal-sum--559a58def2a443675954c9c5.md) | 23 | `result-track:559a58def2a443675954c9c5a3af3ab8b39562cc5b05cbe56f66a0c01ba0f3e9` |
| 2 | `theorem` | [arithmeticResidual_eq_below_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variantd138764497241017bbdbf2d25c1bb08a6258f3a0edc3b71cfe36d44a2d1875b2.lean/declarations/arithmeticresidual-eq-below-one--47710b56d4c5d04353ca502f.md) | 32 | `result-track:47710b56d4c5d04353ca502fdf9a6a397194bc16a057401ff641d0048c405a53` |
| 3 | `theorem` | [arithmeticResidual_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variantd138764497241017bbdbf2d25c1bb08a6258f3a0edc3b71cfe36d44a2d1875b2.lean/declarations/arithmeticresidual-norm-le--cb4dfefee541972f3b7a0e44.md) | 47 | `result-track:cb4dfefee541972f3b7a0e4484aff750b7ee691581bb61dda0c8fdc675bd4e03` |
| 4 | `theorem` | [logResidual_eq_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variantd138764497241017bbdbf2d25c1bb08a6258f3a0edc3b71cfe36d44a2d1875b2.lean/declarations/logresidual-eq-of-neg--0af9f7e1db2a1bf41a3f215e.md) | 68 | `result-track:0af9f7e1db2a1bf41a3f215eb16e633cc323baed8a36379f7b107cf10221932e` |
| 5 | `theorem` | [logResidual_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variantd138764497241017bbdbf2d25c1bb08a6258f3a0edc3b71cfe36d44a2d1875b2.lean/declarations/logresidual-norm-le--578a84121736c84b16d35f41.md) | 78 | `result-track:578a84121736c84b16d35f412bf4eac1eea62eb824dd60feea33ecd092d3dd6c` |
| 6 | `theorem` | [logResidual_sq_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variantd138764497241017bbdbf2d25c1bb08a6258f3a0edc3b71cfe36d44a2d1875b2.lean/declarations/logresidual-sq-of-neg--0f4740383823bef21d6fa41d.md) | 86 | `result-track:0f4740383823bef21d6fa41d20d1ea20353ec28b14179c7e318f6664dcd59887` |
| 7 | `theorem` | [logResidual_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variantd138764497241017bbdbf2d25c1bb08a6258f3a0edc3b71cfe36d44a2d1875b2.lean/declarations/logresidual-sq-le--c1b44f966455858a4b7fe4e8.md) | 97 | `result-track:c1b44f966455858a4b7fe4e8394cfa8e3b17d781c13b500f31ffc7a40300731b` |
| 8 | `theorem` | [logResidual_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variantd138764497241017bbdbf2d25c1bb08a6258f3a0edc3b71cfe36d44a2d1875b2.lean/declarations/logresidual-memlp--f98cabb13d22db2968b9301d.md) | 108 | `result-track:f98cabb13d22db2968b9301d04b7851a567dbc6dd73b8c0fc5eb9461b54c0598` |
| 9 | `theorem` | [logResidual_negative_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variantd138764497241017bbdbf2d25c1bb08a6258f3a0edc3b71cfe36d44a2d1875b2.lean/declarations/logresidual-negative-integral--69ce155757dae5c2b903f9d1.md) | 130 | `result-track:69ce155757dae5c2b903f9d1d3fc7aa47e7d965c2b18f49748f4d63ee422ad3c` |
| 10 | `theorem` | [logResidual_positive_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variantd138764497241017bbdbf2d25c1bb08a6258f3a0edc3b71cfe36d44a2d1875b2.lean/declarations/logresidual-positive-integral-le--a1edbfd6d2c23ca9b4cbb7ac.md) | 143 | `result-track:a1edbfd6d2c23ca9b4cbb7ac1d18cf33e7b0ad833da2a9ed3002fdfffe82e51b` |
| 11 | `theorem` | [indicator_toLp_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variantd138764497241017bbdbf2d25c1bb08a6258f3a0edc3b71cfe36d44a2d1875b2.lean/declarations/indicator-tolp-norm-sq--84a4478de340f0f0a0113f24.md) | 160 | `result-track:84a4478de340f0f0a0113f247d1803217bacef60a460fc11d33c8655af74d89f` |
| 12 | `theorem` | [logResidual_negative_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variantd138764497241017bbdbf2d25c1bb08a6258f3a0edc3b71cfe36d44a2d1875b2.lean/declarations/logresidual-negative-norm--62d655c7a10b490b8a204c6e.md) | 169 | `result-track:62d655c7a10b490b8a204c6e4d347956e9a43df53f1c4263bee2956eb9501613` |
| 13 | `theorem` | [logResidual_positive_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variantd138764497241017bbdbf2d25c1bb08a6258f3a0edc3b71cfe36d44a2d1875b2.lean/declarations/logresidual-positive-norm-le--f6275bdc16f4cd67f9b51bb2.md) | 178 | `result-track:f6275bdc16f4cd67f9b51bb28d1d9fbbaacb09a872c2295ba7ea4c19ab758f66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

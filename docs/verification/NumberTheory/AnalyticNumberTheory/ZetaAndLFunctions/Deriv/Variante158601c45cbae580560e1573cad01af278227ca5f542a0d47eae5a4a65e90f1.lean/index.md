# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Deriv.Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b58015c3daa525dc2c2699bf62a1a7b36a95d78",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b58015c3daa525dc2c2699bf62a1a7b36a95d78`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Convergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.HalfPlane` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LSeries.logMul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean/declarations/lseries-logmul--a64e0de336741cb785cf968f.md) | 38 | `declaration-track:a64e0de336741cb785cf968f00c0d3b93dad0789adb6b7fdeea203536e523ee3` |
| 2 | `lemma` | [LSeries.hasDerivAt_term](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean/declarations/lseries-hasderivat-term--561cd48f15ed20ef9bf34357.md) | 41 | `result-track:561cd48f15ed20ef9bf343572ab972174bc790ae7c22b61fa9d0c13a6625dfdc` |
| 3 | `lemma` | [LSeries.LSeriesSummable_logMul_and_hasDerivAt](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean/declarations/lseries-lseriessummable-logmul-and-hasderivat--7e0e4c191ba83d7b0a8938f2.md) | 52 | `result-track:7e0e4c191ba83d7b0a8938f26c5f2f7eaf08d4845eb0734ee18fbb0270214211` |
| 4 | `lemma` | [LSeries_hasDerivAt](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean/declarations/lseries-hasderivat--240e0798d951ac71aa4a9e2c.md) | 76 | `result-track:240e0798d951ac71aa4a9e2c29c6fc778b8b9b31be0fca44560ea9e15962c17a` |
| 5 | `lemma` | [LSeries_deriv](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean/declarations/lseries-deriv--0a14a73009d2424efe076cc2.md) | 82 | `result-track:0a14a73009d2424efe076cc29f1520f8f088dde371b6bd337e0e1d6368031f42` |
| 6 | `lemma` | [LSeries_deriv_eqOn](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean/declarations/lseries-deriv-eqon--b9bc3c779ef3b263edb560a2.md) | 88 | `result-track:b9bc3c779ef3b263edb560a254b27a97a9eca874a0fa0870198ea1c4764b0147` |
| 7 | `lemma` | [LSeriesSummable_logMul_of_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean/declarations/lseriessummable-logmul-of-lt-re--7fb4aa457c4a1a9c9303450f.md) | 94 | `result-track:7fb4aa457c4a1a9c9303450f9bec78bfe77699412b3024a020caab770f275708` |
| 8 | `lemma` | [LSeries.abscissaOfAbsConv_logMul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean/declarations/lseries-abscissaofabsconv-logmul--44c62112a2ec7eefefd4c41f.md) | 101 | `result-track:44c62112a2ec7eefefd4c41f4f01d239fa450fe183dded2d3027401d06125775` |
| 9 | `lemma` | [LSeries.absicssaOfAbsConv_logPowMul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean/declarations/lseries-absicssaofabsconv-logpowmul--a011f21826a95c8a6aeb3d96.md) | 120 | `result-track:a011f21826a95c8a6aeb3d96b91b30aad1baf907fdb307a2cd273c998c0c5533` |
| 10 | `lemma` | [LSeries_iteratedDeriv](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean/declarations/lseries-iteratedderiv--354b1a2ab884dbc099b0fe89.md) | 129 | `result-track:354b1a2ab884dbc099b0fe892785b1886db7c9623926ea0c4f23171503b717bb` |
| 11 | `lemma` | [LSeries_differentiableOn](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean/declarations/lseries-differentiableon--cd2a5f9c8cf03acfc763bcd0.md) | 148 | `result-track:cd2a5f9c8cf03acfc763bcd0be42035b3549545e6da56197d309a9c48a41b4bc` |
| 12 | `lemma` | [LSeries_analyticOnNhd](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean/declarations/lseries-analyticonnhd--cb4f7e458da1640d8c98e41d.md) | 153 | `result-track:cb4f7e458da1640d8c98e41dbf9a1dd59c90af2243540aef0c8af8ca22d77fda` |
| 13 | `lemma` | [LSeries_analyticOn](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean/declarations/lseries-analyticon--fcf30d90bb842ff6e5b8c59c.md) | 157 | `result-track:fcf30d90bb842ff6e5b8c59c8b147e5481e793705af9c366fa0f82f0bd9af0ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

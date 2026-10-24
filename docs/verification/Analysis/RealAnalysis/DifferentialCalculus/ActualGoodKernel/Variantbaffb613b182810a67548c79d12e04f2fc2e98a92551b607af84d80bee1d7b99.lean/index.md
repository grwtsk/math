# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualGoodKernel.Variantbaffb613b182810a67548c79d12e04f2fc2e98a92551b607af84d80bee1d7b99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef97acbcee3afe9478111a6b70b490102503c477",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbaffb613b182810a67548c79d12e04f2fc2e98a92551b607af84d80bee1d7b99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbaffb613b182810a67548c79d12e04f2fc2e98a92551b607af84d80bee1d7b99.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbaffb613b182810a67548c79d12e04f2fc2e98a92551b607af84d80bee1d7b99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef97acbcee3afe9478111a6b70b490102503c477`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbaffb613b182810a67548c79d12e04f2fc2e98a92551b607af84d80bee1d7b99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbaffb613b182810a67548c79d12e04f2fc2e98a92551b607af84d80bee1d7b99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LogarithmicSource` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualLogSource_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbaffb613b182810a67548c79d12e04f2fc2e98a92551b607af84d80bee1d7b99.lean/declarations/actuallogsource-contdiff--d6c8359b7ec1a5b60c34e43c.md) | 26 | `result-track:d6c8359b7ec1a5b60c34e43caf1cb2395a15d5b2a326a0f8c73fbd75dd888c31` |
| 2 | `theorem` | [actualLogSource_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbaffb613b182810a67548c79d12e04f2fc2e98a92551b607af84d80bee1d7b99.lean/declarations/actuallogsource-tendsto-zero--3deadd261eecc666d96d2f96.md) | 44 | `result-track:3deadd261eecc666d96d2f96e6a81411d2a4932325e8d285f92cea3421ce2b3f` |
| 3 | `theorem` | [actualLogSource_deriv_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbaffb613b182810a67548c79d12e04f2fc2e98a92551b607af84d80bee1d7b99.lean/declarations/actuallogsource-deriv-hascompactsupport--357a2c2930e6d5ad42841454.md) | 51 | `result-track:357a2c2930e6d5ad42841454e212facf45b126e00902409db610c2a955d6207c` |
| 4 | `theorem` | [actualLogSource_integrable_global](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbaffb613b182810a67548c79d12e04f2fc2e98a92551b607af84d80bee1d7b99.lean/declarations/actuallogsource-integrable-global--677fd1c88c8cd81b2994c7f7.md) | 55 | `result-track:677fd1c88c8cd81b2994c7f7a1fd559c5f496a9adb7ccfb5be22829fb0a27364` |
| 5 | `theorem` | [actualLogSource_weighted_derivative_integrable_global](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbaffb613b182810a67548c79d12e04f2fc2e98a92551b607af84d80bee1d7b99.lean/declarations/actuallogsource-weighted-derivative-integrable-global--8e9ca335eef9d91a72ff68ac.md) | 60 | `result-track:8e9ca335eef9d91a72ff68ace64a6d408bf81a93cdd81ed086f86b17bd8cb21a` |
| 6 | `theorem` | [actualLogSource_weighted_derivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbaffb613b182810a67548c79d12e04f2fc2e98a92551b607af84d80bee1d7b99.lean/declarations/actuallogsource-weighted-derivative-integrable--07449b3aea31cf5afe145fb5.md) | 67 | `result-track:07449b3aea31cf5afe145fb5a1768ab9e1299d84cc66bb93180e1cbf2ecffac6` |
| 7 | `theorem` | [actual_good_kernel_hypotheses](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbaffb613b182810a67548c79d12e04f2fc2e98a92551b607af84d80bee1d7b99.lean/declarations/actual-good-kernel-hypotheses--236d5a907f583cb4b7d9d4c3.md) | 71 | `result-track:236d5a907f583cb4b7d9d4c351bb9a5b4ab5e1950251df4b3c5a627e13cfa060` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

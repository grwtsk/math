# Verification target: GRWTSK.Analysis.Complex.TentKernelTail

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa4c1d6ad206a6586ae0bb5f7f6e09912628e044",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/TentKernelTail.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelTail.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelTail.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa4c1d6ad206a6586ae0bb5f7f6e09912628e044`.

Source path: `GRWTSK/Analysis/Complex/TentKernelTail.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/TentKernelTail.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Series.HeightCountingTail`](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.TentMellinKernel`](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinKernel.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Topology.Algebra.InfiniteSum.Group` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tentTailBudget](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelTail.lean/declarations/tenttailbudget--d7da682240c8cafec0488b75.md) | 35 | `declaration-track:d7da682240c8cafec0488b752edfdc2d7150afbb19adf1e25dbd1a2388289772` |
| 2 | `theorem` | [tentTailBudget_beta_one](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelTail.lean/declarations/tenttailbudget-beta-one--a9ac27707518308cf735daf1.md) | 41 | `result-track:a9ac27707518308cf735daf1db8454bfee721ea1f30e50fbb6cde0fa52bea482` |
| 3 | `theorem` | [tent_family_tail](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelTail.lean/declarations/tent-family-tail--027faf9070c2c3bd9e4eaa16.md) | 53 | `result-track:027faf9070c2c3bd9e4eaa16f2aef34a85ca3093f85178630833b78930bcac18` |
| 4 | `theorem` | [tent_full_sum_and_remainder](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelTail.lean/declarations/tent-full-sum-and-remainder--bfd15d8a3cd7bf26ed90914f.md) | 95 | `result-track:bfd15d8a3cd7bf26ed90914f4ecf8d4fad90ced6fc7b17c989266a6be5a6467b` |
| 5 | `theorem` | [tent_full_sum_evaluation_error](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelTail.lean/declarations/tent-full-sum-evaluation-error--e98224485708e8cf0484a0d1.md) | 132 | `result-track:e98224485708e8cf0484a0d12d093d754f980c4fc8bbc2bf08ef53d612456753` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedLaplaceContinuation.Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9eb586df1318e97d7b7ae1c9872ee331754b3c6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9eb586df1318e97d7b7ae1c9872ee331754b3c6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelLaplace` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Topology` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4.lean/declarations/actuallaplace--bbc13c3fda97ca870b5ccd7b.md) | 25 | `declaration-track:bbc13c3fda97ca870b5ccd7b80dbf5905ff3d70058e6a042e14261e0b40d7a79` |
| 2 | `theorem` | [decay_derivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4.lean/declarations/decay-derivative-bound--a3a1af8ffec8bca2dc3337e5.md) | 28 | `result-track:a3a1af8ffec8bca2dc3337e59999efa295f012abaefbb7bf9b24c9e6187c000f` |
| 3 | `theorem` | [actualLaplace_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4.lean/declarations/actuallaplace-differentiableat--65396caa805bc232eb8965e5.md) | 41 | `result-track:65396caa805bc232eb8965e5dde71f9564e7b9d8f4d1308a9faf147715bee3d9` |
| 4 | `theorem` | [V_differentiableAt_of_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4.lean/declarations/v-differentiableat-of-ne-zero--031f19b32bf89bfa6504ceb7.md) | 93 | `result-track:031f19b32bf89bfa6504ceb789e84078edc1feb5479da71f48ab354071afcd6f` |
| 5 | `theorem` | [repairedTransfer_differentiableAt_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4.lean/declarations/repairedtransfer-differentiableat-of-ne--d08d23598e5b9a29a575f040.md) | 102 | `result-track:d08d23598e5b9a29a575f040212ec943505b18b722cddf3f349d4f0a33a4f146` |
| 6 | `theorem` | [repairedTransfer_analyticAt_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4.lean/declarations/repairedtransfer-analyticat-pole--8fc5069fd9e2970cf4e1b252.md) | 118 | `result-track:8fc5069fd9e2970cf4e1b2521fa316eac45a44bfae5f4fdc2a1e37d7d8fb428f` |
| 7 | `theorem` | [repairedTransfer_differentiableOn_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4.lean/declarations/repairedtransfer-differentiableon-positive--5e0d8649120130cea939c084.md) | 127 | `result-track:5e0d8649120130cea939c08419881b0006f335113002209de6a432d1a4675929` |
| 8 | `theorem` | [actualLaplace_analyticOn_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4.lean/declarations/actuallaplace-analyticon-positive--753162ed1a0f655b58e9cb16.md) | 139 | `result-track:753162ed1a0f655b58e9cb160fab985f55226f355fc8d845bdb64600e8923ac1` |
| 9 | `theorem` | [actualLaplace_eq_repairedTransfer](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4.lean/declarations/actuallaplace-eq-repairedtransfer--f7723bba10fb899e7e73daa2.md) | 146 | `result-track:f7723bba10fb899e7e73daa2e8493da3dc41dc6cdc3f12ab7a97a5f8144e334a` |
| 10 | `theorem` | [actualLaplace_at_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4.lean/declarations/actuallaplace-at-pole--5c8a931df545269f7d3899c4.md) | 161 | `result-track:5c8a931df545269f7d3899c44a9696dc157b22c5f452fc9cb321a1bb0fb0e392` |
| 11 | `theorem` | [actualLaplace_pole_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4.lean/declarations/actuallaplace-pole-ne-zero--deddbfdfb0a6392d623cf677.md) | 165 | `result-track:deddbfdfb0a6392d623cf677ef4778af8aa4ecc9240e80960c02e747d3d0cc86` |
| 12 | `theorem` | [actual_laplace_integral_eq_repairedTransfer](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4.lean/declarations/actual-laplace-integral-eq-repairedtransfer--eefa2d753744fa6efeec17f4.md) | 170 | `result-track:eefa2d753744fa6efeec17f4c4b9a3249c17212f937f051f8cd8fb2d019a27fa` |
| 13 | `theorem` | [actual_laplace_integral_at_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4.lean/declarations/actual-laplace-integral-at-pole--6a43ebce83cb86d6b78740f8.md) | 176 | `result-track:6a43ebce83cb86d6b78740f81be85161aa4184680de4a02505e981cbbc0eb3c9` |
| 14 | `theorem` | [actual_laplace_integral_zero_of_nontrivial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4.lean/declarations/actual-laplace-integral-zero-of-nontrivial--db1aec848c6fc3654d6cc34b.md) | 182 | `result-track:db1aec848c6fc3654d6cc34b5684e30f2376c8768b4077b73f7bacfd618f8d33` |
| 15 | `theorem` | [actual_laplace_integral_zero_occurrence](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Variant5a103a683b0e2f0585966e2f8e8ba2644df7fd5ee86cbd2d033b8524710acfe4.lean/declarations/actual-laplace-integral-zero-occurrence--c6160f63173c43e649401db8.md) | 193 | `result-track:c6160f63173c43e649401db868668c84ac2177a3eab08d1c07a51686550cbaac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

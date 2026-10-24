# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedLaplaceContinuationAudit.Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7c0b80f4bae43b74324c71115204488fe96c571",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7c0b80f4bae43b74324c71115204488fe96c571`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelLaplace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Topology` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean/declarations/actuallaplace--ec628c1708964de01e778f72.md) | 33 | `declaration-track:ec628c1708964de01e778f7226076d0bd36849f3ebb630b214a8a45141443ca9` |
| 2 | `theorem` | [decay_derivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean/declarations/decay-derivative-bound--b1c7354805f4e154156934d8.md) | 36 | `result-track:b1c7354805f4e154156934d8a2977ae337933bf3f7452173a8327bb1c61bf289` |
| 3 | `theorem` | [actualLaplace_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean/declarations/actuallaplace-differentiableat--7fd24c20b8d29cc428d6d11e.md) | 49 | `result-track:7fd24c20b8d29cc428d6d11e9f3d01f84a3ff945f39dc80d0bad9a049d306267` |
| 4 | `theorem` | [V_differentiableAt_of_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean/declarations/v-differentiableat-of-ne-zero--e5811e12617c3b19d0283f94.md) | 101 | `result-track:e5811e12617c3b19d0283f9440638db78d4dd6715a7f837d6d88d472ddc98e64` |
| 5 | `theorem` | [repairedTransfer_differentiableAt_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean/declarations/repairedtransfer-differentiableat-of-ne--33ab56923902d1739f1cc36d.md) | 110 | `result-track:33ab56923902d1739f1cc36d115bc49c81e7e6e8c988d3805ebb19af2b3ce4cb` |
| 6 | `theorem` | [repairedTransfer_analyticAt_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean/declarations/repairedtransfer-analyticat-pole--107e6f2dfe49faf72f3edb7f.md) | 126 | `result-track:107e6f2dfe49faf72f3edb7f4d93a01c8c0ef1db18aa6c6be9d754590804ea44` |
| 7 | `theorem` | [repairedTransfer_differentiableOn_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean/declarations/repairedtransfer-differentiableon-positive--df845b225eab0487e83bc174.md) | 135 | `result-track:df845b225eab0487e83bc1745377c5cd9fadf4f8abffe50f1b1bb8aff7be856e` |
| 8 | `theorem` | [actualLaplace_analyticOn_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean/declarations/actuallaplace-analyticon-positive--821831305220c2801f33279d.md) | 147 | `result-track:821831305220c2801f33279dcd5bc5a40dc29e08c92eb7fe6af20b40da75fa57` |
| 9 | `theorem` | [actualLaplace_eq_repairedTransfer](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean/declarations/actuallaplace-eq-repairedtransfer--5a3ef6f5b9f564190acb6dfc.md) | 154 | `result-track:5a3ef6f5b9f564190acb6dfcd0843d3b37a33d158d93b4a5a1e3c2d3286769ba` |
| 10 | `theorem` | [actualLaplace_at_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean/declarations/actuallaplace-at-pole--28d88450d619c49feb4e3ef4.md) | 169 | `result-track:28d88450d619c49feb4e3ef4ae943ffbc3754ee6a5c89552ffb7787455fe1efc` |
| 11 | `theorem` | [actualLaplace_pole_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean/declarations/actuallaplace-pole-ne-zero--3c9be1e1df6293b47882f209.md) | 173 | `result-track:3c9be1e1df6293b47882f209a32e449fa8b77fe7e8ae33e5dc2b3dd8ae264f9a` |
| 12 | `theorem` | [actual_laplace_integral_eq_repairedTransfer](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean/declarations/actual-laplace-integral-eq-repairedtransfer--561ddfa47193efbc1358ae8f.md) | 178 | `result-track:561ddfa47193efbc1358ae8f23a31a39a82b66fe7b80e8bb8bcd76966294abea` |
| 13 | `theorem` | [actual_laplace_integral_at_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean/declarations/actual-laplace-integral-at-pole--67732c80411262c407a66436.md) | 184 | `result-track:67732c80411262c407a66436b9ccc528587da785f81ea5c4130e9eabf0b07a96` |
| 14 | `theorem` | [actual_laplace_integral_zero_of_nontrivial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean/declarations/actual-laplace-integral-zero-of-nontrivial--b217d6c2ab4661da6cd2c0f8.md) | 190 | `result-track:b217d6c2ab4661da6cd2c0f8e78bcef62ff8d8e03fe0d9cc20b5470ac8e127bf` |
| 15 | `theorem` | [actual_laplace_integral_zero_occurrence](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean/declarations/actual-laplace-integral-zero-occurrence--19cacacc92014533cfd63aaf.md) | 201 | `result-track:19cacacc92014533cfd63aaf5dcfc65b539c6021f0ffd0837485f3be250ebc3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

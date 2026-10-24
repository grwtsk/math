# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedLaplaceContinuation.Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "604da024b2c8b8112cee9c487281a231b19c21a6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `604da024b2c8b8112cee9c487281a231b19c21a6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32.lean.json)

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
| 1 | `def` | [actualLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32.lean/declarations/actuallaplace--bde0e0196e774823bc7b98c1.md) | 33 | `declaration-track:bde0e0196e774823bc7b98c16ec8282f84b93c391231fa513b408b5d84ec9520` |
| 2 | `theorem` | [decay_derivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32.lean/declarations/decay-derivative-bound--b9462fa471312b26c29b76a3.md) | 36 | `result-track:b9462fa471312b26c29b76a312bb6d738f1cd573e726611cc71b9466aaa9e9a9` |
| 3 | `theorem` | [actualLaplace_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32.lean/declarations/actuallaplace-differentiableat--246c755df0383fb4cf388682.md) | 49 | `result-track:246c755df0383fb4cf388682e21a6916dd85019cfd84f9c8577d55f3bb24c5d1` |
| 4 | `theorem` | [V_differentiableAt_of_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32.lean/declarations/v-differentiableat-of-ne-zero--38024226f8e88653dec41c81.md) | 101 | `result-track:38024226f8e88653dec41c816f5f893734fe8dc345bea64b0e27d1e61a4d3123` |
| 5 | `theorem` | [repairedTransfer_differentiableAt_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32.lean/declarations/repairedtransfer-differentiableat-of-ne--1d4042e8d873c71b9a2efa61.md) | 110 | `result-track:1d4042e8d873c71b9a2efa61397e435330cb32547223a67e86a017cda453407a` |
| 6 | `theorem` | [repairedTransfer_analyticAt_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32.lean/declarations/repairedtransfer-analyticat-pole--6de4936dc87dfe4b93377735.md) | 126 | `result-track:6de4936dc87dfe4b9337773578b10649c39b964682b8cb123bfddbc2f542c623` |
| 7 | `theorem` | [repairedTransfer_differentiableOn_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32.lean/declarations/repairedtransfer-differentiableon-positive--8a85e921cafb55f2c79501d2.md) | 135 | `result-track:8a85e921cafb55f2c79501d2e53eb22e18704585cf89d8e0a8bb59808338e72f` |
| 8 | `theorem` | [actualLaplace_analyticOn_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32.lean/declarations/actuallaplace-analyticon-positive--b1d8f001beab152cfd5a396e.md) | 147 | `result-track:b1d8f001beab152cfd5a396e54cbcfb511eb0b63eb0caf4589455a9b604cd05a` |
| 9 | `theorem` | [actualLaplace_eq_repairedTransfer](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32.lean/declarations/actuallaplace-eq-repairedtransfer--c0aad71f035d24b49ad43eb3.md) | 154 | `result-track:c0aad71f035d24b49ad43eb3ed7de65bed11ef6bf5e691afa25bf5518ff7761f` |
| 10 | `theorem` | [actualLaplace_at_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32.lean/declarations/actuallaplace-at-pole--d7cfd52b83dca8425c64274b.md) | 169 | `result-track:d7cfd52b83dca8425c64274b71b4e5a4d08cc10b38626571a1fb9ac9ba72c775` |
| 11 | `theorem` | [actualLaplace_pole_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32.lean/declarations/actuallaplace-pole-ne-zero--f9fe3ccf187b3d56828f877e.md) | 173 | `result-track:f9fe3ccf187b3d56828f877e20c65eb453d3dfc86803afee346dc6683a68fd41` |
| 12 | `theorem` | [actual_laplace_integral_eq_repairedTransfer](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32.lean/declarations/actual-laplace-integral-eq-repairedtransfer--7c3fb7289ce4667159a3574f.md) | 178 | `result-track:7c3fb7289ce4667159a3574f919d646932cd80a7e74ccd0c18091411ba5eec20` |
| 13 | `theorem` | [actual_laplace_integral_at_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32.lean/declarations/actual-laplace-integral-at-pole--5cff3a945eae70b5ed7c0b87.md) | 184 | `result-track:5cff3a945eae70b5ed7c0b87a77095e74cb0776503c173ad7d313bfb9ac5be9a` |
| 14 | `theorem` | [actual_laplace_integral_zero_of_nontrivial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32.lean/declarations/actual-laplace-integral-zero-of-nontrivial--d7df8bd97b6cf985b0ecb9a2.md) | 190 | `result-track:d7df8bd97b6cf985b0ecb9a2f8b156448f2dd349173930611d3f2a60ffdfd34d` |
| 15 | `theorem` | [actual_laplace_integral_zero_occurrence](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuation/Varianta2770cdbba0b162b36413f39d8f3b490209853fb94ffa05d0364ff54fb0bfd32.lean/declarations/actual-laplace-integral-zero-occurrence--6254f67c41f9f3be1208feb3.md) | 201 | `result-track:6254f67c41f9f3be1208feb3b518f755aa3149a7444f1eaa8a81525c60e821a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

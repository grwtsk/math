# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualMuntzMellinProductAttempt02.Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da52e52fa999a7a1406570e12c0dfc6a42f78240",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da52e52fa999a7a1406570e12c0dfc6a42f78240`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzDirichlet` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.PathConnected` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [positiveHalfplane_isPreconnected](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513.lean/declarations/positivehalfplane-ispreconnected--2df18e09c85fa621669e0f9d.md) | 15 | `result-track:2df18e09c85fa621669e0f9d0c5bb2a81e8b44117322e86a8158ca6fb3419404` |
| 2 | `theorem` | [regularized_left_analytic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513.lean/declarations/regularized-left-analytic--8194d4e51ff0eee93e047d91.md) | 18 | `result-track:8194d4e51ff0eee93e047d919295da9b30eb6c13652be8a6c37bd741666249e9` |
| 3 | `theorem` | [regularized_right_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513.lean/declarations/regularized-right-differentiable--ffc91781151c39ac854263d2.md) | 25 | `result-track:ffc91781151c39ac854263d251e7975708cbc992086b8ceb84f91f56b15f569d` |
| 4 | `theorem` | [regularized_product_in_dirichlet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513.lean/declarations/regularized-product-in-dirichlet--d5f5807e1b5ff81a82950557.md) | 29 | `result-track:d5f5807e1b5ff81a8295055797525af4db2104a7477af8e0b7f0edc8817aa4f6` |
| 5 | `theorem` | [actual_muntz_mellin_regularized](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513.lean/declarations/actual-muntz-mellin-regularized--31b017ca2f7c0fc2ed4fef60.md) | 35 | `result-track:31b017ca2f7c0fc2ed4fef60501cfe87b1d5e7170ea98fd2559c30180132e520` |
| 6 | `theorem` | [actual_muntz_mellin_product](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513.lean/declarations/actual-muntz-mellin-product--6b4e6d8a440c4ccfe21bb3ed.md) | 49 | `result-track:6b4e6d8a440c4ccfe21bb3ed6ed09711bf798e905347b6aec9f5b0c189562463` |
| 7 | `theorem` | [actual_muntz_mellin_strip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513.lean/declarations/actual-muntz-mellin-strip--53b665cdbf7f90c23893ed7e.md) | 56 | `result-track:53b665cdbf7f90c23893ed7ecae68b5b61dadb180a0e79ee288e2295dce1a72c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.IntegerTaylorSeedControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "613d0f4c5951f59f996aaa77ac4568474aeb57b3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/IntegerTaylorSeedControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/IntegerTaylorSeedControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/IntegerTaylorSeedControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `613d0f4c5951f59f996aaa77ac4568474aeb57b3`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/IntegerTaylorSeedControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/IntegerTaylorSeedControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonIntegerSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [stage_zero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/IntegerTaylorSeedControls.lean/declarations/stage-zero--26c423d43cb6a8ecba24acb1.md) | 15 | `result-track:26c423d43cb6a8ecba24acb1adcd26a7b7d2c7d576515414b2a7883e45dd9fd3` |
| 2 | `theorem` | [factorial_and_complex_sign](../../../../../mathematics/NumberTheory/Chebyshev/Checks/IntegerTaylorSeedControls.lean/declarations/factorial-and-complex-sign--dcfdcd41116929d17d327b80.md) | 19 | `result-track:dcfdcd41116929d17d327b8074696866e8f81f4ab8a6a33741ae25e6ca543518` |
| 3 | `theorem` | [three_term_identity](../../../../../mathematics/NumberTheory/Chebyshev/Checks/IntegerTaylorSeedControls.lean/declarations/three-term-identity--8c9fa20b0297588378580034.md) | 23 | `result-track:8c9fa20b02975883785800346335694ecb8126a2a23b10e56a74fa8ab2a7aff1` |
| 4 | `theorem` | [negative_floor_rejects_truncation](../../../../../mathematics/NumberTheory/Chebyshev/Checks/IntegerTaylorSeedControls.lean/declarations/negative-floor-rejects-truncation--89fbe6d7ff87e66ab5867c86.md) | 29 | `result-track:89fbe6d7ff87e66ab5867c861d2d3ec64cbdc939f7e782cdcd38c0e438826031` |
| 5 | `theorem` | [strict_window_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/IntegerTaylorSeedControls.lean/declarations/strict-window-boundaries--3e4beb694cab36890348438e.md) | 34 | `result-track:3e4beb694cab36890348438ee3d84f428ffd34a7f51f489e141ccfa700ee989a` |
| 6 | `theorem` | [zero_denominator_excluded](../../../../../mathematics/NumberTheory/Chebyshev/Checks/IntegerTaylorSeedControls.lean/declarations/zero-denominator-excluded--4c72bfbe10540362a1fb2901.md) | 40 | `result-track:4c72bfbe10540362a1fb290131fea82e69c22b4be3d88a48af018a12feb82312` |
| 7 | `theorem` | [unreduced_representation](../../../../../mathematics/NumberTheory/Chebyshev/Checks/IntegerTaylorSeedControls.lean/declarations/unreduced-representation--1aeec73e19351b5d59ec9bf5.md) | 44 | `result-track:1aeec73e19351b5d59ec9bf5edc8a95a8066b1dd27f1e0fde6050d135a6334fb` |
| 8 | `theorem` | [start_error_not_three](../../../../../mathematics/NumberTheory/Chebyshev/Checks/IntegerTaylorSeedControls.lean/declarations/start-error-not-three--c43dd0b9120fa6412509fa19.md) | 49 | `result-track:c43dd0b9120fa6412509fa19f54661156af2d580347790a06b165c579bf6a6c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

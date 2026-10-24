# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.TentEdgeBoundControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b090482911f98b85259e0540127adb76462a09ae",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/TentEdgeBoundControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentEdgeBoundControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentEdgeBoundControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b090482911f98b85259e0540127adb76462a09ae`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/TentEdgeBoundControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/TentEdgeBoundControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.TentEdgeBounds`](../../../../../mathematics/NumberTheory/Chebyshev/TentEdgeBounds.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [negative_power_reverses_endpoint_order](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentEdgeBoundControls.lean/declarations/negative-power-reverses-endpoint-order--30980316346873d70ba9f432.md) | 28 | `result-track:30980316346873d70ba9f432570c5312a32e5d52e8f80bded69fbc936ec324b0` |
| 2 | `theorem` | [nonnegative_beta_rejects_left_substitution](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentEdgeBoundControls.lean/declarations/nonnegative-beta-rejects-left-substitution--b88e6f67e7bb901e995a1ba8.md) | 31 | `result-track:b88e6f67e7bb901e995a1ba80b7139cedfabd58a32e621133b09b78d4081f5d3` |
| 3 | `theorem` | [inverse_height_zero_is_not_cauchy_majorant](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentEdgeBoundControls.lean/declarations/inverse-height-zero-is-not-cauchy-majorant--919b9bef23ce9ca2457e2b7b.md) | 33 | `result-track:919b9bef23ce9ca2457e2b7b2f792e8bba9f2d5b28983aea17db84cfa2e5f92d` |
| 4 | `theorem` | [first_left_cutoff_outside_majorant_domain](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentEdgeBoundControls.lean/declarations/first-left-cutoff-outside-majorant-domain--2bae6c9ec9dc7f5806a82106.md) | 36 | `result-track:2bae6c9ec9dc7f5806a8210640b4e4be40400480b9e3bc4901806c0fb72e79d8` |
| 5 | `theorem` | [left_kernel_at_zero_height](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentEdgeBoundControls.lean/declarations/left-kernel-at-zero-height--878f458a167359f10f1ae130.md) | 40 | `result-track:878f458a167359f10f1ae1302d5385fca9a9399f0dda82a8f6c69488cc7ffb01` |
| 6 | `theorem` | [endpoint_one_rejects_log_budget](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentEdgeBoundControls.lean/declarations/endpoint-one-rejects-log-budget--5410d76c3040f45ae84b66ed.md) | 44 | `result-track:5410d76c3040f45ae84b66edbc3a33115470e15bd00195478745cb3a1aaf182c` |
| 7 | `theorem` | [quadratic_horizontal_growth_does_not_decay](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentEdgeBoundControls.lean/declarations/quadratic-horizontal-growth-does-not-decay--264a42371d2553f1f12a68a6.md) | 47 | `result-track:264a42371d2553f1f12a68a65bc2b4ba4dd07b577f5c96d516fa216ccabf9581` |
| 8 | `theorem` | [empty_principal_sum_does_not_bound_regular](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentEdgeBoundControls.lean/declarations/empty-principal-sum-does-not-bound-regular--1f83e4703d7f98ee4745b0ce.md) | 51 | `result-track:1f83e4703d7f98ee4745b0ceb40829dfdde70b7bdec061385cf3d345e52a7d46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

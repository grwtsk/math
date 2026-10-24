# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.HorizontalRayControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7ee22037ef7edf23020c69f6966168de2a5714c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/HorizontalRayControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/HorizontalRayControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/HorizontalRayControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7ee22037ef7edf23020c69f6966168de2a5714c`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/HorizontalRayControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/HorizontalRayControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.TentHorizontalRays`](../../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalRays.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fractional_anchor](../../../../../mathematics/NumberTheory/Chebyshev/Checks/HorizontalRayControls.lean/declarations/fractional-anchor--ec546714662729053100e59b.md) | 19 | `result-track:ec546714662729053100e59b4c9f6644aa869acced28a7d7916c0c17eb6aff8d` |
| 2 | `theorem` | [anchor_at_boundary](../../../../../mathematics/NumberTheory/Chebyshev/Checks/HorizontalRayControls.lean/declarations/anchor-at-boundary--3e7943c513e1a8b38c7c27f5.md) | 23 | `result-track:3e7943c513e1a8b38c7c27f541f0ec575934d2c17e7331e5c7ba08b0218a7446` |
| 3 | `theorem` | [zero_height_contains_actual_trivial_zero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/HorizontalRayControls.lean/declarations/zero-height-contains-actual-trivial-zero--106b3e9b7903861f0a8d1270.md) | 27 | `result-track:106b3e9b7903861f0a8d1270062b6eb48a2d25ccfc2bbdc947c675b8438d985a` |
| 4 | `theorem` | [shifted_and_reflected_height](../../../../../mathematics/NumberTheory/Chebyshev/Checks/HorizontalRayControls.lean/declarations/shifted-and-reflected-height--b9c67f797bdb22d9c6ca2805.md) | 31 | `result-track:b9c67f797bdb22d9c6ca280555c4ff51c180e3abd76f0a561e4c5297577c490a` |
| 5 | `theorem` | [zero_constant_keeps_shift_cost](../../../../../mathematics/NumberTheory/Chebyshev/Checks/HorizontalRayControls.lean/declarations/zero-constant-keeps-shift-cost--446e8599a92961c8a82cc272.md) | 35 | `result-track:446e8599a92961c8a82cc272475dadc9e64286c51342201a2a8693f314e25d46` |
| 6 | `theorem` | [shift_cost_is_positive](../../../../../mathematics/NumberTheory/Chebyshev/Checks/HorizontalRayControls.lean/declarations/shift-cost-is-positive--830e83bdc98efb8bbf59788e.md) | 38 | `result-track:830e83bdc98efb8bbf59788efaca2b807616fbab1bf27c66bea236a9c43c62b9` |
| 7 | `theorem` | [quadratic_strip_bound_has_nonzero_ratio](../../../../../mathematics/NumberTheory/Chebyshev/Checks/HorizontalRayControls.lean/declarations/quadratic-strip-bound-has-nonzero-ratio--cf2f775e5692fb9cbd97c602.md) | 42 | `result-track:cf2f775e5692fb9cbd97c602961137f4fd2205e5caf8340c06e2aa51310ea609` |
| 8 | `theorem` | [moving_parameter_diagonal](../../../../../mathematics/NumberTheory/Chebyshev/Checks/HorizontalRayControls.lean/declarations/moving-parameter-diagonal--09cd2bd87b8cd6d7035ce60c.md) | 46 | `result-track:09cd2bd87b8cd6d7035ce60c3f03e1b2d5db1a7bee1f9920558fcffab8a7f123` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

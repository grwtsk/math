# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.SelectedResidueLimitControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "192fc2d9aafd37c990ec216b87b88414a64d7f3b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/SelectedResidueLimitControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SelectedResidueLimitControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SelectedResidueLimitControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `192fc2d9aafd37c990ec216b87b88414a64d7f3b`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/SelectedResidueLimitControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/SelectedResidueLimitControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.TentSelectedResidueLimit`](../../../../../mathematics/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [normalized_affine_budget](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SelectedResidueLimitControls.lean/declarations/normalized-affine-budget--80cc6426d79405721d864a86.md) | 25 | `result-track:80cc6426d79405721d864a8679d34fa8dd99f32f644a9b5f6e29be1edd4b901d` |
| 2 | `theorem` | [quadratic_budget_ratio](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SelectedResidueLimitControls.lean/declarations/quadratic-budget-ratio--1e380da6308df80446879a84.md) | 31 | `result-track:1e380da6308df80446879a8452e43d7f71a0bb2cefb548dfbe740363f8ccf2b6` |
| 3 | `theorem` | [signed_height_square](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SelectedResidueLimitControls.lean/declarations/signed-height-square--df321d416e22e641c9debc3e.md) | 34 | `result-track:df321d416e22e641c9debc3e0e0462c0bc6bf542c231d9271a10c2036fd7da0e` |
| 4 | `theorem` | [alternating_even_prefix](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SelectedResidueLimitControls.lean/declarations/alternating-even-prefix--72cef230426c41f5ac8391c9.md) | 37 | `result-track:72cef230426c41f5ac8391c9e53204dee7e059c93257862494dac55060114b98` |
| 5 | `theorem` | [alternating_even_norm_mass](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SelectedResidueLimitControls.lean/declarations/alternating-even-norm-mass--eab91b2392da501674b20c7e.md) | 47 | `result-track:eab91b2392da501674b20c7e4925563c795546c22578fa61ababc0809a8220ae` |
| 6 | `theorem` | [alternating_even_prefix_tendsto_zero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SelectedResidueLimitControls.lean/declarations/alternating-even-prefix-tendsto-zero--28a941390c41d9b1b793d217.md) | 51 | `result-track:28a941390c41d9b1b793d217971b26c32c80a89daf91c98e108f070d06c74752` |
| 7 | `theorem` | [alternating_not_summable](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SelectedResidueLimitControls.lean/declarations/alternating-not-summable--788bbe821cf8dd232d665239.md) | 58 | `result-track:788bbe821cf8dd232d665239ea0f7af47d0dde9cd7bd52ee77bf6ee6182c347f` |
| 8 | `theorem` | [moving_parameter_diagonal](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SelectedResidueLimitControls.lean/declarations/moving-parameter-diagonal--ca1b970bff3b97de8e642c05.md) | 66 | `result-track:ca1b970bff3b97de8e642c05e6d7351da97435a2f8e64a63f4b51a400423be58` |
| 9 | `theorem` | [first_square_outside_domain](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SelectedResidueLimitControls.lean/declarations/first-square-outside-domain--6c1ecdb31588a8c25aadddc8.md) | 69 | `result-track:6c1ecdb31588a8c25aadddc87e6cbd809b8b6e810a9da0c9b7666211e678fd6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileCutoff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b5381f60b365e2cbd52ed41d674fa4150fc9af1",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/IntegralTransforms/LogarithmicProfileCutoff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileCutoff.lean/index.md) · [Full source](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileCutoff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b5381f60b365e2cbd52ed41d674fa4150fc9af1`.

Source path: `GRWTSK/Analysis/IntegralTransforms/LogarithmicProfileCutoff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/IntegralTransforms/LogarithmicProfileCutoff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Semiring` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exponential_floor_bounds](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileCutoff.lean/declarations/exponential-floor-bounds--f83fab6bc03e7d70328cee8e.md) | 24 | `result-track:f83fab6bc03e7d70328cee8e5f761e0cc6d777fb9c182a8bf1c25f2d1a84c41c` |
| 2 | `theorem` | [logarithmic_profile_zero_above_floor](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileCutoff.lean/declarations/logarithmic-profile-zero-above-floor--35885b05b56ada0e5392250f.md) | 32 | `result-track:35885b05b56ada0e5392250f7f56435b105d8f3151cef6442b438881f3ba4c42` |
| 3 | `theorem` | [full_logarithmic_integer_inventory](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileCutoff.lean/declarations/full-logarithmic-integer-inventory--4292c3fab6aca2fb1c63a897.md) | 42 | `result-track:4292c3fab6aca2fb1c63a89789271b4c92b1ad623794a5e338c6686f5dc3837a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

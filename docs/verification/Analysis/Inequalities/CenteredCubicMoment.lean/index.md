# Verification target: GRWTSK.Analysis.Inequalities.CenteredCubicMoment

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ff401c57ab7c4f72f0dd79ced42a561ae3ecb4e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inequalities/CenteredCubicMoment.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Inequalities/CenteredCubicMoment.lean/index.md) · [Full source](../../../../mathematics/Analysis/Inequalities/CenteredCubicMoment.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ff401c57ab7c4f72f0dd79ced42a561ae3ecb4e`.

Source path: `GRWTSK/Analysis/Inequalities/CenteredCubicMoment.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inequalities/CenteredCubicMoment.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SimpRw` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [residual](../../../../mathematics/Analysis/Inequalities/CenteredCubicMoment.lean/declarations/residual--f5b555b265235f83f1ebea3b.md) | 22 | `declaration-track:f5b555b265235f83f1ebea3b5c398603ee42bd4d29d3feb4c2957f883e3e514d` |
| 2 | `theorem` | [pointwise_identity](../../../../mathematics/Analysis/Inequalities/CenteredCubicMoment.lean/declarations/pointwise-identity--e0c082818832602ce1bcfb5c.md) | 25 | `result-track:e0c082818832602ce1bcfb5cfb0e5b9c93b40f2af1f5a69e86fcafce5b2ed747` |
| 3 | `theorem` | [residual_identity](../../../../mathematics/Analysis/Inequalities/CenteredCubicMoment.lean/declarations/residual-identity--c5d7c396760da0efb4143011.md) | 29 | `result-track:c5d7c396760da0efb4143011c4895ec24096ca1db108a36fd6ddf090c4e9a26a` |
| 4 | `theorem` | [residual_nonnegative](../../../../mathematics/Analysis/Inequalities/CenteredCubicMoment.lean/declarations/residual-nonnegative--c892078b88571fe7e61bf538.md) | 39 | `result-track:c892078b88571fe7e61bf53804bcdb2c1a6d5a846b301b6b66c44deef9ec9f05` |
| 5 | `theorem` | [coordinate_contribution_le](../../../../mathematics/Analysis/Inequalities/CenteredCubicMoment.lean/declarations/coordinate-contribution-le--282e3c2cbd40eca415528442.md) | 45 | `result-track:282e3c2cbd40eca4155284421cb320aae90d4df4f0c977a6f65ea6287cedec1e` |
| 6 | `theorem` | [coordinate_lt_of_residual](../../../../mathematics/Analysis/Inequalities/CenteredCubicMoment.lean/declarations/coordinate-lt-of-residual--3cd5a911e3d0c057ae9e3200.md) | 55 | `result-track:3cd5a911e3d0c057ae9e3200e21f9d1a19bdbfa52b6910f50e548c262eac48bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

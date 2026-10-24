# Verification target: GRWTSK.Analysis.Inequalities.SquaredSumBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3976ee96bf5977399dd6607e28888714fd35dad2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inequalities/SquaredSumBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Inequalities/SquaredSumBounds.lean/index.md) · [Full source](../../../../mathematics/Analysis/Inequalities/SquaredSumBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3976ee96bf5977399dd6607e28888714fd35dad2`.

Source path: `GRWTSK/Analysis/Inequalities/SquaredSumBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inequalities/SquaredSumBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_rational_slack](../../../../mathematics/Analysis/Inequalities/SquaredSumBounds.lean/declarations/prime-rational-slack--0d64ce528fff54a56f5d87f6.md) | 13 | `result-track:0d64ce528fff54a56f5d87f6df14210faf8d5a8b488b95e8a69e4234933fb547` |
| 2 | `theorem` | [original_root_budget](../../../../mathematics/Analysis/Inequalities/SquaredSumBounds.lean/declarations/original-root-budget--4bb6fbddf061ee7a3b11bf83.md) | 15 | `result-track:4bb6fbddf061ee7a3b11bf8382c1ab492e272ed6869f8cfdfa9be919d9cb546f` |
| 3 | `theorem` | [typeII_root_budget](../../../../mathematics/Analysis/Inequalities/SquaredSumBounds.lean/declarations/typeii-root-budget--d692d7e165e2e47ac3c53226.md) | 21 | `result-track:d692d7e165e2e47ac3c53226fe454073fa8b1d2b347df9a6d2ab517fc3c91105` |
| 4 | `theorem` | [low_first_return](../../../../mathematics/Analysis/Inequalities/SquaredSumBounds.lean/declarations/low-first-return--1805e26e0bb4320c1ef1a2c2.md) | 36 | `result-track:1805e26e0bb4320c1ef1a2c290d5746d96ad3af5d0a79e0b1ec8478d8a67230e` |
| 5 | `theorem` | [retained_center_return](../../../../mathematics/Analysis/Inequalities/SquaredSumBounds.lean/declarations/retained-center-return--136d97cdd40cbaa9b4e18a97.md) | 42 | `result-track:136d97cdd40cbaa9b4e18a979c06a88a6c052bf250bf38ee3134c78338ebfa01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

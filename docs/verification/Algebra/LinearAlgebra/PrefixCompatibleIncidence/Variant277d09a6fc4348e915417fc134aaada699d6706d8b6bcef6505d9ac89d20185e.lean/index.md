# Verification target: GRWTSK.Algebra.LinearAlgebra.PrefixCompatibleIncidence.Variant277d09a6fc4348e915417fc134aaada699d6706d8b6bcef6505d9ac89d20185e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3361911f71f6533a88436cf649ac0df608ba3cc6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variant277d09a6fc4348e915417fc134aaada699d6706d8b6bcef6505d9ac89d20185e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variant277d09a6fc4348e915417fc134aaada699d6706d8b6bcef6505d9ac89d20185e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variant277d09a6fc4348e915417fc134aaada699d6706d8b6bcef6505d9ac89d20185e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3361911f71f6533a88436cf649ac0df608ba3cc6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variant277d09a6fc4348e915417fc134aaada699d6706d8b6bcef6505d9ac89d20185e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variant277d09a6fc4348e915417fc134aaada699d6706d8b6bcef6505d9ac89d20185e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrefixCompatibleIncidence](../../../../../mathematics/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variant277d09a6fc4348e915417fc134aaada699d6706d8b6bcef6505d9ac89d20185e.lean/declarations/prefixcompatibleincidence--7d4ab81a6223896b5e4cc077.md) | 40 | `declaration-track:7d4ab81a6223896b5e4cc077eb982cbbc04e5e0463a42736a7a9d83ad65f5759` |
| 2 | `theorem` | [PrefixCompatibleIncidence.succ_sub](../../../../../mathematics/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variant277d09a6fc4348e915417fc134aaada699d6706d8b6bcef6505d9ac89d20185e.lean/declarations/prefixcompatibleincidence-succ-sub--254989e47759fbf4b8033aa6.md) | 52 | `result-track:254989e47759fbf4b8033aa68e911340189d2e2750a9210ba785010cab896443` |
| 3 | `theorem` | [PrefixCompatibleIncidence.incidence_eq_sum_increments](../../../../../mathematics/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variant277d09a6fc4348e915417fc134aaada699d6706d8b6bcef6505d9ac89d20185e.lean/declarations/prefixcompatibleincidence-incidence-eq-sum-increments--15f0709a30aecfc16bcfe70f.md) | 65 | `result-track:15f0709a30aecfc16bcfe70f1be728d3932e0edad223fdb5d6dd8199737d1070` |
| 4 | `structure` | [PrefixCompatibleResidual](../../../../../mathematics/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variant277d09a6fc4348e915417fc134aaada699d6706d8b6bcef6505d9ac89d20185e.lean/declarations/prefixcompatibleresidual--b5098a24c20f7c07f82b7deb.md) | 81 | `declaration-track:b5098a24c20f7c07f82b7debc91e63602d8755b70706794db0834382229efc58` |
| 5 | `theorem` | [PrefixCompatibleResidual.succ_sub](../../../../../mathematics/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variant277d09a6fc4348e915417fc134aaada699d6706d8b6bcef6505d9ac89d20185e.lean/declarations/prefixcompatibleresidual-succ-sub--acd5ba22068b7fe1cf25cd38.md) | 90 | `result-track:acd5ba22068b7fe1cf25cd38c35e73588cd917212f3cb2d3640e18e777072ac6` |
| 6 | `theorem` | [PrefixCompatibleResidual.residual_eq_sum_increments](../../../../../mathematics/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variant277d09a6fc4348e915417fc134aaada699d6706d8b6bcef6505d9ac89d20185e.lean/declarations/prefixcompatibleresidual-residual-eq-sum-increments--cd26152e6fb8345afce962b2.md) | 101 | `result-track:cd26152e6fb8345afce962b232ebb001d34ae790c2afb8cc6a47ad35091aeadd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

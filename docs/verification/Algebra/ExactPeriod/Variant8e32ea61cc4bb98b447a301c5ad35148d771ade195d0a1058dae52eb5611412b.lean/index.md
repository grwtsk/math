# Verification target: GRWTSK.Algebra.ExactPeriod.Variant8e32ea61cc4bb98b447a301c5ad35148d771ade195d0a1058dae52eb5611412b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70c9426c708c2cad50ad23b62974848b0e35022c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ExactPeriod/Variant8e32ea61cc4bb98b447a301c5ad35148d771ade195d0a1058dae52eb5611412b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ExactPeriod/Variant8e32ea61cc4bb98b447a301c5ad35148d771ade195d0a1058dae52eb5611412b.lean/index.md) · [Full source](../../../../mathematics/Algebra/ExactPeriod/Variant8e32ea61cc4bb98b447a301c5ad35148d771ade195d0a1058dae52eb5611412b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70c9426c708c2cad50ad23b62974848b0e35022c`.

Source path: `GRWTSK/Algebra/ExactPeriod/Variant8e32ea61cc4bb98b447a301c5ad35148d771ade195d0a1058dae52eb5611412b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ExactPeriod/Variant8e32ea61cc4bb98b447a301c5ad35148d771ade195d0a1058dae52eb5611412b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Monodromy.TorsionPeriodicity` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasExactPeriod](../../../../mathematics/Algebra/ExactPeriod/Variant8e32ea61cc4bb98b447a301c5ad35148d771ade195d0a1058dae52eb5611412b.lean/declarations/hasexactperiod--e4f83a8efc7115adb2be8303.md) | 20 | `declaration-track:e4f83a8efc7115adb2be8303f8ffc614ad1099d9365629153971dd7d9f80863b` |
| 2 | `def` | [ActionFaithful](../../../../mathematics/Algebra/ExactPeriod/Variant8e32ea61cc4bb98b447a301c5ad35148d771ade195d0a1058dae52eb5611412b.lean/declarations/actionfaithful--287c87564593762d2d659042.md) | 33 | `declaration-track:287c87564593762d2d659042a6e840d8a4eedd4f5295da2120172a0ef48b22a8` |
| 3 | `theorem` | [exact_period_of_hasOrder_and_faithful](../../../../mathematics/Algebra/ExactPeriod/Variant8e32ea61cc4bb98b447a301c5ad35148d771ade195d0a1058dae52eb5611412b.lean/declarations/exact-period-of-hasorder-and-faithful--ec3e8bff6b098e67f6f69690.md) | 41 | `result-track:ec3e8bff6b098e67f6f6969012115af0a676c5dbc7f536b1ec673cf957fa8a2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

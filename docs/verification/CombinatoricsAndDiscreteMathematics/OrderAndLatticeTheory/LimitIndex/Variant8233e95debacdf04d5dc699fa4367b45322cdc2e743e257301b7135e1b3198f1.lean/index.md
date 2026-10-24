# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LimitIndex.Variant8233e95debacdf04d5dc699fa4367b45322cdc2e743e257301b7135e1b3198f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b4cd0944792a56475c38d4f7fbf2cfdfb3a3cec",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LimitIndex/Variant8233e95debacdf04d5dc699fa4367b45322cdc2e743e257301b7135e1b3198f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LimitIndex/Variant8233e95debacdf04d5dc699fa4367b45322cdc2e743e257301b7135e1b3198f1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LimitIndex/Variant8233e95debacdf04d5dc699fa4367b45322cdc2e743e257301b7135e1b3198f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b4cd0944792a56475c38d4f7fbf2cfdfb3a3cec`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LimitIndex/Variant8233e95debacdf04d5dc699fa4367b45322cdc2e743e257301b7135e1b3198f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LimitIndex/Variant8233e95debacdf04d5dc699fa4367b45322cdc2e743e257301b7135e1b3198f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.OrdinalTally.FundamentalSequence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsDeclaredSupremum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LimitIndex/Variant8233e95debacdf04d5dc699fa4367b45322cdc2e743e257301b7135e1b3198f1.lean/declarations/isdeclaredsupremum--032dfae0d9085814293bcd20.md) | 13 | `declaration-track:032dfae0d9085814293bcd2072e5e457f109f54e66d39548b134e28efbfdaca3` |
| 2 | `structure` | [RegisteredLimitIndex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LimitIndex/Variant8233e95debacdf04d5dc699fa4367b45322cdc2e743e257301b7135e1b3198f1.lean/declarations/registeredlimitindex--198f5b741ccc331b5f8d3b1d.md) | 23 | `declaration-track:198f5b741ccc331b5f8d3b1d470cbc2fa9792acbd34668f655fc32d3bf1e8047` |
| 3 | `theorem` | [limit_index_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LimitIndex/Variant8233e95debacdf04d5dc699fa4367b45322cdc2e743e257301b7135e1b3198f1.lean/declarations/limit-index-monotone--b850d54891cdae13c520b2e6.md) | 35 | `result-track:b850d54891cdae13c520b2e6f9161e03e8283fcc17fb6a1555b08b3bc7fbd392` |
| 4 | `theorem` | [limit_index_has_declared_supremum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LimitIndex/Variant8233e95debacdf04d5dc699fa4367b45322cdc2e743e257301b7135e1b3198f1.lean/declarations/limit-index-has-declared-supremum--95ffdb426dc8cc034c26d2ec.md) | 42 | `result-track:95ffdb426dc8cc034c26d2ecf778b62e89d103d1b7da7f82a63475faf5794412` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LimitIndex.Variant3d3b805e9dca4a88b7142e8a77f54cae950af382822881aae6f2ad28028481d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a9ca06f662ef68d563fb3ae9d29355520b5d027",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LimitIndex/Variant3d3b805e9dca4a88b7142e8a77f54cae950af382822881aae6f2ad28028481d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LimitIndex/Variant3d3b805e9dca4a88b7142e8a77f54cae950af382822881aae6f2ad28028481d5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LimitIndex/Variant3d3b805e9dca4a88b7142e8a77f54cae950af382822881aae6f2ad28028481d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a9ca06f662ef68d563fb3ae9d29355520b5d027`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LimitIndex/Variant3d3b805e9dca4a88b7142e8a77f54cae950af382822881aae6f2ad28028481d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LimitIndex/Variant3d3b805e9dca4a88b7142e8a77f54cae950af382822881aae6f2ad28028481d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.OrdinalTally.FundamentalSequence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsDeclaredSupremum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LimitIndex/Variant3d3b805e9dca4a88b7142e8a77f54cae950af382822881aae6f2ad28028481d5.lean/declarations/isdeclaredsupremum--763ec7bbc017f506b8c14996.md) | 21 | `declaration-track:763ec7bbc017f506b8c14996c6536d7c35583e5fe86bf055cc22fbf1000cc9d2` |
| 2 | `structure` | [RegisteredLimitIndex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LimitIndex/Variant3d3b805e9dca4a88b7142e8a77f54cae950af382822881aae6f2ad28028481d5.lean/declarations/registeredlimitindex--e8653547ce69b1957d39400d.md) | 31 | `declaration-track:e8653547ce69b1957d39400ddae90e1984f563ab50e0322b225a627d59a3ca93` |
| 3 | `theorem` | [limit_index_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LimitIndex/Variant3d3b805e9dca4a88b7142e8a77f54cae950af382822881aae6f2ad28028481d5.lean/declarations/limit-index-monotone--7510137823989d7e7a2ed277.md) | 43 | `result-track:7510137823989d7e7a2ed277acc8a36e3172c8018173d9ec226212a0ae3d3ee4` |
| 4 | `theorem` | [limit_index_has_declared_supremum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LimitIndex/Variant3d3b805e9dca4a88b7142e8a77f54cae950af382822881aae6f2ad28028481d5.lean/declarations/limit-index-has-declared-supremum--9df91c23b150afd50ac27965.md) | 50 | `result-track:9df91c23b150afd50ac27965bdc723a36ed4dbb560a2ba3f8e8b8c8d4a024c78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

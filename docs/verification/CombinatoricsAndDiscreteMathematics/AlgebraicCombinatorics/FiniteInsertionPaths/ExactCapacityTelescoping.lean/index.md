# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.AlgebraicCombinatorics.FiniteInsertionPaths.ExactCapacityTelescoping

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8844e05e25176ad7305648c33150778ba9b936d6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AlgebraicCombinatorics/FiniteInsertionPaths/ExactCapacityTelescoping.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/AlgebraicCombinatorics/FiniteInsertionPaths/ExactCapacityTelescoping.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/AlgebraicCombinatorics/FiniteInsertionPaths/ExactCapacityTelescoping.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8844e05e25176ad7305648c33150778ba9b936d6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/AlgebraicCombinatorics/FiniteInsertionPaths/ExactCapacityTelescoping.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/AlgebraicCombinatorics/FiniteInsertionPaths/ExactCapacityTelescoping.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.BoundaryCochain` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [insertPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/AlgebraicCombinatorics/FiniteInsertionPaths/ExactCapacityTelescoping.lean/declarations/insertpath--7584b1b1ab06cc600e04c5c7.md) | 40 | `declaration-track:7584b1b1ab06cc600e04c5c7573633b173e79db77f335d7dc8a0e1a81709b112` |
| 2 | `def` | [capacityPathSum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/AlgebraicCombinatorics/FiniteInsertionPaths/ExactCapacityTelescoping.lean/declarations/capacitypathsum--f8bdaea410efbc7e3cd65f80.md) | 48 | `declaration-track:f8bdaea410efbc7e3cd65f8010486843b9445cb7812a0b03f674600a1cb849bb` |
| 3 | `theorem` | [capacityPathSum_eq_terminal_sub_initial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/AlgebraicCombinatorics/FiniteInsertionPaths/ExactCapacityTelescoping.lean/declarations/capacitypathsum-eq-terminal-sub-initial--13227d576eab789c0b1613f4.md) | 59 | `result-track:13227d576eab789c0b1613f46b0f278ca6a69a2b139bd1aa3ba4b4f11bcacdf3` |
| 4 | `theorem` | [capacity_path_sum_independent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/AlgebraicCombinatorics/FiniteInsertionPaths/ExactCapacityTelescoping.lean/declarations/capacity-path-sum-independent--eadf663fb44c5ab9d95ccf71.md) | 87 | `result-track:eadf663fb44c5ab9d95ccf71be5e41abb9d03a0b52775ddebfaa464b29871f11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

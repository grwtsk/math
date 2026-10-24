# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Budget.Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c98b0133285e7a4f98f0f234211ff729b5eea082",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c98b0133285e7a4f98f0f234211ff729b5eea082`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.ModePlan` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TraversalBudget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean/declarations/traversalbudget--2e316e27c843407d84ee09c5.md) | 21 | `declaration-track:2e316e27c843407d84ee09c5d0dd37e51d43c7db44cef5c18e6883e0fe08f148` |
| 2 | `structure` | [TraversalUsage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean/declarations/traversalusage--b00a4c9b641c3400f956bae9.md) | 31 | `declaration-track:b00a4c9b641c3400f956bae97b15fe441680706b2f7c2fe9541f70ce9d16d3fc` |
| 3 | `def` | [TraversalUsage.zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean/declarations/traversalusage-zero--28a7cf03c6a822330963b21c.md) | 41 | `declaration-track:28a7cf03c6a822330963b21c460b6b3b2444223fc33fb9bfec47564c70401204` |
| 4 | `def` | [WithinBudget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean/declarations/withinbudget--85ef139bbb46607931615339.md) | 50 | `declaration-track:85ef139bbb46607931615339c7e23d4edd28ee34fc46a29bf6b0176d8c69577b` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean/declarations/instance--b3f480464eded9c31ae160d5.md) | 62 | `declaration-track:b3f480464eded9c31ae160d5b2719ece47f31d1927b96726d9de08392036c3b4` |
| 6 | `inductive` | [BudgetDimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean/declarations/budgetdimension--fce2791e92800b151f94e933.md) | 70 | `declaration-track:fce2791e92800b151f94e933b9d349fad2de65860c04d807f4c640a7f6f468a5` |
| 7 | `def` | [BudgetDimension.exceeded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean/declarations/budgetdimension-exceeded--91f9e139f1d7b38de1f4fc45.md) | 80 | `declaration-track:91f9e139f1d7b38de1f4fc45bfdcc4b6a8e7bb2d3659098e632445084a07009b` |
| 8 | `def` | [exceededDimensions](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean/declarations/exceededdimensions--93106aed4831a84c3899d708.md) | 109 | `declaration-track:93106aed4831a84c3899d7086381c627e680964fb07f2b842b6bee651bf6f6c5` |
| 9 | `theorem` | [withinBudget_iff_no_exceeded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean/declarations/withinbudget-iff-no-exceeded--3fb72151e365f0dc7027e6c8.md) | 116 | `result-track:3fb72151e365f0dc7027e6c8eb19ce72b24351e61307870d2c6d7073ea52ec61` |
| 10 | `def` | [UsageMonotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean/declarations/usagemonotone--7d11413812296d35a6150ecf.md) | 172 | `declaration-track:7d11413812296d35a6150ecf092ba4cd76f63361a806c015d03be73d7660357d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

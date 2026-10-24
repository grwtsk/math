# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BubbleSortInduction.Variant391c555ef072718edebb86c6952d9f7e265fab35507f47be71863eb19349d602

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48d5f5212b9e2192e937e827abc3fd69567aabad",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BubbleSortInduction/Variant391c555ef072718edebb86c6952d9f7e265fab35507f47be71863eb19349d602.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BubbleSortInduction/Variant391c555ef072718edebb86c6952d9f7e265fab35507f47be71863eb19349d602.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BubbleSortInduction/Variant391c555ef072718edebb86c6952d9f7e265fab35507f47be71863eb19349d602.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48d5f5212b9e2192e937e827abc3fd69567aabad`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BubbleSortInduction/Variant391c555ef072718edebb86c6952d9f7e265fab35507f47be71863eb19349d602.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BubbleSortInduction/Variant391c555ef072718edebb86c6952d9f7e265fab35507f47be71863eb19349d602.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Tuple.Sort` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.PiLex` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Prod` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bubble_sort_induction'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BubbleSortInduction/Variant391c555ef072718edebb86c6952d9f7e265fab35507f47be71863eb19349d602.lean/declarations/bubble-sort-induction--fd1a1ca31d145df79cc8aef2.md) | 42 | `result-track:fd1a1ca31d145df79cc8aef269a8fdbb6428cb67f19ff844fa51311c3ef34709` |
| 2 | `theorem` | [bubble_sort_induction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BubbleSortInduction/Variant391c555ef072718edebb86c6952d9f7e265fab35507f47be71863eb19349d602.lean/declarations/bubble-sort-induction--b1a70aa7f7b37ee5bcbcb2ba.md) | 56 | `result-track:b1a70aa7f7b37ee5bcbcb2bac2b8ae7255b92efec8aa03f5fb34c191e1cc6cf1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

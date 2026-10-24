# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BubbleSortInduction.Variant31c9d3890b65ba8ccb4721e438067a721e31ade6a3ccfd5e2ccb507b77e796c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "514e9a2bdf59fd80d78ab12bcf3483da8a55191a",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BubbleSortInduction/Variant31c9d3890b65ba8ccb4721e438067a721e31ade6a3ccfd5e2ccb507b77e796c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BubbleSortInduction/Variant31c9d3890b65ba8ccb4721e438067a721e31ade6a3ccfd5e2ccb507b77e796c5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BubbleSortInduction/Variant31c9d3890b65ba8ccb4721e438067a721e31ade6a3ccfd5e2ccb507b77e796c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `514e9a2bdf59fd80d78ab12bcf3483da8a55191a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BubbleSortInduction/Variant31c9d3890b65ba8ccb4721e438067a721e31ade6a3ccfd5e2ccb507b77e796c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BubbleSortInduction/Variant31c9d3890b65ba8ccb4721e438067a721e31ade6a3ccfd5e2ccb507b77e796c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Tuple.Sort` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.PiLex` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Prod` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bubble_sort_induction'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BubbleSortInduction/Variant31c9d3890b65ba8ccb4721e438067a721e31ade6a3ccfd5e2ccb507b77e796c5.lean/declarations/bubble-sort-induction--5aa0e725516a3c928eddd550.md) | 34 | `result-track:5aa0e725516a3c928eddd5500ce2b4d6c5cd407e5e4ad7be36f253793ab7212d` |
| 2 | `theorem` | [bubble_sort_induction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BubbleSortInduction/Variant31c9d3890b65ba8ccb4721e438067a721e31ade6a3ccfd5e2ccb507b77e796c5.lean/declarations/bubble-sort-induction--d2d681b8cae9ddfeb15e187c.md) | 48 | `result-track:d2d681b8cae9ddfeb15e187ca172bf60adfd4b9ee452044a60d19f58b695b191` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

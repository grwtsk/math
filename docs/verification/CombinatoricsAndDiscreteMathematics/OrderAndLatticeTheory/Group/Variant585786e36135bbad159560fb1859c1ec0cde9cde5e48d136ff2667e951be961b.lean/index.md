# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Group.Variant585786e36135bbad159560fb1859c1ec0cde9cde5e48d136ff2667e951be961b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c476e1c6e10a8c7330a92985c276ac71ac4bd53",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Group/Variant585786e36135bbad159560fb1859c1ec0cde9cde5e48d136ff2667e951be961b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Group/Variant585786e36135bbad159560fb1859c1ec0cde9cde5e48d136ff2667e951be961b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Group/Variant585786e36135bbad159560fb1859c1ec0cde9cde5e48d136ff2667e951be961b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c476e1c6e10a8c7330a92985c276ac71ac4bd53`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Group/Variant585786e36135bbad159560fb1859c1ec0cde9cde5e48d136ff2667e951be961b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Group/Variant585786e36135bbad159560fb1859c1ec0cde9cde5e48d136ff2667e951be961b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Indexed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.OrderDual` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ciSup_mul_le_ciSup_mul_ciSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Group/Variant585786e36135bbad159560fb1859c1ec0cde9cde5e48d136ff2667e951be961b.lean/declarations/cisup-mul-le-cisup-mul-cisup--6daa01c689904662721d2d19.md) | 22 | `result-track:6daa01c689904662721d2d19f270aa0367cdd8d56fb04e8ebad955fd9bafe0e5` |
| 2 | `lemma` | [ciInf_mul_ciInf_le_ciInf_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Group/Variant585786e36135bbad159560fb1859c1ec0cde9cde5e48d136ff2667e951be961b.lean/declarations/ciinf-mul-ciinf-le-ciinf-mul--39bf7aa54baa6d2b657a0b5c.md) | 28 | `result-track:39bf7aa54baa6d2b657a0b5ceb3ac6e5428ca013de0733f2bd52daf01e7a8658` |
| 3 | `theorem` | [le_mul_ciInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Group/Variant585786e36135bbad159560fb1859c1ec0cde9cde5e48d136ff2667e951be961b.lean/declarations/le-mul-ciinf--43e03d49d050382884a8762e.md) | 41 | `result-track:43e03d49d050382884a8762e44569a376cfb27bf793c0911b38c8e1faa0bd309` |
| 4 | `theorem` | [mul_ciSup_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Group/Variant585786e36135bbad159560fb1859c1ec0cde9cde5e48d136ff2667e951be961b.lean/declarations/mul-cisup-le--86bc04ba24743512e546b77b.md) | 46 | `result-track:86bc04ba24743512e546b77b7b20414da62272afa69954bc149b6a45a98b4619` |
| 5 | `theorem` | [le_ciInf_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Group/Variant585786e36135bbad159560fb1859c1ec0cde9cde5e48d136ff2667e951be961b.lean/declarations/le-ciinf-mul--650383c5c74c53f356b8ee28.md) | 51 | `result-track:650383c5c74c53f356b8ee28aa5a722ac1c5c7b861e7d8efcdbbc0d5859b950f` |
| 6 | `theorem` | [ciSup_mul_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Group/Variant585786e36135bbad159560fb1859c1ec0cde9cde5e48d136ff2667e951be961b.lean/declarations/cisup-mul-le--2b1739c8461d090bd6b2ff80.md) | 56 | `result-track:2b1739c8461d090bd6b2ff80ffed7c795600d79e64f9e48b7be2f168a3f64aa2` |
| 7 | `theorem` | [le_ciInf_mul_ciInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Group/Variant585786e36135bbad159560fb1859c1ec0cde9cde5e48d136ff2667e951be961b.lean/declarations/le-ciinf-mul-ciinf--10f593d9dc68aeff65b0a881.md) | 61 | `result-track:10f593d9dc68aeff65b0a88141489c6dbfc70585103a5c2b61eea849358a682a` |
| 8 | `theorem` | [ciSup_mul_ciSup_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Group/Variant585786e36135bbad159560fb1859c1ec0cde9cde5e48d136ff2667e951be961b.lean/declarations/cisup-mul-cisup-le--287029ec3e48bd512038ac6e.md) | 66 | `result-track:287029ec3e48bd512038ac6e11d0b40ab3690f3616a98e6ae34b0dfae5e3d4ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

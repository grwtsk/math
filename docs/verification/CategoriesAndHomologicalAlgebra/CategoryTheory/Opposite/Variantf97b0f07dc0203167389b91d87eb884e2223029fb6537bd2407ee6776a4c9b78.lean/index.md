# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variantf97b0f07dc0203167389b91d87eb884e2223029fb6537bd2407ee6776a4c9b78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "504f35a3a454c8ee0689141bfb45cf978a8c2056",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantf97b0f07dc0203167389b91d87eb884e2223029fb6537bd2407ee6776a4c9b78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantf97b0f07dc0203167389b91d87eb884e2223029fb6537bd2407ee6776a4c9b78.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantf97b0f07dc0203167389b91d87eb884e2223029fb6537bd2407ee6776a4c9b78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `504f35a3a454c8ee0689141bfb45cf978a8c2056`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantf97b0f07dc0203167389b91d87eb884e2223029fb6537bd2407ee6776a4c9b78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantf97b0f07dc0203167389b91d87eb884e2223029fb6537bd2407ee6776a4c9b78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Opposite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantf97b0f07dc0203167389b91d87eb884e2223029fb6537bd2407ee6776a4c9b78.lean/declarations/instance--a022cb5b2ce23e6bc68c0fd2.md) | 27 | `declaration-track:a022cb5b2ce23e6bc68c0fd2f79b356c87f3177511033cea43656cd19ba88f3b` |
| 2 | `lemma` | [unop_tensorμ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantf97b0f07dc0203167389b91d87eb884e2223029fb6537bd2407ee6776a4c9b78.lean/declarations/unop-tensor--7f3da1e83af8b37815a4166d.md) | 32 | `result-track:7f3da1e83af8b37815a4166d064131bf55c3d64c0145a8d1e6ec58e26353ac15` |
| 3 | `lemma` | [op_tensorμ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantf97b0f07dc0203167389b91d87eb884e2223029fb6537bd2407ee6776a4c9b78.lean/declarations/op-tensor--6d59b0095f109658b8f051f4.md) | 38 | `result-track:6d59b0095f109658b8f051f4ae0c7ef45bcb82f83b0fce3e278ea4fd5de8443e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

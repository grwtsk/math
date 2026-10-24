# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Linear.Variantcf2ea28b501948d5a8d5b11fbaf9b792a0aefcbb83fb35123cb3ad89cb107682

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fbab7a5fe434349cace8be7cc05592645de4b2c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantcf2ea28b501948d5a8d5b11fbaf9b792a0aefcbb83fb35123cb3ad89cb107682.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantcf2ea28b501948d5a8d5b11fbaf9b792a0aefcbb83fb35123cb3ad89cb107682.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantcf2ea28b501948d5a8d5b11fbaf9b792a0aefcbb83fb35123cb3ad89cb107682.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fbab7a5fe434349cace8be7cc05592645de4b2c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantcf2ea28b501948d5a8d5b11fbaf9b792a0aefcbb83fb35123cb3ad89cb107682.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantcf2ea28b501948d5a8d5b11fbaf9b792a0aefcbb83fb35123cb3ad89cb107682.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantcf2ea28b501948d5a8d5b11fbaf9b792a0aefcbb83fb35123cb3ad89cb107682.lean/declarations/smul--92fff7bb535ab96dc4a4ca20.md) | 45 | `declaration-track:92fff7bb535ab96dc4a4ca20b5bc430226f1c789df20a38d76bf76dd35d03e13` |
| 2 | `lemma` | [smul_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantcf2ea28b501948d5a8d5b11fbaf9b792a0aefcbb83fb35123cb3ad89cb107682.lean/declarations/smul-eq--4402a6a8ee6f5c67e8481c2f.md) | 54 | `result-track:4402a6a8ee6f5c67e8481c2feb6532c7d4f5847ab0cbfd35f0122f53ebdfd61c` |
| 3 | `def` | [module'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantcf2ea28b501948d5a8d5b11fbaf9b792a0aefcbb83fb35123cb3ad89cb107682.lean/declarations/module--84c9b49794a12fabeecc8cd5.md) | 62 | `declaration-track:84c9b49794a12fabeecc8cd5df7d8052d35cccadf2e1eb489e45f18bb3bccde1` |
| 4 | `def` | [module](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantcf2ea28b501948d5a8d5b11fbaf9b792a0aefcbb83fb35123cb3ad89cb107682.lean/declarations/module--7d59af1b054f7b9d828f135f.md) | 92 | `declaration-track:7d59af1b054f7b9d828f135fbe505ad7a0247794122371036fc330ee5bbb6ee7` |
| 5 | `def` | [linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantcf2ea28b501948d5a8d5b11fbaf9b792a0aefcbb83fb35123cb3ad89cb107682.lean/declarations/linear--ae9bd323e409333a533bfde3.md) | 105 | `declaration-track:ae9bd323e409333a533bfde3c733beafd3da26cf046790895e2f6ad558a21c0f` |
| 6 | `instance` | [linear_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantcf2ea28b501948d5a8d5b11fbaf9b792a0aefcbb83fb35123cb3ad89cb107682.lean/declarations/linear-functor--f43fad7d6fc7d0b13c8ab6b2.md) | 122 | `declaration-track:f43fad7d6fc7d0b13c8ab6b2628be4acbd6125cb0c552610da48e0bf2a7e3137` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

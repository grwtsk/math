# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Kernels.Variant6c31259a635dbe9f3590d918d9d7a32d7b2c13a713880544981e3808b770a105

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c41870abe50f2ff84aa3c4b95bb08c6f7f51304",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant6c31259a635dbe9f3590d918d9d7a32d7b2c13a713880544981e3808b770a105.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant6c31259a635dbe9f3590d918d9d7a32d7b2c13a713880544981e3808b770a105.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant6c31259a635dbe9f3590d918d9d7a32d7b2c13a713880544981e3808b770a105.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c41870abe50f2ff84aa3c4b95bb08c6f7f51304`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant6c31259a635dbe9f3590d918d9d7a32d7b2c13a713880544981e3808b770a105.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant6c31259a635dbe9f3590d918d9d7a32d7b2c13a713880544981e3808b770a105.lean.json)

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
| 1 | `def` | [kerIsKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant6c31259a635dbe9f3590d918d9d7a32d7b2c13a713880544981e3808b770a105.lean/declarations/keriskernel--5f99a07e55b922a5cd14d0fd.md) | 29 | `declaration-track:5f99a07e55b922a5cd14d0fd5c20945a5e3a2dd325d2b4f8d563884d08ce9bdd` |
| 2 | `def` | [cokerIsCokernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant6c31259a635dbe9f3590d918d9d7a32d7b2c13a713880544981e3808b770a105.lean/declarations/cokeriscokernel--a098d2e5e4b53bd55e4663d2.md) | 35 | `declaration-track:a098d2e5e4b53bd55e4663d2ec539b6e6ad2fb6eddaeb9f9832fdbedf00f8091` |
| 3 | `lemma` | [hasKernel_of_hasKernel_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant6c31259a635dbe9f3590d918d9d7a32d7b2c13a713880544981e3808b770a105.lean/declarations/haskernel-of-haskernel-app--1aca9b8cdd6b6df1ae6e1c62.md) | 42 | `result-track:1aca9b8cdd6b6df1ae6e1c627a8db9e9571f90394c22de74bc1656a8336038b8` |
| 4 | `lemma` | [hasCokernel_of_hasCokernel_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant6c31259a635dbe9f3590d918d9d7a32d7b2c13a713880544981e3808b770a105.lean/declarations/hascokernel-of-hascokernel-app--844dfc7ca504986b6e65b220.md) | 48 | `result-track:844dfc7ca504986b6e65b220e7e10d80fc3f5a829df2d474c23fa83290a4b448` |
| 5 | `lemma` | [evaluation_preservesLimit_of_hasKernel_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant6c31259a635dbe9f3590d918d9d7a32d7b2c13a713880544981e3808b770a105.lean/declarations/evaluation-preserveslimit-of-haskernel-app--9122475fc4202d701560b2db.md) | 54 | `result-track:9122475fc4202d701560b2db6232f78e303ab40e5f83feb34fd145c188bee6df` |
| 6 | `lemma` | [evaluation_preservesColimit_of_hasCokernel_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant6c31259a635dbe9f3590d918d9d7a32d7b2c13a713880544981e3808b770a105.lean/declarations/evaluation-preservescolimit-of-hascokernel-app--f5c19b26fef9352a7e0b5f9d.md) | 64 | `result-track:f5c19b26fef9352a7e0b5f9d515264731b01bedac46580b50ef08c337fbf0c9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

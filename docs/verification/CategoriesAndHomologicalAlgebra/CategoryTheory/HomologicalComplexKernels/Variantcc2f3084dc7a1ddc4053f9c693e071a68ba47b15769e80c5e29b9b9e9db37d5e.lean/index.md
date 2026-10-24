# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomologicalComplexKernels.Variantcc2f3084dc7a1ddc4053f9c693e071a68ba47b15769e80c5e29b9b9e9db37d5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68d520ddbaa993a320f26d0381aebd2d58be155c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexKernels/Variantcc2f3084dc7a1ddc4053f9c693e071a68ba47b15769e80c5e29b9b9e9db37d5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexKernels/Variantcc2f3084dc7a1ddc4053f9c693e071a68ba47b15769e80c5e29b9b9e9db37d5e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexKernels/Variantcc2f3084dc7a1ddc4053f9c693e071a68ba47b15769e80c5e29b9b9e9db37d5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68d520ddbaa993a320f26d0381aebd2d58be155c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexKernels/Variantcc2f3084dc7a1ddc4053f9c693e071a68ba47b15769e80c5e29b9b9e9db37d5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexKernels/Variantcc2f3084dc7a1ddc4053f9c693e071a68ba47b15769e80c5e29b9b9e9db37d5e.lean.json)

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
| 1 | `lemma` | [hasKernel_of_hasKernel_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexKernels/Variantcc2f3084dc7a1ddc4053f9c693e071a68ba47b15769e80c5e29b9b9e9db37d5e.lean/declarations/haskernel-of-haskernel-f--752cd2ec4d7f7b9150332405.md) | 24 | `result-track:752cd2ec4d7f7b91503324057267c018ffd39bdda7d13d14364c2084003383cb` |
| 2 | `lemma` | [hasCokernel_of_hasCokernel_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexKernels/Variantcc2f3084dc7a1ddc4053f9c693e071a68ba47b15769e80c5e29b9b9e9db37d5e.lean/declarations/hascokernel-of-hascokernel-f--237462f6656109e7cfc98796.md) | 30 | `result-track:237462f6656109e7cfc98796169eed159bd10e67f50ef28fdbc8ce6cb99ad768` |
| 3 | `lemma` | [eval_preservesLimit_of_hasKernel_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexKernels/Variantcc2f3084dc7a1ddc4053f9c693e071a68ba47b15769e80c5e29b9b9e9db37d5e.lean/declarations/eval-preserveslimit-of-haskernel-f--d7dc0a6b503376508b6a40c9.md) | 36 | `result-track:d7dc0a6b503376508b6a40c975276e08892642903c3bf2cb801132eccd2ffe54` |
| 4 | `lemma` | [eval_preservesColimit_of_hasCokernel_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexKernels/Variantcc2f3084dc7a1ddc4053f9c693e071a68ba47b15769e80c5e29b9b9e9db37d5e.lean/declarations/eval-preservescolimit-of-hascokernel-f--25f395657b1156ef279dfcaa.md) | 44 | `result-track:25f395657b1156ef279dfcaa768f10dc987e0609340182b1e6c2ef8e97ec748e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

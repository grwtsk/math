# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pullbacks.Variant952843c9a7f75c5319726cd91bd116af4a6aaa35657d81c86cbe5ff45a5677c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ef8fad0c5c80ab943c722beb94748b74df646ef",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant952843c9a7f75c5319726cd91bd116af4a6aaa35657d81c86cbe5ff45a5677c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant952843c9a7f75c5319726cd91bd116af4a6aaa35657d81c86cbe5ff45a5677c1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant952843c9a7f75c5319726cd91bd116af4a6aaa35657d81c86cbe5ff45a5677c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ef8fad0c5c80ab943c722beb94748b74df646ef`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant952843c9a7f75c5319726cd91bd116af4a6aaa35657d81c86cbe5ff45a5677c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant952843c9a7f75c5319726cd91bd116af4a6aaa35657d81c86cbe5ff45a5677c1.lean.json)

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
| 1 | `theorem` | [hasLimit_cospan_of_hasLimit_pair_of_hasLimit_parallelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant952843c9a7f75c5319726cd91bd116af4a6aaa35657d81c86cbe5ff45a5677c1.lean/declarations/haslimit-cospan-of-haslimit-pair-of-haslimit-parallelpair--67a3530c54291692e8581186.md) | 28 | `result-track:67a3530c54291692e85811865278458d551336754472ae39ce0713337471b425` |
| 2 | `theorem` | [hasPullbacks_of_hasBinaryProducts_of_hasEqualizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant952843c9a7f75c5319726cd91bd116af4a6aaa35657d81c86cbe5ff45a5677c1.lean/declarations/haspullbacks-of-hasbinaryproducts-of-hasequalizers--3af0c1f1e7ddb526070ed666.md) | 56 | `result-track:3af0c1f1e7ddb526070ed666e97f02e07a50b8b3f750aa104740e12e9bd7c57a` |
| 3 | `theorem` | [hasColimit_span_of_hasColimit_pair_of_hasColimit_parallelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant952843c9a7f75c5319726cd91bd116af4a6aaa35657d81c86cbe5ff45a5677c1.lean/declarations/hascolimit-span-of-hascolimit-pair-of-hascolimit-parallelpair--a60e0bc0fb45ef6d48ff73ee.md) | 64 | `result-track:a60e0bc0fb45ef6d48ff73eeb8fb22643ae7ebc15e42aa909f34a0891466759f` |
| 4 | `theorem` | [hasPushouts_of_hasBinaryCoproducts_of_hasCoequalizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant952843c9a7f75c5319726cd91bd116af4a6aaa35657d81c86cbe5ff45a5677c1.lean/declarations/haspushouts-of-hasbinarycoproducts-of-hascoequalizers--f7463b829f2772a974baeecc.md) | 91 | `result-track:f7463b829f2772a974baeecc4564d98c4e1b41fab2ddb304f69c83ce82122a42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

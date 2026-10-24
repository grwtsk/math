# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantfb1d3692ab7bb183877f5be55d49b1cd3dbb939249d922e625cf6a4a927e0bfe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0537a14b1923cfad111853e133e44dfb4dae7cb2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfb1d3692ab7bb183877f5be55d49b1cd3dbb939249d922e625cf6a4a927e0bfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfb1d3692ab7bb183877f5be55d49b1cd3dbb939249d922e625cf6a4a927e0bfe.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfb1d3692ab7bb183877f5be55d49b1cd3dbb939249d922e625cf6a4a927e0bfe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0537a14b1923cfad111853e133e44dfb4dae7cb2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfb1d3692ab7bb183877f5be55d49b1cd3dbb939249d922e625cf6a4a927e0bfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfb1d3692ab7bb183877f5be55d49b1cd3dbb939249d922e625cf6a4a927e0bfe.lean.json)

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
| 1 | `class` | [Quasicategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfb1d3692ab7bb183877f5be55d49b1cd3dbb939249d922e625cf6a4a927e0bfe.lean/declarations/quasicategory--a64b1fef4abb2b5fe365c45c.md) | 41 | `declaration-track:a64b1fef4abb2b5fe365c45c55d604937f9db2f239ec31dfdc8040c92267637f` |
| 2 | `lemma` | [Quasicategory.hornFilling](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfb1d3692ab7bb183877f5be55d49b1cd3dbb939249d922e625cf6a4a927e0bfe.lean/declarations/quasicategory-hornfilling--1274ccca91c55998ddf2b4c2.md) | 46 | `result-track:1274ccca91c55998ddf2b4c265ee511c44f88358a73284fa722ad297b0ccc676` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfb1d3692ab7bb183877f5be55d49b1cd3dbb939249d922e625cf6a4a927e0bfe.lean/declarations/instance--bd8cf6f4700488572abd5710.md) | 56 | `declaration-track:bd8cf6f4700488572abd5710e1771dd57ed6ab2f477801269272cd51b44f6c93` |
| 4 | `lemma` | [quasicategory_of_filler](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfb1d3692ab7bb183877f5be55d49b1cd3dbb939249d922e625cf6a4a927e0bfe.lean/declarations/quasicategory-of-filler--bd0c27b3472273eaae4a49c0.md) | 59 | `result-track:bd0c27b3472273eaae4a49c0a3a991260a661876f246ed44a4798d905d200a56` |
| 5 | `lemma` | [quasicategory_of_hasLiftingProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfb1d3692ab7bb183877f5be55d49b1cd3dbb939249d922e625cf6a4a927e0bfe.lean/declarations/quasicategory-of-hasliftingproperty--6a9db20f92f029f29c3b4fbf.md) | 72 | `result-track:6a9db20f92f029f29c3b4fbf0439a6fa232328c770ffb045752bf49e5e72d70b` |
| 6 | `lemma` | [Quasicategory.hasLiftingProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfb1d3692ab7bb183877f5be55d49b1cd3dbb939249d922e625cf6a4a927e0bfe.lean/declarations/quasicategory-hasliftingproperty--1d9d2e4a7e1e7788325aa275.md) | 80 | `result-track:1d9d2e4a7e1e7788325aa27546ec3930eaac6ac8916d0f8e68f10483349d3172` |
| 7 | `lemma` | [quasicategory_iff_hasLiftingProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfb1d3692ab7bb183877f5be55d49b1cd3dbb939249d922e625cf6a4a927e0bfe.lean/declarations/quasicategory-iff-hasliftingproperty--e5233a807e2d93bffd0a3f46.md) | 86 | `result-track:e5233a807e2d93bffd0a3f461432bacd4e82f9d0fcb62a8c36c5c0c73f0baecc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

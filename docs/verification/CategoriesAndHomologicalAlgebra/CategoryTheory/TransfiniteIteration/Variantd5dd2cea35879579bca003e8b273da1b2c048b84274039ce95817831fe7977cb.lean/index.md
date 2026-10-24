# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TransfiniteIteration.Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31473b6cb3c4b355df036113eb6743a959cb14e8",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31473b6cb3c4b355df036113eb6743a959cb14e8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean.json)

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
| 1 | `def` | [iter](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean/declarations/iter--09edfd8090b484dc79d04660.md) | 45 | `declaration-track:09edfd8090b484dc79d046603c119b38b6a802bb1990dfe7fa67f3fc5d71a6d9` |
| 2 | `def` | [iterationFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean/declarations/iterationfunctor--4de655975f953ee012fca5d9.md) | 50 | `declaration-track:4de655975f953ee012fca5d9592b8b51c7467d4b138c3ef58af089c4827dc648` |
| 3 | `def` | [iteration](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean/declarations/iteration--4f1a9125067e7f8e674aa779.md) | 57 | `declaration-track:4f1a9125067e7f8e674aa779ed25395107f112367a6fc8ee5dd2371765342426` |
| 4 | `def` | [iterationCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean/declarations/iterationcocone--19f9071a128f94c5a0f7cca2.md) | 61 | `declaration-track:19f9071a128f94c5a0f7cca2e59acfb7f59f2d6abda07708ea442fb070e1a477` |
| 5 | `lemma` | [iterationCocone_pt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean/declarations/iterationcocone-pt--87cae5ffc8bbad7fb10306c7.md) | 65 | `result-track:87cae5ffc8bbad7fb10306c71cad561948daf77dab701ea195a587d203d62e36` |
| 6 | `def` | [isColimitIterationCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean/declarations/iscolimititerationcocone--05ab9fc007f83c90611640ac.md) | 68 | `declaration-track:05ab9fc007f83c90611640ac0fbda783234671670441b1396ab3c6ff0f7ee13d` |
| 7 | `lemma` | [iterationFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean/declarations/iterationfunctor-obj--e212b481d3c62cc413969da2.md) | 73 | `result-track:e212b481d3c62cc413969da2e757aa764cc63bb93d3b04079d7dcc4a24da3b9f` |
| 8 | `lemma` | [arrowMk_iterationFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean/declarations/arrowmk-iterationfunctor-map--214973ec4116e0f8b54f674b.md) | 78 | `result-track:214973ec4116e0f8b54f674b6d631ad7ef3c1b9e086b480e0fdd2318110a67d9` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean/declarations/instance--d999b4cad1f5ed31eff8c1e4.md) | 91 | `declaration-track:d999b4cad1f5ed31eff8c1e408ff2d889cea5c51c83bbd66a0517a50b3ef56f9` |
| 10 | `def` | [iterationFunctorObjBotIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean/declarations/iterationfunctorobjbotiso--a85b49620f3d5ddd1c75d916.md) | 107 | `declaration-track:a85b49620f3d5ddd1c75d9167b55a6ef8260003f98e1843f86c94ce8d1771f72` |
| 11 | `def` | [ιIterationFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean/declarations/iterationfunctor--8c2dac4a9ee79f96343fba09.md) | 112 | `declaration-track:8c2dac4a9ee79f96343fba0981241dc91c278d82d8d0a56c6b6a96a0ac16aa7c` |
| 12 | `def` | [ιIteration](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean/declarations/iteration--916d97bea7f9c0bd54ba1db4.md) | 123 | `declaration-track:916d97bea7f9c0bd54ba1db43251862919f4f81b702f39d61be308d453caccc0` |
| 13 | `def` | [transfiniteCompositionOfShapeιIteration](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean/declarations/transfinitecompositionofshape-iteration--07d554e04307f94fb345eb37.md) | 129 | `declaration-track:07d554e04307f94fb345eb37d76c7b973cc215dd2ef743f89b5cd128e0617cbe` |
| 14 | `lemma` | [prop_iterationFunctor_map_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean/declarations/prop-iterationfunctor-map-succ--f12422af0d0afa2c69756074.md) | 144 | `result-track:f12422af0d0afa2c69756074be6385132daea61966041e0c32c74faaa12bc800` |
| 15 | `def` | [iterationFunctorObjSuccIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean/declarations/iterationfunctorobjsucciso--7c0818f5b78bd01c263f968c.md) | 151 | `declaration-track:7c0818f5b78bd01c263f968c01197c12ac339fac011253a4043947b4414e51d7` |
| 16 | `lemma` | [iterationFunctor_map_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantd5dd2cea35879579bca003e8b273da1b2c048b84274039ce95817831fe7977cb.lean/declarations/iterationfunctor-map-succ--5c41be5541a606a9575c38b8.md) | 157 | `result-track:5c41be5541a606a9575c38b81ce5eb13db64a8c256838019392cf8106a797d4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

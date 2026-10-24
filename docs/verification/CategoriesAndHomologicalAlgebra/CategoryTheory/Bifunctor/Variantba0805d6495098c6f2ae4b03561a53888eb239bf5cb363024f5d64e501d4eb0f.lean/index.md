# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bifunctor.Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf8bdd713a6a2a9089f5234ef8fd8921082849e2",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf8bdd713a6a2a9089f5234ef8fd8921082849e2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean.json)

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
| 1 | `def` | [mapBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean/declarations/mapbifunctor--c370eba6e57f2097529c7749.md) | 38 | `declaration-track:c370eba6e57f2097529c7749aed95884e540a9ccc618c1ef159513a99459d9bb` |
| 2 | `def` | [mapBifunctorMapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean/declarations/mapbifunctormapobj--b55337628d7b214de9c48e94.md) | 53 | `declaration-track:b55337628d7b214de9c48e9482a0dcf472223b94a55f7bd268eb5daf81f07f14` |
| 3 | `def` | [ιMapBifunctorMapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean/declarations/mapbifunctormapobj--70d8d613b425b27f4b711abd.md) | 59 | `declaration-track:70d8d613b425b27f4b711abde6004cc01a427fef203d7d5f7bf980f536fa3496` |
| 4 | `def` | [mapBifunctorMapMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean/declarations/mapbifunctormapmap--41679dd1d7e77a710f71f55b.md) | 68 | `declaration-track:41679dd1d7e77a710f71f55b70b970d032a8df6100328d1f4db33aaa20589d0b` |
| 5 | `lemma` | [ι_mapBifunctorMapMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean/declarations/mapbifunctormapmap--3c653fc2cf8a8be2d98243b1.md) | 78 | `result-track:3c653fc2cf8a8be2d98243b1ec82c75d9d95a1b1fad42383c41696eda565d20e` |
| 6 | `lemma` | [mapBifunctorMapObj_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean/declarations/mapbifunctormapobj-ext--ea11e9d7520d150eae5cbcdc.md) | 89 | `result-track:ea11e9d7520d150eae5cbcdc4fb119b7162f733ff35c36fc42cc6b3005fbdda9` |
| 7 | `def` | [mapBifunctorMapObjDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean/declarations/mapbifunctormapobjdesc--234d83dc628247508ea3eb0e.md) | 101 | `declaration-track:234d83dc628247508ea3eb0eebbda3052d0d616cf84887930e35b721a7cb2a07` |
| 8 | `lemma` | [ι_mapBifunctorMapObjDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean/declarations/mapbifunctormapobjdesc--c7c51c0728362de102906486.md) | 109 | `result-track:c7c51c0728362de102906486ba3050d6aa76c4de267bbb34e2f21d0070bfaad2` |
| 9 | `def` | [mapBifunctorMapMapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean/declarations/mapbifunctormapmapiso--3bd65c3cf980d84fb28c209e.md) | 125 | `declaration-track:3bd65c3cf980d84fb28c209ee2e41f18f77fdc7abbadfb6f9c17385ac508692e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean/declarations/instance--448790249b0942f62805c7f8.md) | 132 | `declaration-track:448790249b0942f62805c7f8819bf05cdb4ac2d3f941f7ed96bcd5ce27615d64` |
| 11 | `def` | [mapBifunctorMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean/declarations/mapbifunctormap--fd9dd7bf1d005822f5893b6b.md) | 146 | `declaration-track:fd9dd7bf1d005822f5893b6be43da8e27482cd6a6f16f704206d172604c0cf8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

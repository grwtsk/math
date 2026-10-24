# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TransfiniteIteration.Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "577dc611d4a499f87ad07b9cbbc41d6390ce5f6f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `577dc611d4a499f87ad07b9cbbc41d6390ce5f6f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.SmallObject.Iteration.Nonempty` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.TransfiniteComposition` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Preorder.WellOrderContinuous` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iter](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean/declarations/iter--cab852ab11caf96af4be0c0e.md) | 40 | `declaration-track:cab852ab11caf96af4be0c0ef1ea2f5d64a9f6cab46cf269a428c6939c9893b9` |
| 2 | `def` | [iterationFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean/declarations/iterationfunctor--09fda3cc261901b8f2c58fc1.md) | 44 | `declaration-track:09fda3cc261901b8f2c58fc1ae123c2b0aadedb5902301a4701e43a3b4c51c39` |
| 3 | `def` | [iteration](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean/declarations/iteration--b099ada740989b7db2992ec1.md) | 51 | `declaration-track:b099ada740989b7db2992ec1c0e07d9bd7f83efe9ba54ca2e59a8dc410b50f2c` |
| 4 | `def` | [iterationCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean/declarations/iterationcocone--5f7bbd240facfac29db60817.md) | 55 | `declaration-track:5f7bbd240facfac29db608173735b72d8ecfbffc539bdc1e6238f1665f316390` |
| 5 | `lemma` | [iterationCocone_pt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean/declarations/iterationcocone-pt--611b546e0050f7b9f153be7e.md) | 59 | `result-track:611b546e0050f7b9f153be7eb384661d3e6721eb2e38d08274115630cf7b9cff` |
| 6 | `def` | [isColimitIterationCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean/declarations/iscolimititerationcocone--b2725a43aa83b00e62ad4518.md) | 62 | `declaration-track:b2725a43aa83b00e62ad451887059f62a427b3f92fec4f7e677c3413976236ed` |
| 7 | `lemma` | [iterationFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean/declarations/iterationfunctor-obj--e549c70ba727913ef1432a54.md) | 67 | `result-track:e549c70ba727913ef1432a54e9ea42ff86868d692d77cb4dcec801d65657ccc9` |
| 8 | `lemma` | [arrowMk_iterationFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean/declarations/arrowmk-iterationfunctor-map--d6d44ebd9ee6e071ef1c608d.md) | 71 | `result-track:d6d44ebd9ee6e071ef1c608d9e520f7e55108f7892ba37b74c08df8ae2964451` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean/declarations/instance--bb64a99399571ab79a0219f3.md) | 82 | `declaration-track:bb64a99399571ab79a0219f3788f0b61927ab28e7dcb4de0d7a3a47e436f9e3e` |
| 10 | `def` | [iterationFunctorObjBotIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean/declarations/iterationfunctorobjbotiso--5af84d39bda27ca6ef3d57b2.md) | 98 | `declaration-track:5af84d39bda27ca6ef3d57b26648b1720a0029709e45e6eaf1f1b4d881da912d` |
| 11 | `def` | [ιIterationFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean/declarations/iterationfunctor--048039e3339769a270c53307.md) | 102 | `declaration-track:048039e3339769a270c533071dda9230792afca699edb769530c1541b577d2ec` |
| 12 | `def` | [ιIteration](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean/declarations/iteration--015e50324709592f254570b1.md) | 113 | `declaration-track:015e50324709592f254570b1af59b11ba025dafed887b7914e5f20272dc8da76` |
| 13 | `def` | [transfiniteCompositionOfShapeιIteration](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean/declarations/transfinitecompositionofshape-iteration--10e4d5fce029c51c0c38d76f.md) | 119 | `declaration-track:10e4d5fce029c51c0c38d76fea85f5811db6ad95fd298713d681383b3aa4ee27` |
| 14 | `lemma` | [prop_iterationFunctor_map_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean/declarations/prop-iterationfunctor-map-succ--4400ed5a4034d3a2aa30b2c3.md) | 134 | `result-track:4400ed5a4034d3a2aa30b2c308b1e71f4d16ad8941a4135e28b2d0b24c443726` |
| 15 | `def` | [iterationFunctorObjSuccIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean/declarations/iterationfunctorobjsucciso--8724bbd8a133ceef02e6dfaf.md) | 141 | `declaration-track:8724bbd8a133ceef02e6dfafade796c28badc93d71ad44a308013d6999517215` |
| 16 | `lemma` | [iterationFunctor_map_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant690a4fc021a2590c2f6900b3982b8ccee54358e672584785188c6a8b348400db.lean/declarations/iterationfunctor-map-succ--196fa75cb860e7af990fb360.md) | 147 | `result-track:196fa75cb860e7af990fb360a6ad7b82294bc044d5f3dad662e9726e6acd4bf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

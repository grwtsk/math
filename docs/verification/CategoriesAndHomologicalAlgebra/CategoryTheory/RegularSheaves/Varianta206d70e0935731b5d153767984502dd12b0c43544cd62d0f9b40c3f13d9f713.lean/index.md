# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RegularSheaves.Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f38f04b1a9011c85bd13217c84fa3a3437947521",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f38f04b1a9011c85bd13217c84fa3a3437947521`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EffectiveEpi.Preserves` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final.ParallelPair` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Projective.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Canonical` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.EffectiveEpimorphic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Presieve.regular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/presieve-regular--9df155a3bb0443f89c696ce7.md) | 45 | `declaration-track:9df155a3bb0443f89c696ce7df99557c1458f1ab8bdbe7528922114409ad3037` |
| 2 | `lemma` | [equalizerCondition_w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/equalizercondition-w--b532f3e22d5fdc38c9a7b098.md) | 52 | `result-track:b532f3e22d5fdc38c9a7b098fd6c6fbcc0af4effba5a2b476b3ce7de08d92d56` |
| 3 | `def` | [SingleEqualizerCondition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/singleequalizercondition--d9660e21f4d5bb7853174140.md) | 60 | `declaration-track:d9660e21f4d5bb785317414098d68a105b7a2efd7ae366945971a37947a4024c` |
| 4 | `def` | [EqualizerCondition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/equalizercondition--49f5368d91b0bfca9eb451fc.md) | 68 | `declaration-track:49f5368d91b0bfca9eb451fcdcc1568699f82e1a9ff97cde69b7716daf7f9701` |
| 5 | `theorem` | [equalizerCondition_of_natIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/equalizercondition-of-natiso--a1a450071f75e7f60f413da9.md) | 72 | `result-track:a1a450071f75e7f60f413da9233af1dec4124d67282cd76cda1d6a07ad1447c4` |
| 6 | `theorem` | [equalizerCondition_precomp_of_preservesPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/equalizercondition-precomp-of-preservespullback--c19ae070ab62e7ef7f8bdb76.md) | 77 | `result-track:c19ae070ab62e7ef7f8bdb76a68002434f8e2ef1335d4cb74d3e1ca1cd2071a3` |
| 7 | `def` | [MapToEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/maptoequalizer--b50836904b9bec9d6002483f.md) | 90 | `declaration-track:b50836904b9bec9d6002483fab2ced5ddcbaf1023c2aa1cf1323756efbe85d80` |
| 8 | `theorem` | [EqualizerCondition.bijective_mapToEqualizer_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/equalizercondition-bijective-maptoequalizer-pullback--a95332158c02572e2c304839.md) | 95 | `result-track:a95332158c02572e2c3048393b235abf7e5879d67c2408fd428af72f05319185` |
| 9 | `theorem` | [EqualizerCondition.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/equalizercondition-mk--55726dc4e13449916ffe9b0c.md) | 109 | `result-track:55726dc4e13449916ffe9b0cdeec76f014e1f23408041cc1be5b71c76b75ddac` |
| 10 | `lemma` | [equalizerCondition_w'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/equalizercondition-w--a479505944d58dccd1840c05.md) | 129 | `result-track:a479505944d58dccd1840c05c97f5fdf70be5e9d34c39337dbef5d14821a113e` |
| 11 | `lemma` | [mapToEqualizer_eq_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/maptoequalizer-eq-comp--be03b76ecd30c6431b8f0a7d.md) | 134 | `result-track:be03b76ecd30c6431b8f0a7db94cfc446452f068353b63b8736e433cd99dd4db` |
| 12 | `theorem` | [equalizerCondition_iff_isIso_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/equalizercondition-iff-isiso-lift--3820cba06ffc48ec0f5f2468.md) | 143 | `result-track:3820cba06ffc48ec0f5f2468aca58b5a2e39c7253a95244f730049fe74f0fe51` |
| 13 | `theorem` | [equalizerCondition_iff_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/equalizercondition-iff-of-equivalence--377eddaba91329c084912d69.md) | 160 | `result-track:377eddaba91329c084912d693fa4d685b0b81f703f744d44ef97d5162c2bfca1` |
| 14 | `theorem` | [parallelPair_pullback_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/parallelpair-pullback-initial--7d4304bfca3779737228761f.md) | 167 | `result-track:7d4304bfca3779737228761f3d85c89125e95415d121d65b95c9789c0c88c068` |
| 15 | `def` | [isLimit_forkOfι_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/islimit-forkof-equiv--57bfec9185fd717fa435c6a9.md) | 191 | `declaration-track:57bfec9185fd717fa435c6a907d52d17f3b8ad96cb2fc8342ed965c79f5d5c1d` |
| 16 | `lemma` | [equalizerConditionMap_iff_nonempty_isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/equalizerconditionmap-iff-nonempty-islimit--fad3e56c87f09a97d43431c7.md) | 210 | `result-track:fad3e56c87f09a97d43431c736920c04e90c839f6cc3948e05fb65d6b6fa13e7` |
| 17 | `lemma` | [equalizerCondition_iff_isSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/equalizercondition-iff-issheaf--88c1a3066b05ad064edb71a7.md) | 220 | `result-track:88c1a3066b05ad064edb71a7cda0105825e6260ae481135c54653a58661a0187` |
| 18 | `lemma` | [isSheafFor_regular_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/issheaffor-regular-of-projective--35b16639a7dc24c297ee2bdd.md) | 231 | `result-track:35b16639a7dc24c297ee2bddb9e0ed419e3b16fb11e7c1ec0650960c5602b5d4` |
| 19 | `theorem` | [isSheaf_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/issheaf-of-projective--a8debfa61a684ecf802c241f.md) | 241 | `result-track:a8debfa61a684ecf802c241f9b409128c2377411ead87d409fa826e42850b19d` |
| 20 | `lemma` | [isSheaf_yoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/issheaf-yoneda-obj--7bc0656f8e8d97bf4c76b4b5.md) | 247 | `result-track:7bc0656f8e8d97bf4c76b4b50e9372d94eee36bc385d3c21533e768838161cf8` |
| 21 | `instance` | [subcanonical](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/declarations/subcanonical--f10f540fb51302f94f2dd515.md) | 268 | `declaration-track:f10f540fb51302f94f2dd5153b65b47de6ce77cacca02d9bd1588964430b8804` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

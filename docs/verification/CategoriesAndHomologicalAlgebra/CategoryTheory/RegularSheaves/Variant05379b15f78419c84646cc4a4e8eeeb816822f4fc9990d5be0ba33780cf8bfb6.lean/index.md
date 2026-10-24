# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RegularSheaves.Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1460b8f7a2df5841b6617e1a7f522f8c498e28fa",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1460b8f7a2df5841b6617e1a7f522f8c498e28fa`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean.json)

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
| 1 | `class` | [Presieve.regular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/presieve-regular--e0a856e28f003c12bb526e16.md) | 49 | `declaration-track:e0a856e28f003c12bb526e161ed1bcb5c8b0395e2ac2ec7665d02141bbd56071` |
| 2 | `lemma` | [equalizerCondition_w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/equalizercondition-w--d0db9c9dd16e025970cbad38.md) | 56 | `result-track:d0db9c9dd16e025970cbad38816614b8abef3a874e74f8e68947cd62ba6b7b98` |
| 3 | `def` | [SingleEqualizerCondition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/singleequalizercondition--c11fbe3d8aeae5b7507596f5.md) | 64 | `declaration-track:c11fbe3d8aeae5b7507596f511bfb99dc3eb94dea39aedf75576c5327047e61c` |
| 4 | `def` | [EqualizerCondition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/equalizercondition--7d1f54cbf02394e1b560d620.md) | 72 | `declaration-track:7d1f54cbf02394e1b560d6203a761f04041e3fb162b8b63b3bf8e4bdd77cefbd` |
| 5 | `theorem` | [equalizerCondition_of_natIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/equalizercondition-of-natiso--b509a1213e63d17ada81b3f4.md) | 77 | `result-track:b509a1213e63d17ada81b3f4ef7b9c2948dce6f6b86f450654588c438d1b9bf1` |
| 6 | `theorem` | [equalizerCondition_precomp_of_preservesPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/equalizercondition-precomp-of-preservespullback--9d07910c54c7e97900696a2e.md) | 83 | `result-track:9d07910c54c7e97900696a2e2e45c737a84b618b9a137907dd791b50b71e0232` |
| 7 | `def` | [mapToEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/maptoequalizer--6930a4115777c5d0ad3a184b.md) | 96 | `declaration-track:6930a4115777c5d0ad3a184bc45b93dd5ecb9e481105b978a6b4874a5e5ac811` |
| 8 | `theorem` | [EqualizerCondition.bijective_mapToEqualizer_pullback'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/equalizercondition-bijective-maptoequalizer-pullback--5f3e9f9961c8be0dc3ba733d.md) | 102 | `result-track:5f3e9f9961c8be0dc3ba733dc596546f488d323f9e52854b9afa29d11c4e7d95` |
| 9 | `theorem` | [EqualizerCondition.bijective_mapToEqualizer_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/equalizercondition-bijective-maptoequalizer-pullback--7d1a40687afb53ce1cb40d48.md) | 118 | `result-track:7d1a40687afb53ce1cb40d4871d3cf1b7664b77c92aa510ebc84f66f4b2f01cf` |
| 10 | `theorem` | [EqualizerCondition.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/equalizercondition-mk--342f215cf27e33f38d3e7ed4.md) | 124 | `result-track:342f215cf27e33f38d3e7ed43906431a77b8f5cd529cbd2062e97976b31de273` |
| 11 | `theorem` | [EqualizerCondition.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/equalizercondition-mk--569795dc847580f4a0c76f4b.md) | 142 | `result-track:569795dc847580f4a0c76f4b22c4d112049b5f26b54b4662324833575c447a91` |
| 12 | `lemma` | [equalizerCondition_w'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/equalizercondition-w--b5e42d3b2b7acbb5c80b05f9.md) | 162 | `result-track:b5e42d3b2b7acbb5c80b05f95bb356f7a59bc602386e0732c991c87493d5f6b4` |
| 13 | `lemma` | [mapToEqualizer_eq_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/maptoequalizer-eq-comp--e6fa6baac7663a0d2d175a1a.md) | 167 | `result-track:e6fa6baac7663a0d2d175a1a28f1aab7d63b952a2f8a4dd65ccd7141fdef576b` |
| 14 | `theorem` | [equalizerCondition_iff_isIso_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/equalizercondition-iff-isiso-lift--fb83796e69350dfed3667251.md) | 176 | `result-track:fb83796e69350dfed36672510dd7be2a8a380a12676d6ca10ffb13851f151419` |
| 15 | `theorem` | [equalizerCondition_iff_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/equalizercondition-iff-of-equivalence--74bf13a5d159a92f7ea82d13.md) | 193 | `result-track:74bf13a5d159a92f7ea82d13a35521e34d23f6eee01482fdc2d51b6126af8e4b` |
| 16 | `theorem` | [parallelPair_pullback_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/parallelpair-pullback-initial--a1fe20ee799522f4f2469c49.md) | 200 | `result-track:a1fe20ee799522f4f2469c495dc7b6c5ba0fcd23bb79c39b1d8f3835fd00023e` |
| 17 | `def` | [isLimit_forkOfι_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/islimit-forkof-equiv--128484b1a7a88e2e57b1ba52.md) | 228 | `declaration-track:128484b1a7a88e2e57b1ba52b80179534d66ea19acbd2796450acdc9e0dcb5dd` |
| 18 | `lemma` | [equalizerConditionMap_iff_nonempty_isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/equalizerconditionmap-iff-nonempty-islimit--00135938f5322701bf4c77a2.md) | 247 | `result-track:00135938f5322701bf4c77a2099a8a6506563b0a43f627040242b83e908c1b25` |
| 19 | `lemma` | [equalizerCondition_iff_isSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/equalizercondition-iff-issheaf--77b636633c9cbfca8d423634.md) | 257 | `result-track:77b636633c9cbfca8d423634d3babf3628b87ecce796a7ba1fe39a1966971750` |
| 20 | `lemma` | [isSheafFor_regular_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/issheaffor-regular-of-projective--bc6186eae29f3246f6e5f6ff.md) | 268 | `result-track:bc6186eae29f3246f6e5f6ff84c3cef10e77dd1a5559c3586b66a07652025dea` |
| 21 | `theorem` | [isSheaf_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/issheaf-of-projective--3af531a77809302cc7177574.md) | 277 | `result-track:3af531a77809302cc7177574978486966672a341f505797698cfaca3f3078d4e` |
| 22 | `lemma` | [isSheaf_yoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/issheaf-yoneda-obj--1e6fa4f33d8278f916d62dc3.md) | 283 | `result-track:1e6fa4f33d8278f916d62dc3ece983c23079908a8d780aea54e3787d821affbe` |
| 23 | `instance` | [subcanonical](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean/declarations/subcanonical--55fe76fe10798f4d8ccab252.md) | 305 | `declaration-track:55fe76fe10798f4d8ccab252d399e7f0fbc91a11fff1f650411cf1b99548176f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

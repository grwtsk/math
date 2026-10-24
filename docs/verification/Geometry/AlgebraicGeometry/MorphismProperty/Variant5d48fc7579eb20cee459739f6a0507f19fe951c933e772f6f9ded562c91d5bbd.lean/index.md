# Verification target: GRWTSK.Geometry.AlgebraicGeometry.MorphismProperty.Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bef7487fffea6a2e187bffba3447b36efc4a716",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bef7487fffea6a2e187bffba3447b36efc4a716`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.OpenImmersion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Cover](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover--b35c966dbd70f56c720bcba0.md) | 50 | `declaration-track:b35c966dbd70f56c720bcba0445798d4eaa4305c0fc804549bab251fecc64c08` |
| 2 | `theorem` | [Cover.iUnion_range](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-iunion-range--cfdc7109a5f714c93a202265.md) | 69 | `result-track:cfdc7109a5f714c93a2022655d549415441d4c60a441e30070c56385dd9363fa` |
| 3 | `lemma` | [Cover.exists_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-exists-eq--d71ab74d660fe0427542ebff.md) | 76 | `result-track:d71ab74d660fe0427542ebff7199c3fe43175e90ff307ef3db5388b01944ec9a` |
| 4 | `instance` | [Cover.nonempty_of_nonempty](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-nonempty-of-nonempty--9f11afea4b00a9c4da72163e.md) | 79 | `declaration-track:9f11afea4b00a9c4da72163e747c1f93b655d8ada90539f17382d987e3e13073` |
| 5 | `def` | [Cover.mkOfCovers](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-mkofcovers--dae38e584260b16b8e31f612.md) | 85 | `declaration-track:dae38e584260b16b8e31f612b694d16fe86be27e7ea9c8c93fadcf1e8ac66ee6` |
| 6 | `def` | [Cover.changeProp](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-changeprop--e4c7da6bfb7e70b245f07de4.md) | 96 | `declaration-track:e4c7da6bfb7e70b245f07de45e444fffd6ad33b6ce95bd697a5839b4c6f04038` |
| 7 | `def` | [Cover.bind](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-bind--274f6beb81edbf01da6de89b.md) | 108 | `declaration-track:274f6beb81edbf01da6de89b9c33994ce6570e6526eca8ed482319932a5742f1` |
| 8 | `def` | [coverOfIsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/coverofisiso--9d4ca1255a79e7a2a9165a4e.md) | 125 | `declaration-track:9d4ca1255a79e7a2a9165a4ec68581f6e67a9192a069c4d761e8a27d0eac9e13` |
| 9 | `def` | [Cover.copy](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-copy--39c626bd3d5ff1a5dc2f28d3.md) | 141 | `declaration-track:39c626bd3d5ff1a5dc2f28d3b7128de0b1e6173ee070b04a9ae34ebda75beddc` |
| 10 | `def` | [Cover.pushforwardIso](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-pushforwardiso--1dca41fc0fb316ecc57eeffa.md) | 158 | `declaration-track:1dca41fc0fb316ecc57eeffae2db62bd5bcffda12528b750c224e0352cf90c9e` |
| 11 | `def` | [Cover.add](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-add--258c6724312c76aa65dbeb4b.md) | 167 | `declaration-track:258c6724312c76aa65dbeb4b1eb47687735eac6a8f48724ffd544a1c1b96eb56` |
| 12 | `class` | [IsJointlySurjectivePreserving](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/isjointlysurjectivepreserving--79040c8f0081b6a30d549067.md) | 187 | `declaration-track:79040c8f0081b6a30d549067adcd97bb205b631200d4aa8992e04dd0ddf73f23` |
| 13 | `lemma` | [IsJointlySurjectivePreserving.exists_preimage_snd_triplet_of_prop](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/isjointlysurjectivepreserving-exists-preimage-snd-triplet-of-prop--841f66ccc37014c0f858b4c0.md) | 192 | `result-track:841f66ccc37014c0f858b4c0f6d1003cfd1a344841e21102d77d954b45c4c596` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/instance--3195bf3b4bd9361cfa1ee458.md) | 202 | `declaration-track:3195bf3b4bd9361cfa1ee458b87050760fa99e04edfc0ffd90987b0c6f131b6a` |
| 15 | `def` | [Cover.pullbackCover](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-pullbackcover--ad10235de37ab5f82d095410.md) | 221 | `declaration-track:ad10235de37ab5f82d09541016f7b10787377f64a96ee0695ba930fab7fee1d9` |
| 16 | `def` | [Cover.pullbackHom](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-pullbackhom--588661b342171b7eab6f9cad.md) | 234 | `declaration-track:588661b342171b7eab6f9cad7fe2fd82a0e3245830c91c57584a0c5db465976b` |
| 17 | `lemma` | [Cover.pullbackHom_map](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-pullbackhom-map--c6d495066a9439240253d38c.md) | 241 | `result-track:c6d495066a9439240253d38ccbed6ece8db6efadf09396dfa0c391136081f488` |
| 18 | `def` | [Cover.pullbackCover'](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-pullbackcover--e605c433fee44a4bc5dbc368.md) | 249 | `declaration-track:e605c433fee44a4bc5dbc368d7340e9fb1669f142e1e84b6a3b714c1808c410c` |
| 19 | `def` | [Cover.inter](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-inter--abe4681f3c91764ae9c5e013.md) | 264 | `declaration-track:abe4681f3c91764ae9c5e0134dd20f57835c3bc36e206b888728e57f3cd159b6` |
| 20 | `structure` | [AffineCover](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/affinecover--7780027103de092c67522a2a.md) | 290 | `declaration-track:7780027103de092c67522a2a10f48bc1f49d437321afb18f4cb4b5d42ae8b48b` |
| 21 | `def` | [AffineCover.cover](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/affinecover-cover--63292a6376f11f1210894975.md) | 306 | `declaration-track:63292a6376f11f1210894975c43f1d045d6164ac788f89057bf51cb01927c28d` |
| 22 | `structure` | [Cover.Hom](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-hom--8484be9355bd90f3a2b12aa0.md) | 322 | `declaration-track:8484be9355bd90f3a2b12aa00be8baefef03fa045f6ec2485bb3d36d18a78b1f` |
| 23 | `def` | [Cover.Hom.id](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-hom-id--1daee1ec01cbfddb22aed2a6.md) | 333 | `declaration-track:1daee1ec01cbfddb22aed2a63c04ff2626d142688f4e2de74e629e688341de57` |
| 24 | `def` | [Cover.Hom.comp](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-hom-comp--1efadbe6bd21a3b76c4c1e73.md) | 339 | `declaration-track:1efadbe6bd21a3b76c4c1e73124fb19114695969f0d8bc16f996781b54f81d5b` |
| 25 | `instance` | [Cover.category](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-category--cb62128dbdbe08ec6e4380a8.md) | 345 | `declaration-track:cb62128dbdbe08ec6e4380a8d8e9502c9495479135c4122eb976a04c4b9ab25d` |
| 26 | `lemma` | [Cover.id_idx_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-id-idx-apply--2fce78be47c35c4b870fc00f.md) | 353 | `result-track:2fce78be47c35c4b870fc00fddbf88f8de757f2d362f351e1bf89a253eb6bb89` |
| 27 | `lemma` | [Cover.id_app](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-id-app--eb70bfec8f1c6523059e6fa7.md) | 357 | `result-track:eb70bfec8f1c6523059e6fa7a3228e136870464960ff97313743762c75777a01` |
| 28 | `lemma` | [Cover.comp_idx_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-comp-idx-apply--bc9a6e2d0e0541f37e3f5b52.md) | 361 | `result-track:bc9a6e2d0e0541f37e3f5b5271b2559dee9cb0f139e2dc412d69e193df93f423` |
| 29 | `lemma` | [Cover.comp_app](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/declarations/cover-comp-app--60bd8e67cea7a6a44532f181.md) | 366 | `result-track:60bd8e67cea7a6a44532f1813170597f3c87534b26286a47b35c634255d9ba13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

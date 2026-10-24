# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomologicalFunctor.Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0534fe6c0520105e14525a31d6668255452686b1",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0534fe6c0520105e14525a31d6668255452686b1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean.json)

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
| 1 | `def` | [homologicalKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/homologicalkernel--fdd956f1dfb441ba67dddf03.md) | 67 | `declaration-track:fdd956f1dfb441ba67dddf03b9ade179a92884c0ffee90a5451cf74f9abe387a` |
| 2 | `lemma` | [mem_homologicalKernel_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/mem-homologicalkernel-iff--eae5300560e727b1121d18d1.md) | 70 | `result-track:eae5300560e727b1121d18d1f28a03d86c955e5d0175846f7121cbd4d4372f52` |
| 3 | `class` | [IsHomological](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/ishomological--32db166093bed13d901a2e1a.md) | 82 | `declaration-track:32db166093bed13d901a2e1aee62c718b05e50e8a5ffca709ef11f2de2ff5846` |
| 4 | `lemma` | [map_distinguished_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/map-distinguished-exact--a0408f4110139312c3b79bfe.md) | 86 | `result-track:a0408f4110139312c3b79bfe26b8fd5f56fede95d8bfa83f686beae9be8768a8` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/instance--8a0a1d79c2248f031af23583.md) | 90 | `declaration-track:8a0a1d79c2248f031af23583253f45d93e61305f6574c8117d9a27b18a65fe4b` |
| 6 | `lemma` | [IsHomological.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/ishomological-mk--c6545f5ca2be2a2db4d290c0.md) | 94 | `result-track:c6545f5ca2be2a2db4d290c0553d6abcb83147e1999ff8e793beb616dec3fb20` |
| 7 | `lemma` | [IsHomological.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/ishomological-of-iso--c9f1a73d925bf45ce7b69731.md) | 104 | `result-track:c9f1a73d925bf45ce7b69731f331abad4e57d6b060bdd17da208529ed1195a5f` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/instance--82816f3d52746236fc97f772.md) | 114 | `declaration-track:82816f3d52746236fc97f7728b454eabde2dda188cd5a3c2727426bc0b746396` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/instance--d730897304f0f34628d85c2e.md) | 117 | `declaration-track:d730897304f0f34628d85c2ee77240114ac7d2a45689d7ff0aae4f921522bbb2` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/instance--653fb96a8902744497e847dc.md) | 131 | `declaration-track:653fb96a8902744497e847dcfb1acbcac70023a4478dc876985ccc72566e4b2d` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/instance--bad0987f6e5619a79c57cc6e.md) | 152 | `declaration-track:bad0987f6e5619a79c57cc6e0d26df6cf7356005708698b4106683cc2cf40db6` |
| 12 | `lemma` | [isHomological_of_localization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/ishomological-of-localization--1e75f5a8a8dcefac04c61a68.md) | 155 | `result-track:1e75f5a8a8dcefac04c61a6890ec817a5928fb013b436f27c9f12080e6601d08` |
| 13 | `def` | [homologySequenceδ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/homologysequence--81d6bf7b5224df9b6d5c03d3.md) | 173 | `declaration-track:81d6bf7b5224df9b6d5c03d30cd1c49a6ec2ee9331d90e2a3965f7bbf79d960e` |
| 14 | `lemma` | [homologySequenceδ_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/homologysequence-naturality--24849dd0a8606cc4b876dd5a.md) | 179 | `result-track:24849dd0a8606cc4b876dd5a2183ba0ccdb54bb46912db8d7df03d89ba1a5029` |
| 15 | `lemma` | [comp_homologySequenceδ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/comp-homologysequence--8239b7449aadc835316eccaf.md) | 194 | `result-track:8239b7449aadc835316eccaf68a9efa58dd51ad903fe4582d17ae8a629a179d8` |
| 16 | `lemma` | [homologySequenceδ_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/homologysequence-comp--67a3006a9413ba9468e547a5.md) | 200 | `result-track:67a3006a9413ba9468e547a5c0624133165d4373fed4d2768e97e7a34ab48817` |
| 17 | `lemma` | [homologySequence_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/homologysequence-comp--85b2e99b04da4e87eeceaf25.md) | 206 | `result-track:85b2e99b04da4e87eeceaf257374ea4928cd7d5be0e43d11f2f6967e7b4f48cd` |
| 18 | `lemma` | [homologySequence_exact₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/homologysequence-exact--26c624a173c4543559a513c8.md) | 214 | `result-track:26c624a173c4543559a513c8627b572a7c16ad5397a2a6d44f4fc198a8594928` |
| 19 | `lemma` | [homologySequence_exact₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/homologysequence-exact--8967f758169609c6882520e9.md) | 223 | `result-track:8967f758169609c6882520e98d18d629f3fd5856941df1527b7b052d527dc5d2` |
| 20 | `lemma` | [homologySequence_exact₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/homologysequence-exact--948be3d3c6a01e16924fa8d1.md) | 230 | `result-track:948be3d3c6a01e16924fa8d1516b52acb13bbba219b810d16820a8cbb5e463e5` |
| 21 | `lemma` | [homologySequence_epi_shift_map_mor₁_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/homologysequence-epi-shift-map-mor-iff--4929a6ec2480bb5853d858a4.md) | 240 | `result-track:4929a6ec2480bb5853d858a40be0fb01b34d09cb156cae675d112bf74c93f433` |
| 22 | `lemma` | [homologySequence_mono_shift_map_mor₁_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/homologysequence-mono-shift-map-mor-iff--42339555698d635121009ac3.md) | 244 | `result-track:42339555698d635121009ac3cbdb961eaef6bd185da4a62283f9de8ff1298a1e` |
| 23 | `lemma` | [homologySequence_epi_shift_map_mor₂_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/homologysequence-epi-shift-map-mor-iff--7a9b4fb2fdc045d5f60942fd.md) | 248 | `result-track:7a9b4fb2fdc045d5f60942fd5e7e2ffa68c92d9cc7262afb471fb8f94651ce72` |
| 24 | `lemma` | [homologySequence_mono_shift_map_mor₂_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/homologysequence-mono-shift-map-mor-iff--b873e3b71c90c917a38fb2e8.md) | 252 | `result-track:b873e3b71c90c917a38fb2e8ebdbdc351e3c4c59a3e121653b03fa13913f41e6` |
| 25 | `lemma` | [mem_homologicalKernel_trW_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/mem-homologicalkernel-trw-iff--87c20113f1a910a07d9bb1cf.md) | 258 | `result-track:87c20113f1a910a07d9bb1cf1b0f39c16ec717ebfba042f52c84367eefa98c26` |
| 26 | `def` | [homologySequenceComposableArrows₅](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/homologysequencecomposablearrows--fd9aa6c6bdea535629167aab.md) | 280 | `declaration-track:fd9aa6c6bdea535629167aabd06fa1a64f69f95e99680152e39520ff5412ec25` |
| 27 | `lemma` | [homologySequenceComposableArrows₅_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/declarations/homologysequencecomposablearrows-exact--16467137def7c1adedcdfc28.md) | 285 | `result-track:16467137def7c1adedcdfc284a81f6b16744e2cbd1a03e7c449400d502a4305b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

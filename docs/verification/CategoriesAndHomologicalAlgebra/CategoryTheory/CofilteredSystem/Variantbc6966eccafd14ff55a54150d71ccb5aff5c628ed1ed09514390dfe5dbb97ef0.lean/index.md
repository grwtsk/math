# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CofilteredSystem.Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f46a9dc2c9f0751618809334b2b23048f0eb91f0",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f46a9dc2c9f0751618809334b2b23048f0eb91f0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.Limits.Konig` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nonempty_sections_of_finite_cofiltered_system.init](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/nonempty-sections-of-finite-cofiltered-system-init--26d36a151794d8f983127316.md) | 62 | `result-track:26d36a151794d8f983127316f7eb51f8355d790bc20730a653555cd537bcc0a2` |
| 2 | `theorem` | [nonempty_sections_of_finite_cofiltered_system](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/nonempty-sections-of-finite-cofiltered-system--14e9f91500c7ac3fd2d98978.md) | 75 | `result-track:14e9f91500c7ac3fd2d98978a4b3742ad86ff2aea5875a86c2d6662173477e5c` |
| 3 | `theorem` | [nonempty_sections_of_finite_inverse_system](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/nonempty-sections-of-finite-inverse-system--beb052c0bee53d269276b009.md) | 106 | `result-track:beb052c0bee53d269276b00906e3dbb769df58d2d6b6dc153d7a992617070961` |
| 4 | `def` | [eventualRange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/eventualrange--4ef8590329c0e97232a05eaa.md) | 124 | `declaration-track:4ef8590329c0e97232a05eaa23bb0bd80436bd20105745adf4794c1c66a86bf2` |
| 5 | `theorem` | [mem_eventualRange_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/mem-eventualrange-iff--27fe3553e263699e36f1d80f.md) | 127 | `result-track:27fe3553e263699e36f1d80f8e6b272f0d9626f7b4c2be5491859ccd66a75786` |
| 6 | `def` | [IsMittagLeffler](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/ismittagleffler--cad34f56bbb2c5f4f25afbca.md) | 136 | `declaration-track:cad34f56bbb2c5f4f25afbca8abb1ea627217b1765edc877c271134aa9cbe5a5` |
| 7 | `theorem` | [isMittagLeffler_iff_eventualRange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/ismittagleffler-iff-eventualrange--d3af8995906e01d8755ddd44.md) | 139 | `result-track:d3af8995906e01d8755ddd44eb708994eaf77f5bb3d6a78b833d515f363349f4` |
| 8 | `theorem` | [IsMittagLeffler.subset_image_eventualRange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/ismittagleffler-subset-image-eventualrange--297b143bf0816d018d4ebae7.md) | 145 | `result-track:297b143bf0816d018d4ebae78435e4284d168d8ed9c1f305baecca1c48eb71ab` |
| 9 | `theorem` | [eventualRange_eq_range_precomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/eventualrange-eq-range-precomp--e2d83b69aaaaf3ab84e0b210.md) | 152 | `result-track:e2d83b69aaaaf3ab84e0b21008a30d4c88ba6be9ce8208c59c7859a0449d68a7` |
| 10 | `theorem` | [isMittagLeffler_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/ismittagleffler-of-surjective--15ddc927a0f3ab5a815954c5.md) | 159 | `result-track:15ddc927a0f3ab5a815954c5287df481793b8c25fd146277adede4daf4666f9e` |
| 11 | `def` | [toPreimages](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/topreimages--1fd62f81771d959a317af2ff.md) | 165 | `declaration-track:1fd62f81771d959a317af2fffdb1a2652ca3b958a0f12e7e0aace62cd85292c8` |
| 12 | `instance` | [toPreimages_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/topreimages-finite--7fffa228c43b9e886454bff5.md) | 180 | `declaration-track:7fffa228c43b9e886454bff5bd801c1bb64f46bc0cfb75217f60e1dda3e53557` |
| 13 | `theorem` | [eventualRange_mapsTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/eventualrange-mapsto--561777721929f94d2930f9ad.md) | 185 | `result-track:561777721929f94d2930f9ade5aefa127cbd179e0359ac615e101b85f4d558cb` |
| 14 | `theorem` | [IsMittagLeffler.eq_image_eventualRange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/ismittagleffler-eq-image-eventualrange--b0a634f074dedc979e6e1771.md) | 194 | `result-track:b0a634f074dedc979e6e17713920b0fec7b0849f02c3d24ef3132e6d46f0df05` |
| 15 | `theorem` | [eventualRange_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/eventualrange-eq-iff--ebba3eefe262289020608c49.md) | 198 | `result-track:ebba3eefe262289020608c4967e38fc07f7351af9be74d55df77fa6ec5c8a643` |
| 16 | `theorem` | [isMittagLeffler_iff_subset_range_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/ismittagleffler-iff-subset-range-comp--5453cb4ca98aae52dc092bd7.md) | 208 | `result-track:5453cb4ca98aae52dc092bd74a4beac9c2038562f9ef467806b7d32b340e1a3b` |
| 17 | `theorem` | [IsMittagLeffler.toPreimages](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/ismittagleffler-topreimages--5cf3dac3c4aa1a40f6b2b67c.md) | 212 | `result-track:5cf3dac3c4aa1a40f6b2b67cf504376028f784cae2f3bc9999851af2894bb2a6` |
| 18 | `theorem` | [isMittagLeffler_of_exists_finite_range](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/ismittagleffler-of-exists-finite-range--807299f6edd306878a25e787.md) | 232 | `result-track:807299f6edd306878a25e787cfa724b3bfe78cb6cedec9a7e580dad79ea9b0f2` |
| 19 | `def` | [toEventualRanges](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/toeventualranges--44790756bda15238a96cee3b.md) | 248 | `declaration-track:44790756bda15238a96cee3bd825723c04b041914173145b7fa38f3764588168` |
| 20 | `instance` | [toEventualRanges_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/toeventualranges-finite--87f20f4d77bedcb0c7da393c.md) | 259 | `declaration-track:87f20f4d77bedcb0c7da393c9b009cafa21f8354f1a6333494afe168f5d3dce7` |
| 21 | `def` | [toEventualRangesSectionsEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/toeventualrangessectionsequiv--8fd56402c88019877b5fa6f4.md) | 264 | `declaration-track:8fd56402c88019877b5fa6f4a0e2445dd7d010e67d0b6f468dd1fbcfdbf9d399` |
| 22 | `theorem` | [surjective_toEventualRanges](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/surjective-toeventualranges--9b993a75bb4aab857b526eed.md) | 277 | `result-track:9b993a75bb4aab857b526eede59cf52664324717910b7916d794119e45aaa554` |
| 23 | `theorem` | [toEventualRanges_nonempty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/toeventualranges-nonempty--7b005b448d7e4f15eb3c4d67.md) | 283 | `result-track:7b005b448d7e4f15eb3c4d6798dfda9806306da2ff429da4ec19258db2c7035a` |
| 24 | `theorem` | [thin_diagram_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/thin-diagram-of-surjective--a570628df0e0ea2c7c3e1404.md) | 290 | `result-track:a570628df0e0ea2c7c3e14043964dcc24cc2f47698d177aaeec4dec395428c05` |
| 25 | `theorem` | [toPreimages_nonempty_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/topreimages-nonempty-of-surjective--c92a7e02411b2f6b2b60adbb.md) | 295 | `result-track:c92a7e02411b2f6b2b60adbb273fe4d1bab8847b005a40d0e6a1a8c3a540e7da` |
| 26 | `theorem` | [eval_section_injective_of_eventually_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/eval-section-injective-of-eventually-injective--d87ecb3ce41ed550b735c860.md) | 305 | `result-track:d87ecb3ce41ed550b735c8604558f9af4b46a09baa8c33e06f0db711d69b3dd8` |
| 27 | `theorem` | [eval_section_surjective_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/eval-section-surjective-of-surjective--fb0f6a4b7288cbce6dcf72e5.md) | 321 | `result-track:fb0f6a4b7288cbce6dcf72e5411ee7ba1289f7c87a4f2c15371bf52c0cf90662` |
| 28 | `theorem` | [eventually_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/declarations/eventually-injective--c55f6884ace3f9859e6ec79c.md) | 332 | `result-track:c55f6884ace3f9859e6ec79c76ab0ecceb327ec7978867c5bc8a6e807b978e9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

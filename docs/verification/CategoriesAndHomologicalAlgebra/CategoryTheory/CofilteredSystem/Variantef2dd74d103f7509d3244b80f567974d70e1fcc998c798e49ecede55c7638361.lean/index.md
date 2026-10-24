# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CofilteredSystem.Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7479641f17904982c3e3483189e2c7b18965396",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7479641f17904982c3e3483189e2c7b18965396`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Filtered` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Konig` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nonempty_sections_of_finite_cofiltered_system.init](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/nonempty-sections-of-finite-cofiltered-system-init--faa03bb5da11c66cd60a5ae7.md) | 66 | `result-track:faa03bb5da11c66cd60a5ae7d23739777c251f66079994a90eb30a3f75df9054` |
| 2 | `theorem` | [nonempty_sections_of_finite_cofiltered_system](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/nonempty-sections-of-finite-cofiltered-system--46f78c6cb4123f917cb65710.md) | 80 | `result-track:46f78c6cb4123f917cb6571016ff772966d9d90dd5a500e43b5fca74738bf2b3` |
| 3 | `theorem` | [nonempty_sections_of_finite_inverse_system](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/nonempty-sections-of-finite-inverse-system--3819246d5e4873a6e9668417.md) | 112 | `result-track:3819246d5e4873a6e96684172a12cbb6fce296fca16ea82d838b57c0729e5c31` |
| 4 | `def` | [eventualRange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/eventualrange--8e877a081bcbb08a1afee34e.md) | 131 | `declaration-track:8e877a081bcbb08a1afee34e9738e9d966c3090ef80a54c0bf83aa768f79fa00` |
| 5 | `theorem` | [mem_eventualRange_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/mem-eventualrange-iff--3137ed440925c6a5397a1008.md) | 135 | `result-track:3137ed440925c6a5397a10083c25ef03327556a2cf362fc9ce3b08ad159b34a4` |
| 6 | `def` | [IsMittagLeffler](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/ismittagleffler--e68c9153493eb4a6210c8def.md) | 145 | `declaration-track:e68c9153493eb4a6210c8defa04e078aef2e1852f2c179bd3e7aa18dfa8a72f3` |
| 7 | `theorem` | [isMittagLeffler_iff_eventualRange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/ismittagleffler-iff-eventualrange--d35b63d92c873135c8b926d0.md) | 149 | `result-track:d35b63d92c873135c8b926d0b79443aafcb7d9a39d8cc222e4296dad1ba76230` |
| 8 | `theorem` | [IsMittagLeffler.subset_image_eventualRange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/ismittagleffler-subset-image-eventualrange--5566f9c4bf7c576d27f9733e.md) | 156 | `result-track:5566f9c4bf7c576d27f9733e599f4a0a96c0ca04a06349137bd79c007900489e` |
| 9 | `theorem` | [eventualRange_eq_range_precomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/eventualrange-eq-range-precomp--0802c14b917a195613f2e0f1.md) | 164 | `result-track:0802c14b917a195613f2e0f111f9e379edef9c6a02eff3731c779f8f9a235a95` |
| 10 | `theorem` | [isMittagLeffler_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/ismittagleffler-of-surjective--c57af11e1d7d54d037bcc14d.md) | 172 | `result-track:c57af11e1d7d54d037bcc14d9d6d0feae85586e494f68e7530792e2257116c2e` |
| 11 | `def` | [toPreimages](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/topreimages--6a61853fef251849f1778230.md) | 179 | `declaration-track:6a61853fef251849f17782306b7df89c9d5e1bb25fdade3ee20f65f7d056b05e` |
| 12 | `instance` | [toPreimages_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/topreimages-finite--9ad2e7172ee6c50d980d659f.md) | 195 | `declaration-track:9ad2e7172ee6c50d980d659fb4e561367c641728f6c5abfc77250b3ec540db6e` |
| 13 | `theorem` | [eventualRange_mapsTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/eventualrange-mapsto--8bed3372ea67c42a2555bb39.md) | 201 | `result-track:8bed3372ea67c42a2555bb396125d33d4be0d8c3f86f20798fb953637ec470e3` |
| 14 | `theorem` | [IsMittagLeffler.eq_image_eventualRange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/ismittagleffler-eq-image-eventualrange--ff8a3678faeee881924157a6.md) | 211 | `result-track:ff8a3678faeee881924157a6e016bf30f92bccc2ee1f9e2e964d436e28f5050a` |
| 15 | `theorem` | [eventualRange_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/eventualrange-eq-iff--aa856ce43f7af0dad450a7d6.md) | 216 | `result-track:aa856ce43f7af0dad450a7d6d77031aa761299fc82af40dd539d3decc852d24d` |
| 16 | `theorem` | [isMittagLeffler_iff_subset_range_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/ismittagleffler-iff-subset-range-comp--66e2fc48e61e4cdc5ef62d7e.md) | 227 | `result-track:66e2fc48e61e4cdc5ef62d7e6ef2dc225218d2e8f95972acbafd5993a2c066dc` |
| 17 | `theorem` | [IsMittagLeffler.toPreimages](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/ismittagleffler-topreimages--e9abe11538d5c6ce23886468.md) | 232 | `result-track:e9abe11538d5c6ce23886468a2310b3a2fb79de8c492890dcde2938fbbd652db` |
| 18 | `theorem` | [isMittagLeffler_of_exists_finite_range](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/ismittagleffler-of-exists-finite-range--fb40106f0d5c805ab0c083dd.md) | 253 | `result-track:fb40106f0d5c805ab0c083dd1baf9794a4e23263e6a78a42dfddd86fa70ff96c` |
| 19 | `def` | [toEventualRanges](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/toeventualranges--e2f03701c3f9c79faa2cc574.md) | 270 | `declaration-track:e2f03701c3f9c79faa2cc574513186cbdcb7cc8289c3ff251c3e376a1d0a1f3b` |
| 20 | `instance` | [toEventualRanges_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/toeventualranges-finite--ce8eaa1ebc49a8d7a21506a9.md) | 282 | `declaration-track:ce8eaa1ebc49a8d7a21506a99f1ee809f75e4f061c6d0a8e01a0c257111fbd9d` |
| 21 | `def` | [toEventualRangesSectionsEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/toeventualrangessectionsequiv--1d04e6719482af2b50113b72.md) | 288 | `declaration-track:1d04e6719482af2b50113b72247c8d3bcd712f9e3ec2e6e39dccc1a7ed1ca9fb` |
| 22 | `theorem` | [surjective_toEventualRanges](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/surjective-toeventualranges--df1a374e481c0e2bc8f86bbf.md) | 302 | `result-track:df1a374e481c0e2bc8f86bbf2497233ad94a334bc36ab0869ff319781022116e` |
| 23 | `theorem` | [toEventualRanges_nonempty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/toeventualranges-nonempty--6958a03465c952e2c2ffd717.md) | 309 | `result-track:6958a03465c952e2c2ffd71734dbc82ae678dd28d04e4a368e95dfa2d4e51245` |
| 24 | `theorem` | [thin_diagram_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/thin-diagram-of-surjective--e852148448b093af7a2949f3.md) | 317 | `result-track:e852148448b093af7a2949f38775482a74beb68e34a61520e61ab1601f8765b4` |
| 25 | `theorem` | [toPreimages_nonempty_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/topreimages-nonempty-of-surjective--9af227acf55e1dcd1892e051.md) | 323 | `result-track:9af227acf55e1dcd1892e0514e51c3c5939b0cb444045021ad4ac0ebb43cef65` |
| 26 | `theorem` | [eval_section_injective_of_eventually_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/eval-section-injective-of-eventually-injective--72883e2b9a47d4f4b9a73575.md) | 334 | `result-track:72883e2b9a47d4f4b9a73575c883ba9496447a8c18134f9af559dd8debff3b60` |
| 27 | `theorem` | [eval_section_surjective_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/eval-section-surjective-of-surjective--d59968e4525894d29acf9f88.md) | 350 | `result-track:d59968e4525894d29acf9f880b79ce26abb0dbcfec363221be21df6adfe8051b` |
| 28 | `theorem` | [eventually_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/declarations/eventually-injective--4551347ace72c3ebcc2aaa9c.md) | 362 | `result-track:4551347ace72c3ebcc2aaa9cfd49e85962782ef8dff8f4009f5286c5c25f18a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

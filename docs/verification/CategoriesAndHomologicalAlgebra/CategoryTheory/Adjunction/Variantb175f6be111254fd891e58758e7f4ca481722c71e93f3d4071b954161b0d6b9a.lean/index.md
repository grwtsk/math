# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e145c5104e05c406ecda3b42145bc6954016fd23",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e145c5104e05c406ecda3b42145bc6954016fd23`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean.json)

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
| 1 | `abbrev` | [CompatibilityUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/compatibilityunit--1f2497d94ae3efa2bd04429a.md) | 82 | `declaration-track:1f2497d94ae3efa2bd04429a40641dcb2f8492736809390406e71e6921f8274e` |
| 2 | `abbrev` | [CompatibilityCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/compatibilitycounit--806fb4a423a92835c4f4556b.md) | 90 | `declaration-track:806fb4a423a92835c4f4556bfc462b4c350afe410c595efdb871089e5d02db70` |
| 3 | `lemma` | [compatibilityCounit_of_compatibilityUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/compatibilitycounit-of-compatibilityunit--16e6d3da093400ae733bdf0e.md) | 99 | `result-track:16e6d3da093400ae733bdf0e2eee0f5e7ddb9e3222b43835fb17b7319e29e48a` |
| 4 | `lemma` | [compatibilityUnit_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/compatibilityunit-right--8984014a11516b3ecc8c5093.md) | 121 | `result-track:8984014a11516b3ecc8c5093c539cfa43271925118efe51b0fed32c25405b57a` |
| 5 | `lemma` | [compatibilityCounit_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/compatibilitycounit-left--586f67e8cf3f8d7614948464.md) | 137 | `result-track:586f67e8cf3f8d761494846415f7823a5253a92d03dde28a42be15c8a25f9832` |
| 6 | `lemma` | [compatibilityUnit_unique_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/compatibilityunit-unique-right--ff2740a790e4cafc95ab1d74.md) | 151 | `result-track:ff2740a790e4cafc95ab1d744fa40f238a459a056325b8cf5db37a5820538d2b` |
| 7 | `lemma` | [compatibilityUnit_unique_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/compatibilityunit-unique-left--793ac7f7d9d54be427ed47ae.md) | 163 | `result-track:793ac7f7d9d54be427ed47ae12b677d03ff6ff15aa4a46782f4a9e9114b4389e` |
| 8 | `lemma` | [compatibilityUnit_isoZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/compatibilityunit-isozero--3420e6478f2de25ce2b330de.md) | 174 | `result-track:3420e6478f2de25ce2b330def8edc1958f2db6f51f0b7aef39d3432de9ffeff2` |
| 9 | `lemma` | [compatibilityUnit_isoAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/compatibilityunit-isoadd--5c60bbadadb8a6a3d51444b7.md) | 188 | `result-track:5c60bbadadb8a6a3d51444b7572d9b32668a5751b1e279d92f92e966d906528f` |
| 10 | `class` | [CommShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/commshift--2b3c7735253a43973079bc75.md) | 216 | `declaration-track:2b3c7735253a43973079bc75396b149c26bd3ab0630b5bfab5f4fbdc475fe08e` |
| 11 | `lemma` | [unit_app_commShiftIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/unit-app-commshiftiso-hom-app--0fec52a64f7be0e8d80f6cb2.md) | 225 | `result-track:0fec52a64f7be0e8d80f6cb287bec05b1f515cb6d13708f835e7a94ea30ea598` |
| 12 | `lemma` | [unit_app_shift_commShiftIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/unit-app-shift-commshiftiso-inv-app--5ac1f64a1f6c96e63265bd8e.md) | 231 | `result-track:5ac1f64a1f6c96e63265bd8e67857cce2a2d1ed0c51a14f26f86f3e9d3d2d800` |
| 13 | `lemma` | [commShiftIso_hom_app_counit_app_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/commshiftiso-hom-app-counit-app-shift--cdb49098c65fcbfbc3279113.md) | 237 | `result-track:cdb49098c65fcbfbc327911318749f395d7ee071a2b9ae6d02531eb34043e27e` |
| 14 | `lemma` | [commShiftIso_inv_app_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/commshiftiso-inv-app-counit-app--1b6d51b134863b3b67bd9290.md) | 242 | `result-track:1b6d51b134863b3b67bd929001634a4dece479259806d69653132619ca7fc374` |
| 15 | `lemma` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/mk--955e0a213b872d13dd11451d.md) | 251 | `result-track:955e0a213b872d13dd11451d95c5b7952f07d605844207ac6164da1c9284ad98` |
| 16 | `instance` | [instId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/instid--aa0a9bf7386e575f8959a790.md) | 264 | `declaration-track:aa0a9bf7386e575f8959a7908fe4ce2218e1bdf218a3efc6023ca4ad4e3404ac` |
| 17 | `instance` | [instComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/instcomp--4fbc26f8b8686dac9dbbe81e.md) | 275 | `declaration-track:4fbc26f8b8686dac9dbbe81ee95935e254ab217663ff3d7cf4e5003d693f284a` |
| 18 | `lemma` | [shift_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/shift-unit-app--d24756feb9b0f8e0df55cbb8.md) | 289 | `result-track:d24756feb9b0f8e0df55cbb8da3e27225f07b9639c7f8b5001944f9151a66433` |
| 19 | `lemma` | [shift_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/shift-counit-app--4c3001d27db5b978cf0b03a9.md) | 298 | `result-track:4c3001d27db5b978cf0b03a9766d1eb5d86bec79243a4a240082708e21cdea00` |
| 20 | `def` | [iso'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/iso--482396fccf0492235ac57670.md) | 320 | `declaration-track:482396fccf0492235ac5767064a1925a517c763062afe1a2e293c6b2a67148c6` |
| 21 | `def` | [iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/iso--f806b8888ae5d235555e36d7.md) | 328 | `declaration-track:f806b8888ae5d235555e36d789c848d0dd7d57b32d3702d85f4c3e0b42200b68` |
| 22 | `lemma` | [iso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/iso-hom-app--90a14a1f234f48e2681781b7.md) | 333 | `result-track:90a14a1f234f48e2681781b735fd584ec7fdca3160ab67098514cae4b3ee187f` |
| 23 | `lemma` | [iso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/iso-inv-app--647914a1ca74e82fa2789f4c.md) | 346 | `result-track:647914a1ca74e82fa2789f4c7e39f32a2824934bad1761e88e9225954547ec0b` |
| 24 | `lemma` | [compatibilityUnit_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/compatibilityunit-iso--165911cfc4d285a840a19093.md) | 371 | `result-track:165911cfc4d285a840a19093864ea9237276fefcccea84e6abdbd02f17368f96` |
| 25 | `def` | [rightAdjointCommShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/rightadjointcommshift--ba6904d8a00d529a58149084.md) | 396 | `declaration-track:ba6904d8a00d529a581490841a6a81f51ec6ea462b12168ca81837657cb54be5` |
| 26 | `lemma` | [commShift_of_leftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/commshift-of-leftadjoint--42c029850104915a20d480c3.md) | 411 | `result-track:42c029850104915a20d480c3ba96ffd15b9c77a099c6536d3c43d2aeab39a33d` |
| 27 | `def` | [iso'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/iso--73bf17feeb8824f4887e4dde.md) | 426 | `declaration-track:73bf17feeb8824f4887e4dde8d40fa4df6ff2e3e72883fc66c8ab5fcb02888d7` |
| 28 | `def` | [iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/iso--3335903db6cec2d6eb4c3155.md) | 434 | `declaration-track:3335903db6cec2d6eb4c3155889ca9a46bc88f21bfeb55aa089646f0ff53c7d2` |
| 29 | `lemma` | [iso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/iso-hom-app--dcb62d322927723200478c3b.md) | 439 | `result-track:dcb62d322927723200478c3be79e36bb5b9a8aabb6c3c1159d870bf7fed8f51b` |
| 30 | `lemma` | [iso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/iso-inv-app--42ab7a4eeb8aa5e948494523.md) | 450 | `result-track:42ab7a4eeb8aa5e948494523313f9c382d17ff145ac5a38b030650f220e990f4` |
| 31 | `lemma` | [compatibilityUnit_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/compatibilityunit-iso--d8ce89949860db70cc24e1e2.md) | 464 | `result-track:d8ce89949860db70cc24e1e24fdcdd2397565d4ba48f2bca091ef93d40d21a1b` |
| 32 | `def` | [leftAdjointCommShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/leftadjointcommshift--54fa7376badd3fde1eaa5ace.md) | 484 | `declaration-track:54fa7376badd3fde1eaa5aceba0fa25faa40091b541e0c2ff3f70f06de9125a4` |
| 33 | `lemma` | [commShift_of_rightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/commshift-of-rightadjoint--e016fd62496a7847024e5619.md) | 499 | `result-track:e016fd62496a7847024e56197e59dfc69c1a956673257ac0686b1786c64402cc` |
| 34 | `abbrev` | [CommShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/commshift--6928e9ee5bdc9e2bfca382cc.md) | 523 | `declaration-track:6928e9ee5bdc9e2bfca382cc1d9e3b6a91103b91a70c9f40ad0c32eca1b2f48b` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/instance--00411287a70d2990c0f5aba2.md) | 530 | `declaration-track:00411287a70d2990c0f5aba2d92870b5cc2bf360ce84166cf95e2a3a9505cf24` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/instance--82a1ec339f34311aa86a4a5f.md) | 533 | `declaration-track:82a1ec339f34311aa86a4a5f2e8a16940f303338c4b871b619f4c6817043318c` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/instance--add66bd52ed26f0518d548be.md) | 536 | `declaration-track:add66bd52ed26f0518d548be191a98eae4eff5f7902e38c06a4b6a3e8695d85d` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/instance--167e241dca2558aedea77954.md) | 537 | `declaration-track:167e241dca2558aedea77954e1e8e5bbb7d3d77ab192cbff994a405f9b31f700` |
| 39 | `lemma` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/mk--3715eef119f6a1d30af41059.md) | 540 | `result-track:3715eef119f6a1d30af41059effa7dd4d9ead973788c7eae6910474da06572bb` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/instance--8db4b2345751d2ffc13e8261.md) | 548 | `declaration-track:8db4b2345751d2ffc13e8261f870b92db563873cee693ef7f192f41b074be979` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/instance--685eec2d2641862a280d5e20.md) | 554 | `declaration-track:685eec2d2641862a280d5e202546ebdcf3bafe550382064c52b3011bc8f0a8ff` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/instance--381bafa612d9eeb5b82288a2.md) | 561 | `declaration-track:381bafa612d9eeb5b82288a2e717876078e9844e1f8bbf91fd378a6ebe02e841` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/instance--ca027422822aeaaf9231ab98.md) | 567 | `declaration-track:ca027422822aeaaf9231ab985154fa6c670c1df68b094fe9c9c7670ae6f930fe` |
| 44 | `lemma` | [mk''](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/mk--f884b53becfcd919365994e9.md) | 571 | `result-track:f884b53becfcd919365994e91077c5ad5a76e2f0a1eb4b429127a275417a9ac8` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/instance--719028e40eeeda203efea09d.md) | 584 | `declaration-track:719028e40eeeda203efea09da5ea7554404c12ab7e5639942f0d7cac289db451` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/instance--9828002e8b2f536f1c653659.md) | 593 | `declaration-track:9828002e8b2f536f1c6536591b0a5aaed885d88c7b33420466c58934fb4e1dac` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/instance--2e6a9ba33e19fe47ebebb7c1.md) | 600 | `declaration-track:2e6a9ba33e19fe47ebebb7c19f9f57b5485583109407456c81d5ecbeb2be56b6` |
| 48 | `def` | [commShiftInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/commshiftinverse--19cf9423b870fe98a247660f.md) | 614 | `declaration-track:19cf9423b870fe98a247660f4a9d774887c62c51ab82391f08b50c6ff9e85bc8` |
| 49 | `lemma` | [commShift_of_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/commshift-of-functor--f9426b59cbdb78f06a3e95f3.md) | 617 | `result-track:f9426b59cbdb78f06a3e95f30942aa7ebe765009bf392cdf61bdb8426ced610c` |
| 50 | `def` | [commShiftFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/commshiftfunctor--6bde4336caf88b3a7eb5043c.md) | 628 | `declaration-track:6bde4336caf88b3a7eb5043c89c6ac0b8921caca3b74f60896f862d3f893c757` |
| 51 | `lemma` | [commShift_of_inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/declarations/commshift-of-inverse--7acfaaa95b08e0177b73c3bf.md) | 631 | `result-track:7acfaaa95b08e0177b73c3bf1ad4b5e94266de46583fa77d597b7d10c0c81818` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

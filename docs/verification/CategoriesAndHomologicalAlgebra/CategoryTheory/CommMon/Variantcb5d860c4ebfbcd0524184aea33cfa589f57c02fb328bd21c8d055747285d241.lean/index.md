# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommMon.Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19103dd699cb8cc07d30e82dfe23763444d521c3",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19103dd699cb8cc07d30e82dfe23763444d521c3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Mon_` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CommMon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/commmon--04f6e298c2f3f5d093ba6461.md) | 21 | `declaration-track:04f6e298c2f3f5d093ba6461a894c92f7fe15a3946f4b6fcc9d7919112384108` |
| 2 | `def` | [trivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/trivial--bccdd0d31503a4ccf0364e3d.md) | 31 | `declaration-track:bccdd0d31503a4ccf0364e3d2f77c0bd95c92561f557e2c70f4cfbb0d257f088` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/instance--eeb5f0643c06522c0bf1d4ab.md) | 34 | `declaration-track:eeb5f0643c06522c0bf1d4abc488db8f15c13eddb6be9e200a8e6d7a61cb3c2c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/instance--dff5dd8fd404cbc19c7822a8.md) | 40 | `declaration-track:dff5dd8fd404cbc19c7822a871f8d45f51067c8e3b8f839c0be97bd60f6e244f` |
| 5 | `theorem` | [id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/id-hom--a7e051cbcbd8d871bf8c3ffc.md) | 44 | `result-track:a7e051cbcbd8d871bf8c3ffc9fc0526e3240446a9ae31a5ee4bc29810b7baaaf` |
| 6 | `theorem` | [comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/comp-hom--5ab4de54b0336e1db1ee3574.md) | 48 | `result-track:5ab4de54b0336e1db1ee3574a97a85f27512a1404d960afa90fb3b9f84944aa2` |
| 7 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/hom-ext--fb9b2b0d95e0087e1db03902.md) | 53 | `result-track:fb9b2b0d95e0087e1db03902b78d565a52ec441c77a3e1ef78fb81399735133f` |
| 8 | `lemma` | [id'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/id--3b234a1d441613d72492fe50.md) | 59 | `result-track:3b234a1d441613d72492fe50d8fa7128250fbbaf9b69853d0bfbed15ee9c914a` |
| 9 | `lemma` | [comp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/comp--11c162c09d35e5e87aeac7bc.md) | 62 | `result-track:11c162c09d35e5e87aeac7bc1926d340a6cd9d6ce2b6768dab07bb9f5d14d345` |
| 10 | `def` | [forget₂Mon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/forget-mon--dc90321fb145e78f7dd5c9b4.md) | 70 | `declaration-track:dc90321fb145e78f7dd5c9b48b085ce6c06e801b1108e9d0786666d9584497b9` |
| 11 | `def` | [fullyFaithfulForget₂Mon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/fullyfaithfulforget-mon--a5e05402980a088ba03adf11.md) | 75 | `declaration-track:a5e05402980a088ba03adf110c61c492170f1a26bcd4e6b33e3009047f5848db` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/instance--f79508ee09c014eb2c1a70e9.md) | 80 | `declaration-track:f79508ee09c014eb2c1a70e94e5f26360ae58e518cd2578c1df10e1d29942a1e` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/instance--a95ed30175ac54560b3eef9c.md) | 81 | `declaration-track:a95ed30175ac54560b3eef9cdecafc8db3ff7d0dd70aa1b900e6f59abb928623` |
| 14 | `theorem` | [forget₂Mon_obj_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/forget-mon-obj-one--348a9b6ac7af453c4e1e6129.md) | 84 | `result-track:348a9b6ac7af453c4e1e6129bf1e73737d8bfecc0938706363ee57a9ad556ec0` |
| 15 | `theorem` | [forget₂Mon_obj_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/forget-mon-obj-mul--e544e478045e9c1e9303a490.md) | 88 | `result-track:e544e478045e9c1e9303a490fc893ed3881fc2b892acb810eb6ffe91fa15328e` |
| 16 | `theorem` | [forget₂Mon_map_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/forget-mon-map-hom--a6349a6b8fcdfc316a510736.md) | 92 | `result-track:a6349a6b8fcdfc316a5107361669cb13bc6a1c4855678bdfdd7946bc547d9d91` |
| 17 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/forget--20728ee813f94fd26b17abfe.md) | 101 | `declaration-track:20728ee813f94fd26b17abfeb1f8de3b33eea0923bea523741f9aff1f7b0e657` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/instance--c3ca5c7b33bd5fe9d6d11dc4.md) | 104 | `declaration-track:c3ca5c7b33bd5fe9d6d11dc4d42d32d9d156efc49bf968e4771ea658c8fb6748` |
| 19 | `theorem` | [forget₂Mon_comp_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/forget-mon-comp-forget--0df8157235e6cc4a9b537293.md) | 107 | `result-track:0df8157235e6cc4a9b53729363b5e4d986cf745fcb1467d1c9ec472b119d3706` |
| 20 | `def` | [mkIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/mkiso--ecc8a7089531608b466b9594.md) | 117 | `declaration-track:ecc8a7089531608b466b9594d7ff162040bbca8be084f94f5a18d864fa9493e5` |
| 21 | `lemma` | [mkIso_hom_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/mkiso-hom-hom--cd0d8c2d1794745f7959c6a8.md) | 120 | `result-track:cd0d8c2d1794745f7959c6a8f461c8ffad92c2710b489005059e320b5ec1ea39` |
| 22 | `lemma` | [mkIso_inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/mkiso-inv-hom--12f36a7aaa86f2752d2e9b15.md) | 121 | `result-track:12f36a7aaa86f2752d2e9b152a805d815ec8ec3d75f4abb137dee8bca76caa60` |
| 23 | `instance` | [uniqueHomFromTrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/uniquehomfromtrivial--11564a66b54d1c77b500af87.md) | 125 | `declaration-track:11564a66b54d1c77b500af87179a8fca9f4390560d2e85edad89a935fe006c77` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/instance--86f0edd4c635e321fd5dc9df.md) | 130 | `declaration-track:86f0edd4c635e321fd5dc9dfa633159560c41f65acb86fb1ce60eb7b663ef95c` |
| 25 | `def` | [mapCommMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/mapcommmon--a1b2b709f942652bec608c96.md) | 149 | `declaration-track:a1b2b709f942652bec608c962d559362aaccf6365c0a565d0b0540685cfdd288` |
| 26 | `def` | [mapCommMonIdIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/mapcommmonidiso--b3903f6f0db5f5e79f6416dd.md) | 159 | `declaration-track:b3903f6f0db5f5e79f6416dd84b6001f7fdd8a36b201bdd8f3b612ec95f0dbe8` |
| 27 | `def` | [mapCommMonCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/mapcommmoncompiso--2d796eec3fb03fd0aff3030e.md) | 164 | `declaration-track:2d796eec3fb03fd0aff3030e5866ed05a69744b9751047e03a0d8602782f34ef` |
| 28 | `def` | [mapCommMonFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/mapcommmonfunctor--8b4f50d42fc668c286ecc025.md) | 170 | `declaration-track:8b4f50d42fc668c286ecc0252a82863e3ac3042188a4d59c0b0430139dcd6ac9` |
| 29 | `def` | [mapCommMonNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/mapcommmonnattrans--c4b6290ee9457623fdb5aeea.md) | 177 | `declaration-track:c4b6290ee9457623fdb5aeeac42013c338fbf14b34125341f618fe021e3ec55f` |
| 30 | `def` | [mapCommMonNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/mapcommmonnatiso--642e17102efc9ecfaa6a55c2.md) | 183 | `declaration-track:642e17102efc9ecfaa6a55c2e33ffc7199def152236e66db47d080542346a63d` |
| 31 | `def` | [mapCommMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/mapcommmon--c9370fd1c6d5914f2ebb576d.md) | 196 | `declaration-track:c9370fd1c6d5914f2ebb576dc3521101b08ad87f87dc49cacfa53e29329e9c88` |
| 32 | `def` | [mapCommMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/mapcommmon--c3767d088f7f39a7df6e5d9a.md) | 206 | `declaration-track:c3767d088f7f39a7df6e5d9a299791e769d5441d6ab72faf5cb95c539fff64da` |
| 33 | `def` | [laxBraidedToCommMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/laxbraidedtocommmon--13376451f7329acf170dc770.md) | 223 | `declaration-track:13376451f7329acf170dc7707ac16d1306bfae7814a30416688ead95e2ffdfd5` |
| 34 | `def` | [commMonToLaxBraidedObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/commmontolaxbraidedobj--98a39405a1e2ad0851c6df70.md) | 231 | `declaration-track:98a39405a1e2ad0851c6df701683b13f6d2096e206ac01489b5a7fb85fb9c127` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/instance--eccac50c55d6737c2c86df79.md) | 234 | `declaration-track:eccac50c55d6737c2c86df794a0853ea9a71f52021caba72ac7450a1d0c89909` |
| 36 | `lemma` | [commMonToLaxBraidedObj_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/commmontolaxbraidedobj--7e26ca616c457d03a9e02378.md) | 241 | `result-track:7e26ca616c457d03a9e02378b81f18568289d93eb27a97f210142f0be72f3b93` |
| 37 | `lemma` | [commMonToLaxBraidedObj_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/commmontolaxbraidedobj--56066616e4659f1ebd319f4d.md) | 245 | `result-track:56066616e4659f1ebd319f4dc61826f455f364df98e0b54be96c981c74894e40` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/instance--f9e48f8d5941939d7c2d6d90.md) | 248 | `declaration-track:f9e48f8d5941939d7c2d6d90f71cb507a642f905335c98a43abd0094b14fd596` |
| 39 | `def` | [commMonToLaxBraided](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/commmontolaxbraided--54b68458cb57a9337158865d.md) | 253 | `declaration-track:54b68458cb57a9337158865d978031dfeedd2387b68ebccdfe05364c27e14256` |
| 40 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/unitiso--9e92122e0310fad192843d82.md) | 261 | `declaration-track:9e92122e0310fad192843d826b30ac7ca623a222912ae16452714eb2cf7f7eed` |
| 41 | `def` | [counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/counitiso--cdba8a882d75b971d902fc05.md) | 270 | `declaration-track:cdba8a882d75b971d902fc05a6fab7ba4fc7a7e7fb5828e7848564fe8b38ecc9` |
| 42 | `def` | [equivLaxBraidedFunctorPUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/equivlaxbraidedfunctorpunit--29160fadb9179bc08f1bf35e.md) | 281 | `declaration-track:29160fadb9179bc08f1bf35e8288e4e557bdc8e9761a1f7cf44c7f167af746c0` |
| 43 | `def` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/mk--8e010ab475ce96a4ec77355d.md) | 295 | `declaration-track:8e010ab475ce96a4ec77355dce35761bf2746790d138657654b1bd733a674a53` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/declarations/instance--7238f02694d717de15297d2f.md) | 299 | `declaration-track:7238f02694d717de15297d2f6e2f040ad84aa5f6bbe8cd8ca14ff7c6e1ed7fa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

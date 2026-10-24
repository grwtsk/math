# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Resolution.Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbf61673ca647990d0a6d87cbeb719dc09dbf530",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbf61673ca647990d0a6d87cbeb719dc09dbf530`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean.json)

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
| 1 | `structure` | [RightResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/rightresolution--d1ee61bebd1a775d2660ced2.md) | 56 | `declaration-track:d1ee61bebd1a775d2660ced23d340fe97c8b4dc7086692778f5fa94dc610d481` |
| 2 | `structure` | [LeftResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/leftresolution--ab36f2d10b1ccb7dcc07664a.md) | 65 | `declaration-track:ab36f2d10b1ccb7dcc07664ae9b582239286bb53b227d0bdb0195e57a82000e0` |
| 3 | `lemma` | [RightResolution.mk_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/rightresolution-mk-surjective--7b01d55fa6e993ea41dbcf65.md) | 73 | `result-track:7b01d55fa6e993ea41dbcf651c47f2291394850122dec26c8f9902a3bff9d083` |
| 4 | `lemma` | [LeftResolution.mk_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/leftresolution-mk-surjective--0ce79b3a09c6f25f3b6868dc.md) | 78 | `result-track:0ce79b3a09c6f25f3b6868dcc467b5ba4de34dff9ac7d9208e2eba620250a638` |
| 5 | `abbrev` | [HasRightResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hasrightresolutions--0753210e2fc982f805524a89.md) | 83 | `declaration-track:0753210e2fc982f805524a8955c6578d9d9a37fe12c8741c1d0b5acc8af5a954` |
| 6 | `abbrev` | [HasLeftResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hasleftresolutions--a7c44b5785be822f3442d52c.md) | 86 | `declaration-track:a7c44b5785be822f3442d52c48b494c8249c781faf277353f8c92d5a1354967f` |
| 7 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hom--faac935bdc856928e018a5bd.md) | 94 | `declaration-track:faac935bdc856928e018a5bd8b5f7e5c78ff2fa8a8f4fae2e45968338f281ea2` |
| 8 | `def` | [Hom.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hom-id--9634c93786304c8f4c2c9147.md) | 103 | `declaration-track:9634c93786304c8f4c2c91477a2ad085f13dc8f4ceaf53d35372cc682bb52b0a` |
| 9 | `def` | [Hom.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hom-comp--92cc11c589fd3c253e553813.md) | 108 | `declaration-track:92cc11c589fd3c253e553813989008cab4cecd413225d5d32638f139e80bd220` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/instance--6222fe35037f66de3b07d84d.md) | 113 | `declaration-track:6222fe35037f66de3b07d84daf6460638494180919ebabe6bcfab51c485ed6b0` |
| 11 | `lemma` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/id-f--e34c692d34dee75e995a51cd.md) | 119 | `result-track:e34c692d34dee75e995a51cd4315be56318af37894ffdf86ae2b3e690ba3a4a6` |
| 12 | `lemma` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/comp-f--19f8bc254aa7962fd9c64ad1.md) | 122 | `result-track:19f8bc254aa7962fd9c64ad1150e745f881b681e1bef1faf35451286b3cf6f87` |
| 13 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hom-ext--8e4f8cd6c794cd8801b2072c.md) | 126 | `result-track:8e4f8cd6c794cd8801b2072c55f4d8d0dcbefd754f9d49ec9590e5d5d50697c9` |
| 14 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hom--6b5cd21b6e8880da922fc28f.md) | 138 | `declaration-track:6b5cd21b6e8880da922fc28f65156237f03deb7f9f12c2d54aa10cb1b8c4d18c` |
| 15 | `def` | [Hom.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hom-id--528ea11bf0622cf51a1a3e25.md) | 147 | `declaration-track:528ea11bf0622cf51a1a3e2544f53eb5430541e19a0b47a80428086ac6ea8b81` |
| 16 | `def` | [Hom.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hom-comp--a268fb47dd1d09cb6ec097b3.md) | 152 | `declaration-track:a268fb47dd1d09cb6ec097b331c8f4d3d868858f492e1132afd8ba84ea16ebaa` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/instance--87b1ef11cd4e205ccdb6b497.md) | 157 | `declaration-track:87b1ef11cd4e205ccdb6b497eff8e5c2de468b0d297cb59047e58ba5e7873b22` |
| 18 | `lemma` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/id-f--8a98ac41a79d55f507c40dee.md) | 163 | `result-track:8a98ac41a79d55f507c40dee6913be7e23ce14b9df9ef55987be84295b8f55cf` |
| 19 | `lemma` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/comp-f--471b1a31642ce2903bff2430.md) | 166 | `result-track:471b1a31642ce2903bff24303010db5b809b0819ea8fa9bbb6cb61d9f460da84` |
| 20 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hom-ext--b367caafd50a795debf2e737.md) | 170 | `result-track:b367caafd50a795debf2e737ea1ae447cdc6e6bd6e170712c9eb6b0a8a33de10` |
| 21 | `def` | [LeftResolution.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/leftresolution-op--bec05317bde78bce4e45ebbe.md) | 180 | `declaration-track:bec05317bde78bce4e45ebbe3ec4e5494dc9143aa008a43067ef5773ad603c81` |
| 22 | `def` | [LeftResolution.unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/leftresolution-unop--1e4253297a32f8906f780cb2.md) | 188 | `declaration-track:1e4253297a32f8906f780cb24bfeab08fd87efeb982590147458c9bf7bf1c2d0` |
| 23 | `def` | [RightResolution.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/rightresolution-op--28c05679a591899285b55341.md) | 196 | `declaration-track:28c05679a591899285b5534108a96f8029a8748a8441e2deb02db380e4bb6d75` |
| 24 | `def` | [RightResolution.unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/rightresolution-unop--40b93873cbb45cb6419b22cc.md) | 204 | `declaration-track:40b93873cbb45cb6419b22cc9dcb3043bd7b8ddc418eac71c4c2da2719f854d8` |
| 25 | `lemma` | [nonempty_leftResolution_iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/nonempty-leftresolution-iff-op--b5354dcc6c939c4b38253954.md) | 212 | `result-track:b5354dcc6c939c4b38253954c4123866c017692eabc1e800f5b7e28b4c32758f` |
| 26 | `lemma` | [nonempty_rightResolution_iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/nonempty-rightresolution-iff-op--3e4b8fa0c3458b9214ea9ef8.md) | 218 | `result-track:3e4b8fa0c3458b9214ea9ef80dd5f1a6223e9039c6e1c7f68fc4e572a7e0173e` |
| 27 | `lemma` | [hasLeftResolutions_iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hasleftresolutions-iff-op--47b0537556598bf83df4f055.md) | 224 | `result-track:47b0537556598bf83df4f055d3dbd58d4c41996041402897f7f59cc6b32f75bb` |
| 28 | `lemma` | [hasRightResolutions_iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hasrightresolutions-iff-op--9fc17a0241f2da0163a92d28.md) | 228 | `result-track:9fc17a0241f2da0163a92d280df76a3acf2dcefd2a3721296d743d55604dd0bb` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/instance--8156ad957333ce86071d46db.md) | 232 | `declaration-track:8156ad957333ce86071d46db8bb5c360f9504b2b83d23de584bfab7a66ed30d0` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/instance--4dccf41b712519977ef6334c.md) | 235 | `declaration-track:4dccf41b712519977ef6334c12b5657bfe01b3947d827285ca3c3d9df3fcc2bc` |
| 31 | `def` | [LeftResolution.opFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/leftresolution-opfunctor--1c3ff0fd6485399b182f671f.md) | 240 | `declaration-track:1c3ff0fd6485399b182f671f97eaf7f777539808b7685667d4f75bbe0c381d6a` |
| 32 | `def` | [RightResolution.unopFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/rightresolution-unopfunctor--a0078cc27c6ecd8976a5519d.md) | 249 | `declaration-track:a0078cc27c6ecd8976a5519ddec8eabef7675e51928fd551347cc80050834440` |
| 33 | `def` | [LeftResolution.opEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/leftresolution-opequivalence--80add925054e576c63919a32.md) | 261 | `declaration-track:80add925054e576c63919a3297fa14dea420ad22bdd7eb950e401ec724cbc900` |
| 34 | `lemma` | [essSurj_of_hasRightResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/esssurj-of-hasrightresolutions--944bcc07ccbd70e446cf6ff9.md) | 272 | `result-track:944bcc07ccbd70e446cf6ff9e6ae09ab517fb544c0a42356cc402c4a39f36458` |
| 35 | `lemma` | [isIso_iff_of_hasRightResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/isiso-iff-of-hasrightresolutions--b8650c9d10cbe0973adbe32f.md) | 278 | `result-track:b8650c9d10cbe0973adbe32f3df106a4117f896aa4352769fd4f0fd7e703e895` |
| 36 | `lemma` | [essSurj_of_hasLeftResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/esssurj-of-hasleftresolutions--51a540b2d9b2b56fa6ca7cad.md) | 290 | `result-track:51a540b2d9b2b56fa6ca7cad9e29ba83b1c3a67e5f1bfc07728275d7ded331c2` |
| 37 | `lemma` | [isIso_iff_of_hasLeftResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/isiso-iff-of-hasleftresolutions--81d9cbdebc81c4d685bf0337.md) | 296 | `result-track:81d9cbdebc81c4d685bf03378a2acae763bd6a902c42182c9419bf483efcf473` |
| 38 | `lemma` | [hasRightResolutions_of_iso_of_essSurj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hasrightresolutions-of-iso-of-esssurj--063d96a234847f3d3d0dcf34.md) | 316 | `result-track:063d96a234847f3d3d0dcf3486a4e3947330bbcf7cb0c3828fc69c25f5b33d79` |
| 39 | `lemma` | [hasLeftResolutions_of_iso_of_essSurj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hasleftresolutions-of-iso-of-esssurj--7b75b4ae5f48b0eeb0e4b762.md) | 328 | `result-track:7b75b4ae5f48b0eeb0e4b762b76c0f6ee92dac1cddc74f7c6ddcbcd5dd5792cb` |
| 40 | `lemma` | [hasRightResolutions_of_iso_of_essSurj_of_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hasrightresolutions-of-iso-of-esssurj-of-full--6fb5dab7c714ac98b43c71ca.md) | 340 | `result-track:6fb5dab7c714ac98b43c71ca73dd6cd46a94ba021000aa02ee96f5ef47e9dc21` |
| 41 | `lemma` | [hasLeftResolutions_of_iso_of_essSurj_of_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hasleftresolutions-of-iso-of-esssurj-of-full--f1edf1b2a721a162c1958ead.md) | 356 | `result-track:f1edf1b2a721a162c1958eadfe4b45dcad475738d65c120039f2c795b9d29573` |
| 42 | `lemma` | [hasRightResolutions_iff_iso_of_essSurj_of_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hasrightresolutions-iff-iso-of-esssurj-of-full--b1222ff27ffb1c09e20ad3db.md) | 371 | `result-track:b1222ff27ffb1c09e20ad3db4b2ee17421d1a107ffb6bb5f3b29262cdd98f1c1` |
| 43 | `lemma` | [hasLeftResolutions_iff_iso_of_essSurj_of_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hasleftresolutions-iff-iso-of-esssurj-of-full--4894b060469ac2d3db09b468.md) | 378 | `result-track:4894b060469ac2d3db09b4683402a10877bd29a61d6477c4a8b16f35ca63e8f7` |
| 44 | `lemma` | [hasRightResolutions_arrow_of_essSurj_of_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hasrightresolutions-arrow-of-esssurj-of-full--1d9d62b5785497e8cd8ab28e.md) | 385 | `result-track:1d9d62b5785497e8cd8ab28e361e6ecec30c30a783411f39a000f6f27d39a78f` |
| 45 | `lemma` | [hasLeftResolutions_arrow_of_essSurj_of_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hasleftresolutions-arrow-of-esssurj-of-full--fccd98dd72d594230ff8ffef.md) | 393 | `result-track:fccd98dd72d594230ff8ffef0f845463463423bca8a0b7c137d3ad15da7a7f24` |
| 46 | `lemma` | [hasRightResolutions_arrow_iff_of_equivalences](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hasrightresolutions-arrow-iff-of-equivalences--909a4c18c82daf409a2b4690.md) | 401 | `result-track:909a4c18c82daf409a2b4690915b7f86964562128ff89b41487f58bd5e1dea02` |
| 47 | `lemma` | [hasLeftResolutions_arrow_iff_of_equivalences](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantbeac5d07b857c50ee3ed3a175b9039a9f7954c15f3625293105c6b6bb1045c8e.lean/declarations/hasleftresolutions-arrow-iff-of-equivalences--3bae3b61ff2877875caa134a.md) | 409 | `result-track:3bae3b61ff2877875caa134a90fee207741965a31f7bc26f7de0ca91f2a51801` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

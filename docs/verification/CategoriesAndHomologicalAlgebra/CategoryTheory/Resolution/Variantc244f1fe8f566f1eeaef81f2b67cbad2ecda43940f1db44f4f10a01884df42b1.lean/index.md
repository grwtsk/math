# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Resolution.Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee2bd4c9701320bcf2823d7416b561a8aa078fd2",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee2bd4c9701320bcf2823d7416b561a8aa078fd2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean.json)

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
| 1 | `structure` | [RightResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/rightresolution--72629b80671ef60305079096.md) | 64 | `declaration-track:72629b80671ef603050790966c2186c43de10c15472c52cc5246a459da290e6d` |
| 2 | `structure` | [LeftResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/leftresolution--eb7b75a946dc5c9427fe7582.md) | 73 | `declaration-track:eb7b75a946dc5c9427fe7582d6eab973b3170b45a483ac869e0d8ac9e1576f81` |
| 3 | `lemma` | [RightResolution.mk_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/rightresolution-mk-surjective--49355dccf38b58e4e740c07b.md) | 81 | `result-track:49355dccf38b58e4e740c07b3749e373a2528359451b6d906a8b82b01b87fc41` |
| 4 | `lemma` | [LeftResolution.mk_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/leftresolution-mk-surjective--bfcea3b3b99809773a933c1e.md) | 86 | `result-track:bfcea3b3b99809773a933c1e0e4b7448850f5fa83eb7c0d7cd91e5bd61268816` |
| 5 | `abbrev` | [HasRightResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hasrightresolutions--751a787b0bc8ee61023d919c.md) | 91 | `declaration-track:751a787b0bc8ee61023d919c40d78fb4951dffcb35e1775f8a726f6d6a8b691b` |
| 6 | `abbrev` | [HasLeftResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hasleftresolutions--8b1a32a8a587c4b14b1e5e39.md) | 94 | `declaration-track:8b1a32a8a587c4b14b1e5e39e24b56228a1a3513478eca2fb86756c26f2c4a38` |
| 7 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hom--936ebcff76ab65e859e3233d.md) | 102 | `declaration-track:936ebcff76ab65e859e3233d6c75ab011bf58ef50820ed4917d9f5e327c451e5` |
| 8 | `def` | [Hom.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hom-id--3874e0a46956aa246b7e21fb.md) | 111 | `declaration-track:3874e0a46956aa246b7e21fbe83f429eb78da5ea77f11d77c7674c21c0d6e061` |
| 9 | `def` | [Hom.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hom-comp--1a4e4a14846d632c0529cd7d.md) | 116 | `declaration-track:1a4e4a14846d632c0529cd7d1dbfb7fedc373d6f6c6138e54b75880b572ab2b4` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/instance--6468ce50337daf0cd7bf3480.md) | 121 | `declaration-track:6468ce50337daf0cd7bf34809dda198f7d9eefae6a451c9299be740733f8086a` |
| 11 | `lemma` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/id-f--f8af8c504aa70da7cba59995.md) | 127 | `result-track:f8af8c504aa70da7cba5999557f301f42c35873d8f8d28dda32052972c9b1476` |
| 12 | `lemma` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/comp-f--bd70f7f273ca7eb934ecd6f8.md) | 130 | `result-track:bd70f7f273ca7eb934ecd6f88402ee8916a0a6bbbefa2231a4e4b11ecc25853e` |
| 13 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hom-ext--b8a845a0f632844e9dce48f3.md) | 134 | `result-track:b8a845a0f632844e9dce48f3468bea50279ab5f386f5004d8dfba9377e3f45b2` |
| 14 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hom--d2ff4012f7c81c8ebf0852dd.md) | 146 | `declaration-track:d2ff4012f7c81c8ebf0852dd7e21d20d66165f765438def7a740e18e221fd8ec` |
| 15 | `def` | [Hom.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hom-id--8f965cdeb62e2978ecd0e377.md) | 155 | `declaration-track:8f965cdeb62e2978ecd0e377f4196c6ee6aa92a04411ffcda25bbf3b5c70d66d` |
| 16 | `def` | [Hom.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hom-comp--04dac078286fef641cb7da8b.md) | 160 | `declaration-track:04dac078286fef641cb7da8bc3c1c27c00f593d4959a5839e9222303dd582603` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/instance--0d84c5a94f9f877051d26502.md) | 165 | `declaration-track:0d84c5a94f9f877051d265026df28419ad24a5ffa5464e6e24a47c0bed35677c` |
| 18 | `lemma` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/id-f--d82044f0820d0b288263cf30.md) | 171 | `result-track:d82044f0820d0b288263cf30b8003fc04a1c8c0dc026da28c4edf8b826b8ec1e` |
| 19 | `lemma` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/comp-f--5c36f8fca445c9f4fcee6790.md) | 174 | `result-track:5c36f8fca445c9f4fcee6790a7433e8ee3b7321168ca2dd1f981562fe8d74113` |
| 20 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hom-ext--b00a39b5ebff1297b8407800.md) | 178 | `result-track:b00a39b5ebff1297b8407800eb1b3756b5556c52bfa25548950658681ed90055` |
| 21 | `def` | [LeftResolution.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/leftresolution-op--d81082197a0375e9481eb38f.md) | 188 | `declaration-track:d81082197a0375e9481eb38f460ccfef0582907e75caaa3db266bb7c10896955` |
| 22 | `def` | [LeftResolution.unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/leftresolution-unop--1276b42b6726687e7f09c4f7.md) | 196 | `declaration-track:1276b42b6726687e7f09c4f7091c055c343070bf50e6baa11c054dee38c46c65` |
| 23 | `def` | [RightResolution.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/rightresolution-op--999844ea51672facf583b075.md) | 204 | `declaration-track:999844ea51672facf583b075fbc9f993c088d09c1d548e7d55795564b0e8c60a` |
| 24 | `def` | [RightResolution.unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/rightresolution-unop--71eeeb00222b03a8a357cf82.md) | 212 | `declaration-track:71eeeb00222b03a8a357cf82ceeaf429f120f5b174d8bfbde718b94a0bc99f80` |
| 25 | `lemma` | [nonempty_leftResolution_iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/nonempty-leftresolution-iff-op--a7d0a5cee2901186849550fa.md) | 220 | `result-track:a7d0a5cee2901186849550faaea70a5ce98f9f9ae8f9751cf65b01edc221afd7` |
| 26 | `lemma` | [nonempty_rightResolution_iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/nonempty-rightresolution-iff-op--e57aae46cb118c5496f461dc.md) | 226 | `result-track:e57aae46cb118c5496f461dc1b02d6fcc71a0fbeca7665975a7789df5ca743b3` |
| 27 | `lemma` | [hasLeftResolutions_iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hasleftresolutions-iff-op--7cef0cf2bbf682c6240a51a4.md) | 232 | `result-track:7cef0cf2bbf682c6240a51a4dbdfc805bc9fa4d6e598a7b101fd66502eabfc90` |
| 28 | `lemma` | [hasRightResolutions_iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hasrightresolutions-iff-op--177ab1d81699d8f286255dcb.md) | 236 | `result-track:177ab1d81699d8f286255dcb17699b0f6d9f9bb7576d388a31fd12784870162e` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/instance--cbcebde339ae8d7dda1da67f.md) | 240 | `declaration-track:cbcebde339ae8d7dda1da67f7296b4e93321642990fff04bb8468e9878ae0d6b` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/instance--31e8d15ade5b4474d59fb871.md) | 243 | `declaration-track:31e8d15ade5b4474d59fb87187a3d02f13a07cc4f4b19f47432a368943505fc9` |
| 31 | `def` | [LeftResolution.opFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/leftresolution-opfunctor--07970d34d0dffb64e827e43c.md) | 248 | `declaration-track:07970d34d0dffb64e827e43c49a7fd751ce203b81fcc0f3cf07e5e31171ccec6` |
| 32 | `def` | [RightResolution.unopFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/rightresolution-unopfunctor--f8f388bbc3de66bb72f9432a.md) | 257 | `declaration-track:f8f388bbc3de66bb72f9432ac9d4a62e9264240ad72432ccd9736b19aabfdabc` |
| 33 | `def` | [LeftResolution.opEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/leftresolution-opequivalence--ddcda15c6699b6641faf75ee.md) | 269 | `declaration-track:ddcda15c6699b6641faf75eedf1e1dcb4d525048a7331e692535a01ed05bb594` |
| 34 | `lemma` | [essSurj_of_hasRightResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/esssurj-of-hasrightresolutions--7cc6163ed9524b56d5d23674.md) | 280 | `result-track:7cc6163ed9524b56d5d23674d6c78802b8dfb2101d67ade14de10de8d7fb6eb9` |
| 35 | `lemma` | [isIso_iff_of_hasRightResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/isiso-iff-of-hasrightresolutions--92100d3e00f6bf9cc37d15a9.md) | 286 | `result-track:92100d3e00f6bf9cc37d15a99918bd011a7128447720a48e8943396e036185f9` |
| 36 | `lemma` | [essSurj_of_hasLeftResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/esssurj-of-hasleftresolutions--17061c18d91a0709382f7229.md) | 298 | `result-track:17061c18d91a0709382f7229cb4a8151b6778d6a6c48261f7cf094c2fa106b81` |
| 37 | `lemma` | [isIso_iff_of_hasLeftResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/isiso-iff-of-hasleftresolutions--ce4cf7b252dce4db683d89e9.md) | 304 | `result-track:ce4cf7b252dce4db683d89e9a71c71adfd043cfdbc1252d7f29ee94eee982e32` |
| 38 | `lemma` | [hasRightResolutions_of_iso_of_essSurj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hasrightresolutions-of-iso-of-esssurj--a3b223af43b6dffe23a7d160.md) | 324 | `result-track:a3b223af43b6dffe23a7d16083c87b33e78d36a88dbb6851cc04288c598e51ff` |
| 39 | `lemma` | [hasLeftResolutions_of_iso_of_essSurj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hasleftresolutions-of-iso-of-esssurj--133c4a4721eff6623423ed38.md) | 336 | `result-track:133c4a4721eff6623423ed3850c9d34c68b32e2f74a0fbbab6b64db92b578617` |
| 40 | `lemma` | [hasRightResolutions_of_iso_of_essSurj_of_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hasrightresolutions-of-iso-of-esssurj-of-full--2891cecfc579f1974c87aa70.md) | 348 | `result-track:2891cecfc579f1974c87aa70534f6ab8af2b9f935a12802efa7f9cb2d15a63b5` |
| 41 | `lemma` | [hasLeftResolutions_of_iso_of_essSurj_of_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hasleftresolutions-of-iso-of-esssurj-of-full--c5d4bf66e25aade6c4417c60.md) | 364 | `result-track:c5d4bf66e25aade6c4417c60a2e0e2556a6aa7de0c4ecd4763b2cb6ec043b4c2` |
| 42 | `lemma` | [hasRightResolutions_iff_iso_of_essSurj_of_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hasrightresolutions-iff-iso-of-esssurj-of-full--89c9d32c03e94aa3e7a2ee55.md) | 379 | `result-track:89c9d32c03e94aa3e7a2ee55c2652cc1d6126742ce3c86dbb054a864cbb156aa` |
| 43 | `lemma` | [hasLeftResolutions_iff_iso_of_essSurj_of_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hasleftresolutions-iff-iso-of-esssurj-of-full--e0dab2fd5d2575f1d791e1af.md) | 386 | `result-track:e0dab2fd5d2575f1d791e1af8c742ccfc9a07ea8661e793f4b2a64686a309552` |
| 44 | `lemma` | [hasRightResolutions_arrow_of_essSurj_of_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hasrightresolutions-arrow-of-esssurj-of-full--249a723c4070d9a14a640d42.md) | 393 | `result-track:249a723c4070d9a14a640d4288e4d7cc929b4e033253294414812d5d18bc1c39` |
| 45 | `lemma` | [hasLeftResolutions_arrow_of_essSurj_of_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hasleftresolutions-arrow-of-esssurj-of-full--2ac3557a970764eef42359fa.md) | 401 | `result-track:2ac3557a970764eef42359fa18630c5d2c2f397d40c814f0dbb752fd9e374611` |
| 46 | `lemma` | [hasRightResolutions_arrow_iff_of_equivalences](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hasrightresolutions-arrow-iff-of-equivalences--09af6630635ab4b88f852c2f.md) | 409 | `result-track:09af6630635ab4b88f852c2f7aa1fb2e45e5f73200ef385657bfde985d9aaab7` |
| 47 | `lemma` | [hasLeftResolutions_arrow_iff_of_equivalences](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/declarations/hasleftresolutions-arrow-iff-of-equivalences--d830d40a8648d91b7ce187a8.md) | 417 | `result-track:d830d40a8648d91b7ce187a8ac06f860b1df71b4a4a124c4bb6f53e4dc1926a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

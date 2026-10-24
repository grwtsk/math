# Verification target: GRWTSK.Analysis.ComplexAnalysis.FaaDiBruno.Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f477fa6f2548668fcb691bac6d2cc395ee3964b4",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f477fa6f2548668fcb691bac6d2cc395ee3964b4`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Within` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.FTaylorSeries` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OrderedFinpartition](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/orderedfinpartition--ffeb385b9717165b7cd830d6.md) | 101 | `declaration-track:ffeb385b9717165b7cd830d6c81ac0bb16970d44cec01b1210c1f51fc1cf44ca` |
| 2 | `def` | [atomic](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/atomic--051e6e27f54868209fca8b1d.md) | 125 | `declaration-track:051e6e27f54868209fca8b1d583c2e003c15002d254866819b3470c05ba81907` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/instance--f24d250f225c8492a59b7a47.md) | 137 | `declaration-track:f24d250f225c8492a59b7a4751d62785d1401c3b98f72ac73f243fd5374dd77c` |
| 4 | `theorem` | [default_eq](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/default-eq--cd772cb184821d1a1599a54b.md) | 140 | `result-track:cd772cb184821d1a1599a54b05963bcc3bc0052db7c0db0ba90e248b1480aa8a` |
| 5 | `lemma` | [length_le](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/length-le--08a13849ad0f32489d5076ed.md) | 142 | `result-track:08a13849ad0f32489d5076ed8368d852c392c07f289598dc52c7fde5db8d5938` |
| 6 | `lemma` | [partSize_le](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/partsize-le--d8dc41cab5cbf1a586ee6074.md) | 145 | `result-track:d8dc41cab5cbf1a586ee60744989edcd9d6ea535f7264b42d0eeeffa7daeb3e0` |
| 7 | `def` | [embSigma](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/embsigma--b352515bca2cdcef369bdfb5.md) | 150 | `declaration-track:b352515bca2cdcef369bdfb54a4e8e5beb065a4c7296c99aa7799b83f71a1bd6` |
| 8 | `lemma` | [injective_embSigma](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/injective-embsigma--f1b893cb71b7e34491936af7.md) | 155 | `result-track:f1b893cb71b7e34491936af70c589e1c6aab1e61b47b55f5ba5afce1358395b1` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/instance--3aa9e0eddffa72c020a50abf.md) | 167 | `declaration-track:3aa9e0eddffa72c020a50abf9ccda01bed73806dbfdaa3a35e53e9509029005a` |
| 10 | `instance` | [instUniqueZero](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/instuniquezero--1237bef41deb4c489740e417.md) | 170 | `declaration-track:1237bef41deb4c489740e417444dfe50cf0a50c0898e2087d8575f66e9a5a8cc` |
| 11 | `lemma` | [exists_inverse](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/exists-inverse--e3d3731ea4530a479fd7ec20.md) | 175 | `result-track:e3d3731ea4530a479fd7ec20e9fd8dbbb0906ac73e2ad315a6703bbfc1c13520` |
| 12 | `lemma` | [emb_injective](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/emb-injective--5a24cfca41d43e00083538ca.md) | 180 | `result-track:5a24cfca41d43e00083538cab4817c590d6295ad53155761b7bc7bcfe87ac10b` |
| 13 | `lemma` | [emb_ne_emb_of_ne](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/emb-ne-emb-of-ne--a22397dda0d7bbc7035e4521.md) | 190 | `result-track:a22397dda0d7bbc7035e452109f6391721ae84ecbc8e2bf20b1248c3d8af9b69` |
| 14 | `def` | [index](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/index--d88cf2caf61aaac536bd1251.md) | 195 | `declaration-track:d88cf2caf61aaac536bd1251d939de74a6b5f493ecade6763d8cf80803cec97d` |
| 15 | `def` | [invEmbedding](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/invembedding--c4fca327d74d950a09bdae64.md) | 200 | `declaration-track:c4fca327d74d950a09bdae645ce4c95829958c46839a4554c480755169b94c02` |
| 16 | `lemma` | [emb_invEmbedding](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/emb-invembedding--ec13d75acbbe26c024a1bf43.md) | 203 | `result-track:ec13d75acbbe26c024a1bf43939c06720b38dea13d7b6cb1fe963a400dbb7986` |
| 17 | `def` | [equivSigma](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/equivsigma--6c321377139685381d0fd6b8.md) | 209 | `declaration-track:6c321377139685381d0fd6b852022ddec1a3045e37e03011f8e12b288745da54` |
| 18 | `lemma` | [prod_sigma_eq_prod](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/prod-sigma-eq-prod--f29464075efa6d7e8c93504c.md) | 215 | `result-track:f29464075efa6d7e8c93504cfa62c04346e8a02f38ac3c2d30e7112e55385bc2` |
| 19 | `lemma` | [length_pos](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/length-pos--68bc0315ec50b482c1feaabc.md) | 220 | `result-track:68bc0315ec50b482c1feaabcfab52aacb32a07caed2f60b0b2f6c32099ff8c05` |
| 20 | `lemma` | [neZero_length](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/nezero-length--d077c649bdfd597429547064.md) | 222 | `result-track:d077c649bdfd597429547064b2438381d43eff461f24b96775e566d746980bde` |
| 21 | `lemma` | [neZero_partSize](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/nezero-partsize--2f25e4e3a65396ba2b65389f.md) | 225 | `result-track:2f25e4e3a65396ba2b65389fb75b505f07485b8107cfe65db6af2ad6ea190630` |
| 22 | `instance` | [instUniqueOne](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/instuniqueone--be39ad0f47ef48329b7b1ca7.md) | 230 | `declaration-track:be39ad0f47ef48329b7b1ca78b16e130e7a4d33bf0d1432d098a67fe4cfc9e30` |
| 23 | `lemma` | [emb_zero](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/emb-zero--2df9ca98bbeb36f6b50e9d03.md) | 240 | `result-track:2df9ca98bbeb36f6b50e9d0378c71b5fe3f78c9ade8a061f5a9f83c2ac6ce9c5` |
| 24 | `lemma` | [partSize_eq_one_of_range_emb_eq_singleton](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/partsize-eq-one-of-range-emb-eq-singleton--3be858962f2c43be06463504.md) | 245 | `result-track:3be858962f2c43be06463504449e345b2c914009f58c51bc3bda214ccd2e17ab` |
| 25 | `lemma` | [one_lt_partSize_index_zero](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/one-lt-partsize-index-zero--cbae29be02e0263b0fb92230.md) | 257 | `result-track:cbae29be02e0263b0fb92230b6c497533f207e89f1b429998bc6b37f73ee7d75` |
| 26 | `def` | [extendLeft](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/extendleft--c67a489bc4e0dd736c53cbc4.md) | 295 | `declaration-track:c67a489bc4e0dd736c53cbc4b091790866400771fb405cf77cde2e9bc5475441` |
| 27 | `lemma` | [range_extendLeft_zero](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/range-extendleft-zero--ee1df64f064769ba7829b12a.md) | 340 | `result-track:ee1df64f064769ba7829b12af094a2d8066ef5531cec81c0619ee06a7f3b729c` |
| 28 | `def` | [extendMiddle](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/extendmiddle--5537931381057b0694a9b501.md) | 348 | `declaration-track:5537931381057b0694a9b501de41139e5b7a63aeb9d3b90be92fa9400357f275` |
| 29 | `lemma` | [index_extendMiddle_zero](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/index-extendmiddle-zero--1583902cfbf35365b71f36c1.md) | 434 | `result-track:1583902cfbf35365b71f36c1754a4cd54df002fef43b9adc5f4d6934a19d4526` |
| 30 | `lemma` | [range_emb_extendMiddle_ne_singleton_zero](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/range-emb-extendmiddle-ne-singleton-zero--1751c073542ed5a7d84f29be.md) | 441 | `result-track:1751c073542ed5a7d84f29be95d5b8c4bf08901b8ecc2879c1fe2695f993b61e` |
| 31 | `def` | [extend](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/extend--319c6c97f7fbfd999ce0f10f.md) | 461 | `declaration-track:319c6c97f7fbfd999ce0f10f99b2ce1b6f239681090208d6679240777832fdde` |
| 32 | `lemma` | [extend_none](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/extend-none--cf28d12a9f0ac92364537dc1.md) | 466 | `result-track:cf28d12a9f0ac92364537dc1bbcc3102ba7d2f296ac351a65fd63f856dcc6127` |
| 33 | `lemma` | [extend_some](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/extend-some--d9b13c2d743d240b54a25a6f.md) | 469 | `result-track:d9b13c2d743d240b54a25a6f257f6977f55b0c94286554d1bc74b6ab54a9e46f` |
| 34 | `def` | [eraseLeft](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/eraseleft--f54966f6071f0c9224bb311d.md) | 474 | `declaration-track:f54966f6071f0c9224bb311da5dd7cec8e52cd9b3316b67f91fce81fcf9f3cdc` |
| 35 | `def` | [eraseMiddle](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/erasemiddle--3422829d40f5a169b6d24f2f.md) | 520 | `declaration-track:3422829d40f5a169b6d24f2f2ac72b148b8fc738d837a71f4b6554660014cbaa` |
| 36 | `def` | [extendEquiv](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/extendequiv--79688f89d0735520a15868b8.md) | 632 | `declaration-track:79688f89d0735520a15868b84913b1ce8c42babfc2b58cf774698fa823ea74da` |
| 37 | `def` | [applyOrderedFinpartition](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/applyorderedfinpartition--10a3f86f6d65efbdb2ef7722.md) | 726 | `declaration-track:10a3f86f6d65efbdb2ef7722c03d179c7c6735f60c006c2544f62dd9d82588c4` |
| 38 | `lemma` | [applyOrderedFinpartition_apply](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/applyorderedfinpartition-apply--e8f77377a758a05d1a1297f1.md) | 730 | `result-track:e8f77377a758a05d1a1297f12a051ec6d31d1bb0648997d5d8774a83d6f7941a` |
| 39 | `theorem` | [norm_applyOrderedFinpartition_le](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/norm-applyorderedfinpartition-le--652eb66c80209417fea236ac.md) | 734 | `result-track:652eb66c80209417fea236acdd466f3c9a970e281242471d8b16cc02cb0477ae` |
| 40 | `theorem` | [applyOrderedFinpartition_update_right](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/applyorderedfinpartition-update-right--29f2248a3ef3e8b220eac1a4.md) | 742 | `result-track:29f2248a3ef3e8b220eac1a416c7ab72f676b3fdd8271add63944f984d29ecfc` |
| 41 | `theorem` | [applyOrderedFinpartition_update_left](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/applyorderedfinpartition-update-left--d81bfee5e52fe14cc83fe29f.md) | 766 | `result-track:d81bfee5e52fe14cc83fe29f8b3f2c532678f1bb596b3684253ad8e1b47a1ed5` |
| 42 | `def` | [compAlongOrderedFinpartition](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/compalongorderedfinpartition--4383cb95a862825fd6be17e9.md) | 781 | `declaration-track:4383cb95a862825fd6be17e9eaa5a54ee47244c32cb930d5749727fc9b34581d` |
| 43 | `lemma` | [compAlongOrderFinpartition_apply](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/compalongorderfinpartition-apply--6b0fc195bcba8b491ef7bd64.md) | 796 | `result-track:6b0fc195bcba8b491ef7bd64a99fc2b469d1b4dc1a532f475c12e9aaaf5b0abe` |
| 44 | `theorem` | [norm_compAlongOrderedFinpartition_le](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/norm-compalongorderedfinpartition-le--7aa444368d2e0ac9f547833f.md) | 800 | `result-track:7aa444368d2e0ac9f547833f0ea2285197f19c36ced86c13247e2c0ec1417f92` |
| 45 | `def` | [compAlongOrderedFinpartitionₗ](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/compalongorderedfinpartition--aeef5d6f20b6d7acbfbfbf07.md) | 811 | `declaration-track:aeef5d6f20b6d7acbfbfbf0708bbbe45c9889caebe95c5d155851f3bb5ba800b` |
| 46 | `def` | [compAlongOrderedFinpartitionL](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/compalongorderedfinpartitionl--2d89aafd396da7ac776c8464.md) | 828 | `declaration-track:2d89aafd396da7ac776c8464c7c0443d56e847714440771a68c316705db1d677` |
| 47 | `lemma` | [compAlongOrderedFinpartitionL_apply](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/compalongorderedfinpartitionl-apply--19f09c5ad6de78ba6e4c838e.md) | 835 | `result-track:19f09c5ad6de78ba6e4c838e48d88423f06e3db1881f2298a76b92b47c27e92e` |
| 48 | `theorem` | [norm_compAlongOrderedFinpartitionL_le](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/norm-compalongorderedfinpartitionl-le--18c849e4877bca38020dede2.md) | 839 | `result-track:18c849e4877bca38020dede2a6469895003ca9c6dbf02c72a86c5896f4b351ab` |
| 49 | `def` | [compAlongOrderedFinpartition](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/compalongorderedfinpartition--1e334bc541a58c26ce77917a.md) | 853 | `declaration-track:1e334bc541a58c26ce77917a26e85cc487904d3e15aee896b2cdb1e1e624d90c` |
| 50 | `theorem` | [compAlongOrderedFinpartition_apply](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/compalongorderedfinpartition-apply--a299fc84d25d959681dac93c.md) | 859 | `result-track:a299fc84d25d959681dac93c34040e12309b247f3c47b2ddbabd6b4036367e04` |
| 51 | `def` | [taylorComp](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/taylorcomp--529b3309731da48916ac7a2b.md) | 879 | `declaration-track:529b3309731da48916ac7a2b582ecaeb4b1d5092a1835f0d8decb1ad6468d383` |
| 52 | `theorem` | [analyticOn_taylorComp](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/analyticon-taylorcomp--4781214d618405a04a4141f5.md) | 886 | `result-track:4781214d618405a04a4141f5097752f209645b6aca893eb5ff27979fa1ed8c17` |
| 53 | `lemma` | [faaDiBruno_aux1](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/faadibruno-aux1--64b4f1227e4babb90d1a8b0d.md) | 907 | `result-track:64b4f1227e4babb90d1a8b0dc3600d728bec72deca5449a728cc517d7b3fc8a5` |
| 54 | `lemma` | [faaDiBruno_aux2](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/faadibruno-aux2--d612bda05119b0204269d580.md) | 928 | `result-track:d612bda05119b0204269d580d5c5f7d3f7f25ab3d81dc802240007d37ac466ee` |
| 55 | `theorem` | [HasFTaylorSeriesUpToOn.comp](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/declarations/hasftaylorseriesuptoon-comp--4061f1fc4a64134464b13c12.md) | 957 | `result-track:4061f1fc4a64134464b13c12fc6a0d0620ac91db33499d71a266556fa611359b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

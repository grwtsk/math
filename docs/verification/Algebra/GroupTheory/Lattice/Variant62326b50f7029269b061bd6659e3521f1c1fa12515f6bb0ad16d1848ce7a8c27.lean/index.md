# Verification target: GRWTSK.Algebra.GroupTheory.Lattice.Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1607b82cf68afe5fd8cd30c7bff456fcc8a9ae6a",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1607b82cf68afe5fd8cd30c7bff456fcc8a9ae6a`.

Source path: `GRWTSK/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice.Image` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iInter_inv](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iinter-inv--9f34e2488698d874ae136670.md) | 40 | `result-track:9f34e2488698d874ae136670651382f5e4276b00c11c3549797be87a91a68f54` |
| 2 | `theorem` | [sInter_inv](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/sinter-inv--874afe422964fa8a1e1ddb29.md) | 44 | `result-track:874afe422964fa8a1e1ddb29e61c8d0327c3d5e4f55962b0d1acaa49ec3c61a5` |
| 3 | `theorem` | [iUnion_inv](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iunion-inv--1cc66ccaeadd27bc492fc0b9.md) | 48 | `result-track:1cc66ccaeadd27bc492fc0b9f85329683936146e00ad89fd0d0e7a7576e62d0c` |
| 4 | `theorem` | [sUnion_inv](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/sunion-inv--44e2801a459679fdd213c3da.md) | 52 | `result-track:44e2801a459679fdd213c3daf9c84318bcb55466cc5177f3d49122ecbc77ad34` |
| 5 | `theorem` | [iUnion_mul_left_image](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iunion-mul-left-image--9b033858fa692bd610819e45.md) | 67 | `result-track:9b033858fa692bd610819e4553b1b9f1f4a41191fbadd42e6545ab1e984ae34b` |
| 6 | `theorem` | [iUnion_mul_right_image](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iunion-mul-right-image--64e9e312081df8b3bf2c7ee5.md) | 71 | `result-track:64e9e312081df8b3bf2c7ee5b781693d14e4a854a467fb481ed08af2710b8707` |
| 7 | `theorem` | [iUnion_mul](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iunion-mul--e956b9e62fc3571d6e4eae6f.md) | 75 | `result-track:e956b9e62fc3571d6e4eae6f3fa4d2cadbf3846e130059cff0abf7254642a72c` |
| 8 | `theorem` | [mul_iUnion](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/mul-iunion--725b9c5e2631e1f9f8687b46.md) | 79 | `result-track:725b9c5e2631e1f9f8687b46f5c7a29810283797ccaaa44babfec3b8509c54cf` |
| 9 | `theorem` | [sUnion_mul](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/sunion-mul--b50b60aee91aa2d9b1364529.md) | 83 | `result-track:b50b60aee91aa2d9b13645299aaf0f49957ea9ccb0331cb36b81514441d3582b` |
| 10 | `theorem` | [mul_sUnion](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/mul-sunion--4c2a04a4686ee72604e248da.md) | 87 | `result-track:4c2a04a4686ee72604e248da859b78ae1435e9674842095de7c19e2b3e775eaf` |
| 11 | `theorem` | [iUnion₂_mul](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iunion-mul--01f3f6a57436bf228595a994.md) | 91 | `result-track:01f3f6a57436bf228595a994c9a92e618c39b574eae5a0473242aa2b2460e8f3` |
| 12 | `theorem` | [mul_iUnion₂](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/mul-iunion--7b82b12c64f6a7ad587bdfe5.md) | 96 | `result-track:7b82b12c64f6a7ad587bdfe509ff3d162d38e4ea056e9ce20d9d04e0bf99eb87` |
| 13 | `theorem` | [iInter_mul_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iinter-mul-subset--08e178c0abfaa9e745f6ddd9.md) | 101 | `result-track:08e178c0abfaa9e745f6ddd9b3796cf6515225efbafd389266d0b3983ea5cf88` |
| 14 | `theorem` | [mul_iInter_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/mul-iinter-subset--78b564b7e7b9914faae35c5e.md) | 105 | `result-track:78b564b7e7b9914faae35c5e919a5f69a973413279b97dbeb4e1a1c47a6ae314` |
| 15 | `lemma` | [mul_sInter_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/mul-sinter-subset--0b0e3b98be69e9e353c8bea3.md) | 109 | `result-track:0b0e3b98be69e9e353c8bea3dc19fbd331a7383389ddc67bf47789423dab43c1` |
| 16 | `lemma` | [sInter_mul_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/sinter-mul-subset--d1c64707ef98cc4ee38bf459.md) | 113 | `result-track:d1c64707ef98cc4ee38bf45955219dee800fd3fe026fa35f255f53132a95917f` |
| 17 | `theorem` | [iInter₂_mul_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iinter-mul-subset--b479f9e56f38098ff43f4b8a.md) | 117 | `result-track:b479f9e56f38098ff43f4b8ab30b5b5c4a6b6ed885cdda988651a45a348a7d87` |
| 18 | `theorem` | [mul_iInter₂_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/mul-iinter-subset--231dba71e0f81db5779b54c1.md) | 122 | `result-track:231dba71e0f81db5779b54c1592da76e0eb9fcda49a6c39e3ab926d7c9bd4972` |
| 19 | `theorem` | [iUnion_div_left_image](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iunion-div-left-image--0050fd7152c57c55d61a37df.md) | 136 | `result-track:0050fd7152c57c55d61a37df86171d5293ee066524293e46bcfe293b84a32f88` |
| 20 | `theorem` | [iUnion_div_right_image](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iunion-div-right-image--50d82bcd1fea6fe6e6aecde5.md) | 140 | `result-track:50d82bcd1fea6fe6e6aecde5b46afd91a5260d6ee1f24cf398371cf54c0e74b8` |
| 21 | `theorem` | [iUnion_div](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iunion-div--f4a146d3137ba6438143f9a9.md) | 144 | `result-track:f4a146d3137ba6438143f9a99ecc9b31450ac033f197d73faf21d1a034a5ee5b` |
| 22 | `theorem` | [div_iUnion](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/div-iunion--e34e66da544f9f3d077f215e.md) | 148 | `result-track:e34e66da544f9f3d077f215ee3a2e6611898295acac109f13751ac268e322745` |
| 23 | `theorem` | [sUnion_div](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/sunion-div--5c502c34555807ad38c22b3c.md) | 152 | `result-track:5c502c34555807ad38c22b3ca831571a2e7dab6bf632a941ac50af6a6ec24ded` |
| 24 | `theorem` | [div_sUnion](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/div-sunion--aaa5e81d63e131774fc70720.md) | 156 | `result-track:aaa5e81d63e131774fc7072000995d3608a44d8abe5249194d06b76c82ea820f` |
| 25 | `theorem` | [iUnion₂_div](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iunion-div--fe7e541945f55a00c668d646.md) | 160 | `result-track:fe7e541945f55a00c668d646b97dae261d3a5c13e8e071b93f81d233685d9025` |
| 26 | `theorem` | [div_iUnion₂](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/div-iunion--2dde3e3cbff5c28ed3b8c114.md) | 165 | `result-track:2dde3e3cbff5c28ed3b8c11475af3dbd1267356d8675a381e1188024af5a4371` |
| 27 | `theorem` | [iInter_div_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iinter-div-subset--a362e406c39872cabd41442f.md) | 170 | `result-track:a362e406c39872cabd41442f0f3605b0963c571f0b42a2937442ed75956b7ec2` |
| 28 | `theorem` | [div_iInter_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/div-iinter-subset--aebf2ea4e923ee9a58dffcba.md) | 174 | `result-track:aebf2ea4e923ee9a58dffcba594231568927047d34c89c053f43e588a91d639d` |
| 29 | `theorem` | [sInter_div_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/sinter-div-subset--678a8029e130fe699c48798d.md) | 178 | `result-track:678a8029e130fe699c48798da4ae2330ad46ed11833417073078cbc08830943e` |
| 30 | `theorem` | [div_sInter_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/div-sinter-subset--5a724bb8ffbb98f91322a968.md) | 182 | `result-track:5a724bb8ffbb98f91322a9686f04b205eaa1a806e23d5f3552e82befab183e54` |
| 31 | `theorem` | [iInter₂_div_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iinter-div-subset--217c539149fbc0120b7727a4.md) | 186 | `result-track:217c539149fbc0120b7727a440ffe4a9c2b5dc99b350c7f3a7aa29a62c2b165c` |
| 32 | `theorem` | [div_iInter₂_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/div-iinter-subset--3aaa6948ffc88f05f7791f21.md) | 191 | `result-track:3aaa6948ffc88f05f7791f21116ab157107954e0dec914bc0e1ac6615ca486cc` |
| 33 | `lemma` | [iUnion_smul_left_image](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iunion-smul-left-image--f4cc1adc10e88a606318e90f.md) | 204 | `result-track:f4cc1adc10e88a606318e90f3c205648629e023ad8546e7fca8a100fa3cb63db` |
| 34 | `lemma` | [iUnion_smul_right_image](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iunion-smul-right-image--d0ce97e13309e6dff6067fe4.md) | 207 | `result-track:d0ce97e13309e6dff6067fe4e4b646f4338290ec27fe9f4cb67a628fe3abd8e5` |
| 35 | `lemma` | [iUnion_smul](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iunion-smul--8507caf5707f2de8da4c8da6.md) | 210 | `result-track:8507caf5707f2de8da4c8da6377d1b9def395e7f1623f59f0c884c7a1aa8de21` |
| 36 | `lemma` | [smul_iUnion](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/smul-iunion--3f7c4b514a6df6902ef11237.md) | 214 | `result-track:3f7c4b514a6df6902ef11237a2ec1caa740b2255b6b2c290c88f0290d176d773` |
| 37 | `lemma` | [sUnion_smul](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/sunion-smul--c36446f92dcfa6c96ec6ba32.md) | 218 | `result-track:c36446f92dcfa6c96ec6ba32269ea3894bbf7a072a8e56d3d60487a067f8cfb8` |
| 38 | `lemma` | [smul_sUnion](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/smul-sunion--12a665a57818690e81670697.md) | 222 | `result-track:12a665a57818690e816706972f1c304d1334e1722a0253a67a2acb2b88ddcfd6` |
| 39 | `lemma` | [iUnion₂_smul](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iunion-smul--594f910237746d4a42e25a45.md) | 226 | `result-track:594f910237746d4a42e25a4553d9ec7c6a8460e5147adb6737b0ee5f7318fbb3` |
| 40 | `lemma` | [smul_iUnion₂](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/smul-iunion--a2ef2f2ede6bfb250d5906b5.md) | 230 | `result-track:a2ef2f2ede6bfb250d5906b51cbdf27591a5d69dc001ab7565d3bf5d1762ad24` |
| 41 | `lemma` | [iInter_smul_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iinter-smul-subset--03b37af361bd3e6b4581510f.md) | 234 | `result-track:03b37af361bd3e6b4581510f6180584443862ff2a730cd6dc5f9d5e1560de357` |
| 42 | `lemma` | [smul_iInter_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/smul-iinter-subset--318ac87a37dfc5c2bb0728c9.md) | 238 | `result-track:318ac87a37dfc5c2bb0728c98815bb2a90b5b6152689979d24cb94f81eaabd99` |
| 43 | `lemma` | [sInter_smul_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/sinter-smul-subset--1017dbf4209a1716b0227e74.md) | 242 | `result-track:1017dbf4209a1716b0227e74e929107daddac942f12b6f8504be90e055f62810` |
| 44 | `lemma` | [smul_sInter_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/smul-sinter-subset--93672e490bc4c3bd7c2960a2.md) | 246 | `result-track:93672e490bc4c3bd7c2960a232412c426f5fa263a65bc86f4a7b22e625c00d28` |
| 45 | `lemma` | [iInter₂_smul_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iinter-smul-subset--c49cd14bc83166a5cef0c350.md) | 250 | `result-track:c49cd14bc83166a5cef0c350289005326767be069379cb07861fd379b96591a2` |
| 46 | `lemma` | [smul_iInter₂_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/smul-iinter-subset--31328ead8850f964da84d90f.md) | 254 | `result-track:31328ead8850f964da84d90febf8aa0a2b499e98e76915dea8e80da890bdc699` |
| 47 | `lemma` | [iUnion_smul_set](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iunion-smul-set--8cd3938f3286a5a871483624.md) | 258 | `result-track:8cd3938f3286a5a87148362495847e84d6c3bf2eda083579909a87920c887407` |
| 48 | `lemma` | [smul_set_iUnion](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/smul-set-iunion--47c3bc8c38e5f72cc93b8f1d.md) | 266 | `result-track:47c3bc8c38e5f72cc93b8f1d56f44f9871275331d66935a137698e9b47272bb6` |
| 49 | `lemma` | [smul_set_iUnion₂](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/smul-set-iunion--aeed31c15a59267ebde465aa.md) | 270 | `result-track:aeed31c15a59267ebde465aaf49ac2253c8d3d57bcc8e542fd5bfe00e7b0dbe0` |
| 50 | `lemma` | [smul_set_sUnion](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/smul-set-sunion--bcb4b106e2bc6f0c977830e1.md) | 274 | `result-track:bcb4b106e2bc6f0c977830e1c61d6faa7ac5d65454d40e4263c630c364b36054` |
| 51 | `lemma` | [smul_set_iInter_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/smul-set-iinter-subset--39df4b3d651af46275e05777.md) | 278 | `result-track:39df4b3d651af46275e05777fb4742aff6112bef9f057a408f81a29952c5a94e` |
| 52 | `lemma` | [smul_set_sInter_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/smul-set-sinter-subset--2265b50a51cf7f0740099fe7.md) | 282 | `result-track:2265b50a51cf7f0740099fe72da5b560798f56fb84f611039dec15bfbfe46688` |
| 53 | `lemma` | [smul_set_iInter₂_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/smul-set-iinter-subset--6f3336ae50c6b8fc918a677f.md) | 286 | `result-track:6f3336ae50c6b8fc918a677fa733eeeaf37aefa9785c28318f34f71238bd96b6` |
| 54 | `lemma` | [iUnion_vsub_left_image](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iunion-vsub-left-image--35f3b85eb509725adcf24823.md) | 296 | `result-track:35f3b85eb509725adcf248239dfbf58d54535137bef255aea75e1bfaf9ebd69d` |
| 55 | `lemma` | [iUnion_vsub_right_image](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iunion-vsub-right-image--50dc895f3fbd57eee25cb1b0.md) | 297 | `result-track:50dc895f3fbd57eee25cb1b02b3ae81a813b312d3c80e08830b9e47f5bffa9aa` |
| 56 | `lemma` | [iUnion_vsub](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iunion-vsub--47f1637432fad0d598cf868c.md) | 299 | `result-track:47f1637432fad0d598cf868c74678b62bc5f03185e30f4361c5fe16e54328d23` |
| 57 | `lemma` | [vsub_iUnion](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/vsub-iunion--46ccafa3d9bbdaad10379a12.md) | 302 | `result-track:46ccafa3d9bbdaad10379a129502b97b577ebcb5ced31bd81b1a80ab14d79bb1` |
| 58 | `lemma` | [sUnion_vsub](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/sunion-vsub--c9c8c13e1ee8915c50b721d2.md) | 305 | `result-track:c9c8c13e1ee8915c50b721d23afd4ac5bb0f58688daa966c3d33ca5dfbd4c7b2` |
| 59 | `lemma` | [vsub_sUnion](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/vsub-sunion--7f80b2310dffdd361ef671cd.md) | 308 | `result-track:7f80b2310dffdd361ef671cd184ac1642f28d25f47e0ea5142de55d003e446ab` |
| 60 | `lemma` | [iUnion₂_vsub](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iunion-vsub--79789bf962b659e879f76ee9.md) | 311 | `result-track:79789bf962b659e879f76ee9e57871038c343d2b768cda290b7bc857c8e7ba14` |
| 61 | `lemma` | [vsub_iUnion₂](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/vsub-iunion--20be841556c8d04192757d1b.md) | 314 | `result-track:20be841556c8d04192757d1b3aea1ff5bb1debb7a4381fc17549ed2799fce4da` |
| 62 | `lemma` | [iInter_vsub_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iinter-vsub-subset--361fefc04c779a54b1551957.md) | 317 | `result-track:361fefc04c779a54b15519579e563ee43410f4163a1dd6479ddde9af8135dfc7` |
| 63 | `lemma` | [vsub_iInter_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/vsub-iinter-subset--81173f8c69ffd6b915e5c25d.md) | 320 | `result-track:81173f8c69ffd6b915e5c25dfd8aeef85b4a2c54de6b997dd81c9574b89f4cd5` |
| 64 | `lemma` | [sInter_vsub_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/sinter-vsub-subset--292db7b8f338fe53e427f25e.md) | 323 | `result-track:292db7b8f338fe53e427f25e739ff18530de71f5a83132a9de7039682d2dc15c` |
| 65 | `lemma` | [vsub_sInter_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/vsub-sinter-subset--3a863a6c89d5e3c3f0873e3f.md) | 326 | `result-track:3a863a6c89d5e3c3f0873e3f95c6b35fc1ca7fab9d15bb60b7cea6eac5bd6e40` |
| 66 | `lemma` | [iInter₂_vsub_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/iinter-vsub-subset--6db806a77976b3a46e577a33.md) | 329 | `result-track:6db806a77976b3a46e577a339aa2a4079ccafb1b6d117ea387a339e4c4d4935f` |
| 67 | `lemma` | [vsub_iInter₂_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/declarations/vsub-iinter-subset--3ecb7a1575bbecb7504bf66f.md) | 332 | `result-track:3ecb7a1575bbecb7504bf66f7c4cade07abde22b29332b217866a9686da9df65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

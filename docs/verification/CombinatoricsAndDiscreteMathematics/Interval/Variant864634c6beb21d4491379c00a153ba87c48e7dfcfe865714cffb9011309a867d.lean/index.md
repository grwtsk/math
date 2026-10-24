# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc54b4dff12c4a6f189b01ea0d4104feeabdaf4f",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc54b4dff12c4a6f189b01ea0d4104feeabdaf4f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.LocallyFinite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/coe-sup--b62c3384105d73ca62e52bf1.md) | 23 | `result-track:b62c3384105d73ca62e52bf1fcac10084d56fb9f0b725c4c5fcc2b3a459d581c` |
| 2 | `theorem` | [coe_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/coe-inf--c2424608b07bfa51ae69c1ae.md) | 27 | `result-track:c2424608b07bfa51ae69c1ae6d2a9df4ec39a6eb92a8781a2adef3577025f12b` |
| 3 | `theorem` | [coe_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/coe-max--8dcbb43db5fd028c154ac069.md) | 31 | `result-track:8dcbb43db5fd028c154ac0690a98209150b208b5df3fc3639c6cc78c9495acb3` |
| 4 | `theorem` | [coe_min](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/coe-min--775049eafb145935bc2096c3.md) | 35 | `result-track:775049eafb145935bc2096c3b67ae74750b5e42d961a0a30edb1e70e383422db` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/instance--1fc067012f4776395efe1ff2.md) | 46 | `declaration-track:1fc067012f4776395efe1ff2ba2a4014d151125d32e79ce2ef55c0e7ef124eb6` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/instance--e8218b2ee17a57ef61a68d66.md) | 49 | `declaration-track:e8218b2ee17a57ef61a68d662de0642614efe2d30690cac159bd169810633218` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/instance--8c2aafb06c46e30aab3879ed.md) | 52 | `declaration-track:8c2aafb06c46e30aab3879ede0764bfecdd57421be7f61436b798f4b089908a2` |
| 8 | `theorem` | [Icc_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/icc-eq-finset-subtype--4bd266bf9bc2ef7e2aeafd37.md) | 60 | `result-track:4bd266bf9bc2ef7e2aeafd3733faf7cb467a37cf81bda5d7c498451f5594fdfd` |
| 9 | `theorem` | [Ico_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/ico-eq-finset-subtype--8328bdccc6cf48ecbf3f5a7f.md) | 64 | `result-track:8328bdccc6cf48ecbf3f5a7fed9d357715a278b1f6b763f456c319eb73f6709a` |
| 10 | `theorem` | [Ioc_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/ioc-eq-finset-subtype--51b2b801c0dcbdf6989e0d52.md) | 68 | `result-track:51b2b801c0dcbdf6989e0d5218eadfe4a4703478e90e1f0a800b06ccf7870472` |
| 11 | `theorem` | [Ioo_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/ioo-eq-finset-subtype--fdcfc400c30c29284b8bc5ea.md) | 72 | `result-track:fdcfc400c30c29284b8bc5eaa807cd9e6271e71eb73f991a671f55d4482de335` |
| 12 | `theorem` | [uIcc_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/uicc-eq-finset-subtype--9b254b5ee6b9bcc4ec8c3986.md) | 76 | `result-track:9b254b5ee6b9bcc4ec8c39866d6703c894e09e89a657fb5ac4eb96028ad0de1f` |
| 13 | `theorem` | [map_valEmbedding_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/map-valembedding-icc--2c36b0916429f34347cb2266.md) | 80 | `result-track:2c36b0916429f34347cb2266decfab10c5b614e4edb8d6c328ffade50984a561` |
| 14 | `theorem` | [map_valEmbedding_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/map-valembedding-ico--0a5289bfae10dc3456cbcbd0.md) | 85 | `result-track:0a5289bfae10dc3456cbcbd00a63a2d8f2d55420386f1fb18cd7b5ce5d03285a` |
| 15 | `theorem` | [map_valEmbedding_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/map-valembedding-ioc--f04dd5c8a1b1b6f76adc5e7b.md) | 90 | `result-track:f04dd5c8a1b1b6f76adc5e7b0ca252d96125f752954d6bb2a3e7e2fc6a11bf40` |
| 16 | `theorem` | [map_valEmbedding_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/map-valembedding-ioo--9fdc34944cc4da944d4dfef3.md) | 95 | `result-track:9fdc34944cc4da944d4dfef3c98629f6a2f3e6a238031c646cf0c29b3b90dbd5` |
| 17 | `theorem` | [map_subtype_embedding_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/map-subtype-embedding-uicc--dfc73484d0cda1907dc9ea9e.md) | 100 | `result-track:dfc73484d0cda1907dc9ea9e8ef5bd2ada9163c55f1ce83e17a890dd5d4ed7c6` |
| 18 | `theorem` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/card-icc--a5fdde33a95d8641ecc8dbf2.md) | 105 | `result-track:a5fdde33a95d8641ecc8dbf2adbe0f7778b1ae6e001bd4b1096c87c7a67d198b` |
| 19 | `theorem` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/card-ico--4850fa7066ba024f698e6536.md) | 110 | `result-track:4850fa7066ba024f698e65367ff96c06d78eba200c1b113d4422c9b11b5d4d74` |
| 20 | `theorem` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/card-ioc--b8bd883b1f58283e833e358a.md) | 115 | `result-track:b8bd883b1f58283e833e358a5da6d8460c78de034e60945c661c644d36b1273a` |
| 21 | `theorem` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/card-ioo--6ae9b0f4ebe73028c0ed95b6.md) | 120 | `result-track:6ae9b0f4ebe73028c0ed95b6c7cc79be29e7daca4ef824484beea2c3ef3bf129` |
| 22 | `theorem` | [card_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/card-uicc--41ad995e5845346221c16c9e.md) | 125 | `result-track:41ad995e5845346221c16c9e999ff9c126241b5a209396f9d012a6ad3a836240` |
| 23 | `theorem` | [card_fintypeIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/card-fintypeicc--dbea28dcf4b39d8532c37afb.md) | 131 | `result-track:dbea28dcf4b39d8532c37afb2b01e5215102ed092a022012a2c0ab92bb436e5c` |
| 24 | `theorem` | [card_fintypeIco](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/card-fintypeico--def5bf8c4cce88123029f9c7.md) | 137 | `result-track:def5bf8c4cce88123029f9c7088244bcb1310e8b087e2a2e8bf2ccfb08c992cc` |
| 25 | `theorem` | [card_fintypeIoc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/card-fintypeioc--b79ab364057bc30e8094f1cd.md) | 143 | `result-track:b79ab364057bc30e8094f1cd1fe6a677ca7a50895c3f7033a2e3ad052ef7eb9a` |
| 26 | `theorem` | [card_fintypeIoo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/card-fintypeioo--f24d722f91b7ed7cabe07fd8.md) | 149 | `result-track:f24d722f91b7ed7cabe07fd8a620248c4b739135f6ca65c07cf9ed8d2e362f6e` |
| 27 | `theorem` | [card_fintype_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/card-fintype-uicc--1745effedb03b092eb283d27.md) | 153 | `result-track:1745effedb03b092eb283d27ee98b39565597964618e4566740e9a77620868b1` |
| 28 | `theorem` | [Ici_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/ici-eq-finset-subtype--7f7836bcdde355a431eaf894.md) | 157 | `result-track:7f7836bcdde355a431eaf894695bddfd9638347b19cf7eaade8b0ccf83c193f3` |
| 29 | `theorem` | [Ioi_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/ioi-eq-finset-subtype--d0cffce2c5e4ab0f77cbfe67.md) | 162 | `result-track:d0cffce2c5e4ab0f77cbfe67e14aa5bf0069e791a074773781009512f0d0b44e` |
| 30 | `theorem` | [Iic_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/iic-eq-finset-subtype--12ecf0dd5740ba271af87d2e.md) | 167 | `result-track:12ecf0dd5740ba271af87d2e69179b0db5e4f00cacbf41cfbbdbc479035d6352` |
| 31 | `theorem` | [Iio_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/iio-eq-finset-subtype--11b65b0ecfb03aed04d2135b.md) | 171 | `result-track:11b65b0ecfb03aed04d2135b0af12035de4606b986327abc3705b4e560a42b02` |
| 32 | `theorem` | [map_valEmbedding_Ici](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/map-valembedding-ici--f84eed7b30ed0bed9940f22d.md) | 176 | `result-track:f84eed7b30ed0bed9940f22d0889a21f75883fd306638b99ba8e2bbdecbb137b` |
| 33 | `theorem` | [map_valEmbedding_Ioi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/map-valembedding-ioi--3cdb1efe2a3338ae86e62ca2.md) | 191 | `result-track:3cdb1efe2a3338ae86e62ca248ee49afdbf7577c229a1976aac81a9c8c1d175e` |
| 34 | `theorem` | [map_valEmbedding_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/map-valembedding-iic--a2aef2e652d883c5d88ffeed.md) | 206 | `result-track:a2aef2e652d883c5d88ffeed330ad658d7a22039f9edf6fef9d875f2544830eb` |
| 35 | `theorem` | [map_valEmbedding_Iio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/map-valembedding-iio--c3a1d774c354c1db2d84acfe.md) | 211 | `result-track:c3a1d774c354c1db2d84acfe87a6f2242cbb29299c6fdd3f5de7b684c19083f2` |
| 36 | `theorem` | [card_Ici](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/card-ici--4c47e668b92ff0abe31aa563.md) | 216 | `result-track:4c47e668b92ff0abe31aa563aa4505f7d5e87ecb224a02c7a10bdf7b552a2228` |
| 37 | `theorem` | [card_Ioi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/card-ioi--36ec25443800fcdb98b41e8e.md) | 226 | `result-track:36ec25443800fcdb98b41e8ec4b4302f0d9e78f4c6653ae240aa7f8bc590f8a6` |
| 38 | `theorem` | [card_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/card-iic--b0e731ee7b50d5eb062d1f90.md) | 231 | `result-track:b0e731ee7b50d5eb062d1f908f50ebde294618173096447f5e721d2adb327469` |
| 39 | `theorem` | [card_Iio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/card-iio--567a96b67fcf0daacb81cc0c.md) | 236 | `result-track:567a96b67fcf0daacb81cc0ceff22e1bb50dedf0986e8cc41f77638448ef51c6` |
| 40 | `theorem` | [card_fintypeIci](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/card-fintypeici--931a0d1871b487a77ef1ddd8.md) | 242 | `result-track:931a0d1871b487a77ef1ddd8819ed096dd4e681ef16b38bc1d6ef170d3d6eee0` |
| 41 | `theorem` | [card_fintypeIoi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/card-fintypeioi--47b04910ff99f3fdc1fdafb6.md) | 248 | `result-track:47b04910ff99f3fdc1fdafb683fe7230f63a6c7977b548d0f19adec886f33838` |
| 42 | `theorem` | [card_fintypeIic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/card-fintypeiic--2ef2bbfa93ac202895f76db6.md) | 254 | `result-track:2ef2bbfa93ac202895f76db6a5c9dc644a6de8a92b9d0d39b201ecb004d90fdd` |
| 43 | `theorem` | [card_fintypeIio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant864634c6beb21d4491379c00a153ba87c48e7dfcfe865714cffb9011309a867d.lean/declarations/card-fintypeiio--1a2e49e2bdac49ae866076b0.md) | 260 | `result-track:1a2e49e2bdac49ae866076b00eec0537d9c9a64fa4572294b8c4fb64614219f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

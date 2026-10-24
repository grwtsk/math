# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc80eea2218474824da2819a503a08b5ca09b02c",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc80eea2218474824da2819a503a08b5ca09b02c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Interval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.LocallyFinite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/coe-sup--508069d804e027ed7e5f2025.md) | 31 | `result-track:508069d804e027ed7e5f202546d32dd4e1d8a20d8f82415b05ad5859130e2839` |
| 2 | `theorem` | [coe_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/coe-inf--5581e83c262dae3eba93c190.md) | 35 | `result-track:5581e83c262dae3eba93c190e9666dac290d6fbcb192e84c07501222917ab836` |
| 3 | `theorem` | [coe_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/coe-max--b367e798824455f9946f4476.md) | 39 | `result-track:b367e798824455f9946f4476d794f877f3abe920aa2025d8d9da3440befff1a6` |
| 4 | `theorem` | [coe_min](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/coe-min--1df95e46fd561c20814ccfd1.md) | 43 | `result-track:1df95e46fd561c20814ccfd10f34ee5d6eb75a7bd1a157de7cdf99349fe82bc2` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/instance--675a5134bb62a84324970b16.md) | 54 | `declaration-track:675a5134bb62a84324970b16a615ee845f186f2bef4221a8415129bf4f609848` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/instance--56a79550ed4d3db802d54221.md) | 57 | `declaration-track:56a79550ed4d3db802d54221417099781fe54a4699ff8be48995d6826094b9e6` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/instance--77cdf644638b51b250fcf2f7.md) | 60 | `declaration-track:77cdf644638b51b250fcf2f75e2df9b88d477a49ae3f6af312f40a0374877334` |
| 8 | `theorem` | [Icc_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/icc-eq-finset-subtype--5ace7ccc13a3d6d3f37a146a.md) | 68 | `result-track:5ace7ccc13a3d6d3f37a146a87eeebc64a6284e5965670c4b321abeed456cb76` |
| 9 | `theorem` | [Ico_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/ico-eq-finset-subtype--00ded798d2dd12f0433a1a35.md) | 72 | `result-track:00ded798d2dd12f0433a1a350e5e83a48b558fa33a51ce955a666fb14063f4d8` |
| 10 | `theorem` | [Ioc_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/ioc-eq-finset-subtype--f24981aaa4f3944b2ea4b458.md) | 76 | `result-track:f24981aaa4f3944b2ea4b458192928246e0e4b237cb55220bb696f438f1c5802` |
| 11 | `theorem` | [Ioo_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/ioo-eq-finset-subtype--c7341dfbf18c23a7f7ecd8eb.md) | 80 | `result-track:c7341dfbf18c23a7f7ecd8ebe8eb22c7e4aa6c2e16663b82d15bb5ec0958d949` |
| 12 | `theorem` | [uIcc_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/uicc-eq-finset-subtype--a5f62207491a5e4d3d1e7696.md) | 84 | `result-track:a5f62207491a5e4d3d1e7696933527623d238cb33c6dfaa651c39a0ac9e82802` |
| 13 | `theorem` | [map_valEmbedding_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/map-valembedding-icc--88de076f3756db6b216e921e.md) | 88 | `result-track:88de076f3756db6b216e921e92e5ad3f3ebde0e8657236273393554177022fd4` |
| 14 | `theorem` | [map_valEmbedding_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/map-valembedding-ico--ba8cf93faba88dea5e0fea28.md) | 93 | `result-track:ba8cf93faba88dea5e0fea28bab75dcc0dc1db4570a48bf3bf02353808c1f91e` |
| 15 | `theorem` | [map_valEmbedding_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/map-valembedding-ioc--2bf1c29529e7682c9a8578f0.md) | 98 | `result-track:2bf1c29529e7682c9a8578f0836394f70d28862638cbe68e87c8174d0a8aad3f` |
| 16 | `theorem` | [map_valEmbedding_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/map-valembedding-ioo--ae70ff67b7500239e68f001f.md) | 103 | `result-track:ae70ff67b7500239e68f001ffbe0e2a9a71bef0b4ddd2f90b8391aaffa908567` |
| 17 | `theorem` | [map_subtype_embedding_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/map-subtype-embedding-uicc--18e2d396b44a131ed85e5fd6.md) | 108 | `result-track:18e2d396b44a131ed85e5fd6f3a25c624bb661b047c92ee6e0963472d233191a` |
| 18 | `theorem` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/card-icc--be293372476b6f78ca6bf211.md) | 113 | `result-track:be293372476b6f78ca6bf211cab68f0b9c9c1e6fac129e3425570991329c07bb` |
| 19 | `theorem` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/card-ico--0d4ed4b3dbd902876d6c5b91.md) | 118 | `result-track:0d4ed4b3dbd902876d6c5b916e70dcb7b214ad6c79b56b581d098be14087a3b1` |
| 20 | `theorem` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/card-ioc--a842b250bed934701c993bc2.md) | 123 | `result-track:a842b250bed934701c993bc2387b464a361b9c3de40711be212abf22a56f225f` |
| 21 | `theorem` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/card-ioo--9fcf3171fddbfa510a039741.md) | 128 | `result-track:9fcf3171fddbfa510a039741220f1ad984e0b56481bc25500a327a26ae53edfd` |
| 22 | `theorem` | [card_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/card-uicc--37c70a62f489f8408c72e578.md) | 133 | `result-track:37c70a62f489f8408c72e578db67e654aaf843a333bf4dcb0a1fb65a90e161ec` |
| 23 | `theorem` | [card_fintypeIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/card-fintypeicc--0c09cbc49e855cbf648ede80.md) | 139 | `result-track:0c09cbc49e855cbf648ede80c4cd04566c64809e005782e4b365e6ee76758422` |
| 24 | `theorem` | [card_fintypeIco](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/card-fintypeico--6373b3287a0298ced5067861.md) | 145 | `result-track:6373b3287a0298ced5067861e43e82f6f578767f4bf83c61e2cbceb43de87ba5` |
| 25 | `theorem` | [card_fintypeIoc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/card-fintypeioc--09d0df247ca83d51a217d318.md) | 151 | `result-track:09d0df247ca83d51a217d318aaabb6d12771152dd650d0034c9293b9f07d3b5b` |
| 26 | `theorem` | [card_fintypeIoo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/card-fintypeioo--a38743791dd9e14b3c503a36.md) | 157 | `result-track:a38743791dd9e14b3c503a3675b41df13845c94ff1f7b03fd2cf52d24d8d521c` |
| 27 | `theorem` | [card_fintype_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/card-fintype-uicc--0c3d99fd4ca15eff05eeb5ff.md) | 161 | `result-track:0c3d99fd4ca15eff05eeb5ffeefaca23e03caf3772ebeabe2faa71caa75da01b` |
| 28 | `theorem` | [Ici_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/ici-eq-finset-subtype--f9f0dd6f7bb1853a31b71b46.md) | 165 | `result-track:f9f0dd6f7bb1853a31b71b46c6a377aaafeb91abf339759863ae85beb95c63e1` |
| 29 | `theorem` | [Ioi_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/ioi-eq-finset-subtype--c5d297350ea0ebc812e5a18d.md) | 170 | `result-track:c5d297350ea0ebc812e5a18dd947bdbcf73c6e32124f39ece115205113ae16c1` |
| 30 | `theorem` | [Iic_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/iic-eq-finset-subtype--c0eeea0183c7e68b657c6902.md) | 175 | `result-track:c0eeea0183c7e68b657c6902ea67a5ef862e1c896154c689b7616b6ac934bc60` |
| 31 | `theorem` | [Iio_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/iio-eq-finset-subtype--6aa34647654ad47b0101d5b2.md) | 179 | `result-track:6aa34647654ad47b0101d5b2d6272caa512a54dc1222bba8b6c480553c370918` |
| 32 | `theorem` | [map_valEmbedding_Ici](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/map-valembedding-ici--fc7e7adc692a41c677a21650.md) | 184 | `result-track:fc7e7adc692a41c677a21650457602eb3aa5a9067912e88bc6277a7e4580bff4` |
| 33 | `theorem` | [map_valEmbedding_Ioi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/map-valembedding-ioi--1ee41ff7c22ed29c542c935a.md) | 199 | `result-track:1ee41ff7c22ed29c542c935ac17c6e0531224b09e066102a8aae77afc5f050b3` |
| 34 | `theorem` | [map_valEmbedding_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/map-valembedding-iic--88f961dcdd2d8b74be777b12.md) | 214 | `result-track:88f961dcdd2d8b74be777b1269ae79b69f23906b99f28c2c314851199ca7a0a8` |
| 35 | `theorem` | [map_valEmbedding_Iio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/map-valembedding-iio--750db0339e01a4fca22aa75d.md) | 219 | `result-track:750db0339e01a4fca22aa75d8838e9fa043e76d824b901db05dd35a8119d5ecb` |
| 36 | `theorem` | [card_Ici](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/card-ici--02a304505b8fc31ca14f71d0.md) | 224 | `result-track:02a304505b8fc31ca14f71d0cc5f3a16a28b17934604e8de671cff4444b43f9b` |
| 37 | `theorem` | [card_Ioi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/card-ioi--618f0b2713fe3dbf01c3dc12.md) | 234 | `result-track:618f0b2713fe3dbf01c3dc129e2fed1ffe5f2e1a492e2354e85f3815c957c438` |
| 38 | `theorem` | [card_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/card-iic--e1200a216f15549743829737.md) | 239 | `result-track:e1200a216f155497438297375b597b29bcbd197b1f0fda38a2229c2ce3059009` |
| 39 | `theorem` | [card_Iio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/card-iio--288a3761e28925153c5122eb.md) | 244 | `result-track:288a3761e28925153c5122eb1c92aecdfd1ea949a7a9021bc53685184b252216` |
| 40 | `theorem` | [card_fintypeIci](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/card-fintypeici--897a4312e57e60e310e6d314.md) | 250 | `result-track:897a4312e57e60e310e6d3148a44f86291428c92580da6c6840f6fee349b00bb` |
| 41 | `theorem` | [card_fintypeIoi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/card-fintypeioi--c7bc286278393003f3cd9827.md) | 256 | `result-track:c7bc286278393003f3cd982705eff9b73c8c96083226aca5ead443a458051f3f` |
| 42 | `theorem` | [card_fintypeIic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/card-fintypeiic--38895dcd3b442d67d430d952.md) | 262 | `result-track:38895dcd3b442d67d430d952aa701308bd496087b8ede6215a04a811d88a5cf3` |
| 43 | `theorem` | [card_fintypeIio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant928f67a7b41a3492f02cee65ded8059cf81859581e10e66f3115a78376ac6518.lean/declarations/card-fintypeiio--24ce09656f6d356543401c15.md) | 268 | `result-track:24ce09656f6d356543401c15c973814c2520d36f2b4073a6155dd94310cd9a56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

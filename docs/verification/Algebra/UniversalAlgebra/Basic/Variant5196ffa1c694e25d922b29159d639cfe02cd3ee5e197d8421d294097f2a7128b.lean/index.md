# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b753663473ba0993073a74d5dc805111a3ed27c",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b753663473ba0993073a74d5dc805111a3ed27c`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharZero.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Commute` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Ring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Abs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Commute` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [castAddMonoidHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/castaddmonoidhom--a791cf79c1b3795dc75e0a34.md) | 37 | `declaration-track:a791cf79c1b3795dc75e0a34a1eb098467aed8a43c6df3e6302d828c551afa19` |
| 2 | `theorem` | [coe_castAddMonoidHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/coe-castaddmonoidhom--82a6c7e7932d08aed40db764.md) | 45 | `result-track:82a6c7e7932d08aed40db764450cbfb2d50541636ffd1b129a39f78eed754250` |
| 3 | `theorem` | [cast_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/cast-mul--ad4724f504269083f7cde01e.md) | 50 | `result-track:ad4724f504269083f7cde01e620906aed9b148c6468ac9767e2ff6cc397cb6e9` |
| 4 | `def` | [castRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/castringhom--b3dc96773f8da39c577061e4.md) | 55 | `declaration-track:b3dc96773f8da39c577061e4844c49d8665af35f737697a6a51d125c13429c9a` |
| 5 | `theorem` | [coe_castRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/coe-castringhom--40a7ede10557279c9b38a660.md) | 60 | `result-track:40a7ede10557279c9b38a660de551a58a614ad857d8f9f1a386c9e73089876ca` |
| 6 | `theorem` | [cast_commute](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/cast-commute--331195dc9d5cf25311b6462f.md) | 64 | `result-track:331195dc9d5cf25311b6462f17737bad078002f8724beeec55fb12f4e7a166a6` |
| 7 | `theorem` | [_root_.Commute.ofNat_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/root-commute-ofnat-left--3463c62d65670a4b6d0031c5.md) | 70 | `result-track:3463c62d65670a4b6d0031c55824351a1a72aae28af38476469b19be87f38b67` |
| 8 | `theorem` | [cast_comm](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/cast-comm--34b4769e1b028a09cb7e5f65.md) | 74 | `result-track:34b4769e1b028a09cb7e5f6571613f139b1c5ceee5054f9ae769d75ffd7b1fbc` |
| 9 | `theorem` | [commute_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/commute-cast--4584d2cdeefd5c0edef2d0d8.md) | 78 | `result-track:4584d2cdeefd5c0edef2d0d841dbd797f43ce8d18aaea6c309e751f3826ac227` |
| 10 | `theorem` | [_root_.Commute.ofNat_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/root-commute-ofnat-right--fe3f9fa7152af8581184c67c.md) | 82 | `result-track:fe3f9fa7152af8581184c67cd25b8d0d6c80c223c440b4655272c18aaf9c39f3` |
| 11 | `theorem` | [mono_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/mono-cast--9c4be2ba4968d9df6aa9ff2b.md) | 95 | `result-track:9c4be2ba4968d9df6aa9ff2b7753003e95283883a1c29a2dc58193e7cd543eff` |
| 12 | `theorem` | [cast_nonneg'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/cast-nonneg--7d6778ad45bcd3f745461d22.md) | 101 | `result-track:7d6778ad45bcd3f745461d2298ae0c900f2516047f399ee50e6f14e9c959215e` |
| 13 | `theorem` | [cast_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/cast-nonneg--346262e10c982123ce63b11e.md) | 106 | `result-track:346262e10c982123ce63b11edbc48c63e2787f4a776a31188393c1c4bacde8ca` |
| 14 | `theorem` | [cast_add_one_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/cast-add-one-pos--ebbbf82c6ab08e033c7c101c.md) | 114 | `result-track:ebbbf82c6ab08e033c7c101c06e4e2149163705150ff456c4f5a377baca71850` |
| 15 | `theorem` | [cast_pos'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/cast-pos--b8bce92591ef343070bc9040.md) | 119 | `result-track:b8bce92591ef343070bc9040b1596221b23ac0e878a249f882c30dc858bf1ea4` |
| 16 | `theorem` | [cast_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/cast-pos--895b552ffcc29e620a5f8907.md) | 123 | `result-track:895b552ffcc29e620a5f8907452a4cd46028c359d645576194234aea4afde221` |
| 17 | `theorem` | [strictMono_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/strictmono-cast--e16c7d9a1f4c54698cc0bdd9.md) | 130 | `result-track:e16c7d9a1f4c54698cc0bdd9fb66c9518cb58e4e507347d21edac14f87ed2413` |
| 18 | `def` | [castOrderEmbedding](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/castorderembedding--ace43c7efbb1c2c6dd851188.md) | 136 | `declaration-track:ace43c7efbb1c2c6dd85118876fb754ef2f74464f05ae586674f0515c7f0ac4c` |
| 19 | `theorem` | [cast_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/cast-le--e2c8afb62d7f32e71480e062.md) | 142 | `result-track:e2c8afb62d7f32e71480e062dd92a12362232e501b890e0b85b417150770c5ed` |
| 20 | `theorem` | [cast_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/cast-lt--ee7339ba7451095bc878b4d1.md) | 147 | `result-track:ee7339ba7451095bc878b4d145f0c289b1afac963182a4f7009fd5fba10adc87` |
| 21 | `theorem` | [one_lt_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/one-lt-cast--ea5b9681e43bd65721d44953.md) | 152 | `result-track:ea5b9681e43bd65721d449536179bfe10808e49fd55cba9c2782cd96c4a1eab8` |
| 22 | `theorem` | [one_le_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/one-le-cast--87c76edf6dfd0555f9108256.md) | 156 | `result-track:87c76edf6dfd0555f9108256bd16360183d068577515b954046cdeb5b8c185b5` |
| 23 | `theorem` | [cast_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/cast-lt-one--fccd7be519468a505aac82f2.md) | 160 | `result-track:fccd7be519468a505aac82f229c1e2131b2bdeab1feafa61c5769050dcafe956` |
| 24 | `theorem` | [cast_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/cast-le-one--8b3341dea2d94c5c590ce4d9.md) | 165 | `result-track:8b3341dea2d94c5c590ce4d93fd478da9a5e8c967e3f0decfc8c72e053c0fe05` |
| 25 | `theorem` | [cast_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/cast-tsub--bc3a1c4fc8afa3f28b4e4446.md) | 173 | `result-track:bc3a1c4fc8afa3f28b4e44465e56296c7233187d104e13a10ab2eb7ae25c2cc2` |
| 26 | `theorem` | [cast_min](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/cast-min--e392425812d0e1d9c1332f96.md) | 183 | `result-track:e392425812d0e1d9c1332f962230be6b7451791a9ced2db6088c55a4ac8403a3` |
| 27 | `theorem` | [cast_max](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/cast-max--9fc518e14f2a9294a92dca8f.md) | 188 | `result-track:9fc518e14f2a9294a92dca8f20c2ccf2ef0a5af2496a9f731a071924ca1cfe3e` |
| 28 | `theorem` | [abs_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/abs-cast--b3da0d07a0ddb0e6207d0b02.md) | 193 | `result-track:b3da0d07a0ddb0e6207d0b0271d811f4a5b3842b0c2a95ef4a038a13c495999b` |
| 29 | `theorem` | [coe_nat_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/coe-nat-dvd--b5d754dec3a55b3b13367369.md) | 197 | `result-track:b5d754dec3a55b3b13367369dfa6da31728561dd4092064ab0668d7bde91b609` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/instance--91521e4fcb3355c20e4029d6.md) | 205 | `declaration-track:91521e4fcb3355c20e4029d66d3ce6e850cffc9e68d08b46b30a2375014a5150` |
| 31 | `theorem` | [ext_nat'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/ext-nat--f321cd567eccc703281e7a81.md) | 212 | `result-track:f321cd567eccc703281e7a81b953a09b65fee5b58ddf78eebf56a0f120ce58c4` |
| 32 | `theorem` | [AddMonoidHom.ext_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/addmonoidhom-ext-nat--1b0e919348043fd4d5c24e6e.md) | 222 | `result-track:1b0e919348043fd4d5c24e6e4c28e673058ee6d3e693e55337eb603ac6f7d7a1` |
| 33 | `theorem` | [eq_natCast'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/eq-natcast--dcedf162065d26fafbaf81a2.md) | 229 | `result-track:dcedf162065d26fafbaf81a24001006a67798a0c17ee9620e591a0d765737724` |
| 34 | `theorem` | [map_natCast'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/map-natcast--2ba1f554619a541600ab1bfc.md) | 234 | `result-track:2ba1f554619a541600ab1bfc37df46fcd19e2dff2a163314d91be67051ea163e` |
| 35 | `theorem` | [ext_nat''](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/ext-nat--ca3b52a75ac652a6152780dd.md) | 248 | `result-track:ca3b52a75ac652a6152780dd6525fd603d48fdb9e493a9e65ca6e51e1f458443` |
| 36 | `theorem` | [MonoidWithZeroHom.ext_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/monoidwithzerohom-ext-nat--da391413016094210ee3a2af.md) | 257 | `result-track:da391413016094210ee3a2af6f4365e099330f453f255345edae5a14fc035a42` |
| 37 | `theorem` | [eq_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/eq-natcast--15e41c029685d76ab94a68f5.md) | 268 | `result-track:15e41c029685d76ab94a68f513c9dadb149fc2536d4bb5ee78f051c1c79684c3` |
| 38 | `theorem` | [map_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/map-natcast--3d5966c8d71e7bfdb3fb18b9.md) | 273 | `result-track:3d5966c8d71e7bfdb3fb18b9f21a27a70b546946fdd318b01b5eb35dc9ff4d1b` |
| 39 | `theorem` | [map_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/map-ofnat--f2c7cbd4baa8a8a86ab77092.md) | 279 | `result-track:f2c7cbd4baa8a8a86ab770921b925c05496aaa7db898b6dbb3f9dc52929298af` |
| 40 | `theorem` | [ext_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/ext-nat--5ee9c1697ee8ad52534503b1.md) | 283 | `result-track:5ee9c1697ee8ad52534503b16fb398b8785ac6603c575bd7437fc801c7ba5216` |
| 41 | `theorem` | [NeZero.nat_of_injective](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/nezero-nat-of-injective--9b5e96d3d5b196f6f3570375.md) | 287 | `result-track:9b5e96d3d5b196f6f3570375bef9993ed0fb10dea88bdee09c0ccf00ad5a1513` |
| 42 | `theorem` | [NeZero.nat_of_neZero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/nezero-nat-of-nezero--11904d4fe31a957ef3cc1159.md) | 292 | `result-track:11904d4fe31a957ef3cc11591e6f55ae939ca5c6f5ce1fb248905d6ac2bc701a` |
| 43 | `theorem` | [eq_natCast'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/eq-natcast--30f05b234ac7d6c9f2730a84.md) | 302 | `result-track:30f05b234ac7d6c9f2730a8496109a59601fe1177d52142ed71e358b2975a759` |
| 44 | `theorem` | [Nat.cast_id](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/nat-cast-id--70b2deed7a14aa68e32466f7.md) | 309 | `result-track:70b2deed7a14aa68e32466f71fcd487cf0cb96dbebc5c96c81632833b41b4efe` |
| 45 | `theorem` | [Nat.castRingHom_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/nat-castringhom-nat--77679db2d62482ab1321d462.md) | 314 | `result-track:77679db2d62482ab1321d46269518b2857f1a62d9ab5f51b34d8fd7f07170ec2` |
| 46 | `instance` | [Nat.uniqueRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/nat-uniqueringhom--c3bcdedc48a2fc23fba964e8.md) | 320 | `declaration-track:c3bcdedc48a2fc23fba964e80a18aea9d9358e16c4383ba9ae6ad7cc5073ef60` |
| 47 | `instance` | [natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/natcast--ecbaa1fd407d5eaf5dc8756c.md) | 330 | `declaration-track:ecbaa1fd407d5eaf5dc8756c0b30794efaa248bcc0b1f682e586dee3f251cfba` |
| 48 | `theorem` | [nat_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/nat-apply--880e43ccb24d8e469ff3a853.md) | 332 | `result-track:880e43ccb24d8e469ff3a853742b10fb2a06890f715cddd62e89108d79065ecf` |
| 49 | `theorem` | [coe_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/coe-nat--6b210551a6289617311e0728.md) | 337 | `result-track:6b210551a6289617311e0728acdbf17b507ff78de7580551cb483354258e414e` |
| 50 | `theorem` | [ofNat_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/ofnat-apply--0778742db1d9f6897f2e3b8d.md) | 342 | `result-track:0778742db1d9f6897f2e3b8d24ffc0a1929c31ccd0e131043b637d941ac8aaca` |
| 51 | `theorem` | [Sum.elim_natCast_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/sum-elim-natcast-natcast--3f25df8dbb13600c456226ab.md) | 346 | `result-track:3f25df8dbb13600c456226ab1016c796ef130baeb65be30a9cc6df76c4bf8b3e` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/instance--2696ac9cbc8f4ff95b443e59.md) | 356 | `declaration-track:2696ac9cbc8f4ff95b443e597b30dd22caf7dbfd11bc2faa5ada85bd19c98ff3` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/instance--7021c21479d4afdb60cb9a2f.md) | 359 | `declaration-track:7021c21479d4afdb60cb9a2fde4082bcc0d0b0be4e0a2513768fc6c5492aedae` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/instance--92dbed667a1c740785a0a4eb.md) | 362 | `declaration-track:92dbed667a1c740785a0a4eb0555420940b86178a62ffe78c5622e2e01170986` |
| 55 | `theorem` | [toDual_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/todual-natcast--b3c3f2146d9ed3b7c4026eae.md) | 366 | `result-track:b3c3f2146d9ed3b7c4026eaec0d10f2e76aca4813c9c0bd2d4ab8978c8fb912e` |
| 56 | `theorem` | [ofDual_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/ofdual-natcast--98a3a4edb904987abae8ef07.md) | 371 | `result-track:98a3a4edb904987abae8ef0769d9b95faee77653b8f80f4a301c7ee103c7a75c` |
| 57 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/instance--ccce08adf19870ba062deeca.md) | 378 | `declaration-track:ccce08adf19870ba062deeca98d33fda61b4ffb0e3b2c34d891695e8a8ef1e05` |
| 58 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/instance--71f926977444f3e136c4c592.md) | 381 | `declaration-track:71f926977444f3e136c4c5920c413d1b8df3ddc4856503024f43d86e02b90fb8` |
| 59 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/instance--1326cd33e4a50051f66b9f81.md) | 384 | `declaration-track:1326cd33e4a50051f66b9f816d66a8684d101c9a95feb447d2aca497fac88cd4` |
| 60 | `theorem` | [toLex_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/tolex-natcast--3b2a0709d2d93171714fed7b.md) | 388 | `result-track:3b2a0709d2d93171714fed7b1ca4c1255ac0dcb8133233588c6ba096b3b3114c` |
| 61 | `theorem` | [ofLex_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/declarations/oflex-natcast--bebda99a087c1cb4b8f2b0bb.md) | 393 | `result-track:bebda99a087c1cb4b8f2b0bbb137ce4e9e8c7544cdddc4f9b035b7892afb495d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

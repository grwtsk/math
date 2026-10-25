# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Cast.Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d294172e30dc81ac97582fedd355cea3333b7e7",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d294172e30dc81ac97582fedd355cea3333b7e7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.CharZero` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Power` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Opposite` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_coe_int](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-coe-int--54dac43868a08d82fbbc2db2.md) | 53 | `result-track:54dac43868a08d82fbbc2db23841c503fd79cb5aebf916eb1b9844601719cd2a` |
| 2 | `theorem` | [cast_coe_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-coe-nat--c1d674a7080875bc9f42c1d5.md) | 59 | `result-track:c1d674a7080875bc9f42c1d5d10633030f4357aa68973d325fbf2dbef2fea092` |
| 3 | `theorem` | [cast_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-zero--e3e84152fb0846885a7f93a3.md) | 65 | `result-track:e3e84152fb0846885a7f93a386428b77092446fbd849100aa4cced3499fa501a` |
| 4 | `theorem` | [cast_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-one--5eb2cdc46831fe2e4f5c7050.md) | 70 | `result-track:5eb2cdc46831fe2e4f5c7050d0ae3da11d96d91682c7b4e1df05061fd4d3dfa4` |
| 5 | `theorem` | [cast_commute](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-commute--1137e726eaba127c8ec9e37b.md) | 74 | `result-track:1137e726eaba127c8ec9e37bd6d5817d9cd21350ba7dac1a91ef7d624b703551` |
| 6 | `theorem` | [cast_comm](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-comm--71eb97d55586caa65238a9ae.md) | 78 | `result-track:71eb97d55586caa65238a9aea14fff7603c926b6449b807c54e9da23823439e8` |
| 7 | `theorem` | [commute_cast](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/commute-cast--cf1c6ff93b67880d7658dda9.md) | 82 | `result-track:cf1c6ff93b67880d7658dda92c8f3f490a23a154d4680adf9772f3552e7c5cec` |
| 8 | `theorem` | [cast_mk_of_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-mk-of-ne-zero--872039c5dc8a7cf77cd0283c.md) | 87 | `result-track:872039c5dc8a7cf77cd0283ca11c2ab3a2002e71a262c94a712272b994708b29` |
| 9 | `theorem` | [cast_add_of_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-add-of-ne-zero--4da41bab19d989063e70826b.md) | 110 | `result-track:4da41bab19d989063e70826bae9aa5611907c067174ffa68430bef7f7f0a2984` |
| 10 | `theorem` | [cast_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-neg--5ef705485958227266934aa8.md) | 128 | `result-track:5ef705485958227266934aa8578ae99304bdea477fde2ef798259cc6b3320f7f` |
| 11 | `theorem` | [cast_sub_of_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-sub-of-ne-zero--09bc40732393ff97512098cb.md) | 136 | `result-track:09bc40732393ff97512098cb24ca8ee8355e16b4835479981eafb1c028255a8f` |
| 12 | `theorem` | [cast_mul_of_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-mul-of-ne-zero--1cb5f39739b16cadcddbe74f.md) | 143 | `result-track:1cb5f39739b16cadcddbe74faf9745378a6cf08cc5e8c3c5d82e9667f565a430` |
| 13 | `theorem` | [cast_inv_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-inv-nat--18d2db398f217796a9c60004.md) | 160 | `result-track:18d2db398f217796a9c600046fd576c6031f571eb0293008f6214f8a5fd23be7` |
| 14 | `theorem` | [cast_inv_int](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-inv-int--a309b2d7afd5224c1b6d812e.md) | 169 | `result-track:a309b2d7afd5224c1b6d812e2bac959bbc96e4ebc891d5aaeca3466f4c3c545d` |
| 15 | `theorem` | [cast_inv_of_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-inv-of-ne-zero--95d68de68b560129da2b8f43.md) | 176 | `result-track:95d68de68b560129da2b8f43fee9037ed198f10eebd0dd0186ad5730bef96ffb` |
| 16 | `theorem` | [cast_div_of_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-div-of-ne-zero--b8f2af5020b28dfe5c65d9aa.md) | 187 | `result-track:b8f2af5020b28dfe5c65d9aae544b62513d30d3209ac9c699df0751901ea3978` |
| 17 | `theorem` | [cast_inj](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-inj--f7ef4ee68566e701ac30c1cd.md) | 199 | `result-track:f7ef4ee68566e701ac30c1cd60b9285cba13e90d5564247a6e6ea76cbf422f02` |
| 18 | `theorem` | [cast_injective](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-injective--1d88d0318cde0dac41fe03b4.md) | 211 | `result-track:1d88d0318cde0dac41fe03b4979b092f2a9150cd198720ee10f8990fc1c4a68c` |
| 19 | `theorem` | [cast_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-eq-zero--1d79000516e53820a02603bd.md) | 216 | `result-track:1d79000516e53820a02603bd256329febde3105bde3ccb0d7a49acaf85c2f321` |
| 20 | `theorem` | [cast_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-ne-zero--40e6340558f6c26be30cfb85.md) | 219 | `result-track:40e6340558f6c26be30cfb85cf9514dea381c10efa8cdc18314ea690a3a9afdd` |
| 21 | `theorem` | [cast_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-add--21adabf6e665856e225008f4.md) | 224 | `result-track:21adabf6e665856e225008f4eb69f020aa16bc1f2f74fab91c8e5c4e63f613f7` |
| 22 | `theorem` | [cast_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-sub--33e5313dc479f630f8cb06bf.md) | 229 | `result-track:33e5313dc479f630f8cb06bf65044b2703de6d195148b13f18b2f104b7bee79e` |
| 23 | `theorem` | [cast_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-mul--45715bab2bf494bdf7e83b5b.md) | 234 | `result-track:45715bab2bf494bdf7e83b5b9ff5742c4fc8f34aa1ebbf8e074a04cd133ad23b` |
| 24 | `theorem` | [cast_bit0](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-bit0--c9a48459a31912466f8b46ce.md) | 243 | `result-track:c9a48459a31912466f8b46ce64e6b28ebe0d7541ff618bb624a2d2de194d6306` |
| 25 | `theorem` | [cast_bit1](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-bit1--8131235d64b9ecd7c4f52f69.md) | 248 | `result-track:8131235d64b9ecd7c4f52f69810eddb7ae0177ab4270053c36f1f057c6cfb4e1` |
| 26 | `def` | [castHom](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/casthom--2577d39f1ca7088ba9a52e0e.md) | 258 | `declaration-track:2577d39f1ca7088ba9a52e0e3ad5d1f06d40c5b260a66d72735425da9a9d70c2` |
| 27 | `theorem` | [coe_cast_hom](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/coe-cast-hom--7db54dc6791ed1dcf24d0866.md) | 269 | `result-track:7db54dc6791ed1dcf24d08666d25717a608679ce30fdadf167dae82c55ae8a49` |
| 28 | `theorem` | [cast_inv](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-inv--3e8a30c526c5fc58db4646e8.md) | 274 | `result-track:3e8a30c526c5fc58db4646e8376a91bad75fd506cff1166aada55dcf1df30b26` |
| 29 | `theorem` | [cast_div](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-div--0b23d3f5be4ee3a815d52ade.md) | 279 | `result-track:0b23d3f5be4ee3a815d52ade9ae096bb78ebd2946ed6ea021853e9b7e245499b` |
| 30 | `theorem` | [cast_zpow](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-zpow--e35b056bf13a83e0610a3e57.md) | 284 | `result-track:e35b056bf13a83e0610a3e57f3280b0542e5fa796ee55fa3478c5e3b3fd9f17c` |
| 31 | `theorem` | [cast_mk](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-mk--2a644e8ca582f07027e009aa.md) | 289 | `result-track:2a644e8ca582f07027e009aab7b253667e6846b3707d858be7d41ed4d410ce08` |
| 32 | `theorem` | [cast_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-pow--8d03a7538b6f0aaa8a4a0d37.md) | 294 | `result-track:8d03a7538b6f0aaa8a4a0d37258a2ec14fdcf3963bc22ea3624b53a5995e10e8` |
| 33 | `theorem` | [cast_pos_of_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-pos-of-pos--0e6ce423633131a86fb309ed.md) | 304 | `result-track:0e6ce423633131a86fb309ed20085ca4fcf7cf77ef1472e26b9c81eec501ba1a` |
| 34 | `theorem` | [cast_strictMono](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-strictmono--10fad8c62fb0e0a4cd2f5807.md) | 310 | `result-track:10fad8c62fb0e0a4cd2f58073b8092dacf95036d9096172616f27c86716cc2da` |
| 35 | `theorem` | [cast_mono](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-mono--764d0cfd4ed000d6fae7c172.md) | 315 | `result-track:764d0cfd4ed000d6fae7c1724fda57414a41cf9f51595f6a1209597cae6295fa` |
| 36 | `def` | [castOrderEmbedding](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/castorderembedding--8553816738369225b30b0c32.md) | 321 | `declaration-track:8553816738369225b30b0c3249de61157706a4f92345e6cc86565d137f7f583c` |
| 37 | `theorem` | [cast_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-le--7cc85c3cc3261f30a90e742e.md) | 327 | `result-track:7cc85c3cc3261f30a90e742e771fe1dc9f37a935f97abde68d8ce1018d613f08` |
| 38 | `theorem` | [cast_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-lt--f6c57861b813a39bf648d7a0.md) | 332 | `result-track:f6c57861b813a39bf648d7a0ec5b4064eb333c683d575a53ba04372874b33166` |
| 39 | `theorem` | [cast_nonneg](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-nonneg--0cef446fc4da7e6c8fd9f73f.md) | 337 | `result-track:0cef446fc4da7e6c8fd9f73fb33ae16ac9dcd6475fcf3869884398dd255f18ee` |
| 40 | `theorem` | [cast_nonpos](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-nonpos--94a7c1f2d003bc76f30f0e95.md) | 342 | `result-track:94a7c1f2d003bc76f30f0e95dd75a608124df9eb9d0d89e7dd70e677629a8de8` |
| 41 | `theorem` | [cast_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-pos--158d403166e425b3c238c695.md) | 347 | `result-track:158d403166e425b3c238c695a253959e25242b58157bd1e6ce8581c30d274d1b` |
| 42 | `theorem` | [cast_lt_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-lt-zero--6d989cfabcab966ba448d925.md) | 352 | `result-track:6d989cfabcab966ba448d92591bdb762d18f1202bc3e97d23b18f93b3bf6ca67` |
| 43 | `theorem` | [cast_min](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-min--31dcc91e4930ae22ff9d4c0c.md) | 357 | `result-track:31dcc91e4930ae22ff9d4c0c44031542a5f1b3358ad8dd978137ec76df67d19c` |
| 44 | `theorem` | [cast_max](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-max--16a412c8381d53cc6c9d48a4.md) | 362 | `result-track:16a412c8381d53cc6c9d48a47e76d392cf943c1930574cec6ae31d9535fb5e67` |
| 45 | `theorem` | [cast_abs](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-abs--2e262e478d411c28610a7c18.md) | 368 | `result-track:2e262e478d411c28610a7c18016d3e0ce9fca743befb267f16bd77c72d7b165c` |
| 46 | `theorem` | [preimage_cast_Icc](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/preimage-cast-icc--81ac48d4cae198d6fd5039a4.md) | 374 | `result-track:81ac48d4cae198d6fd5039a464df6c11f260d854c58bb137517de276847b24f4` |
| 47 | `theorem` | [preimage_cast_Ico](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/preimage-cast-ico--8ba7e2dde836081fe734097f.md) | 380 | `result-track:8ba7e2dde836081fe734097f375c1e78ec1e4862caede68bd365ae77782f6456` |
| 48 | `theorem` | [preimage_cast_Ioc](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/preimage-cast-ioc--f98b2fcd045402d9af7bac4d.md) | 386 | `result-track:f98b2fcd045402d9af7bac4d2b66b31510068177e0ed91d2c88b385643713579` |
| 49 | `theorem` | [preimage_cast_Ioo](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/preimage-cast-ioo--231ec3a0f4a96debda36bfa7.md) | 392 | `result-track:231ec3a0f4a96debda36bfa7134add5ae10ebcb83fc7ff5d7ec46c3a54e36576` |
| 50 | `theorem` | [preimage_cast_Ici](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/preimage-cast-ici--b968672505f584b17fa06208.md) | 398 | `result-track:b968672505f584b17fa0620808b28bce5fa5a2821b82caca21b72be975a62eb4` |
| 51 | `theorem` | [preimage_cast_Iic](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/preimage-cast-iic--8cfb2cff80cc4bccec5182f0.md) | 404 | `result-track:8cfb2cff80cc4bccec5182f045bd5d3f907883d4bcc94e0c2ce466094c5ff411` |
| 52 | `theorem` | [preimage_cast_Ioi](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/preimage-cast-ioi--498c097e4f8198978155f46a.md) | 410 | `result-track:498c097e4f8198978155f46aff806a4ea6e81ca54b3c9d023e1b9b011648fc3d` |
| 53 | `theorem` | [preimage_cast_Iio](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/preimage-cast-iio--f1aecec875ab9dd874e81ca1.md) | 416 | `result-track:f1aecec875ab9dd874e81ca14387063e679668e21586c86c0ef26d727df5f85d` |
| 54 | `theorem` | [cast_id](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-id--c71a52ecf147cab81ec53f75.md) | 425 | `result-track:c71a52ecf147cab81ec53f7549d7b1ef9b0e9f4064222fdcb5c9298bd8df6422` |
| 55 | `theorem` | [cast_eq_id](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-eq-id--3670e45fa0780aa6bcbe1228.md) | 429 | `result-track:3670e45fa0780aa6bcbe1228a1614e43b438718b9b46b702e9f9ea0832354519` |
| 56 | `theorem` | [cast_hom_rat](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/cast-hom-rat--5b526c9bbe9b3e5d587260c6.md) | 434 | `result-track:5b526c9bbe9b3e5d587260c6ef3cfbbe5cf8237709508459b13af58f4c92339c` |
| 57 | `theorem` | [map_ratCast](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/map-ratcast--e9791409d2cefcc70a282d11.md) | 443 | `result-track:e9791409d2cefcc70a282d11de50ecaa6713b777a4ff3668827c723c05b3bb4a` |
| 58 | `theorem` | [eq_ratCast](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/eq-ratcast--ac9c5ec41552e0ebf9edaeea.md) | 448 | `result-track:ac9c5ec41552e0ebf9edaeea0d8fad69b5c11475c0e623bc15f26b61c034269d` |
| 59 | `theorem` | [ext_rat'](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/ext-rat--91ce44dc890d311ddd8d1e6e.md) | 458 | `result-track:91ce44dc890d311ddd8d1e6ea95c56ab785065ca91bcb43a27c11f23e601fc3e` |
| 60 | `theorem` | [ext_rat](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/ext-rat--3c2c5476530513ca3a21e58f.md) | 469 | `result-track:3c2c5476530513ca3a21e58f515db12cc539091830809c0fed440014964f4922` |
| 61 | `theorem` | [ext_rat_on_pnat](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/ext-rat-on-pnat--cd3bb1b2cbaa45c6ea340d0b.md) | 475 | `result-track:cd3bb1b2cbaa45c6ea340d0b27cd8b951fb97b8a9ac97a34162c69c0b8f88e00` |
| 62 | `theorem` | [RingHom.ext_rat](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/ringhom-ext-rat--04e831265b9aa2c033ac752a.md) | 489 | `result-track:04e831265b9aa2c033ac752a2f4edcbfbfb310a422ff303b2dddd6a122e30cdd` |
| 63 | `instance` | [Rat.subsingleton_ringHom](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/rat-subsingleton-ringhom--962a613f0b87c72f8c1558fd.md) | 495 | `declaration-track:962a613f0b87c72f8c1558fde34bbb1cdb9d04fc9b614a3f362ad91cbeb2a00f` |
| 64 | `instance` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/instance--b45c38d2aa7e4b2bf6d86e1c.md) | 505 | `declaration-track:b45c38d2aa7e4b2bf6d86e1c6ba31215f1c124b12727a005ca3d804da1448225` |
| 65 | `instance` | [isScalarTower_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/declarations/isscalartower-right--8ec34aa345a6858f66af2e05.md) | 511 | `declaration-track:8ec34aa345a6858f66af2e056387af523356415311a19f4e35ed45938913b2ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

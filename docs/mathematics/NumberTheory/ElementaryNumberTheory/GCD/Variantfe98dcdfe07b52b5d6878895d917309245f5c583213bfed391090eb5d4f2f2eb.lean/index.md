# GRWTSK.NumberTheory.ElementaryNumberTheory.Gcd.Variantfe98dcdfe07b52b5d6878895d917309245f5c583213bfed391090eb5d4f2f2eb

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**104 observed declarations and anonymous commands**, 100 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/Gcd/Variantfe98dcdfe07b52b5d6878895d917309245f5c583213bfed391090eb5d4f2f2eb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed5514fe0c035b9a0352ca46bc5e95b608033735`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ElementaryNumberTheory/GCD/Variantfe98dcdfe07b52b5d6878895d917309245f5c583213bfed391090eb5d4f2f2eb.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [gcd_rec](declarations/gcd-rec--5a44e7bbd8d3a7297fb990ff.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [gcd.induction](declarations/gcd-induction--7b32e07431e191502b29514e.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [lcm](declarations/lcm--dd66e1b6f23e7f0a6558c644.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Coprime](declarations/coprime--5bfd841651516eabc235302a.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [gcd_dvd](declarations/gcd-dvd--0fb3823da79a016decf0f9fc.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [gcd_dvd_left](declarations/gcd-dvd-left--29093868a34fe00c612a71c0.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [gcd_dvd_right](declarations/gcd-dvd-right--5bf8672bfce14d66eaa0e270.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [gcd_le_left](declarations/gcd-le-left--f1662c131059cfa1904fe579.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [gcd_le_right](declarations/gcd-le-right--a675e08eb3167bd70c974b57.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [dvd_gcd](declarations/dvd-gcd--0b2db57969743d9a2dfe37f0.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [dvd_gcd_iff](declarations/dvd-gcd-iff--1839526431fca7c4c1bec291.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [gcd_comm](declarations/gcd-comm--62b841549b4861200b09d6e6.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [gcd_eq_left_iff_dvd](declarations/gcd-eq-left-iff-dvd--69b7cbf0b549c8214adc64ef.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [gcd_eq_right_iff_dvd](declarations/gcd-eq-right-iff-dvd--71367c814fbd38b1b4479363.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [gcd_assoc](declarations/gcd-assoc--1a6e0fa7fde6311c60cda1d2.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [gcd_one_right](declarations/gcd-one-right--264e4ed8e971e0ac5599c63f.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [gcd_mul_left](declarations/gcd-mul-left--2e7ebc4a6320dc53b50fb9de.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [gcd_mul_right](declarations/gcd-mul-right--06b81418dd7b5faee3c65327.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [gcd_pos_of_pos_left](declarations/gcd-pos-of-pos-left--55fb997712967cc0d7d47be2.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [gcd_pos_of_pos_right](declarations/gcd-pos-of-pos-right--9497219d8963fa48677a81a2.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [div_gcd_pos_of_pos_left](declarations/div-gcd-pos-of-pos-left--9a649470158561a7e68ab09b.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [div_gcd_pos_of_pos_right](declarations/div-gcd-pos-of-pos-right--033b0b41dfeaf114832e6c78.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eq_zero_of_gcd_eq_zero_left](declarations/eq-zero-of-gcd-eq-zero-left--7ab20700c1dca392d0734dbb.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eq_zero_of_gcd_eq_zero_right](declarations/eq-zero-of-gcd-eq-zero-right--908c0168b69ff1ebf773e525.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [gcd_ne_zero_left](declarations/gcd-ne-zero-left--402ea518f228df32ad152c56.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [gcd_ne_zero_right](declarations/gcd-ne-zero-right--730160411c887ebf6a43cf76.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [gcd_div](declarations/gcd-div--c5e75d4a28f0ef2fd5204b5d.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [gcd_dvd_gcd_of_dvd_left](declarations/gcd-dvd-gcd-of-dvd-left--dff7a40aee573ba3ff85e9cc.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [gcd_dvd_gcd_of_dvd_right](declarations/gcd-dvd-gcd-of-dvd-right--e660226f34f18aab2d241847.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [gcd_dvd_gcd_mul_left](declarations/gcd-dvd-gcd-mul-left--3c2a5c4b483ab11f4365a35a.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [gcd_dvd_gcd_mul_right](declarations/gcd-dvd-gcd-mul-right--f7ed3d5573204b6968e8b075.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [gcd_dvd_gcd_mul_left_right](declarations/gcd-dvd-gcd-mul-left-right--5699aefda3cc37ad619b697f.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [gcd_dvd_gcd_mul_right_right](declarations/gcd-dvd-gcd-mul-right-right--612e3f470951da20f6de796a.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [gcd_eq_left](declarations/gcd-eq-left--12a9601e341242a3f1a89d1f.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [gcd_eq_right](declarations/gcd-eq-right--886b60de0e564c0e09179320.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [gcd_mul_left_left](declarations/gcd-mul-left-left--4d6920d23b08b7cb1f3e277a.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [gcd_mul_left_right](declarations/gcd-mul-left-right--d7b250e4f1b25122e94a1147.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [gcd_mul_right_left](declarations/gcd-mul-right-left--0838c91a65c1bc3a005ffecf.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [gcd_mul_right_right](declarations/gcd-mul-right-right--05cd41192063610e338c4ea9.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [gcd_gcd_self_right_left](declarations/gcd-gcd-self-right-left--fad7cee1c61725e01532ec97.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [gcd_gcd_self_right_right](declarations/gcd-gcd-self-right-right--b90dc222b1d6a3f3e8606b61.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [gcd_gcd_self_left_right](declarations/gcd-gcd-self-left-right--5ebd51b5726f4969450c561e.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [gcd_gcd_self_left_left](declarations/gcd-gcd-self-left-left--2443222163837c952d90258d.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [gcd_add_mul_self](declarations/gcd-add-mul-self--2695c340191959cd827296d6.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [gcd_eq_zero_iff](declarations/gcd-eq-zero-iff--a1cf97ca0966bba5195a052f.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [gcd_eq_iff](declarations/gcd-eq-iff--cface5c9d859f3b834ae9f44.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [lcm_comm](declarations/lcm-comm--e488a0a9ee51dfd0f5f00c04.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [lcm_zero_left](declarations/lcm-zero-left--1e44c15d4a0116c38f222703.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [lcm_zero_right](declarations/lcm-zero-right--77f1d3b69af15930e6a77d02.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [lcm_one_left](declarations/lcm-one-left--b112e95479a6c7b448c1463d.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [lcm_one_right](declarations/lcm-one-right--5bc32d780902b5f293909d6d.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [lcm_self](declarations/lcm-self--1c9647356d42821044aa5548.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [dvd_lcm_left](declarations/dvd-lcm-left--57278b54ca2fcc21985142ca.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [dvd_lcm_right](declarations/dvd-lcm-right--5e8242b389422a901d09057d.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [gcd_mul_lcm](declarations/gcd-mul-lcm--17174627c4957fcd548b8315.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [lcm_dvd](declarations/lcm-dvd--fb7dc637f3f523a827a6caff.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [lcm_assoc](declarations/lcm-assoc--825231949c31c6ebf14cfef1.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [lcm_ne_zero](declarations/lcm-ne-zero--68d8d90fc3ffea6d1057a947.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance--a8402032512814049a340d68.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [coprime_iff_gcd_eq_one](declarations/coprime-iff-gcd-eq-one--b5f93eb2eadd2f153f8c6213.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Coprime.gcd_eq_one](declarations/coprime-gcd-eq-one--933d48c378717df926b77326.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Coprime.symm](declarations/coprime-symm--c41a91ebeaaaca2fd7620584.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coprime_comm](declarations/coprime-comm--1b5365283ba1773281526443.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Coprime.dvd_of_dvd_mul_right](declarations/coprime-dvd-of-dvd-mul-right--261e30e6a48176b3c4ae9e0a.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Coprime.dvd_of_dvd_mul_left](declarations/coprime-dvd-of-dvd-mul-left--e9f4f6c54fff7935e999bf93.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [Coprime.gcd_mul_left_cancel](declarations/coprime-gcd-mul-left-cancel--8a7f696bf6ad24d2681a353a.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [Coprime.gcd_mul_right_cancel](declarations/coprime-gcd-mul-right-cancel--dad8781504e7a6ac9c5f14d5.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Coprime.gcd_mul_left_cancel_right](declarations/coprime-gcd-mul-left-cancel-right--8ac1295bdee771489370dff3.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Coprime.gcd_mul_right_cancel_right](declarations/coprime-gcd-mul-right-cancel-right--4dc74b32c2e9887a394bf6da.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [coprime_div_gcd_div_gcd](declarations/coprime-div-gcd-div-gcd--dca95aeec1c2a1d1681f5ad8.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [not_coprime_of_dvd_of_dvd](declarations/not-coprime-of-dvd-of-dvd--cc8b1c56593d8d3a3554812a.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [exists_coprime](declarations/exists-coprime--122841887e60563fb4662435.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [exists_coprime'](declarations/exists-coprime--fa67966a80f07e4802c841ff.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Coprime.mul](declarations/coprime-mul--59c2ee073914221f1647a094.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Coprime.mul_right](declarations/coprime-mul-right--2955a41c42a85657ac5f905c.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Coprime.coprime_dvd_left](declarations/coprime-coprime-dvd-left--18bb880a8c8923b22b44d67b.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Coprime.coprime_dvd_right](declarations/coprime-coprime-dvd-right--aeba1bf0d4fcb4d3beb8924c.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Coprime.coprime_mul_left](declarations/coprime-coprime-mul-left--b01632c82686f31dcc04c1df.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Coprime.coprime_mul_right](declarations/coprime-coprime-mul-right--906dc27575ede9aef8676ddd.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [Coprime.coprime_mul_left_right](declarations/coprime-coprime-mul-left-right--6fdb0fef37b988b06fd23ab7.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [Coprime.coprime_mul_right_right](declarations/coprime-coprime-mul-right-right--d9951b82bd16a5721d13b454.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [Coprime.coprime_div_left](declarations/coprime-coprime-div-left--65d5f7f945f25bd97c9f14f5.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [Coprime.coprime_div_right](declarations/coprime-coprime-div-right--e9e5b65864c928681be59bcf.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [coprime_mul_iff_left](declarations/coprime-mul-iff-left--f4327ef6aa3ed3c2aa4d8bf9.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [coprime_mul_iff_right](declarations/coprime-mul-iff-right--113840fe96ce96495376a813.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Coprime.gcd_left](declarations/coprime-gcd-left--6d2c971a58b9f674bbe65a92.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [Coprime.gcd_right](declarations/coprime-gcd-right--2c0aac58d44e644627b4aa7e.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [Coprime.gcd_both](declarations/coprime-gcd-both--8b53d7b515348152760aa972.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [Coprime.mul_dvd_of_dvd_of_dvd](declarations/coprime-mul-dvd-of-dvd-of-dvd--ed720c6b01327b7a2beb7ddc.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [coprime_zero_left](declarations/coprime-zero-left--2e191e796956c313a2d113d4.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [coprime_zero_right](declarations/coprime-zero-right--392d9da4fd622684cf17bd57.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [coprime_one_left](declarations/coprime-one-left--b92dd23128c7852b23135a47.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [coprime_one_right](declarations/coprime-one-right--858e97a0ddaeba467f79838a.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [coprime_one_left_eq_true](declarations/coprime-one-left-eq-true--de1a38d70f86422971c4fff6.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [coprime_one_right_eq_true](declarations/coprime-one-right-eq-true--1220c1b70fbfc6989f3a7011.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [coprime_self](declarations/coprime-self--3db05f350f5859ac3a1a208a.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [Coprime.pow_left](declarations/coprime-pow-left--262935465abb61c0696fb3ab.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [Coprime.pow_right](declarations/coprime-pow-right--1e2ebc4bbf8f837ad16481ff.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [Coprime.pow](declarations/coprime-pow--c5f8bde9027a3716f2e93000.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [Coprime.eq_one_of_dvd](declarations/coprime-eq-one-of-dvd--be1e31d8bc467d948cb2c87e.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [prod_dvd_and_dvd_of_dvd_prod](declarations/prod-dvd-and-dvd-of-dvd-prod--d722a17ed00ded0fca0f8e49.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [gcd_mul_dvd_mul_gcd](declarations/gcd-mul-dvd-mul-gcd--ae2265d2847169951c4bd07d.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Coprime.gcd_mul](declarations/coprime-gcd-mul--9f81671e34cd9d73b457e879.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [gcd_mul_gcd_of_coprime_of_mul_eq_mul](declarations/gcd-mul-gcd-of-coprime-of-mul-eq-mul--e2bc025be5c791efe87cb820.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |

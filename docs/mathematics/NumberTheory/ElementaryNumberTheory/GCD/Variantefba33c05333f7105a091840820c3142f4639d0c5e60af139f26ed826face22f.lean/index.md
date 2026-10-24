# GRWTSK.NumberTheory.ElementaryNumberTheory.Gcd.Variantefba33c05333f7105a091840820c3142f4639d0c5e60af139f26ed826face22f

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**104 observed declarations and anonymous commands**, 100 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/Gcd/Variantefba33c05333f7105a091840820c3142f4639d0c5e60af139f26ed826face22f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13efaa95a5b4298bf048e76cc7f610bdab319ba4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ElementaryNumberTheory/GCD/Variantefba33c05333f7105a091840820c3142f4639d0c5e60af139f26ed826face22f.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [gcd_rec](declarations/gcd-rec--0629f7e02fd6b63de0f3a2b0.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [gcd.induction](declarations/gcd-induction--17ecf415a1c979ba1878019b.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [lcm](declarations/lcm--70422e4853c5f4be590c3c3e.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Coprime](declarations/coprime--c354c41da0c032d735b8df98.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [gcd_dvd](declarations/gcd-dvd--fc7be912156eed5a0f7e52f0.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [gcd_dvd_left](declarations/gcd-dvd-left--57a8b0d252d19d0ed62bd09c.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [gcd_dvd_right](declarations/gcd-dvd-right--00098cd3d53409ff7ac97535.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [gcd_le_left](declarations/gcd-le-left--a0dee3f8b162eabc987ebd3b.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [gcd_le_right](declarations/gcd-le-right--ce2d5f63f566d0d13ad75ddd.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [dvd_gcd](declarations/dvd-gcd--d2a0ac76658553feeba43369.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [dvd_gcd_iff](declarations/dvd-gcd-iff--5bda94756dd0c05e40272623.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [gcd_comm](declarations/gcd-comm--2587d30cbd352383c7275638.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [gcd_eq_left_iff_dvd](declarations/gcd-eq-left-iff-dvd--38d87b2568c5c1ffcc9be42e.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [gcd_eq_right_iff_dvd](declarations/gcd-eq-right-iff-dvd--0c55486842e2f0a6ebf38aaf.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [gcd_assoc](declarations/gcd-assoc--e703a955beddbbba8bc4891c.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [gcd_one_right](declarations/gcd-one-right--c4e0e80f395921e82dd2d70d.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [gcd_mul_left](declarations/gcd-mul-left--fb5d54c06f087d8f5c807681.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [gcd_mul_right](declarations/gcd-mul-right--c3b7e01aa27a1519026890e6.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [gcd_pos_of_pos_left](declarations/gcd-pos-of-pos-left--04c3203be12bc4f802a86a33.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [gcd_pos_of_pos_right](declarations/gcd-pos-of-pos-right--4755acfda772a003a7657b0c.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [div_gcd_pos_of_pos_left](declarations/div-gcd-pos-of-pos-left--a6a1715c5722c0a7623b1575.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [div_gcd_pos_of_pos_right](declarations/div-gcd-pos-of-pos-right--3a84d0192a7a962e45de8b62.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eq_zero_of_gcd_eq_zero_left](declarations/eq-zero-of-gcd-eq-zero-left--ff3c4ec44b858ad6dc1d899d.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eq_zero_of_gcd_eq_zero_right](declarations/eq-zero-of-gcd-eq-zero-right--52f8cddac57ef62458f30471.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [gcd_ne_zero_left](declarations/gcd-ne-zero-left--2b3ef169331d8e0e914edd16.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [gcd_ne_zero_right](declarations/gcd-ne-zero-right--351c9830e4e0efaf8817f2a8.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [gcd_div](declarations/gcd-div--9d1784a3edcdbe66e0f67d5d.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [gcd_dvd_gcd_of_dvd_left](declarations/gcd-dvd-gcd-of-dvd-left--ecc294dc440b960abd7f3396.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [gcd_dvd_gcd_of_dvd_right](declarations/gcd-dvd-gcd-of-dvd-right--39c65f9602f64d93b42624b2.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [gcd_dvd_gcd_mul_left](declarations/gcd-dvd-gcd-mul-left--48828cc99f26035b1b0b2e31.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [gcd_dvd_gcd_mul_right](declarations/gcd-dvd-gcd-mul-right--4ee7cf51979432afa1989dc9.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [gcd_dvd_gcd_mul_left_right](declarations/gcd-dvd-gcd-mul-left-right--c7dc8619f3e84ae9ed5aa14d.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [gcd_dvd_gcd_mul_right_right](declarations/gcd-dvd-gcd-mul-right-right--3136bfdf7d3b0e1a0779b6f1.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [gcd_eq_left](declarations/gcd-eq-left--b7289ce1e3ea1cc5e88e0ab1.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [gcd_eq_right](declarations/gcd-eq-right--c8901928653909c3f3fc6179.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [gcd_mul_left_left](declarations/gcd-mul-left-left--e622f84e2dad774faa4c300b.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [gcd_mul_left_right](declarations/gcd-mul-left-right--24d148a2541c3cef093a4b2e.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [gcd_mul_right_left](declarations/gcd-mul-right-left--577b83a4571e46ae0cd85f3b.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [gcd_mul_right_right](declarations/gcd-mul-right-right--9632ba6c78cb54b1fd40d519.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [gcd_gcd_self_right_left](declarations/gcd-gcd-self-right-left--281c88fdc026d2ed4abe2b3a.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [gcd_gcd_self_right_right](declarations/gcd-gcd-self-right-right--4d3c1a6b6434f0f58bb41699.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [gcd_gcd_self_left_right](declarations/gcd-gcd-self-left-right--a8236f7798ca27dc57c0a70e.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [gcd_gcd_self_left_left](declarations/gcd-gcd-self-left-left--e5380498bd4ee948fbc7f003.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [gcd_add_mul_self](declarations/gcd-add-mul-self--8e215a7fab2551294c35fc37.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [gcd_eq_zero_iff](declarations/gcd-eq-zero-iff--f4cbe856822b45c95b658c63.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [gcd_eq_iff](declarations/gcd-eq-iff--d55a7eba9943aad26cb7714f.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [lcm_comm](declarations/lcm-comm--174788e0f552633b867ec185.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [lcm_zero_left](declarations/lcm-zero-left--97d8a1d58c1f4d200ab510ca.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [lcm_zero_right](declarations/lcm-zero-right--4236e03ce88413e721761632.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [lcm_one_left](declarations/lcm-one-left--cdf17a9efd17854903a1bfb3.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [lcm_one_right](declarations/lcm-one-right--47fcfa63ad596a6e61ce6b36.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [lcm_self](declarations/lcm-self--c8596d70de9436956db7a345.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [dvd_lcm_left](declarations/dvd-lcm-left--39d56c050481166d8c43fbd3.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [dvd_lcm_right](declarations/dvd-lcm-right--4541211e24edb465ba71ecb7.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [gcd_mul_lcm](declarations/gcd-mul-lcm--c4eb4aef652d92a3eee567c9.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [lcm_dvd](declarations/lcm-dvd--b3ef7a363d686070b466db5c.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [lcm_assoc](declarations/lcm-assoc--baf508fbd55050970504033c.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [lcm_ne_zero](declarations/lcm-ne-zero--8f1086e152af9fde78751b64.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance--c69512cf07fb9366515d40ac.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [coprime_iff_gcd_eq_one](declarations/coprime-iff-gcd-eq-one--a0583d3220cbe8a532d8ee34.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Coprime.gcd_eq_one](declarations/coprime-gcd-eq-one--2e96faf4a3d89e32bd5e33bd.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Coprime.symm](declarations/coprime-symm--9fb2577ec09aa6b62ab13207.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coprime_comm](declarations/coprime-comm--aaff9b36ef1307a5318a69eb.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Coprime.dvd_of_dvd_mul_right](declarations/coprime-dvd-of-dvd-mul-right--f795c1df8b901368cf8ec2e1.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Coprime.dvd_of_dvd_mul_left](declarations/coprime-dvd-of-dvd-mul-left--5e39ed329f0348909ca67f38.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [Coprime.gcd_mul_left_cancel](declarations/coprime-gcd-mul-left-cancel--b5a0c024b5898dc2166319ee.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [Coprime.gcd_mul_right_cancel](declarations/coprime-gcd-mul-right-cancel--c25fefd6ac2d4169868ead7b.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Coprime.gcd_mul_left_cancel_right](declarations/coprime-gcd-mul-left-cancel-right--659fa455fab5703a7a9e417b.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Coprime.gcd_mul_right_cancel_right](declarations/coprime-gcd-mul-right-cancel-right--8b9797b000addf1918349616.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [coprime_div_gcd_div_gcd](declarations/coprime-div-gcd-div-gcd--31066bc975fc4d196529de2e.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [not_coprime_of_dvd_of_dvd](declarations/not-coprime-of-dvd-of-dvd--82c0bfa560836690cf859ad7.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [exists_coprime](declarations/exists-coprime--0da4d351561e4ea190d0b1f3.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [exists_coprime'](declarations/exists-coprime--fd569c165dc37385634b3cd1.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Coprime.mul](declarations/coprime-mul--bcf40d78efb0958883aac975.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Coprime.mul_right](declarations/coprime-mul-right--a5cae2694b524ac674bee0dc.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Coprime.coprime_dvd_left](declarations/coprime-coprime-dvd-left--a7284e94387c1749a4a3e594.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Coprime.coprime_dvd_right](declarations/coprime-coprime-dvd-right--ca7a507c73e1fa3f549a31ce.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Coprime.coprime_mul_left](declarations/coprime-coprime-mul-left--6101243c336f0cf97862842d.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Coprime.coprime_mul_right](declarations/coprime-coprime-mul-right--03c0e3f719ea87dd2631d6c7.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [Coprime.coprime_mul_left_right](declarations/coprime-coprime-mul-left-right--cb5c95d41dcbca4ba3c2279f.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [Coprime.coprime_mul_right_right](declarations/coprime-coprime-mul-right-right--948d46638addad83fa7ac0f1.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [Coprime.coprime_div_left](declarations/coprime-coprime-div-left--44b6f5b47af4828598a5e861.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [Coprime.coprime_div_right](declarations/coprime-coprime-div-right--87343dbf2f7b3386affafd48.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [coprime_mul_iff_left](declarations/coprime-mul-iff-left--0817b97da35312be159a18f0.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [coprime_mul_iff_right](declarations/coprime-mul-iff-right--55cc5745fa216e8020a5d253.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Coprime.gcd_left](declarations/coprime-gcd-left--d6656883d7c49f4a83595758.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [Coprime.gcd_right](declarations/coprime-gcd-right--01ba16c799d3ac476225ddb2.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [Coprime.gcd_both](declarations/coprime-gcd-both--ea25289f9ebef961af88ef5b.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [Coprime.mul_dvd_of_dvd_of_dvd](declarations/coprime-mul-dvd-of-dvd-of-dvd--010c6552b0de4967f47f2422.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [coprime_zero_left](declarations/coprime-zero-left--a6aafd7f05b8ed20fde39e4b.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [coprime_zero_right](declarations/coprime-zero-right--6e2cdf4ab8f188af4b7ea399.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [coprime_one_left](declarations/coprime-one-left--a086b83361bd08739ec0427b.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [coprime_one_right](declarations/coprime-one-right--a992d9f4195e967566b689d1.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [coprime_one_left_eq_true](declarations/coprime-one-left-eq-true--6e919942164489d5f4cf472e.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [coprime_one_right_eq_true](declarations/coprime-one-right-eq-true--3fe48c6db8e77ac89c9940d3.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [coprime_self](declarations/coprime-self--346a34227dc9dde607a37ef3.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [Coprime.pow_left](declarations/coprime-pow-left--27862b45fcf35cce6de9fb20.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [Coprime.pow_right](declarations/coprime-pow-right--240166f581d33d2d4ad1bf2d.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [Coprime.pow](declarations/coprime-pow--c26270571b2674da16c84984.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [Coprime.eq_one_of_dvd](declarations/coprime-eq-one-of-dvd--cc0a8d1085dd9ea5f9621310.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [prod_dvd_and_dvd_of_dvd_prod](declarations/prod-dvd-and-dvd-of-dvd-prod--99172698b8619a528a7b8329.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [gcd_mul_dvd_mul_gcd](declarations/gcd-mul-dvd-mul-gcd--77174c7d8c5cf664777206e4.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Coprime.gcd_mul](declarations/coprime-gcd-mul--18a29bc3468d830f1fe1bd50.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [gcd_mul_gcd_of_coprime_of_mul_eq_mul](declarations/gcd-mul-gcd-of-coprime-of-mul-eq-mul--e4a9965b459b0b4e74fc7a23.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |

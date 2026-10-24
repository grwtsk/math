# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MinMax.Variantbcf0ebfd277e77330f4a228bc2425d66d4664fe469d241f27eeb55e30370d274

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**87 observed declarations and anonymous commands**, 80 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantbcf0ebfd277e77330f4a228bc2425d66d4664fe469d241f27eeb55e30370d274.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd19cc49825ac6982d62bc982709aa57d189e887`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantbcf0ebfd277e77330f4a228bc2425d66d4664fe469d241f27eeb55e30370d274.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [argAux](declarations/argaux--3e26d500f0050e704cb00ffe.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [foldl_argAux_eq_none](declarations/foldl-argaux-eq-none--c5fbf187f36c8b97e3b4205f.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [foldl_argAux_mem](declarations/foldl-argaux-mem--c09fee87de46c1c5bc28fb32.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [argAux_self](declarations/argaux-self--0d4bb974cebdb1e642ac0290.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [not_of_mem_foldl_argAux](declarations/not-of-mem-foldl-argaux--79c412a3ef1191cccdca10b6.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [argmax](declarations/argmax--eb4db75a62039fee579ce994.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [argmin](declarations/argmin--b016b67da5899bc11af28f8e.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [argmax_nil](declarations/argmax-nil--8e51aeda22217e813613695c.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [argmin_nil](declarations/argmin-nil--b70cffe33bb9d06288121934.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [argmax_singleton](declarations/argmax-singleton--44e0938c87bc9351af1c4ed9.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [argmin_singleton](declarations/argmin-singleton--303a61bcfdc90e10ca6ad78b.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [not_lt_of_mem_argmax](declarations/not-lt-of-mem-argmax--5f7c5fd5441dde8cec8e4033.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [not_lt_of_mem_argmin](declarations/not-lt-of-mem-argmin--b287026648551f54a5635625.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [argmax_concat](declarations/argmax-concat--3056cead1da2c454f10ead8f.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [argmin_concat](declarations/argmin-concat--bac20edd4dbc2e8d7d529138.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [argmax_mem](declarations/argmax-mem--9fd8ccf6d6920ec70b966eb7.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [argmin_mem](declarations/argmin-mem--5b06f065e33cc6abe7a21454.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [argmax_eq_none](declarations/argmax-eq-none--61cbf60b68e3e91ca820b8c3.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [argmin_eq_none](declarations/argmin-eq-none--0724016a942c95f2f788ba1c.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [le_of_mem_argmax](declarations/le-of-mem-argmax--56f87f7e5cc0ef9e59688154.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [le_of_mem_argmin](declarations/le-of-mem-argmin--9c8034e490ebb22fa7a1c4a6.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [argmax_cons](declarations/argmax-cons--6c6587eb66a1d41e9c57ef1e.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [argmin_cons](declarations/argmin-cons--c149cbbaadd7a10e4480dc72.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [index_of_argmax](declarations/index-of-argmax--075ba2f6c567a2fc167ee6c2.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [index_of_argmin](declarations/index-of-argmin--7c34630733793135ecd4672c.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_argmax_iff](declarations/mem-argmax-iff--577b5709017fe6f705e8a277.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [argmax_eq_some_iff](declarations/argmax-eq-some-iff--8db0aa2e4abac0ebc1531be1.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_argmin_iff](declarations/mem-argmin-iff--27b4c934fb2a876ed8124240.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [argmin_eq_some_iff](declarations/argmin-eq-some-iff--49f02bf4ed943dfc6ee50bfb.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [maximum](declarations/maximum--9b14482d500e968718ff08c6.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [minimum](declarations/minimum--1618bddc7fa54461d125aa93.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [maximum_nil](declarations/maximum-nil--b87d7171d50888f6cc972643.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [minimum_nil](declarations/minimum-nil--86cb58e527fa72f7a3573ecc.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [maximum_singleton](declarations/maximum-singleton--04fb6b747c4f7de2016042c5.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [minimum_singleton](declarations/minimum-singleton--bbd54fbde319e359a7882dc6.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [maximum_mem](declarations/maximum-mem--a81ef6bd69f0918e86805fd7.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [minimum_mem](declarations/minimum-mem--286aad8475cf6117352bb6e5.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [maximum_eq_bot](declarations/maximum-eq-bot--3771fae28d128e941df22529.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [minimum_eq_top](declarations/minimum-eq-top--0a2d39c822568e941af2e452.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [not_maximum_lt_of_mem](declarations/not-maximum-lt-of-mem--d265b4fe989d3d55d45eab81.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [not_lt_minimum_of_mem](declarations/not-lt-minimum-of-mem--b13fc6afb9276d5a3ff9350b.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [not_maximum_lt_of_mem'](declarations/not-maximum-lt-of-mem--403931f5e5c8bbda9a17d410.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [not_lt_minimum_of_mem'](declarations/not-lt-minimum-of-mem--210a6bbad89def98b16950ba.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [maximum_concat](declarations/maximum-concat--5df3d53b8f2f6f3ca6e57f14.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [le_maximum_of_mem](declarations/le-maximum-of-mem--b4bb56c4b4c707d286ad5d74.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [minimum_le_of_mem](declarations/minimum-le-of-mem--d5563b049422cec3200e0860.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [le_maximum_of_mem'](declarations/le-maximum-of-mem--fd7b5dec3bd498d9ff833578.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [minimum_le_of_mem'](declarations/minimum-le-of-mem--6c77156b0658b6a4508250d5.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [minimum_concat](declarations/minimum-concat--455298b8c54eb9d717c42660.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [maximum_cons](declarations/maximum-cons--8b3961062aa82f5373e1c9e8.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [minimum_cons](declarations/minimum-cons--43de534b531ada37ca0d672a.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [maximum_append](declarations/maximum-append--c1d27286189559f58a48760b.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [minimum_append](declarations/minimum-append--279585153771259cc6290aa6.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [maximum_le_of_forall_le](declarations/maximum-le-of-forall-le--2ffed407fb2e7856713f71e0.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [le_minimum_of_forall_le](declarations/le-minimum-of-forall-le--c8bc3af6e672ee2239dafb49.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [maximum_mono](declarations/maximum-mono--8c20de728e627349446846d0.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [minimum_anti](declarations/minimum-anti--6b13a6db35b748a212182119.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [maximum_eq_coe_iff](declarations/maximum-eq-coe-iff--65e55283f0d4eb7c921ac912.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [minimum_eq_coe_iff](declarations/minimum-eq-coe-iff--4c06a2369b3009705cd02da8.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [coe_le_maximum_iff](declarations/coe-le-maximum-iff--12a58574c6e381fbdc348f2d.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [minimum_le_coe_iff](declarations/minimum-le-coe-iff--c78afcdb47c27ca824f116b3.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [maximum_ne_bot_of_ne_nil](declarations/maximum-ne-bot-of-ne-nil--8d8071f508d064b49280a7d0.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [minimum_ne_top_of_ne_nil](declarations/minimum-ne-top-of-ne-nil--ba64b1d7fff5be12f62e3ad5.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [maximum_ne_bot_of_length_pos](declarations/maximum-ne-bot-of-length-pos--444c4520619c9a56d9aae3a1.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [minimum_ne_top_of_length_pos](declarations/minimum-ne-top-of-length-pos--a9052304ef9be7b96c572414.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [maximum_of_length_pos](declarations/maximum-of-length-pos--653626b8fa9b99ba9c73918a.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [minimum_of_length_pos](declarations/minimum-of-length-pos--39428453449840c957a519f4.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [coe_maximum_of_length_pos](declarations/coe-maximum-of-length-pos--040ae6e1fa915ae9a1a92b0f.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [coe_minimum_of_length_pos](declarations/coe-minimum-of-length-pos--628df1b447178986a4d89787.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [le_maximum_of_length_pos_iff](declarations/le-maximum-of-length-pos-iff--c47a1946d95d8866c7124c1a.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [minimum_of_length_pos_le_iff](declarations/minimum-of-length-pos-le-iff--581a5c6dea25a4f65dcbda52.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [maximum_of_length_pos_mem](declarations/maximum-of-length-pos-mem--da8793c5058501b85627223d.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [minimum_of_length_pos_mem](declarations/minimum-of-length-pos-mem--1246cc746bfcc023af2fa03a.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [le_maximum_of_length_pos_of_mem](declarations/le-maximum-of-length-pos-of-mem--21ef3b50a65fa76edab04614.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [minimum_of_length_pos_le_of_mem](declarations/minimum-of-length-pos-le-of-mem--6a3fad7d5a09e41bdd115dbf.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [getElem_le_maximum_of_length_pos](declarations/getelem-le-maximum-of-length-pos--bab354fdd89153bb69398181.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [minimum_of_length_pos_le_getElem](declarations/minimum-of-length-pos-le-getelem--66518699de18abd4b1d095f9.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [getD_max?_eq_unbotD_maximum](declarations/getd-max-eq-unbotd-maximum--a05dab6f97daa23c8c1ac873.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [getD_min?_eq_untopD_minimum](declarations/getd-min-eq-untopd-minimum--74dce0d6f7c126a8a4d41b12.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [foldr_max_of_ne_nil](declarations/foldr-max-of-ne-nil--290fcf8e68e4b6cdfac38fc9.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [max_le_of_forall_le](declarations/max-le-of-forall-le--7f5ffe94f4df3d13fd4d85ef.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [le_max_of_le](declarations/le-max-of-le--a71c2a7e7e2a50dff552e670.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [foldr_min_of_ne_nil](declarations/foldr-min-of-ne-nil--ac2ba88172f496903b9ce278.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [le_min_of_forall_le](declarations/le-min-of-forall-le--ab712d86d004a4ebb282094e.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [min_le_of_le](declarations/min-le-of-le--06aea4b3f1bf78c670ef65dd.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [le_max_of_le'](declarations/le-max-of-le--32f528c1280856985a6bf23e.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [min_le_of_le'](declarations/min-le-of-le--3f8baf40aff114ef32300a23.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |

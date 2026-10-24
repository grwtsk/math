# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MinMax.Variant1fee375de3251f1be20ba342a4b7d3b55ef687f6d13df55f0ba47733c8584f1b

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**87 observed declarations and anonymous commands**, 80 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant1fee375de3251f1be20ba342a4b7d3b55ef687f6d13df55f0ba47733c8584f1b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ac67c25a2583069b5aff7fdab671c9385a730de`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant1fee375de3251f1be20ba342a4b7d3b55ef687f6d13df55f0ba47733c8584f1b.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [argAux](declarations/argaux--6165ec4093994db5651b5320.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [foldl_argAux_eq_none](declarations/foldl-argaux-eq-none--26bc6651f52b90437fdda2cc.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [foldl_argAux_mem](declarations/foldl-argaux-mem--abc2a76fe99807ed29228f1d.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [argAux_self](declarations/argaux-self--15b2fa3b20f2df24d097e339.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [not_of_mem_foldl_argAux](declarations/not-of-mem-foldl-argaux--90e374cf1f31e2cbb2aee553.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [argmax](declarations/argmax--cccc53a81e06f67a36312b0d.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [argmin](declarations/argmin--3ad4b782cd2ca77f69891837.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [argmax_nil](declarations/argmax-nil--61a53251bdbf8758a4e99ea3.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [argmin_nil](declarations/argmin-nil--2eb7c2b245502526c99c95bd.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [argmax_singleton](declarations/argmax-singleton--736f6c53c869afb37ecf1408.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [argmin_singleton](declarations/argmin-singleton--67021f6632ac2236ba101413.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [not_lt_of_mem_argmax](declarations/not-lt-of-mem-argmax--249590bc47cf4c18f7c07eb9.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [not_lt_of_mem_argmin](declarations/not-lt-of-mem-argmin--af6d49b223279f35d4e2a82c.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [argmax_concat](declarations/argmax-concat--3d784092c186dd656c188620.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [argmin_concat](declarations/argmin-concat--91219fd4f29dedc87658af7d.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [argmax_mem](declarations/argmax-mem--c570d0dd9a736ee8673cf12d.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [argmin_mem](declarations/argmin-mem--aecec3e55286cbfed10f8105.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [argmax_eq_none](declarations/argmax-eq-none--93ad2f55d5339f95170f366e.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [argmin_eq_none](declarations/argmin-eq-none--7bd02e408c8a5bd31a909f5c.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [le_of_mem_argmax](declarations/le-of-mem-argmax--411bf61df2356a6f25730137.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [le_of_mem_argmin](declarations/le-of-mem-argmin--2911303f073d476ad354909b.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [argmax_cons](declarations/argmax-cons--44d8973eb64904c80148f4cf.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [argmin_cons](declarations/argmin-cons--c8c8b9174a85b3169f35511b.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [index_of_argmax](declarations/index-of-argmax--a78728cf9fa67ac402873d0d.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [index_of_argmin](declarations/index-of-argmin--48133ef5547e8957871c33ea.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_argmax_iff](declarations/mem-argmax-iff--74f8d168f9e6238d0f4e0cdc.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [argmax_eq_some_iff](declarations/argmax-eq-some-iff--c1a0d615ec0db2638409f3ba.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_argmin_iff](declarations/mem-argmin-iff--ccbde610a756d7b491c9b64e.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [argmin_eq_some_iff](declarations/argmin-eq-some-iff--4553e259eacf274275856f88.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [maximum](declarations/maximum--bb3e229925829b0990e391b6.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [minimum](declarations/minimum--052fad7913479f3a17696d5c.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [maximum_nil](declarations/maximum-nil--a1fbab22ad98827c6ad56d32.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [minimum_nil](declarations/minimum-nil--70aa17061c646e24d8279b5e.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [maximum_singleton](declarations/maximum-singleton--15fe53ccaef1f26c16f200e2.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [minimum_singleton](declarations/minimum-singleton--f7553dc36921699ce3a7233f.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [maximum_mem](declarations/maximum-mem--efb0b8a6844989804be4e241.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [minimum_mem](declarations/minimum-mem--3156085430da51e8452bb8bd.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [maximum_eq_bot](declarations/maximum-eq-bot--16d0ded8df60502374132e7c.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [minimum_eq_top](declarations/minimum-eq-top--8357fd3c8d8db2389a690b14.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [not_maximum_lt_of_mem](declarations/not-maximum-lt-of-mem--233784042a3512c7c3c64326.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [not_lt_minimum_of_mem](declarations/not-lt-minimum-of-mem--4cc84bc53dd904eadd6b2ca2.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [not_maximum_lt_of_mem'](declarations/not-maximum-lt-of-mem--e10d692060249cf7757570c4.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [not_lt_minimum_of_mem'](declarations/not-lt-minimum-of-mem--7a7e46522f7d211edf0a6fed.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [maximum_concat](declarations/maximum-concat--e3c1c73f6f1f79867026e672.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [le_maximum_of_mem](declarations/le-maximum-of-mem--c968c0b41421e983e78a19e7.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [minimum_le_of_mem](declarations/minimum-le-of-mem--6ad5a5f09b04f78e1a94c14b.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [le_maximum_of_mem'](declarations/le-maximum-of-mem--bbf25bc887fba46177e18ee5.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [minimum_le_of_mem'](declarations/minimum-le-of-mem--e41449e807c91d08509ade71.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [minimum_concat](declarations/minimum-concat--e42578197812c53376bcd890.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [maximum_cons](declarations/maximum-cons--80e3f7cf1be9b5b23ee19738.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [minimum_cons](declarations/minimum-cons--07d09c40be9dac7616aae9d0.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [maximum_append](declarations/maximum-append--0d02c1ecc4518b594a64eb78.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [minimum_append](declarations/minimum-append--378c2843f4bb364655fd22c7.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [maximum_le_of_forall_le](declarations/maximum-le-of-forall-le--574d4e5dad371b90ac777dd0.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [le_minimum_of_forall_le](declarations/le-minimum-of-forall-le--88057b7c3b9945037c49174f.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [maximum_mono](declarations/maximum-mono--6407eb0903d38cb189b3a63b.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [minimum_anti](declarations/minimum-anti--afc4120a32ba3077b9e3b378.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [maximum_eq_coe_iff](declarations/maximum-eq-coe-iff--cdd3c6b795181f307d5c519c.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [minimum_eq_coe_iff](declarations/minimum-eq-coe-iff--ee7490cd5454a2ae91795a34.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [coe_le_maximum_iff](declarations/coe-le-maximum-iff--afc965bc844653e869cd7807.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [minimum_le_coe_iff](declarations/minimum-le-coe-iff--f978ca9a4d1922e146797fa2.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [maximum_ne_bot_of_ne_nil](declarations/maximum-ne-bot-of-ne-nil--cade99116859deb22c600a92.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [minimum_ne_top_of_ne_nil](declarations/minimum-ne-top-of-ne-nil--2e21903903ee02c494786015.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [maximum_ne_bot_of_length_pos](declarations/maximum-ne-bot-of-length-pos--2319319ba0754f2828a72716.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [minimum_ne_top_of_length_pos](declarations/minimum-ne-top-of-length-pos--8fb835d782877876294ae0e2.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [maximum_of_length_pos](declarations/maximum-of-length-pos--a91d0ea3dfc80b80e9db0f07.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [minimum_of_length_pos](declarations/minimum-of-length-pos--6f20e3b4de7c19d54ceae98d.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [coe_maximum_of_length_pos](declarations/coe-maximum-of-length-pos--d3350e35ab6e9fd2eed8e332.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [coe_minimum_of_length_pos](declarations/coe-minimum-of-length-pos--70a89a0b3ecb32709f34e996.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [le_maximum_of_length_pos_iff](declarations/le-maximum-of-length-pos-iff--bfc4f72cce57327690fccaa8.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [minimum_of_length_pos_le_iff](declarations/minimum-of-length-pos-le-iff--e0ff7564ee21db0ce99c06cf.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [maximum_of_length_pos_mem](declarations/maximum-of-length-pos-mem--892a2651630da22df16b18ef.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [minimum_of_length_pos_mem](declarations/minimum-of-length-pos-mem--96c87a8c9ee74367e0b7d5f1.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [le_maximum_of_length_pos_of_mem](declarations/le-maximum-of-length-pos-of-mem--5fe398b94705e82af5412362.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [minimum_of_length_pos_le_of_mem](declarations/minimum-of-length-pos-le-of-mem--364a80d8da2916e1822d396b.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [getElem_le_maximum_of_length_pos](declarations/getelem-le-maximum-of-length-pos--58ef54359f087dcac46addcf.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [minimum_of_length_pos_le_getElem](declarations/minimum-of-length-pos-le-getelem--bf8c5d2808750f08a2c99e3d.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [getD_max?_eq_unbotD_maximum](declarations/getd-max-eq-unbotd-maximum--2cd31365d6218f141cdc91e3.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [getD_min?_eq_untopD_minimum](declarations/getd-min-eq-untopd-minimum--f1b67a38c0aff0f154bd3281.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [foldr_max_of_ne_nil](declarations/foldr-max-of-ne-nil--d21dce783d5f390eaa2bac33.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [max_le_of_forall_le](declarations/max-le-of-forall-le--d23414a970e2331ee0cf3d75.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [le_max_of_le](declarations/le-max-of-le--74553646f151c34c358fe2d8.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [foldr_min_of_ne_nil](declarations/foldr-min-of-ne-nil--832134e3da005bcb9b55a04e.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [le_min_of_forall_le](declarations/le-min-of-forall-le--b9dafd7689134056c4384032.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [min_le_of_le](declarations/min-le-of-le--65ad1f6acd7dba0b2819f5e7.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [le_max_of_le'](declarations/le-max-of-le--1709ec58050c750540e9e48f.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [min_le_of_le'](declarations/min-le-of-le--2d51564631fcac15ade432ac.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |

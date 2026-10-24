# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MinMax.Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7f4fac2232f8e44cd80f5c0fd5f328f1f5f2ac2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [argAux](declarations/argaux--3b1b5cde2ac7c88ba7195275.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [foldl_argAux_eq_none](declarations/foldl-argaux-eq-none--438cef4f7dd7b5a0bc791204.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [foldl_argAux_mem](declarations/foldl-argaux-mem--aeb235692fd0a06beebfae2a.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [argAux_self](declarations/argaux-self--56f03b3ff21dd40ae63fec69.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [not_of_mem_foldl_argAux](declarations/not-of-mem-foldl-argaux--331760efac502e12a0289588.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [argmax](declarations/argmax--caab2900bfc94055cbc22e81.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [argmax_nil](declarations/argmax-nil--3fd949ffffcc63e483529ef8.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [argmax_singleton](declarations/argmax-singleton--56c3c46839bf55eb5a571e49.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [not_lt_of_mem_argmax](declarations/not-lt-of-mem-argmax--d7d8824ca7d69265fdaf6e8f.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [argmax_concat](declarations/argmax-concat--21a23479622acca2b8c71d9c.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [argmax_mem](declarations/argmax-mem--85dbb8682d2d5bb5f5edf9da.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [argmax_eq_none](declarations/argmax-eq-none--2d195f2dbae01d5ece6085f0.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [le_of_mem_argmax](declarations/le-of-mem-argmax--e494b402afada60d2a91c56b.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [argmax_cons](declarations/argmax-cons--7470136b50cfa92b34aefc04.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [index_of_argmax](declarations/index-of-argmax--85c40e6e5431ec966050a2f5.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_argmax_iff](declarations/mem-argmax-iff--aa890d4d0b5951016822494e.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [argmax_eq_some_iff](declarations/argmax-eq-some-iff--c6b20c1f5df7ad170ca26237.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [maximum](declarations/maximum--fba07121e05f619e3ad6d194.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [maximum_nil](declarations/maximum-nil--68dec566df9b0408b44eae54.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [maximum_singleton](declarations/maximum-singleton--2d5398f85f6d188bdfada1b4.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [maximum_mem](declarations/maximum-mem--2e112d7fc4e60c432411b4ff.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [maximum_eq_bot](declarations/maximum-eq-bot--855d4dd34cc798103b9ade6c.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [not_maximum_lt_of_mem](declarations/not-maximum-lt-of-mem--756aff68d00099362798abd1.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [not_maximum_lt_of_mem'](declarations/not-maximum-lt-of-mem--61631a65bbe171893b1b51b6.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [maximum_concat](declarations/maximum-concat--f8393a3babc7bc32544bfd2c.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [le_maximum_of_mem](declarations/le-maximum-of-mem--c9ae1ce0f5a76dcd9fdb2e35.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [le_maximum_of_mem'](declarations/le-maximum-of-mem--2735a8239225dc35273e03cd.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [maximum_cons](declarations/maximum-cons--5bc2e240913ec147475e3a5a.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [maximum_append](declarations/maximum-append--90d4bbc41be99de7f8340d1e.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [maximum_le_of_forall_le](declarations/maximum-le-of-forall-le--0eae0c22875389b2f21a01c2.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [maximum_mono](declarations/maximum-mono--1e7b93043020558a47501939.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [maximum_eq_coe_iff](declarations/maximum-eq-coe-iff--13d1c6dec77d4f90e49d7ba8.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coe_le_maximum_iff](declarations/coe-le-maximum-iff--9a1f29440b67fd1c1f3b4755.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [maximum_ne_bot_of_ne_nil](declarations/maximum-ne-bot-of-ne-nil--fb6ba69d91c4aac6e5681834.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [maximum_ne_bot_of_length_pos](declarations/maximum-ne-bot-of-length-pos--316cc84963a80415343c3ed9.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [maximum_of_length_pos](declarations/maximum-of-length-pos--c322a180adecc3724f6158ed.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [coe_maximum_of_length_pos](declarations/coe-maximum-of-length-pos--068645e016e28430093ddee6.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [le_maximum_of_length_pos_iff](declarations/le-maximum-of-length-pos-iff--d037ef774f69296f75000367.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [maximum_of_length_pos_mem](declarations/maximum-of-length-pos-mem--14d62bd131dd59154f958692.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [le_maximum_of_length_pos_of_mem](declarations/le-maximum-of-length-pos-of-mem--491b100ba3e8e69c141dfd8e.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [getElem_le_maximum_of_length_pos](declarations/getelem-le-maximum-of-length-pos--b46c37aa1604afa4ff6adde9.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Perm.maximum_eq](declarations/perm-maximum-eq--06b56e96a440ee96eb2af950.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [getD_max?_eq_unbotD_maximum](declarations/getd-max-eq-unbotd-maximum--af34542e9adb35824cf2ac66.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [foldr_max_of_ne_nil](declarations/foldr-max-of-ne-nil--4fbdb1cdaa5d9d82c0834c02.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [max_le_of_forall_le](declarations/max-le-of-forall-le--418bbdb6376f7c4f7129aa85.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [le_max_of_le](declarations/le-max-of-le--fa2cdbe72a309217c9980191.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [le_max_of_le'](declarations/le-max-of-le--15560c1699370fa0ef61f56c.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |

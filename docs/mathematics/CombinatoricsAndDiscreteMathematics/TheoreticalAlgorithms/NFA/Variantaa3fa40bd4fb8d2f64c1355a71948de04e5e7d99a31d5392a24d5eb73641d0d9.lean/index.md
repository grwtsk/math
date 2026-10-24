# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NFA.Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a089b6d03ee441f5680e31f264248aeeb1e8e43`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [NFA](declarations/nfa--be06f731269c60d308329d45.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance--a1d6af7fe84fa3bf4e7576ad.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [stepSet](declarations/stepset--94c268c33742e3e6f53d6bbe.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_stepSet](declarations/mem-stepset--8dea58146e850cb94ae5c3ea.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [stepSet_empty](declarations/stepset-empty--2ee5f57b6c85dfd968775867.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [evalFrom](declarations/evalfrom--fde04159c92ec7e46198b5b0.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [evalFrom_nil](declarations/evalfrom-nil--68049c9ee4f13f9d59e49ed3.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [evalFrom_singleton](declarations/evalfrom-singleton--41b0f60417e61be1f93a7def.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [evalFrom_append_singleton](declarations/evalfrom-append-singleton--8db50b744c64eb849f746978.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [eval](declarations/eval--f0947d8826ac4fffa7a8bea0.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [eval_nil](declarations/eval-nil--3e7598a87e54537183e48a05.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eval_singleton](declarations/eval-singleton--e86f89d0ab6e5717b74af172.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [eval_append_singleton](declarations/eval-append-singleton--68ca961969d0294e572e2457.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [accepts](declarations/accepts--61c245fdf7d9d4d959619ef0.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_accepts](declarations/mem-accepts--04977da471f8beeb7cc45e55.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [toDFA](declarations/todfa--5bbc8c84efc56c0f3cf9147c.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [toDFA_correct](declarations/todfa-correct--a9cf77432e4aa04be1cc3f14.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [pumping_lemma](declarations/pumping-lemma--b0cc26b1d96a6d4eea829f2f.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [toNFA](declarations/tonfa--16434b2db4670defd10d986e.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toNFA_evalFrom_match](declarations/tonfa-evalfrom-match--e927b43aff88d42ae2e68774.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toNFA_correct](declarations/tonfa-correct--7940b5ae73e7fd050a515e7e.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [reverse](declarations/reverse--d3eab26b56b108a6a7e8ae7c.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [reverse_reverse](declarations/reverse-reverse--a6d926ab284cc6df0cd65fd6.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [disjoint_stepSet_reverse](declarations/disjoint-stepset-reverse--cb847709036278369c0855bc.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [disjoint_evalFrom_reverse](declarations/disjoint-evalfrom-reverse--206c7141cafa1facf79531f9.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [disjoint_evalFrom_reverse_iff](declarations/disjoint-evalfrom-reverse-iff--8a9f93c5d79f1e3f6b98dd5f.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_accepts_reverse](declarations/mem-accepts-reverse--89d83107a4b944cddfdec78f.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsRegular.reverse](declarations/isregular-reverse--b9fe58d059dddb3c70135166.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [IsRegular.of_reverse](declarations/isregular-of-reverse--9dd15115ed36f0144d88fc54.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isRegular_reverse_iff](declarations/isregular-reverse-iff--568e26c503e83552c31c12e3.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |

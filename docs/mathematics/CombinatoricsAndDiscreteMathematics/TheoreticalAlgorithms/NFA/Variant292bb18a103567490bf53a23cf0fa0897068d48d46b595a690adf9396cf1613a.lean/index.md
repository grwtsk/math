# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NFA.Variant292bb18a103567490bf53a23cf0fa0897068d48d46b595a690adf9396cf1613a

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variant292bb18a103567490bf53a23cf0fa0897068d48d46b595a690adf9396cf1613a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0684b2e47a30ed83b08f481c249f93416249176`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variant292bb18a103567490bf53a23cf0fa0897068d48d46b595a690adf9396cf1613a.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [NFA](declarations/nfa--8265193fc7f3f67aded0cff7.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance--ce864c1b6aeff54c2861e84f.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [stepSet](declarations/stepset--79bf9ab0629088e0d9a6a87a.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_stepSet](declarations/mem-stepset--27586fe3be9ac82c87679ee5.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [stepSet_empty](declarations/stepset-empty--547f9f69096e613735916bd3.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [stepSet_singleton](declarations/stepset-singleton--1194814c6fc42ed3837b6cc9.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [stepSet_union](declarations/stepset-union--c4ec0fc9a834ed1ad14fcb97.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [evalFrom](declarations/evalfrom--8492be3da2a18d2dbf5710e7.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [evalFrom_nil](declarations/evalfrom-nil--0f94ac133f351575bbdeae57.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [evalFrom_singleton](declarations/evalfrom-singleton--1eb6f349972a2813d16e47a9.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [evalFrom_cons](declarations/evalfrom-cons--74bae6511dbcf45d87dcd231.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [evalFrom_append](declarations/evalfrom-append--f9fab802111d472309fa4c19.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [evalFrom_union](declarations/evalfrom-union--886277f0b068abfea086ee3d.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [evalFrom_iUnion](declarations/evalfrom-iunion--41efecb09126c19b7ddd58e0.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [evalFrom_iUnion₂](declarations/evalfrom-iunion--27ef56fce551e79127895902.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [evalFrom_eq_biUnion_singleton](declarations/evalfrom-eq-biunion-singleton--635bf452dce268264406c5c2.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_evalFrom_iff_exists](declarations/mem-evalfrom-iff-exists--9751118726079c0d178ed589.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [acceptsFrom](declarations/acceptsfrom--67bd34cf3b0678b8be986c41.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mem_acceptsFrom](declarations/mem-acceptsfrom--7fa156737fff7ce537cdaf82.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [nil_mem_acceptsFrom](declarations/nil-mem-acceptsfrom--c224b9c3838621e2a1103e99.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [cons_mem_acceptsFrom](declarations/cons-mem-acceptsfrom--c47a87abcabf1c7b351461d6.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cons_preimage_acceptsFrom](declarations/cons-preimage-acceptsfrom--b8eedeeaa5fe0cb6adf03e7f.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [append_mem_acceptsFrom](declarations/append-mem-acceptsfrom--089e4f963ef7733d9468da6d.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [append_preimage_acceptsFrom](declarations/append-preimage-acceptsfrom--c1887cd42049873c306740dd.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [acceptsFrom_union](declarations/acceptsfrom-union--106a79056900712d06a4ca9d.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [acceptsFrom_iUnion](declarations/acceptsfrom-iunion--128405da27e70fefe3a1eefe.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [acceptsFrom_iUnion₂](declarations/acceptsfrom-iunion--69536ca6be236c0cd78a9ed9.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_acceptsFrom_sep_fact](declarations/mem-acceptsfrom-sep-fact--a1e48a37b4fcb61926823483.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [eval](declarations/eval--d69bb031ee6ef42de3cab5eb.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eval_nil](declarations/eval-nil--60b03d05a77c554c6fec1b61.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [eval_singleton](declarations/eval-singleton--d1fb73126bb527ba5158126f.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [eval_append_singleton](declarations/eval-append-singleton--dd7478b641de9abec5416d11.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [accepts](declarations/accepts--299fefb1e9b0f8646bfe7f31.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mem_accepts](declarations/mem-accepts--1a66c8b0ed6bc1b4de874918.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [accepts_eq_acceptsFrom_start](declarations/accepts-eq-acceptsfrom-start--f16857c65a722da35379de72.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `inductive` | [Path](declarations/path--e522869e74e22c10e522ab77.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Path.supp](declarations/path-supp--9c7a6ffbe8942bd0113a49ce.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mem_evalFrom_iff_nonempty_path](declarations/mem-evalfrom-iff-nonempty-path--d88d67da23eb59e9d2df9a27.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [accepts_iff_exists_path](declarations/accepts-iff-exists-path--4c735bf2f5cdfaa08e0c1d84.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [toDFA](declarations/todfa--e1365872851a19b31b5854d5.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [toDFA_correct](declarations/todfa-correct--a03f2b7b48ebf0129062d48d.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [pumping_lemma](declarations/pumping-lemma--eefae4b3483c1871a0022e8a.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [toNFA](declarations/tonfa--388247ce64e6e517b498cfc5.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [toNFA_evalFrom_match](declarations/tonfa-evalfrom-match--fe74e72000a3929469e6e590.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [toNFA_correct](declarations/tonfa-correct--42b44abc7a6a03aad1736b30.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [reverse](declarations/reverse--6380111fd04d97408639c956.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [reverse_reverse](declarations/reverse-reverse--37d0d06b3d6d316f3b0bbae8.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [disjoint_stepSet_reverse](declarations/disjoint-stepset-reverse--050bbd90ebe62fe198a1f1e4.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [disjoint_evalFrom_reverse](declarations/disjoint-evalfrom-reverse--c3c354103cd04d73581be896.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [disjoint_evalFrom_reverse_iff](declarations/disjoint-evalfrom-reverse-iff--0f307c45402963c2ed70e440.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mem_accepts_reverse](declarations/mem-accepts-reverse--993c1687f80b6d4a42bdba78.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [IsRegular.reverse](declarations/isregular-reverse--4fd1d58185687c0da73d4ef0.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [IsRegular.of_reverse](declarations/isregular-of-reverse--5c6f9df6f76d75c12c54dce6.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [isRegular_reverse_iff](declarations/isregular-reverse-iff--86c724c8fa576f4b17c16876.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |

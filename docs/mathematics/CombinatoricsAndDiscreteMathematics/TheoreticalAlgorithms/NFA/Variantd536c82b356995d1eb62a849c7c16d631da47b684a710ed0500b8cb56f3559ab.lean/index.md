# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NFA.Variantd536c82b356995d1eb62a849c7c16d631da47b684a710ed0500b8cb56f3559ab

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantd536c82b356995d1eb62a849c7c16d631da47b684a710ed0500b8cb56f3559ab.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9aa8c80ce31387ead641d9c2750f6e971243ce41`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantd536c82b356995d1eb62a849c7c16d631da47b684a710ed0500b8cb56f3559ab.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [NFA](declarations/nfa--110ae2851dda120776cae8bf.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance--4fb64ac8a54fd386543768ff.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [stepSet](declarations/stepset--4d6a4b8888a10984b9142195.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_stepSet](declarations/mem-stepset--d1a7f35d27ad6e0e4997c76e.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [stepSet_empty](declarations/stepset-empty--caa93997438a0a66beb24609.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [evalFrom](declarations/evalfrom--b209ad62dd99e6e983a829ec.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [evalFrom_nil](declarations/evalfrom-nil--92d03cc4d2d29506b880695c.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [evalFrom_singleton](declarations/evalfrom-singleton--eac44c949ee046179cc41b54.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [evalFrom_append_singleton](declarations/evalfrom-append-singleton--63fbfe9306d0451eceb3ad49.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [eval](declarations/eval--960a253970b925955e44d6e5.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [eval_nil](declarations/eval-nil--5c851fd6bf869a36b9bd3be7.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eval_singleton](declarations/eval-singleton--d96c5828791aa10cc897b1d6.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [eval_append_singleton](declarations/eval-append-singleton--4e4f8b1ef6a6ef5388977c75.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [accepts](declarations/accepts--6bb021be3e0d90350e6e3b8e.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_accepts](declarations/mem-accepts--350b8d3ef6c885c53d77ad26.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [toDFA](declarations/todfa--e843d8445683b8ec6c8971c1.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [toDFA_correct](declarations/todfa-correct--ac38bb2fb6070d15c317f4fb.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [pumping_lemma](declarations/pumping-lemma--9b7dbe89921c345c4eb97470.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [toNFA](declarations/tonfa--229dc9b8a75569aa776cae9e.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toNFA_evalFrom_match](declarations/tonfa-evalfrom-match--000850e95e7d6544263cc9af.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toNFA_correct](declarations/tonfa-correct--a5bd1c2384e85a5c9759690a.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [reverse](declarations/reverse--82b4aaf1ca58ac0388297eff.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [reverse_reverse](declarations/reverse-reverse--2f54afdd7ecb104680b8d48c.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [disjoint_stepSet_reverse](declarations/disjoint-stepset-reverse--c1d93f0592d29c7d92e600fc.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [disjoint_evalFrom_reverse](declarations/disjoint-evalfrom-reverse--5afbd94b5d012c61125442a9.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [disjoint_evalFrom_reverse_iff](declarations/disjoint-evalfrom-reverse-iff--73d4b02efaf8dee92d052741.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_accepts_reverse](declarations/mem-accepts-reverse--e56aa7195f2ed7b774eb2709.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsRegular.reverse](declarations/isregular-reverse--f56a51345fda7e059a9c8f3e.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [IsRegular.of_reverse](declarations/isregular-of-reverse--8be623ec6487ac42edd75567.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isRegular_reverse_iff](declarations/isregular-reverse-iff--e839e32c9df2eddcdfec7b06.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |

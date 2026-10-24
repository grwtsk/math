# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NFA.Variant42d15719f191c3125a1ec01be3f655471469df419420fdb76ad87ac1b342ab02

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variant42d15719f191c3125a1ec01be3f655471469df419420fdb76ad87ac1b342ab02.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a4b9fb9d495f0599851f65b5faf0e0c92457bfe`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variant42d15719f191c3125a1ec01be3f655471469df419420fdb76ad87ac1b342ab02.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [NFA](declarations/nfa--a38483d8bc8f6411f1d0ea15.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance--a0c3227533aebf18680cf0a2.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [stepSet](declarations/stepset--11a4fd69e3f6fa5b13eaea4b.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_stepSet](declarations/mem-stepset--6117d532163758ce49fc03fc.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [stepSet_empty](declarations/stepset-empty--b90d2bb75b0fc88e9c319746.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [stepSet_singleton](declarations/stepset-singleton--1e5947df6240640d5040ecba.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [stepSet_union](declarations/stepset-union--7287f3dd3b874a22bfe028a3.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [evalFrom](declarations/evalfrom--a15510645dd77e0aa86ce271.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [evalFrom_nil](declarations/evalfrom-nil--a06fb1f28f9fbb08336dbfd2.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [evalFrom_singleton](declarations/evalfrom-singleton--d7d05ea0e11b2cde85df03ef.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [evalFrom_cons](declarations/evalfrom-cons--9460a07d0cc7d10cde4f1660.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [evalFrom_append](declarations/evalfrom-append--6798e0ddbe498c9c7800d042.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [evalFrom_union](declarations/evalfrom-union--916c2a3593785c4fb649460c.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [evalFrom_iUnion](declarations/evalfrom-iunion--d63bafdc493a5788d99c8e17.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [evalFrom_iUnion₂](declarations/evalfrom-iunion--4ba680d0e1c850cbc464b5a8.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [evalFrom_eq_biUnion_singleton](declarations/evalfrom-eq-biunion-singleton--a44383d1f6d8de50b756d440.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_evalFrom_iff_exists](declarations/mem-evalfrom-iff-exists--74f5abf9a2fa5d72398be51d.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [acceptsFrom](declarations/acceptsfrom--bbd95cd2f9b2ec053e921a7f.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mem_acceptsFrom](declarations/mem-acceptsfrom--7a11e489b6b44bd48bc35d86.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [nil_mem_acceptsFrom](declarations/nil-mem-acceptsfrom--6ba9f938955836b923639cb1.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [cons_mem_acceptsFrom](declarations/cons-mem-acceptsfrom--99383f012beaa064ee0ba801.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cons_preimage_acceptsFrom](declarations/cons-preimage-acceptsfrom--913ab82df09e7affa5837c68.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [append_mem_acceptsFrom](declarations/append-mem-acceptsfrom--77934032234d45142625f264.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [append_preimage_acceptsFrom](declarations/append-preimage-acceptsfrom--9839723dbc4de5ee4650846f.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [acceptsFrom_union](declarations/acceptsfrom-union--20077ff68e44327eb2834e2e.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [acceptsFrom_iUnion](declarations/acceptsfrom-iunion--2d4530da261efd0c6814009d.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [acceptsFrom_iUnion₂](declarations/acceptsfrom-iunion--49ea3d49e283ac4f7cf520b8.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_acceptsFrom_sep_fact](declarations/mem-acceptsfrom-sep-fact--aa66970ed1530610e0887f6c.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [eval](declarations/eval--2c0e3e12562389bbd31372b7.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eval_nil](declarations/eval-nil--888f3334995dc9205548836c.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [eval_singleton](declarations/eval-singleton--3743ff93ffd34fe17e571fe5.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [eval_append_singleton](declarations/eval-append-singleton--27d382b6662bf1d70ecbb783.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [accepts](declarations/accepts--081b7e0583f79d75fbb168f5.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mem_accepts](declarations/mem-accepts--0984212cff03e26e29e774a7.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [accepts_eq_acceptsFrom_start](declarations/accepts-eq-acceptsfrom-start--97bc1a618161de83a32cdcfb.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `inductive` | [Path](declarations/path--6f70ccd1f564a1dc3c477748.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Path.supp](declarations/path-supp--2e80a2762de9879673f55fc5.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mem_evalFrom_iff_nonempty_path](declarations/mem-evalfrom-iff-nonempty-path--d8684f7616fbc232ffb72c70.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [accepts_iff_exists_path](declarations/accepts-iff-exists-path--97b364e512f15a7fdac29731.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [toDFA](declarations/todfa--a995cb88faa9758ff8b3b4f4.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [toDFA_correct](declarations/todfa-correct--aae5b4708b139bb09c4b8660.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [pumping_lemma](declarations/pumping-lemma--c695bb21dd36cb2351af3ac2.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [toNFA](declarations/tonfa--4c11f5215e0c3d341d1a1477.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [toNFA_evalFrom_match](declarations/tonfa-evalfrom-match--faf28a1e46980d0e937e3310.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [toNFA_correct](declarations/tonfa-correct--4f72a6d09b2f33ff10dd1eb6.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [reverse](declarations/reverse--ab2ca949a083ea47503b5401.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [reverse_reverse](declarations/reverse-reverse--c6a4fed912fb746c5c31216c.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [disjoint_stepSet_reverse](declarations/disjoint-stepset-reverse--07b3f040444fabf96ca02ed9.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [disjoint_evalFrom_reverse](declarations/disjoint-evalfrom-reverse--b32ee646d96463eff89b4a5e.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [disjoint_evalFrom_reverse_iff](declarations/disjoint-evalfrom-reverse-iff--f4c174e15949bf3eabd3729c.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mem_accepts_reverse](declarations/mem-accepts-reverse--54548f505a593e42eb271c80.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [IsRegular.reverse](declarations/isregular-reverse--ce2bb5e8c202e4bbd93a515b.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [IsRegular.of_reverse](declarations/isregular-of-reverse--3052df6c7f6f4eb340e06612.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [isRegular_reverse_iff](declarations/isregular-reverse-iff--da2ada571b32e46f85ff18a3.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |

# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Arithcc.Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5067a00eac510d1599d2100e2d0ffe2e1d0c0fce`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Word](declarations/word--774652f70a0ad5a12a424a8e.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Identifier](declarations/identifier--3a4356f479cd22d3e7c8d4ee.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [Register](declarations/register--c5f5b29834a7be23383295b5.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Register.lt_succ_self](declarations/register-lt-succ-self--555c6b63fc221d84454095f9.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Register.le_of_lt_succ](declarations/register-le-of-lt-succ--37dd1eb466bfd0db856e5ca8.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [Expr](declarations/expr--90ed2cc10d0da9129b15ecdc.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [value](declarations/value--6c4efa3acf320b6e2b916831.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [Instruction](declarations/instruction--90b6e17cb2bd21957c10d2ec.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [State](declarations/state--b8d5ed2bc1527a781235b395.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance--c7cbd255c5b2a702167a3973.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [read](declarations/read--8382c0b7402290caa28a06c9.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [write](declarations/write--8a3b9e066b1934616a0ede4e.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [step](declarations/step--24bf9a9aa2ab6f2832c0c1aa.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [outcome](declarations/outcome--12c43ac9c4cbcac0e73485b0.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [outcome_append](declarations/outcome-append--3d9d225a195bc8782d9fc096.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [loc](declarations/loc--19e46519b7e817b63528325f.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [compile](declarations/compile--d69bad674ce3de04b4897154.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [StateEqRs](declarations/stateeqrs--d1a4150c519cf1352901db03.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [StateEqRs.refl](declarations/stateeqrs-refl--357970a5af8938c327c09332.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [StateEqRs.symm](declarations/stateeqrs-symm--8b2c86583a0f9c3218d3d12f.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [StateEqRs.trans](declarations/stateeqrs-trans--f27c600e0384f79ccb43593a.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [StateEq](declarations/stateeq--6191aaa24b931e485187fe7f.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [StateEq.refl](declarations/stateeq-refl--44f24570427e08abab8a4554.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [StateEq.symm](declarations/stateeq-symm--67ea8a0cc2136dbdb1da4f7b.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [StateEq.trans](declarations/stateeq-trans--5c31b4fce64b8aabb08346e7.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance--ef084fcbd8ba5b6a7c71ed95.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [StateEqStateEqRs.trans](declarations/stateeqstateeqrs-trans--81b367dbcafb46642ce79a2c.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance--1ef2e2860b114a4c26e465a1.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [stateEq_implies_write_eq](declarations/stateeq-implies-write-eq--2c5f72a6f897625877df902c.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [stateEqRs_implies_write_eq_rs](declarations/stateeqrs-implies-write-eq-rs--2f2644e59b9e4c5fbf7ee415.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [write_eq_implies_stateEq](declarations/write-eq-implies-stateeq--9d60ffad200b6c8a2c1bf41a.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [compiler_correctness](declarations/compiler-correctness--dac77969572464f015d9ac25.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `example` | [(anonymous)](declarations/example--d3cb3f00574835b5f70b7b4d.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |

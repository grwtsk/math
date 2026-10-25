# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Arithcc.Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c61891b1fecb532c0379b5a6e2a6c6c8bb04c0ed`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Word](declarations/word--b8dc1a327a4e407e4ed53782.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Identifier](declarations/identifier--7c2267757bdb2e69f48ce6e0.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Register](declarations/register--f085195c5ea976f01612992a.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Register.lt_succ_self](declarations/register-lt-succ-self--d8a12662e19b4bce045fa594.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Register.le_of_lt_succ](declarations/register-le-of-lt-succ--465c916f4b2cb3b50fb8820a.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [Expr](declarations/expr--82939b8f128542cced5e2b6b.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [value](declarations/value--63cc60aa88a1639f667c4084.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [Instruction](declarations/instruction--d4104ca0d644921a5e1d4bf4.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [State](declarations/state--e31bae379772221f220a058c.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance--7e05d07f4232f3884e6392ab.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [read](declarations/read--8e42049274826be8e2fdae7f.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [write](declarations/write--d9c9375126522453f7a9ed93.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [step](declarations/step--dcd42d2e24912849d906c357.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [outcome](declarations/outcome--3abf774492de53ee8bc71395.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [outcome_append](declarations/outcome-append--3fb78e2a3071e5500eb184ee.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [loc](declarations/loc--34b30abbda2b3b048bc5024c.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [compile](declarations/compile--e1ba23b2f6e3f7bdfbea4cda.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [StateEqRs](declarations/stateeqrs--24cbac6a6728575bdbb86323.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [StateEqRs.refl](declarations/stateeqrs-refl--5ad0a2a1b324fe4deedf5156.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [StateEqRs.symm](declarations/stateeqrs-symm--f99c88ced3e724f445b3666d.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [StateEqRs.trans](declarations/stateeqrs-trans--60a6fc8b5cf9bd90a5b57980.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [StateEq](declarations/stateeq--71653a3ee5b39a11cc7d7dc2.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [StateEq.refl](declarations/stateeq-refl--c1e01a84060b62d04ddffaf7.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [StateEq.symm](declarations/stateeq-symm--2c9b031b63a20561f30b2e9f.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [StateEq.trans](declarations/stateeq-trans--792475973f3c2cdb7dc7ca2d.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance--4e34d617a18aae7430196bf5.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [StateEqStateEqRs.trans](declarations/stateeqstateeqrs-trans--147d30cee542f7e3c2c3e80a.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance--ce6fe9a102d8b24b7282e8b7.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [stateEq_implies_write_eq](declarations/stateeq-implies-write-eq--086ad6c3c3a097009ee155d8.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [stateEqRs_implies_write_eq_rs](declarations/stateeqrs-implies-write-eq-rs--9a61b2197b43a23664985a1c.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [write_eq_implies_stateEq](declarations/write-eq-implies-stateeq--612b6d6f18cee9971c7c309c.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [compiler_correctness](declarations/compiler-correctness--8be697f8f867cd4135061a2c.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `example` | [(anonymous)](declarations/example--e85696338f6371cb425ad3eb.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |

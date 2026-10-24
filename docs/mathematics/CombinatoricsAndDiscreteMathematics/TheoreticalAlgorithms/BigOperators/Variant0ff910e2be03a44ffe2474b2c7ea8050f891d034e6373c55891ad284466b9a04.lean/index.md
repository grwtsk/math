# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BigOperators.Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 11 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `414386089cf7c6743b64069567eb52dd01c1fba3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Nat.UnifyZeroOrSuccResult](declarations/nat-unifyzeroorsuccresult--50ae8587c2271635f73330db.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Nat.unifyZeroOrSucc](declarations/nat-unifyzeroorsucc--c12a8b96a12d1c770a05b9a4.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [List.ProveNilOrConsResult](declarations/list-provenilorconsresult--8a8e204cf8aa9a5e851e951e.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [List.ProveNilOrConsResult.uncheckedCast](declarations/list-provenilorconsresult-uncheckedcast--1dfcc3e3560324ba83d720f7.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [List.ProveNilOrConsResult.eq_trans](declarations/list-provenilorconsresult-eq-trans--bb9a731aab6b96ed031de25b.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [List.range_zero'](declarations/list-range-zero--95e4c007b51b0dee6581048c.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [List.range_succ_eq_map'](declarations/list-range-succ-eq-map--8646026cc99cf8f5baaf999b.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [List.proveNilOrCons](declarations/list-provenilorcons--c42d0900d85f5ee1dba339be.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `inductive` | [Multiset.ProveZeroOrConsResult](declarations/multiset-provezeroorconsresult--59851720b2315c162aeeece5.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Multiset.ProveZeroOrConsResult.uncheckedCast](declarations/multiset-provezeroorconsresult-uncheckedcast--86662ae7cdc8ff23f131c6d0.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Multiset.ProveZeroOrConsResult.eq_trans](declarations/multiset-provezeroorconsresult-eq-trans--ef33f2f91743880326392c48.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [Multiset.insert_eq_cons](declarations/multiset-insert-eq-cons--fe9bf7bc53440cb0642c8cb7.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [Multiset.range_zero'](declarations/multiset-range-zero--2102d61df4c8952f87eb6b86.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [Multiset.range_succ'](declarations/multiset-range-succ--29532f0dc12d46b7a18c4a78.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Multiset.proveZeroOrCons](declarations/multiset-provezeroorcons--ce8c982a93b5bed3a9e74e3a.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `inductive` | [Finset.ProveEmptyOrConsResult](declarations/finset-proveemptyorconsresult--122eb194047291bc2c7c106a.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Finset.ProveEmptyOrConsResult.uncheckedCast](declarations/finset-proveemptyorconsresult-uncheckedcast--e229201061eba0266409e5a1.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Finset.ProveEmptyOrConsResult.eq_trans](declarations/finset-proveemptyorconsresult-eq-trans--3916d557d615ae5d64ccba24.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [Finset.insert_eq_cons](declarations/finset-insert-eq-cons--5d606a8d44aa21b747da13a9.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [Finset.range_zero'](declarations/finset-range-zero--caea0e9df20b7fc35cfe07ec.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [Finset.range_succ'](declarations/finset-range-succ--8fc3becfd80076d3f600f6ff.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [Finset.univ_eq_elems](declarations/finset-univ-eq-elems--9f949b809c5040860c2a0c9a.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Finset.proveEmptyOrCons](declarations/finset-proveemptyorcons--c119bd99ef40d89c50269dd9.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Result.eq_trans](declarations/result-eq-trans--4d7331acd47d1fad9c7691f8.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [Finset.sum_empty](declarations/finset-sum-empty--fc35d8c598a65327dd791df1.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [Finset.prod_empty](declarations/finset-prod-empty--dcdb257fcf07170a7a7946ea.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [evalFinsetBigop](declarations/evalfinsetbigop--49ce6dd0d1184450ce494040.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [evalFinsetProd](declarations/evalfinsetprod--2ed466769aff0d707422be38.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [evalFinsetSum](declarations/evalfinsetsum--fe291fd5d93101eb96f93f62.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |

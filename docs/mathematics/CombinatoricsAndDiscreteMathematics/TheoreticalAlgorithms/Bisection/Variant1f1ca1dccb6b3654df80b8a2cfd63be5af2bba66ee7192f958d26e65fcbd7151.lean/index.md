# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Bisection.Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**22 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `781efbca1cefe925ae0a4bb5573a26ee4e906ed4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BisectionResult](declarations/bisectionresult--609d52dec7c603e30c405296.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [candidates](declarations/candidates--8e478f9de68f3004d51fa008.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [statuses](declarations/statuses--323ba770bb1cbde0c4c1fa7a.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [bisectRootGo](declarations/bisectrootgo--d2b0d01f60e817755a7f9265.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [bisectRoot](declarations/bisectroot--eaadeb40c7bf972d28ef71aa.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [checkRootStatus_noRoot_implies_excludesZero](declarations/checkrootstatus-noroot-implies-excludeszero--45b6cc91beb91b86082c0532.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [checkRootStatus_hasRoot_implies_signChange](declarations/checkrootstatus-hasroot-implies-signchange--f7e4d90cd5788fc8a055ce72.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [BisectInv](declarations/bisectinv--28a8f31419d3061ccbbdab0d.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [SubIntervalInv](declarations/subintervalinv--c56b2d78b4fa2e9e418da2ce.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [bisect_inv_initial](declarations/bisect-inv-initial--be77cf00f3ec571994b51d1b.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [subinterval_inv_initial](declarations/subinterval-inv-initial--8f108f8f082acbd255282baa.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [bisect_inv_cons_hasRoot](declarations/bisect-inv-cons-hasroot--e79e0c2bcb1e117a46425ecd.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [bisect_inv_cons_other](declarations/bisect-inv-cons-other--161899fa3fe13f634c615872.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [bisect_inv_append](declarations/bisect-inv-append--f81fc3f7432d927e2cef28e6.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [subinterval_inv_append](declarations/subinterval-inv-append--afe341fc5b08dbe66652d712.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [subinterval_inv_cons](declarations/subinterval-inv-cons--cb6b020f669a23b259a919aa.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [bisect_subinterval](declarations/bisect-subinterval--de768dc58cf91b9de2a57b65.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [go_noRoot_not_in_output](declarations/go-noroot-not-in-output--0f7df4ad1f9f083c14b6b035.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [go_hasRoot_has_signChange](declarations/go-hasroot-has-signchange--df6c30cd3854b8c3bfc55daf.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [go_subinterval](declarations/go-subinterval--c94db97a17e31cc52656fcfc.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [bisectRoot_hasRoot_correct](declarations/bisectroot-hasroot-correct--05b205bd1700bd0b4df1ae18.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [bisectRoot_noRoot_correct](declarations/bisectroot-noroot-correct--6f61ac03362904685fe22c27.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |

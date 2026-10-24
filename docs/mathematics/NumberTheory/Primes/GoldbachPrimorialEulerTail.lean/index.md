# GRWTSK.NumberTheory.Primes.GoldbachPrimorialEulerTail

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc18a8b4f8e86ee7e3cb5a9c8ceded60e7105b31`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [goldbachPrimeCutoff_eq_primesLE](declarations/goldbachprimecutoff-eq-primesle--ff720fe64fa986af13092ea7.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [goldbachDenominatorCoefficientRangeSum](declarations/goldbachdenominatorcoefficientrangesum--2246665afae803ae00c1f863.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [goldbachPrimorialCoefficientDivisorSum](declarations/goldbachprimorialcoefficientdivisorsum--debacd0956461ab14a7b644a.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [goldbachPrimorialShortDivisors](declarations/goldbachprimorialshortdivisors--6d4c1704a4ec41bc29d15fb9.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [goldbachPrimorialTailDivisors](declarations/goldbachprimorialtaildivisors--b2689c13b602ac8c8b45c2e4.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [goldbachPrimorialShortCoefficientSum](declarations/goldbachprimorialshortcoefficientsum--4dba3ef7a082d47a75b4abb8.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [goldbachPrimorialCoefficientTail](declarations/goldbachprimorialcoefficienttail--ec76f82d0870ef275cd3f079.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [goldbachPrimorialCoefficientTailNorm](declarations/goldbachprimorialcoefficienttailnorm--41ee50959b2ee78e700aa443.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [goldbachFiniteCoefficientEulerProduct_eq_primorialDivisorSum](declarations/goldbachfinitecoefficienteulerproduct-eq-primorialdivisorsum--38b237b486d6be2fd62a331b.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [goldbachPrimorialCoefficientDivisorSum_eq_short_add_tail](declarations/goldbachprimorialcoefficientdivisorsum-eq-short-add-tail--6afe1602d515b32e4c178aa0.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [goldbachPrimorialShortDivisors_subset_denominatorRange](declarations/goldbachprimorialshortdivisors-subset-denominatorrange--a644841682b363bce06eec6c.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [squarefree_dvd_primorial_of_le](declarations/squarefree-dvd-primorial-of-le--c61499303242c91694fd3db4.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [goldbachPrimorialShortCoefficientSum_eq_denominatorRangeSum](declarations/goldbachprimorialshortcoefficientsum-eq-denominatorrangesum--6f903a2c8e2dfd2006e1dc2b.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [goldbachFiniteCoefficientEulerProduct_eq_range_add_tail](declarations/goldbachfinitecoefficienteulerproduct-eq-range-add-tail--0a90e1b1b24d10a390444b78.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [norm_goldbachPrimorialCoefficientTail_le](declarations/norm-goldbachprimorialcoefficienttail-le--d1af5ebaa3fb92ecd8265cc1.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [goldbachPrimorialCoefficientTailNorm_nonneg](declarations/goldbachprimorialcoefficienttailnorm-nonneg--f5935c529705d468c2c1bf47.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [goldbachFejerNegativeCoefficientPenalty](declarations/goldbachfejernegativecoefficientpenalty--19036868f837b3b0a5aa2a02.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [goldbachFejerCoreMain_le_windowUpper](declarations/goldbachfejercoremain-le-windowupper--cea98ad5d05c50d88e73f695.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [goldbachFejerNegativeCoefficientPenalty_nonneg](declarations/goldbachfejernegativecoefficientpenalty-nonneg--fa59609f2f1496bb13390d53.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [goldbachFejerDenominatorLowerTerm_eq_core_sub_penalty](declarations/goldbachfejerdenominatorlowerterm-eq-core-sub-penalty--874f3aa931e64f0eb0afed27.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [goldbachFejerDenominatorLowerSum_eq_core_mul_range_sub_penalty](declarations/goldbachfejerdenominatorlowersum-eq-core-mul-range-sub-penalty--cf627c8c2ba5094e72bc762e.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [goldbachFejerEulerTailError](declarations/goldbachfejereulertailerror--56c8f93092ba9a4d477be77a.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [goldbachFejerEulerTailError_nonneg](declarations/goldbachfejereulertailerror-nonneg--0cc742e61a225c5ca7436044.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [goldbachCoefficientTruncatedMainScale_sub_fejerEulerTailError_le](declarations/goldbachcoefficienttruncatedmainscale-sub-fejereulertailerror-le--0205e9f349c00debbfd75778.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [goldbachCount_pos_of_fejerEulerTail_certificate](declarations/goldbachcount-pos-of-fejereulertail-certificate--3e1f661ff7b7c28d05b07e31.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |

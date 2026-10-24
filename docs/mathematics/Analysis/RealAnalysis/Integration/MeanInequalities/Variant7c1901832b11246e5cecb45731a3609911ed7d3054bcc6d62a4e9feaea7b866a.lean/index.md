# GRWTSK.Analysis.RealAnalysis.Integration.MeanInequalities.Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**19 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c018b986246e2a0f21c5aa9a354844ec14d7f5cf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](declarations/macro-rules--f6ea9575179a020d9ae3e3f2.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [lintegral_mul_le_one_of_lintegral_rpow_eq_one](declarations/lintegral-mul-le-one-of-lintegral-rpow-eq-one--089937ef47936a84f20fd818.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [funMulInvSnorm](declarations/funmulinvsnorm--4ee8ed2d55eab1079b897c8d.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [fun_eq_funMulInvSnorm_mul_snorm](declarations/fun-eq-funmulinvsnorm-mul-snorm--34d8e78fea9c508ffbe0c8f2.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [funMulInvSnorm_rpow](declarations/funmulinvsnorm-rpow--820ec5619fc443ffb781db1c.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [lintegral_rpow_funMulInvSnorm_eq_one](declarations/lintegral-rpow-funmulinvsnorm-eq-one--e69fcc82eeae1c541d47f054.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [lintegral_mul_le_Lp_mul_Lq_of_ne_zero_of_ne_top](declarations/lintegral-mul-le-lp-mul-lq-of-ne-zero-of-ne-top--b3f6209662f1862c022683e9.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ae_eq_zero_of_lintegral_rpow_eq_zero](declarations/ae-eq-zero-of-lintegral-rpow-eq-zero--7814e270e8dc5714b0e049e6.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [lintegral_mul_eq_zero_of_lintegral_rpow_eq_zero](declarations/lintegral-mul-eq-zero-of-lintegral-rpow-eq-zero--6f0ed1d007dc881c1bf9edb7.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lintegral_mul_le_Lp_mul_Lq_of_ne_zero_of_eq_top](declarations/lintegral-mul-le-lp-mul-lq-of-ne-zero-of-eq-top--271abe8065d8a3aff998e109.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [lintegral_mul_le_Lp_mul_Lq](declarations/lintegral-mul-le-lp-mul-lq--a6d456910947266568058573.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lintegral_rpow_add_lt_top_of_lintegral_rpow_lt_top](declarations/lintegral-rpow-add-lt-top-of-lintegral-rpow-lt-top--b0a0ae04b181945691be5ec5.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lintegral_Lp_mul_le_Lq_mul_Lr](declarations/lintegral-lp-mul-le-lq-mul-lr--896c497d1ba30701d59401e2.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lintegral_mul_rpow_le_lintegral_rpow_mul_lintegral_rpow](declarations/lintegral-mul-rpow-le-lintegral-rpow-mul-lintegral-rpow--f1bee3c528cc98390b7ecabb.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lintegral_rpow_add_le_add_snorm_mul_lintegral_rpow_add](declarations/lintegral-rpow-add-le-add-snorm-mul-lintegral-rpow-add--bc8232c292f7a3996ab70c7c.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lintegral_Lp_add_le_aux](declarations/lintegral-lp-add-le-aux--e4da788523403c3cd12c39b2.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lintegral_Lp_add_le](declarations/lintegral-lp-add-le--02eda59f5d25536fc21d17da.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [lintegral_Lp_add_le_of_le_one](declarations/lintegral-lp-add-le-of-le-one--32173d3a9aeb338e451c9d8d.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [NNReal.lintegral_mul_le_Lp_mul_Lq](declarations/nnreal-lintegral-mul-le-lp-mul-lq--f065ddac1406da80ed674b48.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |

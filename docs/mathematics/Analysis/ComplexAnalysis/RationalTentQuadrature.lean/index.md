# GRWTSK.Analysis.Complex.RationalTentQuadrature

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Complex/RationalTentQuadrature.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e4fa3ab4ab41fee3eb210a4e33b318fa6709b73`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Trace](declarations/trace--2d2c1924969c8f5e7036f829.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [node](declarations/node--232ed6f731f15d6313f15cfa.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [mass](declarations/mass--9cbb0b3f6bbe8ed8b3bdeb3a.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [samples](declarations/samples--ebb05dc217a529027e76aabe.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [sampleValue](declarations/samplevalue--649d3716d52730121a170ad6.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [sampleError](declarations/sampleerror--354134ec9b61907a57ae3b79.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [terms](declarations/terms--717db6a962596a580b018d1d.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [meshError](declarations/mesherror--1c69a818f914705f6ca86899.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [nodeBudget](declarations/nodebudget--df24ad0a823e92bda4aeb57b.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [error](declarations/error--86bb258b5cadf909e0e8c201.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [output](declarations/output--9a0ffd5aca61af838ccb79d7.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Valid](declarations/valid--8c8d5a3eef70a8c81db258e9.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [instDecidableValid](declarations/instdecidablevalid--68f63d6387aa6efa0e27e052.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [check](declarations/check--22c086f5dbedd54d24153f3a.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [checkWithin](declarations/checkwithin--d821eda0bac4e3d6acc86657.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [check_iff_valid](declarations/check-iff-valid--cd5bcacb85324e8e87004304.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [cast_node](declarations/cast-node--05139398f40fe80dbdeb0fa0.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [cast_mass](declarations/cast-mass--8b7a70a148ae9d2e4f994f76.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mass_nonneg](declarations/mass-nonneg--d881179930d3ace06c50c76d.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [total_mass](declarations/total-mass--a859bd6274195e2ed8eac13f.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [length_terms](declarations/length-terms--0ea8f7b264ef1ad15f7a54eb.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [termAt_left](declarations/termat-left--0064ef4e58998ee78b96f44c.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [termAt_right](declarations/termat-right--a4e3ced71623228309066143.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [terms_interpretation](declarations/terms-interpretation--721dc760a601eb5b5edb81c9.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [samples_error](declarations/samples-error--8b5c8b4a71c065bd30f55b73.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [check_sound](declarations/check-sound--505ad365462091147a96f5f6.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [checkWithin_sound](declarations/checkwithin-sound--a1218c28dd7d7488b53b65f8.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [checked_lengths](declarations/checked-lengths--bb0a7e15b309ff91929ffc93.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [referenceSamples](declarations/referencesamples--37caa3581a7826185d329ff0.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [referenceTrace](declarations/referencetrace--67e1bd9f9893824e2ea79926.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [reference_sample](declarations/reference-sample--156e02dffea500bd6681cb1d.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [reference_checked](declarations/reference-checked--87019b5a5226baf8448a5657.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |

# GRWTSK.Algebra.LinearAlgebra.SpanRank.Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0a38c6cdbd59de5409ec9d89b7cd1e9b475cd3f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [spanRank](declarations/spanrank--d66d098cc066d035a3ee26f3.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [spanFinrank](declarations/spanfinrank--bcbeabaaa93f71acc76ecb70.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance--27f2f6324e32d1e599ad45e3.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [spanRank_toENat_eq_iInf_encard](declarations/spanrank-toenat-eq-iinf-encard--4179a59c39eae1ef4426edcb.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [spanRank_toENat_eq_iInf_finset_card](declarations/spanrank-toenat-eq-iinf-finset-card--943ae7234d044fda8edfd835.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [spanFinrank_eq_iInf](declarations/spanfinrank-eq-iinf--9defe8be05b47f339e15e240.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [spanRank_finite_iff_fg](declarations/spanrank-finite-iff-fg--71d5797ac7f7beec0f06f563.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [fg_iff_spanRank_eq_spanFinrank](declarations/fg-iff-spanrank-eq-spanfinrank--98141c58aa1248219e01f7fc.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [spanRank_span_le_card](declarations/spanrank-span-le-card--22d54110461f9cb96f3fbb50.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [spanFinrank_span_le_ncard_of_finite](declarations/spanfinrank-span-le-ncard-of-finite--5dc0dbf2ba893807be610272.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [exists_span_set_card_eq_spanRank](declarations/exists-span-set-card-eq-spanrank--5a054ffe3e8915cd28f03d9f.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [FG.exists_span_set_encard_eq_spanFinrank](declarations/fg-exists-span-set-encard-eq-spanfinrank--e0f3f1e5a9250a1e9e505801.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [FG.spanRank_le_iff_exists_span_set_card_le](declarations/fg-spanrank-le-iff-exists-span-set-card-le--8413cb5d4bcf81b1fba8cf48.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [spanRank_eq_zero_iff_eq_bot](declarations/spanrank-eq-zero-iff-eq-bot--8f4ca512f0edae99212edfea.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [spanRank_bot](declarations/spanrank-bot--82e2f1627aa4cf9f057aa300.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [generators](declarations/generators--db915ebff7a5d14f937fe194.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [generators_card](declarations/generators-card--07a9231b72b0b488bb4a5baa.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [FG.generators_ncard](declarations/fg-generators-ncard--b3d96ddc2656427071cbb890.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [FG.finite_generators](declarations/fg-finite-generators--82c83fd2df81b88d5e54cfdc.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [span_generators](declarations/span-generators--4324db68bde8ab99045fbdcf.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [FG.generators_mem](declarations/fg-generators-mem--b46cef0bdbb6b5b25c14f71e.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [spanRank_sup_le_sum_spanRank](declarations/spanrank-sup-le-sum-spanrank--6da0d6bc9177c4825f41233e.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [Basis.mk_eq_spanRank](declarations/basis-mk-eq-spanrank--277be6c2c454d85ef66e74d2.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rank_eq_spanRank_of_free](declarations/rank-eq-spanrank-of-free--b83f4aa6c06b01ac54bc3acc.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rank_le_spanRank](declarations/rank-le-spanrank--deff1e23ba71683ceb034059.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |

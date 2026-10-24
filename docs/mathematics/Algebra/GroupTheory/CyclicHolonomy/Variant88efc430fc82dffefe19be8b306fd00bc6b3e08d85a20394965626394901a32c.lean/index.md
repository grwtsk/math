# GRWTSK.Algebra.GroupTheory.CyclicHolonomy.Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5271aff56c2493cef936719e00a6bf53503b36c3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [cycleLength](declarations/cyclelength--7092e4200b7148f550bd4928.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [cycleLength_pos](declarations/cyclelength-pos--cd150a0226c32dc4c40285bd.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [card_coverPhase](declarations/card-coverphase--b49f37574bb0c1a8f7d7a51c.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [advance](declarations/advance--df2d0d2bf74d55ca1bf09639.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [successor_iterate_eq_advance](declarations/successor-iterate-eq-advance--1b7855145a5347774f27a1e9.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [advance_zero](declarations/advance-zero--09e56139341e0a12ca4a1199.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [advance_one](declarations/advance-one--9555102e942c7f1e3ace17a8.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [advance_succ](declarations/advance-succ--f43a2d9a2f689cd22a2ec18d.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [advance_successor](declarations/advance-successor--d162961caaa11af38fc93c8c.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [advance_add](declarations/advance-add--4e56a9e7918c73a2537956cc.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [advance_cycle](declarations/advance-cycle--7cc5557bede7bcab838fd6c7.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [advance_mod_cycle](declarations/advance-mod-cycle--ef27d7dcbe65aa127a00f5cc.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [advance_half](declarations/advance-half--5049f63361545e4bb90f7f9c.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [forwardProduct_add](declarations/forwardproduct-add--02f13329ec12698f238d5e48.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [forwardProduct_one](declarations/forwardproduct-one--0149f11efc7ba79d1b57a573.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [monodromy](declarations/monodromy--7606cc3f4a7215313b1ca186.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [forwardProduct_cycle_add](declarations/forwardproduct-cycle-add--75fd3b939c1b313ca5b0257c.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [holonomyGroupAt](declarations/holonomygroupat--9eafea71a3dc1d7f6e6453c4.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mem_holonomyGroupAt_iff](declarations/mem-holonomygroupat-iff--e496b9fd1d7cd65d65a3ba34.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [StepsInSubgroup](declarations/stepsinsubgroup--56f6f6dc5121c05be56d2e97.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [forwardProduct_mem_subgroup](declarations/forwardproduct-mem-subgroup--282821cb2f519a3bbe2ce3e8.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [monodromy_mem_subgroup](declarations/monodromy-mem-subgroup--458cb5686dd43c091933d3f3.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [transport_intertwines_monodromy](declarations/transport-intertwines-monodromy--7e09f3bbe3c28f8581d26be0.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [monodromy_advance_eq_conjugate](declarations/monodromy-advance-eq-conjugate--aaa4dbe960a6f92025b19e4c.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [monodromy_successor_eq_conjugate](declarations/monodromy-successor-eq-conjugate--78625300cebb7a1b2e6a7963.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [monodromy_successor_mem_of_mem_normalizer](declarations/monodromy-successor-mem-of-mem-normalizer--f820b2ad69b67a059544c6eb.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [monodromy_successor_mem_of_normal](declarations/monodromy-successor-mem-of-normal--e8ef20f85021d5f5b313665d.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [ClosesAfterCircuit](declarations/closesaftercircuit--131382bc6afc3952d4c3c834.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [closesAfterCircuit_iff_monodromy_fixed](declarations/closesaftercircuit-iff-monodromy-fixed--d5627a149714084f592595c8.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [IsParallelSection](declarations/isparallelsection--8756f57050937aef709c1f84.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [forwardProduct_apply_of_isParallelSection](declarations/forwardproduct-apply-of-isparallelsection--a46808827991a76bc079b953.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [isParallelSection_closesAfterCircuit](declarations/isparallelsection-closesaftercircuit--02222116eb9ec116724a959d.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [halfTransport](declarations/halftransport--aa4f0daf94b56bb16426742f.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [monodromy_eq_halfTransport_trans_self](declarations/monodromy-eq-halftransport-trans-self--da8006ad329de748605b4607.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [PathDecomposition](declarations/pathdecomposition--e9e4dd0a0846df450ed00c25.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [decomposeSteps](declarations/decomposesteps--cc733a8f3c8baa15e4840c34.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [decomposeSteps_recompose](declarations/decomposesteps-recompose--0a6841bca5887cb05dbc3f3c.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [forwardProduct_laps_add](declarations/forwardproduct-laps-add--f17b72fbc179bd78f79b3a08.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [forwardProduct_decomposition](declarations/forwardproduct-decomposition--83786bec26715b2e3a1e9efe.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `abbrev` | [OneLapIndex](declarations/onelapindex--0948704d240d7f0cc81635e0.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [oneLapStart](declarations/onelapstart--9342501c9ae2a1ae1499ad90.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [oneLapEnd](declarations/onelapend--13f18c76d90d8d550a9983fd.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [oneLapPhase](declarations/onelapphase--10b7ffae2baf67045afdf0d5.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [oneLapProduct](declarations/onelapproduct--05c73b02caa1b282540eac92.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [oneLapPhase_start](declarations/onelapphase-start--c74196745bc7b394aacc4732.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [oneLapPhase_end](declarations/onelapphase-end--6da84a400ec3857cc7c2d696.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [oneLapProduct_start](declarations/onelapproduct-start--becc6225ebde41ef341afd8f.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [oneLapProduct_end](declarations/onelapproduct-end--fde047b616878527be5ec43d.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |

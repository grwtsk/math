# GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIsoNat.Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `178cdccc09f1bfd2961ed486fadfa9115e492d77`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [natLT](declarations/natlt--0f08a711931b7c61246b6212.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coe_natLT](declarations/coe-natlt--76f50de498f6967cc4c9df3b.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [natGT](declarations/natgt--9c67373a5d6a7743650235a5.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [coe_natGT](declarations/coe-natgt--273901433aa5fde95b54581b.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [acc_iff_isEmpty_subtype_mem_range](declarations/acc-iff-isempty-subtype-mem-range--2cbf26232670cb90759a7479.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [not_acc](declarations/not-acc--27cd3e7b761455635426869d.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [wellFounded_iff_isEmpty](declarations/wellfounded-iff-isempty--1fae517c964b9f1d3ef6d190.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [not_wellFounded](declarations/not-wellfounded--5090fbe0e5ab7d97228c3492.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [not_strictAnti_of_wellFoundedLT](declarations/not-strictanti-of-wellfoundedlt--409e5b10ff25381364b07a4e.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [not_strictMono_of_wellFoundedGT](declarations/not-strictmono-of-wellfoundedgt--9832edee8887deba3aa21923.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [orderEmbeddingOfSet](declarations/orderembeddingofset--06f8aac237580de9f907336f.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Subtype.orderIsoOfNat](declarations/subtype-orderisoofnat--65f12a28d0402b634a6506bd.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coe_orderEmbeddingOfSet](declarations/coe-orderembeddingofset--1955f5c3b2bbedbc33c8187c.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [orderEmbeddingOfSet_apply](declarations/orderembeddingofset-apply--a47552f924a85d083f98096f.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Subtype.orderIsoOfNat_apply](declarations/subtype-orderisoofnat-apply--3216f65c28840179be6fad3c.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [orderEmbeddingOfSet_range](declarations/orderembeddingofset-range--790836f8e6d0b8b53ebdfec3.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [exists_subseq_of_forall_mem_union](declarations/exists-subseq-of-forall-mem-union--73e22e7f510240d07bf6eadb.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [exists_increasing_or_nonincreasing_subseq'](declarations/exists-increasing-or-nonincreasing-subseq--6abc97fe3b3e02d1ca90f26a.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [exists_increasing_or_nonincreasing_subseq](declarations/exists-increasing-or-nonincreasing-subseq--3bcf381eca8cdd3771695a6a.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Infinite.exists_strictMono_or_strictAnti](declarations/infinite-exists-strictmono-or-strictanti--7e6e6528576ee50d04cad237.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Finite.of_wellFoundedLT_of_wellFoundedGT](declarations/finite-of-wellfoundedlt-of-wellfoundedgt--8f7cf0e2064a990f235c32d6.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsChain.finite_of_wellFoundedLT_of_wellFoundedGT](declarations/ischain-finite-of-wellfoundedlt-of-wellfoundedgt--d25657cdd426720a5b745dea.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [wellFoundedGT_iff_monotone_chain_condition'](declarations/wellfoundedgt-iff-monotone-chain-condition--215ad1771ca281b4a1aac923.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [WellFoundedGT.monotone_chain_condition'](declarations/wellfoundedgt-monotone-chain-condition--ee2779c7273a984af8eb67c0.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [wellFoundedGT_iff_monotone_chain_condition](declarations/wellfoundedgt-iff-monotone-chain-condition--cff4b63e62cf2cbbd80fd6c1.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [WellFoundedGT.monotone_chain_condition](declarations/wellfoundedgt-monotone-chain-condition--002acccbbc590beb20eb8ba3.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [WellFoundedLT.antitone_chain_condition](declarations/wellfoundedlt-antitone-chain-condition--460dd97a34359d48d6f3cea0.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [monotonicSequenceLimitIndex](declarations/monotonicsequencelimitindex--2718c28350a994e8859b4cac.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [monotonicSequenceLimit](declarations/monotonicsequencelimit--6718e815fe661ed538c3ecda.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [le_monotonicSequenceLimit](declarations/le-monotonicsequencelimit--9cc939f8a112ff73d4ed561f.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [WellFoundedGT.iSup_eq_monotonicSequenceLimit](declarations/wellfoundedgt-isup-eq-monotonicsequencelimit--06477de5ce97545c92923c4b.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [WellFoundedGT.ciSup_eq_monotonicSequenceLimit](declarations/wellfoundedgt-cisup-eq-monotonicsequencelimit--e3512a8888f3558bce8f4891.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [exists_covBy_seq_of_wellFoundedLT_wellFoundedGT](declarations/exists-covby-seq-of-wellfoundedlt-wellfoundedgt--ba47f7a64a648f3e91ba204c.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [exists_covBy_seq_of_wellFoundedLT_wellFoundedGT_of_le](declarations/exists-covby-seq-of-wellfoundedlt-wellfoundedgt-of-le--a7c344b417436c73e4a50700.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |

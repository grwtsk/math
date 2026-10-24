# Verification target: GRWTSK.Topology.GeneralTopology.NewtonIdentities.Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "162ff87bb0c867897d0f1efa568abc8e43973c67",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `162ff87bb0c867897d0f1efa568abc8e43973c67`.

Source path: `GRWTSK/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pairMap](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/pairmap--08280cc03b6b52690b8064fb.md) | 71 | `declaration-track:08280cc03b6b52690b8064fb347874cb7f5b9293fb90d47df6745c7990b0c1bd` |
| 2 | `lemma` | [pairMap_ne_self](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/pairmap-ne-self--37e916e1883aeb0838de0879.md) | 74 | `result-track:37e916e1883aeb0838de087999146d9983276b3b99c09ff78fa014c7d9a499bf` |
| 3 | `lemma` | [pairMap_of_snd_mem_fst](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/pairmap-of-snd-mem-fst--38752e23a7681b23a65d11a9.md) | 79 | `result-track:38752e23a7681b23a65d11a9d761c74e985487fd17272a0824fd5c2c29dd9da4` |
| 4 | `lemma` | [pairMap_of_snd_notMem_fst](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/pairmap-of-snd-notmem-fst--2d4676de1ac77b7e8af2bc30.md) | 83 | `result-track:2d4676de1ac77b7e8af2bc30fed0eb21c9b02b27dda4dd737bf1a44ae1ca8f6b` |
| 5 | `theorem` | [pairMap_involutive](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/pairmap-involutive--5c32c34887b40ee31aaaab7f.md) | 88 | `result-track:5c32c34887b40ee31aaaab7f9578508866a6c32090e951281f24e73ba23214ef` |
| 6 | `def` | [pairs](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/pairs--3016675e46fed725c50033b0.md) | 99 | `declaration-track:3016675e46fed725c50033b0abcb5fc774ab52b385394dc33b3491c9e8d9b207` |
| 7 | `lemma` | [mem_pairs](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/mem-pairs--bf37449ae51d9a8379712fa5.md) | 103 | `result-track:bf37449ae51d9a8379712fa5b27ca05f0c18881a413be520674a986fff1595fa` |
| 8 | `def` | [weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/weight--ada035cc00d6341450b38062.md) | 107 | `declaration-track:ada035cc00d6341450b380625e3ff6acd647dfab0a0b0b88b84a2b8844c9bd1f` |
| 9 | `theorem` | [pairMap_mem_pairs](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/pairmap-mem-pairs--1c023a10f5cdb1aecdd4c548.md) | 110 | `result-track:1c023a10f5cdb1aecdd4c54866c76833fd3a5cef6bdf753f2ddef708a11a94b3` |
| 10 | `theorem` | [weight_add_weight_pairMap](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/weight-add-weight-pairmap--8766f604ee8b1b022c30042c.md) | 127 | `result-track:8766f604ee8b1b022c30042c14b8d59ca85faac449212b01c685805ed734b3e8` |
| 11 | `theorem` | [weight_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/weight-sum--ca53269b803ff2b05f445edf.md) | 151 | `result-track:ca53269b803ff2b05f445edf3fab5ee2bcd691af511c866c13720bba7bc1c5c1` |
| 12 | `theorem` | [sum_filter_pairs_eq_sum_powersetCard_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/sum-filter-pairs-eq-sum-powersetcard-sum--271ee71a77aa3741bfa391c4.md) | 156 | `result-track:271ee71a77aa3741bfa391c4bc7052266003412c25c54efe1906e05185c6c2b7` |
| 13 | `theorem` | [sum_filter_pairs_eq_sum_powersetCard_mem_filter_antidiagonal_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/sum-filter-pairs-eq-sum-powersetcard-mem-filter-antidiagonal-sum--54f5aae84966c9e0e1f8c49b.md) | 162 | `result-track:54f5aae84966c9e0e1f8c49b6d74622ce2e5b07d3cd1f7b3631973ac57deb8a6` |
| 14 | `lemma` | [filter_pairs_lt](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/filter-pairs-lt--ce9bfdc32de1b62ce52604f3.md) | 172 | `result-track:ce9bfdc32de1b62ce52604f3389294140f0b498a12759cd735026f1d056ed4dd` |
| 15 | `theorem` | [sum_filter_pairs_eq_sum_filter_antidiagonal_powersetCard_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/sum-filter-pairs-eq-sum-filter-antidiagonal-powersetcard-sum--1617cf5bd79d06c51d87e854.md) | 178 | `result-track:1617cf5bd79d06c51d87e854ed4a5fca45ca6aa72879a6df0e99f1c3b05a0058` |
| 16 | `theorem` | [disjoint_filter_pairs_lt_filter_pairs_eq](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/disjoint-filter-pairs-lt-filter-pairs-eq--3edc5fec78d2ba61f26e6125.md) | 186 | `result-track:3edc5fec78d2ba61f26e61254c80fb449bd99ffe5b2eb042150577c05d32f7dd` |
| 17 | `theorem` | [disjUnion_filter_pairs_eq_pairs](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/disjunion-filter-pairs-eq-pairs--54890d920a9839c6ae3bbeb2.md) | 191 | `result-track:54890d920a9839c6ae3bbeb281151d3fc71d9da20ad1d1577b4ee4cc2c6c62eb` |
| 18 | `theorem` | [esymm_summand_to_weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/esymm-summand-to-weight--c15fdda06d6a09c43d2a254b.md) | 200 | `result-track:c15fdda06d6a09c43d2a254ba538ee201073432ae660d1d751d95475f4150c35` |
| 19 | `theorem` | [esymm_to_weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/esymm-to-weight--6ff4be5c604d9da19287db7a.md) | 204 | `result-track:6ff4be5c604d9da19287db7ac94a531a5700f35ccb74c50e31e2405eed55975c` |
| 20 | `theorem` | [esymm_mul_psum_summand_to_weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/esymm-mul-psum-summand-to-weight--be113a05fc298152fced32fd.md) | 210 | `result-track:be113a05fc298152fced32fdaa076f354eed0eabada08ca84dfbaadaefd2b6ca` |
| 21 | `theorem` | [esymm_mul_psum_to_weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/esymm-mul-psum-to-weight--e0e4f30f0f2500ec90d2ff8c.md) | 220 | `result-track:e0e4f30f0f2500ec90d2ff8c2e5e31de388221b56622562038678625983523de` |
| 22 | `theorem` | [mul_esymm_eq_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/mul-esymm-eq-sum--7f9df143f2dfdd2bc202d097.md) | 232 | `result-track:7f9df143f2dfdd2bc202d097b4e17e3616120164f70365613da2dc639a7fffad` |
| 23 | `theorem` | [sum_antidiagonal_card_esymm_psum_eq_zero](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/sum-antidiagonal-card-esymm-psum-eq-zero--89b7a85c36f72a01eb5004bb.md) | 245 | `result-track:89b7a85c36f72a01eb5004bb5b9a8e9c417b1d8300d23c2d1f6a41f624789af1` |
| 24 | `theorem` | [psum_eq_mul_esymm_sub_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/declarations/psum-eq-mul-esymm-sub-sum--04075af2a341f24032e8a46e.md) | 256 | `result-track:04075af2a341f24032e8a46e720ad9f28f40ec51153292b9a8d29c90b2262d35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

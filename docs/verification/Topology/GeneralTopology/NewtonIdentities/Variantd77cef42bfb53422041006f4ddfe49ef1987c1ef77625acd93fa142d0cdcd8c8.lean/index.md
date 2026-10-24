# Verification target: GRWTSK.Topology.GeneralTopology.NewtonIdentities.Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcbf732c525dc09762ed377c84677068852da44d",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcbf732c525dc09762ed377c84677068852da44d`.

Source path: `GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean.json)

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
| 1 | `def` | [pairMap](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/pairmap--d789bfcb93a391ab3be59991.md) | 63 | `declaration-track:d789bfcb93a391ab3be59991ab649d33017ec7428d5ddf36d62e85e5fa069fca` |
| 2 | `lemma` | [pairMap_ne_self](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/pairmap-ne-self--667a2cd16e4fc7c28131bd23.md) | 66 | `result-track:667a2cd16e4fc7c28131bd23d0f136be8263c103e8c19f2cc96a5b1a01a26382` |
| 3 | `lemma` | [pairMap_of_snd_mem_fst](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/pairmap-of-snd-mem-fst--12218ef10888243751e3f37d.md) | 71 | `result-track:12218ef10888243751e3f37d7c6cc53fa83f6c57609f2da777b4af86f0a09ef8` |
| 4 | `lemma` | [pairMap_of_snd_notMem_fst](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/pairmap-of-snd-notmem-fst--0a07fc2e2b0342743be264db.md) | 75 | `result-track:0a07fc2e2b0342743be264dbdde9f7484746cf9fbbfc8db6e85f4c2566004dcb` |
| 5 | `theorem` | [pairMap_involutive](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/pairmap-involutive--94a83fb8db41afb71566f485.md) | 80 | `result-track:94a83fb8db41afb71566f485b328d98844b6a8fe83bc8b99401b3c8f51c1b5e3` |
| 6 | `def` | [pairs](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/pairs--70a233cba0eefb3fce7f9949.md) | 91 | `declaration-track:70a233cba0eefb3fce7f99492bbd953064d399a04f4f4ea21257d172e5850ee2` |
| 7 | `lemma` | [mem_pairs](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/mem-pairs--ac3da96a3c345c156eb71fb4.md) | 95 | `result-track:ac3da96a3c345c156eb71fb41f959e3943e59a8a396262a6664a3a2aba41dcd2` |
| 8 | `def` | [weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/weight--62dfcd0ab5ab16410efb34f7.md) | 99 | `declaration-track:62dfcd0ab5ab16410efb34f75909de4f199b03c27cce9d69169d273a8247d46f` |
| 9 | `theorem` | [pairMap_mem_pairs](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/pairmap-mem-pairs--e6d7d8a1a6bed90efb937998.md) | 102 | `result-track:e6d7d8a1a6bed90efb93799843bcfcacbe4477b01406925ff6f3882267ead7c3` |
| 10 | `theorem` | [weight_add_weight_pairMap](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/weight-add-weight-pairmap--82649b775f26c7fb3f15242c.md) | 119 | `result-track:82649b775f26c7fb3f15242ce0ef8747bfc007c534d3ac6bc089eb165960996d` |
| 11 | `theorem` | [weight_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/weight-sum--8ce101b2ef30f65cde8dee97.md) | 143 | `result-track:8ce101b2ef30f65cde8dee97615f29ce6f9c0ead48abf860b439d3b41024fada` |
| 12 | `theorem` | [sum_filter_pairs_eq_sum_powersetCard_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/sum-filter-pairs-eq-sum-powersetcard-sum--3a8ef918fb534efc146ae50e.md) | 148 | `result-track:3a8ef918fb534efc146ae50e75686dce703c733b54e8703061e346d5ae073d97` |
| 13 | `theorem` | [sum_filter_pairs_eq_sum_powersetCard_mem_filter_antidiagonal_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/sum-filter-pairs-eq-sum-powersetcard-mem-filter-antidiagonal-sum--fa7c6418ffab181f3708d839.md) | 154 | `result-track:fa7c6418ffab181f3708d839f7d1e0399d29003a03fcce398355a2b3ffb7bc0f` |
| 14 | `lemma` | [filter_pairs_lt](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/filter-pairs-lt--fed8542d71777fa499dec47b.md) | 164 | `result-track:fed8542d71777fa499dec47be19d928e9b3520de13cd209a38911d034b0abc73` |
| 15 | `theorem` | [sum_filter_pairs_eq_sum_filter_antidiagonal_powersetCard_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/sum-filter-pairs-eq-sum-filter-antidiagonal-powersetcard-sum--526f2139738447a8995b0fee.md) | 170 | `result-track:526f2139738447a8995b0fee2358d53a592061d7e4b86b801067d21873ca06be` |
| 16 | `theorem` | [disjoint_filter_pairs_lt_filter_pairs_eq](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/disjoint-filter-pairs-lt-filter-pairs-eq--363498c7cd21151d8a6c96e9.md) | 178 | `result-track:363498c7cd21151d8a6c96e9b901cc7a9c9c4a15c30ae13174521186b750d5de` |
| 17 | `theorem` | [disjUnion_filter_pairs_eq_pairs](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/disjunion-filter-pairs-eq-pairs--49da9cff8bf653cc26996682.md) | 183 | `result-track:49da9cff8bf653cc2699668282c3d5143342c01d514e46821714fdf8dc9ae66c` |
| 18 | `theorem` | [esymm_summand_to_weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/esymm-summand-to-weight--bd9196f62a1b8aa85d6e2f1c.md) | 192 | `result-track:bd9196f62a1b8aa85d6e2f1c48694b366ecb6560a0004a2452c84d0a4eaab0e4` |
| 19 | `theorem` | [esymm_to_weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/esymm-to-weight--37d44b050965d9cf2b9a3309.md) | 196 | `result-track:37d44b050965d9cf2b9a3309874800d8cffd26f1fd33b6bddee890bd8ae0ec05` |
| 20 | `theorem` | [esymm_mul_psum_summand_to_weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/esymm-mul-psum-summand-to-weight--c3806bef995dbc65410a7aaf.md) | 202 | `result-track:c3806bef995dbc65410a7aafbb42a231bcc530228ce08379b9c1500771dab1c9` |
| 21 | `theorem` | [esymm_mul_psum_to_weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/esymm-mul-psum-to-weight--d24213b04bc7eb0d4ed667b9.md) | 212 | `result-track:d24213b04bc7eb0d4ed667b9e01d4623f38dd6413f5c3d9d90ff756417b8d4eb` |
| 22 | `theorem` | [mul_esymm_eq_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/mul-esymm-eq-sum--0cada238b45583affdd5f3f7.md) | 224 | `result-track:0cada238b45583affdd5f3f793d4f8825c5cd3c2fee523126c0c51402c34b5ce` |
| 23 | `theorem` | [sum_antidiagonal_card_esymm_psum_eq_zero](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/sum-antidiagonal-card-esymm-psum-eq-zero--606d82b6a81dac3805466d71.md) | 237 | `result-track:606d82b6a81dac3805466d71ed4695a18021aee2e6218d352db3b19a5458429c` |
| 24 | `theorem` | [psum_eq_mul_esymm_sub_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/declarations/psum-eq-mul-esymm-sub-sum--c60495f9e7da0a62c9449cd2.md) | 248 | `result-track:c60495f9e7da0a62c9449cd29766fe36aeb4c72a4c847da196f6e568db5e55f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

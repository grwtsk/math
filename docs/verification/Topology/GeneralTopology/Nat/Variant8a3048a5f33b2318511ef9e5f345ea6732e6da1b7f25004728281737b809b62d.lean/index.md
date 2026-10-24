# Verification target: GRWTSK.Topology.GeneralTopology.Nat.Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b92537d89cef01dfc81ab622c8f8897abad42293",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b92537d89cef01dfc81ab622c8f8897abad42293`.

Source path: `GRWTSK/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Antidiag.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instHasAntidiagonal](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/insthasantidiagonal--b5332efb4dafaa7a98766460.md) | 35 | `declaration-track:b5332efb4dafaa7a98766460e4cbe1979c12abe2c3761528a49de3bfd7858cef` |
| 2 | `def` | [finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/finmulantidiag--6a55ae35be3103f9c9f6e957.md) | 60 | `declaration-track:6a55ae35be3103f9c9f6e95731abe8fff4b99f70e17f9cdc84f5cb2feeb96322` |
| 3 | `theorem` | [mem_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/mem-finmulantidiag--3aa53c127309ca0f518918ac.md) | 68 | `result-track:3aa53c127309ca0f518918ac4dc6abdd63f74200b40b373110a61225fba4dc48` |
| 4 | `theorem` | [finMulAntidiag_zero_right](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/finmulantidiag-zero-right--f5a6f0f85304c9a2193ae3e5.md) | 89 | `result-track:f5a6f0f85304c9a2193ae3e5df927d3c84733d3285b3ae7bcf32c5a0c88c4e00` |
| 5 | `theorem` | [finMulAntidiag_one](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/finmulantidiag-one--230ba6e67204143760f91f96.md) | 92 | `result-track:230ba6e67204143760f91f96b0b8f24ceadc60d93edfe876459ff4f2de54103c` |
| 6 | `theorem` | [finMulAntidiag_zero_left](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/finmulantidiag-zero-left--b7ca49f225c7a4e707422495.md) | 103 | `result-track:b7ca49f225c7a4e707422495000021763612f8c7e41151adacdb5782634676de` |
| 7 | `theorem` | [dvd_of_mem_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/dvd-of-mem-finmulantidiag--728b1a6f7062937a935c03fc.md) | 108 | `result-track:728b1a6f7062937a935c03fc3c396aa8f16b6afee63219872d3361036fd69e8c` |
| 8 | `theorem` | [ne_zero_of_mem_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/ne-zero-of-mem-finmulantidiag--264cb6f4b13bc429889802ed.md) | 114 | `result-track:264cb6f4b13bc429889802ed699470d920a3908e6a831f9ad58cd56c1ec311fb` |
| 9 | `theorem` | [prod_eq_of_mem_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/prod-eq-of-mem-finmulantidiag--17ea18b55c11f7abea44023e.md) | 118 | `result-track:17ea18b55c11f7abea44023e5101361f13f98157262d2a1eded2e1038eae124a` |
| 10 | `theorem` | [finMulAntidiag_eq_piFinset_divisors_filter](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/finmulantidiag-eq-pifinset-divisors-filter--564cb0aa04e1d512dba6d818.md) | 122 | `result-track:564cb0aa04e1d512dba6d818b4321c9b1a70c619ee209bbbb56fb0db68ed5272` |
| 11 | `lemma` | [image_apply_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/image-apply-finmulantidiag--2313f4251a9307026ff728ad.md) | 135 | `result-track:2313f4251a9307026ff728ad76c5299d41d41dd9c4fe53bf6bea8d4b1dd6b751` |
| 12 | `lemma` | [image_piFinTwoEquiv_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/image-pifintwoequiv-finmulantidiag--50e725e462e6bef996409b68.md) | 161 | `result-track:50e725e462e6bef996409b6834c7383e47563735197ebc3b56f69452932a51a4` |
| 13 | `lemma` | [finMulAntidiag_existsUnique_prime_dvd](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/finmulantidiag-existsunique-prime-dvd--59c96ce4a4262102432aa191.md) | 166 | `result-track:59c96ce4a4262102432aa191c9e808accc1bbd73fa0deafc0293c4a529803b93` |
| 14 | `def` | [primeFactorsPiBij](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/primefactorspibij--90cf583412fd1327f450f271.md) | 185 | `declaration-track:90cf583412fd1327f450f2714328a538896f34c0f04a68a4d90c650d4fc4910a` |
| 15 | `theorem` | [primeFactorsPiBij_img](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/primefactorspibij-img--cf7a1ec4c2b678dcb45904bf.md) | 189 | `result-track:cf7a1ec4c2b678dcb45904bf2d9e4912e3807595dc17fbc30e69680d0eacfcc3` |
| 16 | `theorem` | [primeFactorsPiBij_inj](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/primefactorspibij-inj--0034579eedbe514c9ec84a28.md) | 199 | `result-track:0034579eedbe514c9ec84a28249c1cbe2ace7286117b96ca6f0b2765f2774407` |
| 17 | `theorem` | [primeFactorsPiBij_surj](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/primefactorspibij-surj--9bb3ae94c524e1f5dce6f38f.md) | 222 | `result-track:9bb3ae94c524e1f5dce6f38ff3b8a7c86a52c0bb1d3a7e4e7d18bc6e11bfe540` |
| 18 | `theorem` | [card_finMulAntidiag_pi](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/card-finmulantidiag-pi--69bcec567cdab9b2defea952.md) | 242 | `result-track:69bcec567cdab9b2defea952df762e8be02af367e017228e306f1e97bfc1698c` |
| 19 | `theorem` | [card_finMulAntidiag_of_squarefree](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/card-finmulantidiag-of-squarefree--08efca78edd7537c4f1d5cd0.md) | 248 | `result-track:08efca78edd7537c4f1d5cd086ab3d43fc355095371544646e0dbdfdb0cbd951` |
| 20 | `theorem` | [finMulAntidiag_three](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/finmulantidiag-three--d097484738fedc5923d2eab0.md) | 254 | `result-track:d097484738fedc5923d2eab00a0102eed24152ba800fa9a63d48e531173faf38` |
| 21 | `def` | [f](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/f--1198bff2fc264bfd40d1baba.md) | 264 | `declaration-track:1198bff2fc264bfd40d1babae26ac64ea640497114f3b5efff742e2f4cb2d1f9` |
| 22 | `theorem` | [f_img](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/f-img--c29e4ccf6bf3a05cad8baf10.md) | 266 | `result-track:c29e4ccf6bf3a05cad8baf1038b2c0bf5fe169b21acee8e5fb5315f55cd9ab3c` |
| 23 | `theorem` | [f_inj](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/f-inj--e8b2e0a327ff9911af60512c.md) | 279 | `result-track:e8b2e0a327ff9911af60512c379b7676f38c562c7a0d676288d15bdfdb131938` |
| 24 | `theorem` | [f_surj](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/f-surj--9a959ad20fc4354eec9aed8f.md) | 297 | `result-track:9a959ad20fc4354eec9aed8f07011c7c6571a1078a19f68cfd7040d1aeee4d6a` |
| 25 | `theorem` | [card_pair_lcm_eq](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant8a3048a5f33b2318511ef9e5f345ea6732e6da1b7f25004728281737b809b62d.lean/declarations/card-pair-lcm-eq--681ceb7ea0bf4b923742e235.md) | 320 | `result-track:681ceb7ea0bf4b923742e23526b4981ff6c760cb0fb4e03e301dc6284f4dcb04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

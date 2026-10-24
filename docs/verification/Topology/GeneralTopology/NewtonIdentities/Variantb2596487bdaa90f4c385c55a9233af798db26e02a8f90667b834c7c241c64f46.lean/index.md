# Verification target: GRWTSK.Topology.GeneralTopology.NewtonIdentities.Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "773db926f49a78b4497fa25e32e884194465082d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `773db926f49a78b4497fa25e32e884194465082d`.

Source path: `GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.CommRing` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Rename` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Parity` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Symmetric` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pairs](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/pairs--cbf0941a40d539fe280f6f08.md) | 68 | `declaration-track:cbf0941a40d539fe280f6f08ecde0674bf0ac12afe288201af6dd7c88b49cbf3` |
| 2 | `lemma` | [mem_pairs](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/mem-pairs--07cd3c47aac79efedbce6cfd.md) | 72 | `result-track:07cd3c47aac79efedbce6cfdc484331820ae028e588a35729e2bf62ae1c6dc61` |
| 3 | `def` | [weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/weight--4c13bca55b6e6dc138b1bd21.md) | 76 | `declaration-track:4c13bca55b6e6dc138b1bd2128e1e20bca8d534867c531e207d1177649e41721` |
| 4 | `def` | [pairMap](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/pairmap--568651c97d52630a28e30ad9.md) | 79 | `declaration-track:568651c97d52630a28e30ad9fadbac3ae2c573c001692f2f52f1e3df9b450a8d` |
| 5 | `lemma` | [pairMap_ne_self](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/pairmap-ne-self--88e6bdc740e76ab25ab6ef7c.md) | 82 | `result-track:88e6bdc740e76ab25ab6ef7ceb15e66676bb6a7bc49f45c3035a6e45b385032f` |
| 6 | `lemma` | [pairMap_of_snd_mem_fst](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/pairmap-of-snd-mem-fst--47437f03f8b2fd4f95248cad.md) | 87 | `result-track:47437f03f8b2fd4f95248cadb7c492df6166c039f66294c8ced55dd3ed3745ff` |
| 7 | `lemma` | [pairMap_of_snd_nmem_fst](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/pairmap-of-snd-nmem-fst--82bd97bc574d7eb1c7ebdf98.md) | 91 | `result-track:82bd97bc574d7eb1c7ebdf9825bc715d3f33003bc6b35d909bf95a3cb6d6a947` |
| 8 | `theorem` | [pairMap_mem_pairs](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/pairmap-mem-pairs--3241cfc8413ef5ff5ec6488d.md) | 95 | `result-track:3241cfc8413ef5ff5ec6488de42a704bfee1096971fbe7a30e3a4691564f4994` |
| 9 | `theorem` | [pairMap_involutive](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/pairmap-involutive--53cfeea4365c7612b5f27cdc.md) | 112 | `result-track:53cfeea4365c7612b5f27cdcc832e2df56a34491a3895252dbc6814d3e50a77e` |
| 10 | `theorem` | [weight_add_weight_pairMap](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/weight-add-weight-pairmap--20d7b3d099faf0b5a8053982.md) | 121 | `result-track:20d7b3d099faf0b5a8053982b0b0252a3055b2badb4699783481bf0283564320` |
| 11 | `theorem` | [weight_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/weight-sum--a8ad6824032f8025f5a18101.md) | 144 | `result-track:a8ad6824032f8025f5a18101a85fc5547b88145ad6ec71c2c7b9c89aa7b71171` |
| 12 | `theorem` | [sum_filter_pairs_eq_sum_powersetLen_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/sum-filter-pairs-eq-sum-powersetlen-sum--e0f5266c37f5d3d14fca7252.md) | 149 | `result-track:e0f5266c37f5d3d14fca7252cbf1daf016ccb96c0260534bd864d19f996f2e76` |
| 13 | `theorem` | [sum_filter_pairs_eq_sum_powersetLen_mem_filter_antidiagonal_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/sum-filter-pairs-eq-sum-powersetlen-mem-filter-antidiagonal-sum--10e4e883b3ea3233843ae0e6.md) | 156 | `result-track:10e4e883b3ea3233843ae0e69ff023570d4c5eb16a2edf430b9d391636d26735` |
| 14 | `theorem` | [sum_filter_pairs_eq_sum_filter_antidiagonal_powersetLen_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/sum-filter-pairs-eq-sum-filter-antidiagonal-powersetlen-sum--801642bfa96497920c0ba292.md) | 166 | `result-track:801642bfa96497920c0ba2927cb663f36131ee7262c5f43120bece7cdb54ddc9` |
| 15 | `theorem` | [disjoint_filter_pairs_lt_filter_pairs_eq](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/disjoint-filter-pairs-lt-filter-pairs-eq--dc179480fca906c76ccc3efb.md) | 199 | `result-track:dc179480fca906c76ccc3efb24fe53f090eff19b25b0633c77a707dde62ec33f` |
| 16 | `theorem` | [disjUnion_filter_pairs_eq_pairs](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/disjunion-filter-pairs-eq-pairs--a3202b2b973e9453edb18538.md) | 205 | `result-track:a3202b2b973e9453edb185384492666c63ac0ca20e1fa88607cf292c2e736f07` |
| 17 | `theorem` | [esymm_summand_to_weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/esymm-summand-to-weight--393ed7a2371be2a8a94ec511.md) | 216 | `result-track:393ed7a2371be2a8a94ec511b0fda1a1a0caf61ab0428af95ea15b53b51f3786` |
| 18 | `theorem` | [esymm_to_weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/esymm-to-weight--740782a4a392cc8fb73c7766.md) | 220 | `result-track:740782a4a392cc8fb73c776646c1877ff6f3c36cd6c46a95975984d713c338d6` |
| 19 | `theorem` | [esymm_mul_psum_summand_to_weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/esymm-mul-psum-summand-to-weight--af8c1679b6a69683acac7e44.md) | 226 | `result-track:af8c1679b6a69683acac7e44be647fc873ccba1eee3241a124c535588e4ccb41` |
| 20 | `theorem` | [esymm_mul_psum_to_weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/esymm-mul-psum-to-weight--329672f8d9c5f970f63e297f.md) | 236 | `result-track:329672f8d9c5f970f63e297f6697b55de83f3d2e450b8bf7f0e65184682b7963` |
| 21 | `theorem` | [mul_esymm_eq_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/mul-esymm-eq-sum--fed318fc463d00a799499ac8.md) | 247 | `result-track:fed318fc463d00a799499ac80ccd826c2e77edb7712df8625ad616bd691766cc` |
| 22 | `theorem` | [sum_antidiagonal_card_esymm_psum_eq_zero](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/sum-antidiagonal-card-esymm-psum-eq-zero--0971343bfe7de40e3b18c3dd.md) | 259 | `result-track:0971343bfe7de40e3b18c3dd0f6d1dc4657dea44045d4e1bc9d619277ca71179` |
| 23 | `theorem` | [psum_eq_mul_esymm_sub_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/declarations/psum-eq-mul-esymm-sub-sum--91aa01d68751fe683f11de03.md) | 270 | `result-track:91aa01d68751fe683f11de032be8bc12a19e1cec008e573508ae006580e71f79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

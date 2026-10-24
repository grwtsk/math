# Verification target: GRWTSK.Topology.GeneralTopology.Filter.Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42c809eeac98c1bcd787b78ed8afed43c8b61325",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42c809eeac98c1bcd787b78ed8afed43c8b61325`.

Source path: `GRWTSK/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Empty` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Filter` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/filter--b835df1acee8b97b2c0f2c50.md) | 48 | `declaration-track:b835df1acee8b97b2c0f2c50ed898adc1a43623822a0dbeb6fc69ab611ddd297` |
| 2 | `def` | [knownToBeFinsetNotSet](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/knowntobefinsetnotset--bdd501f18d5830032d72f6ac.md) | 58 | `declaration-track:bdd501f18d5830032d72f6ac77c5183fe7d7add01165df54984d3e3291d5f821` |
| 3 | `def` | [elabFinsetBuilderSep](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/elabfinsetbuildersep--a6b28226374f3bd018257388.md) | 91 | `declaration-track:a6b28226374f3bd018257388e2c6c72ce5054f1a6940f7f5974686dd6e80332d` |
| 4 | `theorem` | [filter_val](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/filter-val--6113fe41142677c32ef673ce.md) | 113 | `result-track:6113fe41142677c32ef673ce29c8745604bc16d35e3a69236f7186806854b233` |
| 5 | `theorem` | [filter_subset](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/filter-subset--0ee8492596fb07edaf3fbdef.md) | 117 | `result-track:0ee8492596fb07edaf3fbdefe141b57389f7b022fe64f5b1d6eb0c035aa35e6d` |
| 6 | `theorem` | [mem_filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/mem-filter--795cf08552e2864b20220829.md) | 123 | `result-track:795cf08552e2864b20220829982c5b57869b84632bd9751ee0c157cf9377bafc` |
| 7 | `theorem` | [mem_of_mem_filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/mem-of-mem-filter--973836e5d230409261581b1e.md) | 126 | `result-track:973836e5d230409261581b1ec45f85d0d52656917a0da5e1e40079d14a775444` |
| 8 | `theorem` | [filter_ssubset](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/filter-ssubset--3918fbf9a2a34944eabdfd48.md) | 129 | `result-track:3918fbf9a2a34944eabdfd48b09aa95db85d4c74ea3cc349fe1fc16ebf771b6e` |
| 9 | `theorem` | [filter_filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/filter-filter--48f315acf47f913deebd15c2.md) | 137 | `result-track:48f315acf47f913deebd15c2817fb6ca1cc16bb51568ec488bcec62da301b4f4` |
| 10 | `theorem` | [filter_comm](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/filter-comm--2ce940a7653089980eb1f18c.md) | 141 | `result-track:2ce940a7653089980eb1f18ccb920107c6d2c8ab66e9a6cb7c32d2a16126a11b` |
| 11 | `theorem` | [filter_congr_decidable](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/filter-congr-decidable--82d8f92b9976f6c9950bac12.md) | 145 | `result-track:82d8f92b9976f6c9950bac12aaa3f11e16914de3f1059772eaf4e0757b18a707` |
| 12 | `theorem` | [filter_True](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/filter-true--193f646cf1b5ebbb4ce971bd.md) | 149 | `result-track:193f646cf1b5ebbb4ce971bdeabea5d4ff3bd4ce0a69acb8e594ef918f5d6a70` |
| 13 | `theorem` | [filter_False](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/filter-false--b003aac6481f4e846fceb60e.md) | 152 | `result-track:b003aac6481f4e846fceb60ed023ab7f50fcdad0b5722de0bc23a69042d936f1` |
| 14 | `lemma` | [filter_eq_self](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/filter-eq-self--9b9d3d0b84d3c4401fdf95f9.md) | 156 | `result-track:9b9d3d0b84d3c4401fdf95f90c465e82904be7da316f03f75f976a0a3e01ae90` |
| 15 | `theorem` | [filter_eq_empty_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/filter-eq-empty-iff--49cd5eb7cc5bba38fea8aca7.md) | 158 | `result-track:49cd5eb7cc5bba38fea8aca77b0b1a7373fa3738769025aec01a859b3db9e6af` |
| 16 | `theorem` | [filter_nonempty_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/filter-nonempty-iff--ecdab52b99520ff08066da3b.md) | 160 | `result-track:ecdab52b99520ff08066da3b417ee5b22d6f85d0e43903ab6f88360514d00051` |
| 17 | `theorem` | [filter_true_of_mem](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/filter-true-of-mem--18949addc0d29da30d2595e9.md) | 165 | `result-track:18949addc0d29da30d2595e92ad81e7083007177775f51abd4c9b8928af8c374` |
| 18 | `theorem` | [filter_false_of_mem](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/filter-false-of-mem--9c39c575e70ef24cb3db0a50.md) | 168 | `result-track:9c39c575e70ef24cb3db0a509d46f50b9a0b09c22f622b1ecbfcd18bf11e1cb4` |
| 19 | `theorem` | [filter_const](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/filter-const--a84a9292ac5584076f709df8.md) | 171 | `result-track:a84a9292ac5584076f709df8a636d07837cb6577aaade0120e01190e284e7190` |
| 20 | `theorem` | [filter_congr](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/filter-congr--70eb024d6f6be8922532d588.md) | 174 | `result-track:70eb024d6f6be8922532d588ea689cfec8bfc971f77d09d886ff46a26007f211` |
| 21 | `theorem` | [filter_empty](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/filter-empty--57a45616271bef496dec2877.md) | 180 | `result-track:57a45616271bef496dec2877fd358495d43607f8f0f0b800a1b9d1de5d6baeea` |
| 22 | `theorem` | [filter_subset_filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/filter-subset-filter--cb4358b8489271375396e859.md) | 184 | `result-track:cb4358b8489271375396e8593825249e47b35c8a9a0e4793ea4f433040f81de0` |
| 23 | `theorem` | [monotone_filter_left](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/monotone-filter-left--8849262e324f08ea863e31e7.md) | 187 | `result-track:8849262e324f08ea863e31e7d15697427397a1e2563e82e59f1d0753f964fe18` |
| 24 | `theorem` | [monotone_filter_right](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/monotone-filter-right--df87c81a059eaea2a2616d42.md) | 190 | `result-track:df87c81a059eaea2a2616d42c816326b9d05f3b77dc1ad4049d85bdd67a884ef` |
| 25 | `theorem` | [coe_filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/coe-filter--05559606d5801f5e8b97173e.md) | 195 | `result-track:05559606d5801f5e8b97173ef456ff993d50adfd6502cfdda3e31c86a6c761f4` |
| 26 | `theorem` | [subset_coe_filter_of_subset_forall](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/subset-coe-filter-of-subset-forall--68621346a056af605d036f0c.md) | 198 | `result-track:68621346a056af605d036f0c4a451b5f1aac949703c10cd0e3571e556da0a219` |
| 27 | `theorem` | [disjoint_filter_filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/disjoint-filter-filter--fa8a175d74fe9148ee43a6e8.md) | 201 | `result-track:fa8a175d74fe9148ee43a6e840ad196c24b76774c0fc8b07eac33d730a84b781` |
| 28 | `lemma` | [_root_.Set.pairwiseDisjoint_filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/root-set-pairwisedisjoint-filter--b53dd429143d2f50438a076e.md) | 206 | `result-track:b53dd429143d2f50438a076ec02f200d310f3ffac1083fe548bd666e4a1245c0` |
| 29 | `theorem` | [disjoint_filter_and_not_filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/disjoint-filter-and-not-filter--f806b194a86dcd42eef194e1.md) | 213 | `result-track:f806b194a86dcd42eef194e11c26d89332aee11810f46d9396b91fdcd0012406` |
| 30 | `lemma` | [filter_inj](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/filter-inj--d8eddb35f40edc8985b31c90.md) | 222 | `result-track:d8eddb35f40edc8985b31c902811c656a5a68478f5a564b66ce082659909bc1a` |
| 31 | `lemma` | [filter_inj'](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/declarations/filter-inj--b6bc537ebf2e385e23f16184.md) | 225 | `result-track:b6bc537ebf2e385e23f161847f84d7a53693d4c60f6c3900e967cbcc2078bdf1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
